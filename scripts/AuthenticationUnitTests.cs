using Newtonsoft.Json.Linq;
using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.SessionState;

// Standalone .NET Framework tests. Google responses here are test fixtures only;
// the application always uses the real fixed HTTPS endpoints.
internal static class AuthenticationUnitTests
{
    private static void Check(bool condition, string message)
    { if (!condition) throw new Exception(message); }

    public static int Main()
    {
        try { Run().GetAwaiter().GetResult(); return 0; }
        catch (Exception ex) { Console.Error.WriteLine(ex.GetType().Name + ": " + ex.Message); return 1; }
    }

    private static async Task Run()
    {
        string folder = Path.Combine(Path.GetTempPath(), "astro-auth-tests-" + Guid.NewGuid().ToString("N"));
        Directory.CreateDirectory(folder);
        try
        {
            string file = Path.Combine(folder, "accounts.json");
            var store = new DemoAccountStore(file);
            string password = Guid.NewGuid().ToString("N");
            string id = store.Register("one@example.invalid", password);
            string second = store.Register("two@example.invalid", password);
            Check(id != second, "Accounts need unique identities.");
            Check(new DemoAccountStore(file).Authenticate("ONE@example.invalid", password) == id, "Persisted email account login failed.");
            Check(store.Authenticate("one@example.invalid", "wrong-password") == null, "Wrong password accepted.");
            bool duplicate = false;
            try { store.Register("ONE@example.invalid", password); } catch (AccountExistsException) { duplicate = true; }
            Check(duplicate, "Duplicate account accepted.");
            var rows = JArray.Parse(File.ReadAllText(file));
            Check((string)rows[0]["Salt"] != (string)rows[1]["Salt"], "Passwords must have unique random salts.");
            Check((string)rows[0]["PasswordHash"] != (string)rows[1]["PasswordHash"], "Equal passwords should have different hashes.");
            Check((int)rows[0]["Iterations"] == 600000 && !File.ReadAllText(file).Contains(password), "Password storage is unsafe.");

            var settings = new GoogleSettings { ClientId = "test-client", ClientSecret = "test-only-secret", RedirectUri = "http://localhost/GoogleCallback.aspx" };
            var flow = new GoogleFlow { State = ApplicationAuthentication.RandomToken(), Verifier = ApplicationAuthentication.RandomToken(), CreatedUtc = DateTime.UtcNow, ReturnUrl = "/about.aspx" };
            var authUri = new Uri(GoogleAuthentication.BuildAuthorizationUrl(settings, flow));
            var query = HttpUtility.ParseQueryString(authUri.Query);
            Check(authUri.Host == "accounts.google.com" && query["response_type"] == "code", "Incorrect Google authorization endpoint/flow.");
            Check(query["state"] == flow.State && query["code_challenge_method"] == "S256" && query["code_challenge"].Length == 43, "Missing OAuth state or PKCE.");
            Check(!authUri.ToString().Contains(settings.ClientSecret) && !authUri.ToString().Contains(flow.Verifier), "OAuth secret leaked into URL.");

            using (var http = new HttpClient(new GoogleFixtureHandler(true)))
            {
                string googleId = await GoogleAuthentication.ExchangeCodeAsync("test-code", flow, settings, http, store);
                Check(googleId != id, "Google must not auto-link by email.");
                Check(googleId == store.GetOrCreateGoogle("test-google-subject", "changed@example.invalid"), "Google identity must use stable subject.");
            }
            bool rejected = false;
            using (var http = new HttpClient(new GoogleFixtureHandler(false)))
                try { await GoogleAuthentication.ExchangeCodeAsync("test-code", flow, settings, http, store); }
                catch (InvalidOperationException) { rejected = true; }
            Check(rejected, "Unverified Google email accepted.");
            Check(!File.ReadAllText(file).Contains("test-access-token") && !File.ReadAllText(file).Contains("test-only-secret"), "Tokens or secrets persisted.");

            var context = new HttpContext(new HttpRequest("", "http://localhost/", ""), new HttpResponse(TextWriter.Null));
            var session = new HttpSessionStateContainer("test-session", new SessionStateItemCollection(), new HttpStaticObjectsCollection(), 20, true, HttpCookieMode.UseCookies, SessionStateMode.InProc, false);
            SessionStateUtility.AddHttpSessionStateToContext(context, session);
            context.Session["GoogleOAuthFlow"] = flow;
            Check(GoogleAuthentication.ConsumeFlow(context, flow.State) == flow, "Valid OAuth state rejected.");
            Check(GoogleAuthentication.ConsumeFlow(context, flow.State) == null, "OAuth callback replay accepted.");
            context.Session["GoogleOAuthFlow"] = flow;
            Check(GoogleAuthentication.ConsumeFlow(context, "forged") == null, "Forged state accepted.");
            flow.CreatedUtc = DateTime.UtcNow.AddMinutes(-11);
            context.Session["GoogleOAuthFlow"] = flow;
            Check(GoogleAuthentication.ConsumeFlow(context, flow.State) == null, "Expired state accepted.");
            Check(ApplicationAuthentication.GetReturnUrl("/Astro/about.aspx?x=1", "/Astro") == "/Astro/about.aspx?x=1", "Virtual-directory return route failed.");
            foreach (string target in new[] { "//example.com", "/Other/about.aspx", "/Astro/../about.aspx", "/Astro/CreateAccount.aspx", "/Astro/GoogleCallback.aspx" })
                Check(ApplicationAuthentication.GetReturnUrl(target, "/Astro") == "/Astro/Default.aspx", "Unsafe return route accepted.");
            Console.WriteLine("PASS: persisted hashed accounts, duplicate rejection, Google code exchange fixtures, stable subjects, state expiry/replay, and safe virtual-directory redirects.");
        }
        finally
        {
            // Only the uniquely created test directory above is removed.
            Directory.Delete(folder, true);
        }
    }

    private sealed class GoogleFixtureHandler : HttpMessageHandler
    {
        private readonly bool verified;
        public GoogleFixtureHandler(bool verifiedEmail) { verified = verifiedEmail; }
        protected override async Task<HttpResponseMessage> SendAsync(HttpRequestMessage request, CancellationToken cancellationToken)
        {
            if (request.RequestUri.AbsoluteUri == "https://oauth2.googleapis.com/token")
            {
                string body = await request.Content.ReadAsStringAsync();
                Check(body.Contains("code_verifier=") && body.Contains("client_secret=") && body.Contains("grant_type=authorization_code"), "Token exchange fields missing.");
                return Json("{\"access_token\":\"test-access-token\",\"token_type\":\"Bearer\"}");
            }
            Check(request.RequestUri.AbsoluteUri == "https://openidconnect.googleapis.com/v1/userinfo", "Unexpected identity endpoint.");
            Check(request.Headers.Authorization.Scheme == "Bearer" && request.Headers.Authorization.Parameter == "test-access-token", "Missing UserInfo authorization.");
            return Json("{\"sub\":\"test-google-subject\",\"email\":\"one@example.invalid\",\"email_verified\":" + (verified ? "true" : "false") + "}");
        }
        private static HttpResponseMessage Json(string json)
        { return new HttpResponseMessage(HttpStatusCode.OK) { Content = new StringContent(json) }; }
    }
}

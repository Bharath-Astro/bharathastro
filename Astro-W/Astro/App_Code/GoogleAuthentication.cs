using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Web;

/// <summary>Google OAuth authorization-code flow; identity is fetched from Google's UserInfo endpoint.</summary>
public static class GoogleAuthentication
{
    private const string SessionKey = "GoogleOAuthFlow";
    private static readonly HttpClient Client = new HttpClient(new HttpClientHandler { AllowAutoRedirect = false })
    { Timeout = TimeSpan.FromSeconds(20) };

    public static bool IsConfigured { get { return GoogleSettings.Load() != null; } }

    public static bool Begin(HttpContext context, string returnUrl)
    {
        var settings = GoogleSettings.Load();
        if (settings == null) return false;
        var flow = new GoogleFlow
        {
            State = ApplicationAuthentication.RandomToken(), Verifier = ApplicationAuthentication.RandomToken(),
            CreatedUtc = DateTime.UtcNow,
            ReturnUrl = ApplicationAuthentication.GetReturnUrl(returnUrl, context.Request.ApplicationPath)
        };
        context.Session[SessionKey] = flow;
        context.Response.Redirect(BuildAuthorizationUrl(settings, flow), false);
        context.ApplicationInstance.CompleteRequest();
        return true;
    }

    public static string BuildAuthorizationUrl(GoogleSettings settings, GoogleFlow flow)
    {
        string challenge;
        using (var hash = SHA256.Create())
            challenge = ApplicationAuthentication.Base64Url(hash.ComputeHash(Encoding.ASCII.GetBytes(flow.Verifier)));
        var query = HttpUtility.ParseQueryString("");
        query["client_id"] = settings.ClientId;
        query["redirect_uri"] = settings.RedirectUri;
        query["response_type"] = "code";
        query["scope"] = "openid email profile";
        query["state"] = flow.State;
        query["code_challenge"] = challenge;
        query["code_challenge_method"] = "S256";
        query["prompt"] = "select_account";
        return "https://accounts.google.com/o/oauth2/v2/auth?" + query;
    }

    public static GoogleFlow ConsumeFlow(HttpContext context, string state)
    {
        var flow = context.Session[SessionKey] as GoogleFlow;
        context.Session.Remove(SessionKey); // One-time, including failed/cancelled callbacks.
        if (flow == null || string.IsNullOrEmpty(state) || state != flow.State
            || flow.CreatedUtc > DateTime.UtcNow || DateTime.UtcNow - flow.CreatedUtc > TimeSpan.FromMinutes(10))
            return null;
        return flow;
    }

    public static Task<string> GetVerifiedUserIdAsync(string code, GoogleFlow flow)
    {
        return ExchangeCodeAsync(code, flow, GoogleSettings.Load(), Client, DemoAccountStore.Current);
    }

    internal static async Task<string> ExchangeCodeAsync(string code, GoogleFlow flow, GoogleSettings settings,
        HttpClient client, DemoAccountStore accounts)
    {
        if (settings == null || string.IsNullOrWhiteSpace(code)) throw new InvalidOperationException();
        using (var form = new FormUrlEncodedContent(new Dictionary<string, string>
        {
            { "code", code }, { "client_id", settings.ClientId }, { "client_secret", settings.ClientSecret },
            { "redirect_uri", settings.RedirectUri }, { "grant_type", "authorization_code" },
            { "code_verifier", flow.Verifier }
        }))
        using (var response = await client.PostAsync("https://oauth2.googleapis.com/token", form))
        {
            response.EnsureSuccessStatusCode();
            var token = JObject.Parse(await response.Content.ReadAsStringAsync());
            string accessToken = (string)token["access_token"];
            if (string.IsNullOrEmpty(accessToken) || !string.Equals((string)token["token_type"], "Bearer", StringComparison.OrdinalIgnoreCase))
                throw new InvalidOperationException();

            // Use the token obtained directly from Google over TLS. Do not trust an email,
            // subject or unsigned JWT supplied by the browser. No token is persisted.
            using (var request = new HttpRequestMessage(HttpMethod.Get, "https://openidconnect.googleapis.com/v1/userinfo"))
            {
                request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                using (var identityResponse = await client.SendAsync(request))
                {
                    identityResponse.EnsureSuccessStatusCode();
                    var identity = JObject.Parse(await identityResponse.Content.ReadAsStringAsync());
                    if (identity.Value<bool?>("email_verified") != true) throw new InvalidOperationException();
                    return accounts.GetOrCreateGoogle((string)identity["sub"], (string)identity["email"]);
                }
            }
        }
    }
}

[Serializable]
public sealed class GoogleFlow
{
    public string State { get; set; }
    public string Verifier { get; set; }
    public string ReturnUrl { get; set; }
    public DateTime CreatedUtc { get; set; }
}

public sealed class GoogleSettings
{
    public string ClientId { get; set; }
    public string ClientSecret { get; set; }
    public string RedirectUri { get; set; }

    public static GoogleSettings Load()
    {
        var settings = new GoogleSettings
        {
            ClientId = Environment.GetEnvironmentVariable("GOOGLE_CLIENT_ID") ?? ConfigurationManager.AppSettings["Google:ClientId"],
            ClientSecret = Environment.GetEnvironmentVariable("GOOGLE_CLIENT_SECRET"),
            RedirectUri = Environment.GetEnvironmentVariable("GOOGLE_REDIRECT_URI") ?? ConfigurationManager.AppSettings["Google:RedirectUri"]
        };
        Uri uri;
        if (string.IsNullOrWhiteSpace(settings.ClientId) || string.IsNullOrWhiteSpace(settings.ClientSecret)
            || !Uri.TryCreate(settings.RedirectUri, UriKind.Absolute, out uri)
            || !(uri.Scheme == "https" || (uri.Scheme == "http" && uri.IsLoopback))
            || uri.UserInfo != "" || uri.Query != "" || uri.Fragment != ""
            || !uri.AbsolutePath.EndsWith("/GoogleCallback.aspx", StringComparison.Ordinal)) return null;
        return settings;
    }
}

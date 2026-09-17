using System;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Summary description for BATClass
/// </summary>
namespace nsp_BATClass
{
    public class BATClass
    {
        public static bool IsSandbox
        {
            get
            {
                return string.Equals(Environment.GetEnvironmentVariable("PROKERALA_SANDBOX") ??
                    ConfigurationManager.AppSettings["Prokerala:Sandbox"], "true", StringComparison.OrdinalIgnoreCase);
            }
        }

        public static DateTime PanchangDate
        {
            get
            {
                DateTime ist = DateTime.UtcNow.AddMinutes(330);
                // The sandbox accepts January 1 only. Never substitute a user's birth date.
                return IsSandbox ? new DateTime(ist.Year, 1, 1).Add(ist.TimeOfDay) : ist;
            }
        }

        private static readonly object TokenLock = new object();
        private static string cachedToken, cachedClientId, cachedClientSecret;
        private static DateTime refreshAtUtc;

        public static string GetAccessToken()
        {
            string clientId = Environment.GetEnvironmentVariable("PROKERALA_CLIENT_ID");
            string clientSecret = Environment.GetEnvironmentVariable("PROKERALA_CLIENT_SECRET");
            // Never combine credentials from different configuration sources.
            if (string.IsNullOrWhiteSpace(clientId) && string.IsNullOrWhiteSpace(clientSecret))
            {
                clientId = ConfigurationManager.AppSettings["Prokerala:ClientId"];
                clientSecret = ConfigurationManager.AppSettings["Prokerala:ClientSecret"];
            }
            if (string.IsNullOrWhiteSpace(clientId) || string.IsNullOrWhiteSpace(clientSecret))
                throw new InvalidOperationException("Prokerala credentials are not configured on the server.");

            lock (TokenLock)
            {
                if (cachedToken != null && DateTime.UtcNow < refreshAtUtc &&
                    cachedClientId == clientId && cachedClientSecret == clientSecret)
                    return cachedToken;

                var request = (HttpWebRequest)WebRequest.Create("https://api.prokerala.com/token");
                request.Method = "POST";
                request.AllowAutoRedirect = false;
                request.Timeout = 20000;
                request.ReadWriteTimeout = 20000;
                request.ContentType = "application/x-www-form-urlencoded";
                request.Accept = "application/json";
                byte[] body = Encoding.UTF8.GetBytes("grant_type=client_credentials&client_id=" +
                    Uri.EscapeDataString(clientId) + "&client_secret=" + Uri.EscapeDataString(clientSecret));
                request.ContentLength = body.Length;
                try
                {
                    using (Stream stream = request.GetRequestStream()) stream.Write(body, 0, body.Length);
                    using (var response = (HttpWebResponse)request.GetResponse())
                    using (var reader = new StreamReader(response.GetResponseStream()))
                    {
                        var token = Newtonsoft.Json.Linq.JObject.Parse(reader.ReadToEnd());
                        string value = (string)token["access_token"];
                        int seconds;
                        if (string.IsNullOrWhiteSpace(value) ||
                            !string.Equals((string)token["token_type"], "Bearer", StringComparison.OrdinalIgnoreCase) ||
                            !int.TryParse((string)token["expires_in"], out seconds) || seconds <= 0)
                            throw new InvalidOperationException("Prokerala returned an invalid token response.");
                        cachedToken = value;
                        cachedClientId = clientId;
                        cachedClientSecret = clientSecret;
                        refreshAtUtc = DateTime.UtcNow.AddSeconds(Math.Max(0, seconds - 60));
                        return cachedToken;
                    }
                }
                catch (WebException ex)
                {
                    if (ex.Response != null) ex.Response.Dispose();
                    // Never expose provider response bodies, credentials, or tokens.
                    throw new InvalidOperationException("Unable to authenticate with Prokerala. Check server configuration and API availability.");
                }
                catch (Newtonsoft.Json.JsonException)
                {
                    throw new InvalidOperationException("Prokerala returned an invalid token response.");
                }
            }
        }

        // Legacy alias. The configured client selects sandbox/production.
        // Never fall back to the old embedded production credentials.
        public static string GetAccessTokenProduction()
        {
            return GetAccessToken();
        }
    }
}

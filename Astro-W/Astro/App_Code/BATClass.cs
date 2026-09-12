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
        public BATClass()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static string GetAccessToken()
        {
            string clientId = "b3a76933-4ab3-4e12-9206-416967f2e197";
            string clientSecret = "jEkXvDr9KQNOUYgkFmFvvXos0Z7dNF8vR0FgFmXL";

            string tokenUrl = "https://api.prokerala.com/token";

            string postData = string.Format(
                "grant_type=client_credentials&client_id={0}&client_secret={1}",
                clientId,
                clientSecret
            );

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(tokenUrl);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";

            byte[] data = Encoding.UTF8.GetBytes(postData);
            request.ContentLength = data.Length;

            using (Stream stream = request.GetRequestStream())
            {
                stream.Write(data, 0, data.Length);
            }

            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            using (StreamReader reader = new StreamReader(response.GetResponseStream()))
            {
                string json = reader.ReadToEnd();

                // Simple extraction (use JSON parser in real projects)
                string accessToken = json.Split(new string[] { "\"access_token\":\"" }, StringSplitOptions.None)[1]
                                          .Split('"')[0];

                return accessToken;
            }
        }

        public static string GetAccessTokenProduction()
        {
            string clientId = "f994c50c-4f56-47b6-a40d-6e371626195c"; // "4e06423f-1d4a-4f05-908e-e3cfba0c72df";
            string clientSecret = "gwfaBz92088lSog63wYTEy4xNcAwN3N9ytVptcrM"; // "08y7rV0yA2dLBmjFcFHdPUleJ1aYpZS9AbFJYd6V";

            string tokenUrl = "https://api.prokerala.com/token";

            string postData = string.Format(
                "grant_type=client_credentials&client_id={0}&client_secret={1}",
                clientId,
                clientSecret
            );

            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(tokenUrl);
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";

            byte[] data = Encoding.UTF8.GetBytes(postData);
            request.ContentLength = data.Length;

            using (Stream stream = request.GetRequestStream())
            {
                stream.Write(data, 0, data.Length);
            }

            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            using (StreamReader reader = new StreamReader(response.GetResponseStream()))
            {
                string json = reader.ReadToEnd();

                // Simple extraction (use JSON parser in real projects)
                string accessToken = json.Split(new string[] { "\"access_token\":\"" }, StringSplitOptions.None)[1]
                                          .Split('"')[0];

                return accessToken;
            }
        }
    }
}
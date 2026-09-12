using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json.Linq; // Install Newtonsoft.Json via NuGet

public partial class apitest_test_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected async void xbtnGetDetails_Click(object sender, EventArgs e)
    {
        string apiUrl = "https://json.astrologyapi.com/v1/birth_details";

        // Replace with your actual API credentials
        string userId = "650869"; // "your_user_id";
        string apiKey = "b38eaa34244f9c2b05fa22f8cc6abd8af42c0c39";

        using (HttpClient client = new HttpClient())
        {
            //  var byteArray = Encoding.ASCII.GetBytes($"{userId}:{apiKey}");
            var byteArray = Encoding.ASCII.GetBytes(userId + ":" + apiKey);

            client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Basic", Convert.ToBase64String(byteArray));

            // Example request body (adjust parameters as needed)
            var requestBody = new
            {
                day = 12,
                month = 3,
                year = 1990,
                hour = 10,
                min = 30,
                lat = 17.3850,
                lon = 78.4867,
                tzone = 5.5
            };

            var jsonContent = new StringContent(Newtonsoft.Json.JsonConvert.SerializeObject(requestBody), Encoding.UTF8, "application/json");

            HttpResponseMessage response = await client.PostAsync(apiUrl, jsonContent);

            if (response.IsSuccessStatusCode)
            {
                string result = @""; // await response.Content.ReadAsStringAsync();
                JObject json = JObject.Parse(result);

                // Display formatted JSON on page
                litResult.Text = "<pre>" + json.ToString(Newtonsoft.Json.Formatting.Indented) + "</pre>";

            }
            else
            {
                litResult.Text = response.StatusCode.ToString();
            }
        }
    }

    protected void btnGetDetails_Click(object sender, EventArgs e)
    {
        // Sample JSON response (hardcoded for preview)
        string sampleJson = @"{
                ""year"": 1992,
                ""month"": 7,
                ""day"": 22,
                ""hour"": 9,
                ""minute"": 21,
                ""latitude"": 25.31668,
                ""longitude"": 83.01042,
                ""timezone"": 5.5,
                ""sunrise"": ""5:21:28"",
                ""sunset"": ""18:49:35"",
                ""ayanamsha"": 23.753052294684778
            }";

        JObject json = JObject.Parse(sampleJson);

        // Show formatted JSON in <pre> block
        litResult.Text = "<pre>" + json.ToString(Newtonsoft.Json.Formatting.Indented) + "</pre>";

        // Example: show specific fields in a cleaner way
        litResult.Text += "<br/><b>Year:</b> " + json["year"];
        litResult.Text += "<br/><b>Month:</b> " + json["month"];
        litResult.Text += "<br/><b>Day:</b> " + json["day"];
        litResult.Text += "<br/><b>Sunrise:</b> " + json["sunrise"];
        litResult.Text += "<br/><b>Sunset:</b> " + json["sunset"];
        litResult.Text += "<br/><b>Ayanamsha:</b> " + json["ayanamsha"];
    }
}
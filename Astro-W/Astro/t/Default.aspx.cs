using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class t_Default : System.Web.UI.Page
{
    private static readonly string subscriptionKey = "MCGhsl8BdnM7IkzAAbACOGnDh2AA8o46bfMsJQQJ99COpGKCpd07SeV63MKlqlrNwZf9Xx7xW8CE4BXJ3w3A";
    private static readonly string endpoint = "https://api.cognitive.microsofttranslator.com/";
    private static readonly string location = "centralindia"; // e.g. "eastus"

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected async void btnTranslate_Click(object sender, EventArgs e)
    {
        string originalContent = txtText1.Text; // "<h1>Hello World</h1><p>This is a sample page.</p><p>Core Elements of a Great Employee Environment</p>";
        string targetLanguage = ddlTransTo.SelectedValue; // "te"; // Example: French

        string translatedContent = await TranslateText(originalContent, targetLanguage);
        contentDiv.InnerHtml = translatedContent; // Assume you have <div id="contentDiv" runat="server"></div>
    }

    private async Task<string> TranslateText(string text, string targetLanguage)
    {
        using (var client = new System.Net.Http.HttpClient())
        {
            // string route = $"/translate?api-version=3.0&to={targetLanguage}";
            string route = "/translate?api-version=3.0&to=" + targetLanguage;

            client.DefaultRequestHeaders.Add("Ocp-Apim-Subscription-Key", subscriptionKey);
            client.DefaultRequestHeaders.Add("Ocp-Apim-Subscription-Region", location);

            object[] body = new object[] { new { Text = text } };
            var requestBody = Newtonsoft.Json.JsonConvert.SerializeObject(body);

            var response = await client.PostAsync(endpoint + route,
                new System.Net.Http.StringContent(requestBody, Encoding.UTF8, "application/json"));

            string result = await response.Content.ReadAsStringAsync();
            JArray jsonResponse = JArray.Parse(result);

            return jsonResponse[0]["translations"][0]["text"].ToString();
        }
    }
}
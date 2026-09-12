using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class apitest_JsonViewer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnShowJson_Click(object sender, EventArgs e)
    {
        try
        {
            string input = txtJson.Text.Trim();
            if (string.IsNullOrEmpty(input))
            {
                litResult.Text = "Please paste a JSON string.";
                return;
            }

            JObject json = JObject.Parse(input);
            StringBuilder sb = new StringBuilder();
            sb.Append("<table><tr><th>Key</th><th>Value</th></tr>");
            RenderJson(json, sb, "");
            sb.Append("</table>");

            litResult.Text = sb.ToString();
        }
        catch (Exception ex)
        {
            litResult.Text = "Error parsing JSON: " + ex.Message;
        }
    }

    private void RenderJson(JToken token, StringBuilder sb, string parentKey)
    {
        if (token is JObject)
        {
            foreach (var prop in ((JObject)token).Properties())
            {
                string key = string.IsNullOrEmpty(parentKey) ? prop.Name : parentKey + "." + prop.Name;
                RenderJson(prop.Value, sb, key);
            }
        }
        else if (token is JArray)
        {
            int index = 0;
            foreach (var item in (JArray)token)
            {
                string key = parentKey + "[" + index + "]";
                RenderJson(item, sb, key);
                index++;
            }
        }
        else
        {
            sb.Append("<tr><td class='key'>" + parentKey + "</td><td>" + token.ToString() + "</td></tr>");
        }
    }
}
using Newtonsoft.Json.Linq;
using System;
using System.Text;

public partial class apitest_divineapi_sample_3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnShowDetails_Click(object sender, EventArgs e)
    {
        // Sample JSON you provided
        string sampleJson = @"{
                ""success"": 1,
                ""data"": {
                    ""full_name"": ""Rahul"",
                    ""year"": ""2025"",
                    ""month"": ""07"",
                    ""day"": ""23"",
                    ""hour"": ""3"",
                    ""minute"": ""45"",
                    ""gender"": ""male"",
                    ""place"": ""New Delhi"",
                    ""latitude"": ""43.083714"",
                    ""longitude"": ""-79.065147"",
                    ""timezone"": ""-4"",
                    ""sunrise"": ""2025-07-23 05:58:11"",
                    ""sunset"": ""2025-07-23 20:46:48"",
                    ""tithi"": ""Chaturdashi"",
                    ""paksha"": ""Krishna"",
                    ""paya"": { ""type"": ""Silver"", ""result"": ""Best"" },
                    ""sunsign"": ""Cancer"",
                    ""moonsign"": ""Gemini"",
                    ""rashi_akshar"": ""का, की, कू, घ, ङ, छ, के, को, ह"",
                    ""chandramasa"": ""Ashaada"",
                    ""tatva"": ""Airy"",
                    ""prahar"": 8,
                    ""nakshatra"": ""Aradra"",
                    ""vaar"": ""Wednesday"",
                    ""varna"": ""Shudra"",
                    ""vashya"": ""Biped"",
                    ""yoni"": ""Shwan"",
                    ""gana"": ""Manushya"",
                    ""nadi"": ""Adi"",
                    ""yoga"": ""Harshana"",
                    ""karana"": ""Vishti"",
                    ""ayanamsha"": ""24.298085"",
                    ""yunja"": ""Madhya""
                }
            }";

        JObject root = JObject.Parse(sampleJson);
        JObject data = (JObject)root["data"];

        StringBuilder sb = new StringBuilder();
        sb.Append("<table>");
        sb.Append("<tr><th>Field</th><th>Value</th></tr>");

        foreach (var prop in data.Properties())
        {
            string key = prop.Name;
            string val = "";

            if (prop.Value.Type == JTokenType.Object)
            {
                // Handle nested object (like paya)
                JObject nested = (JObject)prop.Value;
                foreach (var nestedProp in nested.Properties())
                {
                    val += nestedProp.Name + ": " + nestedProp.Value + " ";
                }
            }
            else
            {
                val = prop.Value.ToString();
            }

            sb.Append("<tr><td>" + key + "</td><td>" + val + "</td></tr>");
        }

        sb.Append("</table>");
        litDetails.Text = sb.ToString();
    }
}
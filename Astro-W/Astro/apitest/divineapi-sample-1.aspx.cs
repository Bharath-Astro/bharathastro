using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class apitest_divineapi_sample_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnShowMatch_Click(object sender, EventArgs e)
    {
        // Sample JSON response
        string sampleJson = @"{
                ""success"": 1,
                ""data"": {
                    ""p1"": {
                        ""full_name"": ""Rahul Chauhan"",
                        ""year"": 1990,
                        ""month"": 6,
                        ""day"": 24,
                        ""hour"": 14,
                        ""minute"": 30,
                        ""gender"": ""male"",
                        ""place"": ""New Delhi"",
                        ""latitude"": 28.6139,
                        ""longitude"": 77.209,
                        ""timezone"": 5.5,
                        ""sunrise"": ""1990-06-24 05:24:47"",
                        ""sunset"": ""1990-06-24 19:22:31"",
                        ""tithi"": ""Dwitiya"",
                        ""paksha"": ""Shukla"",
                        ""paya"": { ""type"": ""Silver"", ""result"": ""Best"" },
                        ""sunsign"": ""Gemini"",
                        ""moonsign"": ""Cancer"",
                        ""rashi_akshar"": ""ही, हू, हे, हो, डा, डी, डु, डे, डो"",
                        ""chandramasa"": ""Ashaada"",
                        ""tatva"": ""Watery"",
                        ""prahar"": 3,
                        ""nakshatra"": ""Punarvasu"",
                        ""vaar"": ""Sunday"",
                        ""varna"": ""Brahmin"",
                        ""vashya"": ""Jalchar"",
                        ""yoni"": ""Marjar"",
                        ""gana"": ""Dev"",
                        ""nadi"": ""Adi"",
                        ""yoga"": ""Dhruv"",
                        ""karana"": ""Kaulava"",
                        ""ayanamsha"": ""23.80933"",
                        ""yunja"": ""Madhya""
                    },
                    ""p2"": {
                        ""full_name"": ""Priya Sharma"",
                        ""year"": 1992,
                        ""month"": 8,
                        ""day"": 15,
                        ""hour"": 9,
                        ""minute"": 45,
                        ""gender"": ""female"",
                        ""place"": ""Mumbai"",
                        ""latitude"": 19.076,
                        ""longitude"": 72.8777,
                        ""timezone"": 5.5,
                        ""sunrise"": ""1992-08-15 06:19:32"",
                        ""sunset"": ""1992-08-15 19:06:02"",
                        ""tithi"": ""Dwitiya"",
                        ""paksha"": ""Krishna"",
                        ""paya"": { ""type"": ""Copper"", ""result"": ""Good"" },
                        ""sunsign"": ""Cancer"",
                        ""moonsign"": ""Aquarius"",
                        ""rashi_akshar"": ""गू, गे, गो, स, सी, सू, से, सो, द"",
                        ""chandramasa"": ""Shraavana"",
                        ""tatva"": ""Airy"",
                        ""prahar"": 2,
                        ""nakshatra"": ""Satabhisha"",
                        ""vaar"": ""Saturday"",
                        ""varna"": ""Shudra"",
                        ""vashya"": ""Biped"",
                        ""yoni"": ""Ashwa"",
                        ""gana"": ""Rakshasa"",
                        ""nadi"": ""Adi"",
                        ""yoga"": ""Atiganda"",
                        ""karana"": ""Gar"",
                        ""ayanamsha"": ""23.837259"",
                        ""yunja"": ""Antya""
                    }
                }
            }";

        JObject root = JObject.Parse(sampleJson);
        JObject p1 = (JObject)root["data"]["p1"];
        JObject p2 = (JObject)root["data"]["p2"];

        // Build HTML table
        string table = "<table><tr><th>Field</th><th>Person 1</th><th>Person 2</th></tr>";

        foreach (var field in p1.Properties())
        {
            string fieldName = field.Name;
            string val1 = field.Value.Type == JTokenType.Object ? field.Value.ToString() : field.Value.ToString();
            string val2 = p2[fieldName] != null ? (p2[fieldName].Type == JTokenType.Object ? p2[fieldName].ToString() : p2[fieldName].ToString()) : "";

            // Special handling for nested 'paya'
            if (fieldName == "paya")
            {
                val1 = p1["paya"]["type"] + " (" + p1["paya"]["result"] + ")";
                val2 = p2["paya"]["type"] + " (" + p2["paya"]["result"] + ")";
            }

            table += "<tr><td>" + fieldName + "</td><td>" + val1 + "</td><td>" + val2 + "</td></tr>";
        }

        table += "</table>";

        litTable.Text = table;
    }

}
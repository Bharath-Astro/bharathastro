using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class apitest_astrologyapi_sample_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnShowDetails_Click(object sender, EventArgs e)
    {
        // 1. Birth Details
        string birthDetailsJson = @"{
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
        JObject birth = JObject.Parse(birthDetailsJson);
        lblBirthDetails.Text = "Date: " + birth["day"] + "/" + birth["month"] + "/" + birth["year"] +
                               "<br/>Time: " + birth["hour"] + ":" + birth["minute"] +
                               "<br/>Location: Lat " + birth["latitude"] + ", Lon " + birth["longitude"] +
                               "<br/>Timezone: " + birth["timezone"] +
                               "<br/>Sunrise: " + birth["sunrise"] +
                               "<br/>Sunset: " + birth["sunset"] +
                               "<br/>Ayanamsha: " + birth["ayanamsha"];

        // 2. Astro Details
        string astroDetailsJson = @"{
                ""ascendant"": ""Gemini"",
                ""sun_sign"": ""Cancer"",
                ""moon_sign"": ""Virgo"",
                ""nakshatra"": ""Hasta"",
                ""tithi"": ""Dwitiya""
            }";
        JObject astro = JObject.Parse(astroDetailsJson);
        lblAstroDetails.Text = "Ascendant: " + astro["ascendant"] +
                               "<br/>Sun Sign: " + astro["sun_sign"] +
                               "<br/>Moon Sign: " + astro["moon_sign"] +
                               "<br/>Nakshatra: " + astro["nakshatra"] +
                               "<br/>Tithi: " + astro["tithi"];

        // 3. Planets
        string planetsJson = @"{
                ""Sun"": { ""sign"": ""Cancer"", ""house"": 2 },
                ""Moon"": { ""sign"": ""Virgo"", ""house"": 4 },
                ""Mars"": { ""sign"": ""Leo"", ""house"": 3 }
            }";
        JObject planets = JObject.Parse(planetsJson);
        lblPlanets.Text = "Sun: " + planets["Sun"]["sign"] + " (House " + planets["Sun"]["house"] + ")" +
                          "<br/>Moon: " + planets["Moon"]["sign"] + " (House " + planets["Moon"]["house"] + ")" +
                          "<br/>Mars: " + planets["Mars"]["sign"] + " (House " + planets["Mars"]["house"] + ")";

        // 4. Planets Extended
        string planetsExtendedJson = @"{
                ""Sun"": { ""sign"": ""Cancer"", ""house"": 2, ""degree"": 29.5 },
                ""Moon"": { ""sign"": ""Virgo"", ""house"": 4, ""degree"": 12.3 }
            }";
        JObject planetsExt = JObject.Parse(planetsExtendedJson);
        lblPlanetsExtended.Text = "Sun: " + planetsExt["Sun"]["sign"] + " (House " + planetsExt["Sun"]["house"] + ", Degree " + planetsExt["Sun"]["degree"] + ")" +
                                  "<br/>Moon: " + planetsExt["Moon"]["sign"] + " (House " + planetsExt["Moon"]["house"] + ", Degree " + planetsExt["Moon"]["degree"] + ")";

        // 5. Bhav Madhya
        string bhavMadhyaJson = @"{
                ""House1"": 15.0,
                ""House2"": 45.0,
                ""House3"": 75.0
            }";
        JObject bhav = JObject.Parse(bhavMadhyaJson);
        lblBhavMadhya.Text = "House 1: " + bhav["House1"] +
                             "<br/>House 2: " + bhav["House2"] +
                             "<br/>House 3: " + bhav["House3"];

        // 6. Ghat Chakra
        string ghatChakraJson = @"{
                ""ghat_chakra"": [
                    { ""planet"": ""Sun"", ""ghat"": ""Agni"" },
                    { ""planet"": ""Moon"", ""ghat"": ""Jal"" }
                ]
            }";
        JObject ghat = JObject.Parse(ghatChakraJson);
        lblGhatChakra.Text = "Sun → " + ghat["ghat_chakra"][0]["ghat"] +
                             "<br/>Moon → " + ghat["ghat_chakra"][1]["ghat"];

        // 7. Ayanamsha
        string ayanamshaJson = @"{ ""ayanamsha"": 23.753052294684778 }";
        JObject aya = JObject.Parse(ayanamshaJson);
        lblAyanamsha.Text = "Ayanamsha: " + aya["ayanamsha"];
    }
}
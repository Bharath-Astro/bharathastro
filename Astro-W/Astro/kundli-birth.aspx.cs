using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kundli_birth : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        #region API-2
        string sampleJson2 = @"{
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

        JObject root2 = JObject.Parse(sampleJson2);
        JObject data2 = (JObject)root2["data"];

        StringBuilder sb2 = new StringBuilder();

        // Basic details
        sb2.Append("<div class='section'><h3>Birth Details</h3>");
        sb2.Append("Name: " + data2["full_name"] + "<br/>");
        sb2.Append("DOB: " + data2["day"] + "-" + data2["month"] + "-" + data2["year"] + "<br/>");
        sb2.Append("Time: " + data2["hour"] + ":" + data2["minute"] + "<br/>");
        sb2.Append("Gender: " + data2["gender"] + "<br/>");
        sb2.Append("Place: " + data2["place"] + "<br/>");
        sb2.Append("Latitude: " + data2["latitude"] + ", Longitude: " + data2["longitude"] + "<br/>");
        sb2.Append("Timezone: " + data2["timezone"] + "<br/>");
        sb2.Append("Sunrise: " + data2["sunrise"] + ", Sunset: " + data2["sunset"] + "</div>");

        // Panchang details
        sb2.Append("<div class='section'><h3>Panchang Details</h3>");
        sb2.Append("Tithi: " + data2["tithi"] + "<br/>");
        sb2.Append("Paksha: " + data2["paksha"] + "<br/>");
        sb2.Append("Paya: " + data2["paya"]["type"] + " (" + data2["paya"]["result"] + ")<br/>");
        sb2.Append("Sunsign: " + data2["sunsign"] + "<br/>");
        sb2.Append("Moonsign: " + data2["moonsign"] + "<br/>");
        sb2.Append("Rashi Akshar: " + data2["rashi_akshar"] + "<br/>");
        sb2.Append("Chandramasa: " + data2["chandramasa"] + "<br/>");
        sb2.Append("Tatva: " + data2["tatva"] + "<br/>");
        sb2.Append("Prahar: " + data2["prahar"] + "<br/>");
        sb2.Append("Nakshatra: " + data2["nakshatra"] + "<br/>");
        sb2.Append("Vaar: " + data2["vaar"] + "</div>");

        // Koota attributes
        sb2.Append("<table class=\"table table-bordered table-sm text-white\"><tr><th>Attribute</th><th>Value</th></tr>");
        sb2.Append("<tr><td>Varna</td><td>" + data2["varna"] + "</td></tr>");
        sb2.Append("<tr><td>Vashya</td><td>" + data2["vashya"] + "</td></tr>");
        sb2.Append("<tr><td>Yoni</td><td>" + data2["yoni"] + "</td></tr>");
        sb2.Append("<tr><td>Gana</td><td>" + data2["gana"] + "</td></tr>");
        sb2.Append("<tr><td>Nadi</td><td>" + data2["nadi"] + "</td></tr>");
        sb2.Append("<tr><td>Yoga</td><td>" + data2["yoga"] + "</td></tr>");
        sb2.Append("<tr><td>Karana</td><td>" + data2["karana"] + "</td></tr>");
        sb2.Append("<tr><td>Ayanamsha</td><td>" + data2["ayanamsha"] + "</td></tr>");
        sb2.Append("<tr><td>Yunja</td><td>" + data2["yunja"] + "</td></tr>");
        sb2.Append("</table>");

        litBasicAstrologicalDetails.Text = sb2.ToString();
        #endregion




        #region API-Planets
        string sampleJsonPlanets = @"{
    ""success"": 1,
    ""data"": {
        ""date"": ""2025-07-23"",
        ""time"": ""03:45:00"",
        ""latitude"": ""43.083714"",
        ""longitude"": ""-79.065147"",
        ""timezone"": ""-4"",
        ""planets"": [
            {
                ""name"": ""Sun"",
                ""name_lan"": ""Sun"",
                ""full_degree"": ""96.5115748"",
                ""speed"": ""0.9552920"",
                ""is_retro"": ""false"",
                ""is_combusted"": ""false"",
                ""longitude"": ""6:30:41"",
                ""sign"": ""Cancer"",
                ""sign_no"": 4,
                ""rashi_lord"": ""Moon"",
                ""nakshatra"": ""Pushya"",
                ""nakshatra_pada"": 1,
                ""nakshatra_no"": 8,
                ""nakshatra_lord"": ""Saturn"",
                ""sub_lord"": ""Mercury"",
                ""awastha"": ""Vriddha"",
                ""karakamsha"": ""Dara"",
                ""house"": 2,
                ""type"": ""malefic"",
                ""lord_of"": ""Third House"",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Sun.png""
            },
            {
                ""name"": ""Moon"",
                ""name_lan"": ""Moon"",
                ""full_degree"": ""77.2513346"",
                ""speed"": ""14.1780534"",
                ""is_retro"": ""false"",
                ""is_combusted"": ""false"",
                ""longitude"": ""17:15:4"",
                ""sign"": ""Gemini"",
                ""sign_no"": 3,
                ""rashi_lord"": ""Mercury"",
                ""nakshatra"": ""Ardra"",
                ""nakshatra_pada"": 4,
                ""nakshatra_no"": 6,
                ""nakshatra_lord"": ""Rahu"",
                ""sub_lord"": ""Venus"",
                ""awastha"": ""Yuva"",
                ""karakamsha"": ""Maatra"",
                ""house"": 1,
                ""type"": ""malefic"",
                ""lord_of"": ""Second House"",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Moon.png""
            },
            {
                ""name"": ""Mercury"",
                ""name_lan"": ""Mercury"",
                ""full_degree"": ""110.3021979"",
                ""speed"": ""-0.4066619"",
                ""is_retro"": ""true"",
                ""is_combusted"": ""true"",
                ""longitude"": ""20:18:7"",
                ""sign"": ""Cancer"",
                ""sign_no"": 4,
                ""rashi_lord"": ""Moon"",
                ""nakshatra"": ""Ashlesha"",
                ""nakshatra_pada"": 2,
                ""nakshatra_no"": 9,
                ""nakshatra_lord"": ""Mercury"",
                ""sub_lord"": ""Venus"",
                ""awastha"": ""Kumar"",
                ""karakamsha"": ""Bhratra"",
                ""house"": 2,
                ""type"": ""benefic"",
                ""lord_of"": ""First,Fourth House"",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Mercury.png""
            },
            {
                ""name"": ""Venus"",
                ""name_lan"": ""Venus"",
                ""full_degree"": ""56.7689001"",
                ""speed"": ""1.1429592"",
                ""is_retro"": ""false"",
                ""is_combusted"": ""false"",
                ""longitude"": ""26:46:8"",
                ""sign"": ""Taurus"",
                ""sign_no"": 2,
                ""rashi_lord"": ""Venus"",
                ""nakshatra"": ""Mrigashira"",
                ""nakshatra_pada"": 2,
                ""nakshatra_no"": 5,
                ""nakshatra_lord"": ""Mars"",
                ""sub_lord"": ""Jupiter"",
                ""awastha"": ""Baal"",
                ""karakamsha"": ""Amatya"",
                ""house"": 12,
                ""type"": ""benefic"",
                ""lord_of"": ""Twelfth,Fifth House"",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Venus.png""
            },
            {
                ""name"": ""Mars"",
                ""name_lan"": ""Mars"",
                ""full_degree"": ""146.7831714"",
                ""speed"": ""0.6060293"",
                ""is_retro"": ""false"",
                ""is_combusted"": ""false"",
                ""longitude"": ""26:46:59"",
                ""sign"": ""Leo"",
                ""sign_no"": 5,
                ""rashi_lord"": ""Sun"",
                ""nakshatra"": ""Uttara Phalguni"",
                ""nakshatra_pada"": 1,
                ""nakshatra_no"": 12,
                ""nakshatra_lord"": ""Sun"",
                ""sub_lord"": ""Sun"",
                ""awastha"": ""Mrityu"",
                ""karakamsha"": ""Atma"",
                ""house"": 3,
                ""type"": ""malefic"",
                ""lord_of"": ""Eleventh,Sixth House"",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Mars.png""
            },
            {
                ""name"": ""Jupiter"",
                ""name_lan"": ""Jupiter"",
                ""full_degree"": ""75.6142000"",
                ""speed"": ""0.2197957"",
                ""is_retro"": ""false"",
                ""is_combusted"": ""false"",
                ""longitude"": ""15:36:51"",
                ""sign"": ""Gemini"",
                ""sign_no"": 3,
                ""rashi_lord"": ""Mercury"",
                ""nakshatra"": ""Ardra"",
                ""nakshatra_pada"": 3,
                ""nakshatra_no"": 6,
                ""nakshatra_lord"": ""Rahu"",
                ""sub_lord"": ""Venus"",
                ""awastha"": ""Yuva"",
                ""karakamsha"": ""Putra"",
                ""house"": 1,
                ""type"": ""neutral"",
                ""lord_of"": ""Seventh,Tenth House"",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Jupiter.png""
            },
            {
                ""name"": ""Saturn"",
                ""name_lan"": ""Saturn"",
                ""full_degree"": ""337.6326830"",
                ""speed"": ""-0.0170636"",
                ""is_retro"": ""true"",
                ""is_combusted"": ""false"",
                ""longitude"": ""7:37:57"",
                ""sign"": ""Pisces"",
                ""sign_no"": 12,
                ""rashi_lord"": ""Jupiter"",
                ""nakshatra"": ""Uttara Bhadrapada"",
                ""nakshatra_pada"": 2,
                ""nakshatra_no"": 26,
                ""nakshatra_lord"": ""Saturn"",
                ""sub_lord"": ""Ketu"",
                ""awastha"": ""Vriddha"",
                ""karakamsha"": ""Gnati"",
                ""house"": 10,
                ""type"": ""benefic"",
                ""lord_of"": ""Eighth,Ninth House"",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Saturn.png""
            },
            {
                ""name"": ""Uranus"",
                ""name_lan"": ""Uranus"",
                ""full_degree"": ""36.4266973"",
                ""speed"": ""0.0351518"",
                ""is_retro"": ""false"",
                ""is_combusted"": ""false"",
                ""longitude"": ""6:25:36"",
                ""sign"": ""Taurus"",
                ""sign_no"": 2,
                ""rashi_lord"": ""Venus"",
                ""nakshatra"": ""Krittika"",
                ""nakshatra_pada"": 3,
                ""nakshatra_no"": 3,
                ""nakshatra_lord"": ""Sun"",
                ""sub_lord"": ""Mercury"",
                ""awastha"": ""Vriddha"",
                ""karakamsha"": """",
                ""house"": 12,
                ""type"": """",
                ""lord_of"": """",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Uranus.png""
            },
            {
                ""name"": ""Neptune"",
                ""name_lan"": ""Neptune"",
                ""full_degree"": ""337.8703452"",
                ""speed"": ""-0.0097336"",
                ""is_retro"": ""true"",
                ""is_combusted"": ""false"",
                ""longitude"": ""7:52:13"",
                ""sign"": ""Pisces"",
                ""sign_no"": 12,
                ""rashi_lord"": ""Jupiter"",
                ""nakshatra"": ""Uttara Bhadrapada"",
                ""nakshatra_pada"": 2,
                ""nakshatra_no"": 26,
                ""nakshatra_lord"": ""Saturn"",
                ""sub_lord"": ""Ketu"",
                ""awastha"": ""Vriddha"",
                ""karakamsha"": """",
                ""house"": 10,
                ""type"": """",
                ""lord_of"": """",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Neptune.png""
            },
            {
                ""name"": ""Pluto"",
                ""name_lan"": ""Pluto"",
                ""full_degree"": ""278.4205667"",
                ""speed"": ""-0.0235970"",
                ""is_retro"": ""true"",
                ""is_combusted"": ""false"",
                ""longitude"": ""8:25:14"",
                ""sign"": ""Capricorn"",
                ""sign_no"": 10,
                ""rashi_lord"": ""Saturn"",
                ""nakshatra"": ""Uttara Ashada"",
                ""nakshatra_pada"": 4,
                ""nakshatra_no"": 21,
                ""nakshatra_lord"": ""Sun"",
                ""sub_lord"": ""Venus"",
                ""awastha"": ""Vriddha"",
                ""karakamsha"": """",
                ""house"": 8,
                ""type"": """",
                ""lord_of"": """",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Pluto.png""
            },
            {
                ""name"": ""Rahu"",
                ""name_lan"": ""Rahu"",
                ""full_degree"": ""326.5164966"",
                ""speed"": ""-0.0529920"",
                ""is_retro"": ""true"",
                ""is_combusted"": ""false"",
                ""longitude"": ""26:30:59"",
                ""sign"": ""Aquarius"",
                ""sign_no"": 11,
                ""rashi_lord"": ""Saturn"",
                ""nakshatra"": ""Purva Bhadrapada"",
                ""nakshatra_pada"": 2,
                ""nakshatra_no"": 25,
                ""nakshatra_lord"": ""Jupiter"",
                ""sub_lord"": ""Ketu"",
                ""awastha"": ""Mrityu"",
                ""karakamsha"": """",
                ""house"": 9,
                ""type"": """",
                ""lord_of"": """",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Rahu.png""
            },
            {
                ""name"": ""Ketu"",
                ""name_lan"": ""Ketu"",
                ""full_degree"": ""146.5165"",
                ""speed"": ""-0.0529920"",
                ""is_retro"": ""true"",
                ""is_combusted"": ""false"",
                ""longitude"": ""26:30:59"",
                ""sign"": ""Leo"",
                ""sign_no"": 5,
                ""rashi_lord"": ""Sun"",
                ""nakshatra"": ""Purva Phalguni"",
                ""nakshatra_pada"": 4,
                ""nakshatra_no"": 11,
                ""nakshatra_lord"": ""Venus"",
                ""sub_lord"": ""Ketu"",
                ""awastha"": ""Mrityu"",
                ""karakamsha"": """",
                ""house"": 3,
                ""type"": """",
                ""lord_of"": """",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Ketu.png""
            },
            {
                ""name"": ""Ascendant"",
                ""name_lan"": ""Ascendant"",
                ""full_degree"": ""67.9760792"",
                ""speed"": ""325.2802250"",
                ""is_retro"": ""false"",
                ""is_combusted"": ""false"",
                ""longitude"": ""7:58:33"",
                ""sign"": ""Gemini"",
                ""sign_no"": 3,
                ""rashi_lord"": ""Mercury"",
                ""nakshatra"": ""Ardra"",
                ""nakshatra_pada"": 1,
                ""nakshatra_no"": 6,
                ""nakshatra_lord"": ""Rahu"",
                ""sub_lord"": ""Rahu"",
                ""awastha"": ""Kumar"",
                ""karakamsha"": """",
                ""house"": 1,
                ""type"": """",
                ""lord_of"": """",
                ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Ascendant.png""
            }
        ]
    }
}
";

        JObject root = JObject.Parse(sampleJsonPlanets);
        JArray planets = (JArray)root["data"]["planets"];

        StringBuilder sb = new StringBuilder();

        // Table header
        sb.Append("<table class='table table-bordered table-sm text-white'>");
        sb.Append("<tr><th>Planet</th><th>Sign</th><th>House</th><th>Nakshatra</th><th>Retrograde</th><th>Combusted</th><th>Type</th><th>Lord Of</th><th>Awastha</th><th>Image</th></tr>");

        foreach (JObject planet in planets)
        {
            sb.Append("<tr>");
            sb.Append("<td>" + planet["name"] + "</td>");
            sb.Append("<td>" + planet["sign"] + "</td>");
            sb.Append("<td>" + planet["house"] + "</td>");
            sb.Append("<td>" + planet["nakshatra"] + " (Pada " + planet["nakshatra_pada"] + ")</td>");
            sb.Append("<td>" + planet["is_retro"] + "</td>");
            sb.Append("<td>" + planet["is_combusted"] + "</td>");
            sb.Append("<td>" + planet["type"] + "</td>");
            sb.Append("<td>" + planet["lord_of"] + "</td>");
            sb.Append("<td>" + planet["awastha"] + "</td>");
            sb.Append("<td><img src='" + planet["image"] + "' width='40' height='40'/></td>");
            sb.Append("</tr>");
        }

        sb.Append("</table>");

        // Add basic birth details
        sb.Append("<div class='section'><h3>Birth Context</h3>");
        sb.Append("Date: " + root["data"]["date"] + "<br/>");
        sb.Append("Time: " + root["data"]["time"] + "<br/>");
        sb.Append("Latitude: " + root["data"]["latitude"] + ", Longitude: " + root["data"]["longitude"] + "<br/>");
        sb.Append("Timezone: " + root["data"]["timezone"] + "</div>");

        litPlanetaryPositions.Text = sb.ToString();
        #endregion

    }
    protected void lnkGoToDownloadPdf_Click(object sender, EventArgs e)
    {
        Response.Redirect("payment.aspx", false);
    }
}
using Newtonsoft.Json.Linq;
using System;
using System.Text;

public partial class apitest_divineapi_sample_5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnMatchMaking_Click(object sender, EventArgs e)
    {
        #region API-1
        string sampleJson1 = @"{
                ""success"": 1,
                ""data"": {
                    ""ashtakoot_milan"": {
                        ""varna"": { ""p1"": ""Kshatriya"", ""p2"": ""Kshatriya"", ""points_obtained"": 1, ""max_ponits"": 1, ""area_of_life"": ""Karmic Classification"", ""description"": ""There shall be a complementing relationship..."" },
                        ""vashya"": { ""p1"": ""quadruped"", ""p2"": ""quadruped"", ""points_obtained"": 2, ""max_ponits"": 2, ""area_of_life"": ""Evolutionary Character"", ""description"": ""quadruped is vasya..."" },
                        ""tara"": { ""p1"": ""Sampat"", ""p2"": ""Sampat"", ""points_obtained"": 3, ""max_ponits"": 3, ""area_of_life"": ""Luck"", ""description"": ""There is a good match..."" },
                        ""yoni"": { ""p1"": ""Gaja"", ""p2"": ""Gaja"", ""points_obtained"": 4, ""max_ponits"": 4, ""area_of_life"": ""Sexual Compatibility"", ""description"": ""Rahul Kumar belongs to Gaja..."" },
                        ""graha_maitri"": { ""p1"": ""Mars"", ""p2"": ""Mars"", ""points_obtained"": 5, ""max_ponits"": 5, ""area_of_life"": ""Love and Affection"", ""description"": ""The match between the pair is good..."" },
                        ""gana"": { ""p1"": ""Manushya"", ""p2"": ""Manushya"", ""points_obtained"": 6, ""max_ponits"": 6, ""area_of_life"": ""Temperament"", ""description"": ""Rahul Kumar is Manushya Gana..."" },
                        ""bhakoota"": { ""p1"": ""Aries"", ""p2"": ""Aries"", ""points_obtained"": 7, ""max_ponits"": 7, ""area_of_life"": ""Emotional Bonding"", ""description"": ""The couple will have great emotional connectivity..."" },
                        ""nadi"": { ""p1"": ""Madhya"", ""p2"": ""Madhya"", ""points_obtained"": 0, ""max_ponits"": 8, ""area_of_life"": ""Health and Progeny"", ""description"": ""The nadi score is 0..."" }
                    },
                    ""ashtakoot_milan_result"": { ""points_obtained"": 28, ""max_ponits"": 36, ""is_compatible"": ""true"", ""content"": ""The compatibility score between the male and female is 28 out of 36..."" },
                    ""manglik_dosha"": { ""p1"": ""false"", ""p2"": ""false"" },
                    ""nadi_dosha"": ""true"",
                    ""bhakoot_dosha"": ""false""
                }
            }";

        JObject root1 = JObject.Parse(sampleJson1);
        JObject milan1 = (JObject)root1["data"]["ashtakoot_milan"];
        JObject result1 = (JObject)root1["data"]["ashtakoot_milan_result"];
        JObject manglik1 = (JObject)root1["data"]["manglik_dosha"];

        StringBuilder sb1 = new StringBuilder();

        sb1.Append("<table><tr><th>Koota</th><th>Person 1</th><th>Person 2</th><th>Points</th><th>Max Points</th><th>Area of Life</th><th>Description</th></tr>");

        foreach (var prop in milan1.Properties())
        {
            JObject koota = (JObject)prop.Value;
            sb1.Append("<tr>");
            sb1.Append("<td>" + prop.Name + "</td>");
            sb1.Append("<td>" + koota["p1"] + "</td>");
            sb1.Append("<td>" + koota["p2"] + "</td>");
            sb1.Append("<td>" + koota["points_obtained"] + "</td>");
            sb1.Append("<td>" + koota["max_ponits"] + "</td>");
            sb1.Append("<td>" + koota["area_of_life"] + "</td>");
            sb1.Append("<td>" + koota["description"] + "</td>");
            sb1.Append("</tr>");
        }

        sb1.Append("</table>");

        // Overall result
        sb1.Append("<div class='section'><h3>Overall Result</h3>");
        sb1.Append("Points Obtained: " + result1["points_obtained"] + " / " + result1["max_ponits"] + "<br/>");
        sb1.Append("Compatible: " + result1["is_compatible"] + "<br/>");
        sb1.Append("Summary: " + result1["content"] + "</div>");

        // Doshas
        sb1.Append("<div class='section'><h3>Dosha Status</h3>");
        sb1.Append("Manglik (P1): " + manglik1["p1"] + ", Manglik (P2): " + manglik1["p2"] + "<br/>");
        sb1.Append("Nadi Dosha: " + root1["data"]["nadi_dosha"] + "<br/>");
        sb1.Append("Bhakoot Dosha: " + root1["data"]["bhakoot_dosha"] + "</div>");

        litComparison.Text = sb1.ToString();
        #endregion


        #region API-2
        // Paste Dashakoot JSON here (or Ashtakoot depending on use case)
        string sampleJson2 = @"{
                ""success"": 1,
                ""data"": {
                    ""dashakoot_milan"": {
                        ""dina"": { ""p1"": ""Punarvasu"", ""p2"": ""Satabhisha"", ""result"": ""Good"", ""points_obtained"": 3, ""max_ponits"": 3, ""area_of_life"": ""This factor is analyzed..."" },
                        ""gana"": { ""p1"": ""Dev"", ""p2"": ""Rakshasa"", ""result"": ""Not Satisfactory"", ""points_obtained"": 0, ""max_ponits"": 4, ""area_of_life"": ""This denotes the likeness..."" },
                        ""yoni"": { ""p1"": ""Marjar"", ""p2"": ""Ashwa"", ""result"": ""Satisfactory"", ""points_obtained"": 2, ""max_ponits"": 4, ""area_of_life"": ""Yoni determines the sexual attraction..."" },
                        ""rashi"": { ""p1"": ""Cancer"", ""p2"": ""Aquarius"", ""result"": ""Not Satisfactory"", ""points_obtained"": 0, ""max_ponits"": 7, ""area_of_life"": ""Rashi reflects the prospect..."" },
                        ""rajju"": { ""p1"": ""Nabhi"", ""p2"": ""Kanta"", ""result"": ""Good"", ""points_obtained"": 5, ""max_ponits"": 5, ""area_of_life"": ""Rajju koota is the consideration..."" },
                        ""rasyadhipati"": { ""p1"": ""Moon"", ""p2"": ""Saturn"", ""result"": ""Not Satisfactory"", ""points_obtained"": 0.5, ""max_ponits"": 5, ""area_of_life"": ""This koota determines the level of friendship..."" },
                        ""vedha"": { ""p1"": ""Punarvasu"", ""p2"": ""Satabhisha"", ""result"": ""Good"", ""points_obtained"": 2, ""max_ponits"": 2, ""area_of_life"": ""Vedha refers to the afflictions..."" },
                        ""vashya"": { ""p1"": ""Cancer"", ""p2"": ""Aquarius"", ""result"": ""Not Satisfactory"", ""points_obtained"": 0, ""max_ponits"": 2, ""area_of_life"": ""Vasya koota tests the compatibility..."" },
                        ""mahendra"": { ""p1"": ""Punarvasu"", ""p2"": ""Satabhisha"", ""result"": ""Not Satisfactory"", ""points_obtained"": 0, ""max_ponits"": 2, ""area_of_life"": ""This koota considers the wealth..."" },
                        ""streedargha"": { ""p1"": ""Punarvasu"", ""p2"": ""Satabhisha"", ""result"": ""Satisfactory"", ""points_obtained"": 1, ""max_ponits"": 2, ""area_of_life"": ""This Koota ensures the long life..."" }
                    },
                    ""dashakoot_milan_result"": { ""points_obtained"": 13.5, ""max_ponits"": 36, ""is_compatible"": ""false"", ""content"": ""The compatibility score between the male and female is only 13.5 out of 36..."" },
                    ""manglik_dosha"": { ""p1"": ""false"", ""p2"": ""false"" },
                    ""rajju_dosha"": ""false""
                }
            }";

        JObject root2 = JObject.Parse(sampleJson2);
        JObject milan2 = (JObject)root2["data"]["dashakoot_milan"];
        JObject result2 = (JObject)root2["data"]["dashakoot_milan_result"];
        JObject manglik2 = (JObject)root2["data"]["manglik_dosha"];

        StringBuilder sb2 = new StringBuilder();

        sb2.Append("<table><tr><th>Koota</th><th>Person 1</th><th>Person 2</th><th>Result</th><th>Points</th><th>Max Points</th><th>Area of Life</th></tr>");

        foreach (var prop in milan2.Properties())
        {
            JObject koota2 = (JObject)prop.Value;
            sb2.Append("<tr>");
            sb2.Append("<td>" + prop.Name + "</td>");
            sb2.Append("<td>" + koota2["p1"] + "</td>");
            sb2.Append("<td>" + koota2["p2"] + "</td>");
            sb2.Append("<td>" + koota2["result"] + "</td>");
            sb2.Append("<td>" + koota2["points_obtained"] + "</td>");
            sb2.Append("<td>" + koota2["max_ponits"] + "</td>");
            sb2.Append("<td>" + koota2["area_of_life"] + "</td>");
            sb2.Append("</tr>");
        }

        sb2.Append("</table>");

        // Overall result
        sb2.Append("<div class='section'><h3>Overall Result</h3>");
        sb2.Append("Points Obtained: " + result2["points_obtained"] + " / " + result2["max_ponits"] + "<br/>");
        sb2.Append("Compatible: " + result2["is_compatible"] + "<br/>");
        sb2.Append("Summary: " + result2["content"] + "</div>");

        // Doshas
        sb2.Append("<div class='section'><h3>Dosha Status</h3>");
        sb2.Append("Manglik (P1): " + manglik2["p1"] + ", Manglik (P2): " + manglik2["p2"] + "<br/>");
        sb2.Append("Rajju Dosha: " + root2["data"]["rajju_dosha"] + "</div>");

        litComparisonDashakoot.Text = sb2.ToString();
        #endregion


        #region API-3
        string sampleJson3 = @"{
    ""success"": 1,
    ""data"": {
        ""nav_pancham_yoga"": {
            ""Sun"": {
                ""Sun"": ""1/1"",
                ""Moon"": ""2/12"",
                ""Mercury"": ""2/12"",
                ""Venus"": ""3/11"",
                ""Mars"": ""1/1"",
                ""Jupiter"": ""4/10"",
                ""Saturn"": ""2/12"",
                ""Uranus"": ""5/9"",
                ""Neptune"": ""5/9"",
                ""Pluto"": ""1/7"",
                ""Rahu"": ""4/10"",
                ""Ketu"": ""4/10"",
                ""Ascendant"": ""5/9""
            },
            ""Moon"": {
                ""Sun"": ""2/12"",
                ""Moon"": ""1/1"",
                ""Mercury"": ""1/1"",
                ""Venus"": ""2/12"",
                ""Mars"": ""2/12"",
                ""Jupiter"": ""3/11"",
                ""Saturn"": ""1/1"",
                ""Uranus"": ""4/10"",
                ""Neptune"": ""4/10"",
                ""Pluto"": ""6/8"",
                ""Rahu"": ""5/9"",
                ""Ketu"": ""3/11"",
                ""Ascendant"": ""6/8""
            },
            ""Mercury"": {
                ""Sun"": ""2/12"",
                ""Moon"": ""1/1"",
                ""Mercury"": ""1/1"",
                ""Venus"": ""2/12"",
                ""Mars"": ""2/12"",
                ""Jupiter"": ""3/11"",
                ""Saturn"": ""1/1"",
                ""Uranus"": ""4/10"",
                ""Neptune"": ""4/10"",
                ""Pluto"": ""6/8"",
                ""Rahu"": ""5/9"",
                ""Ketu"": ""3/11"",
                ""Ascendant"": ""6/8""
            },
            ""Venus"": {
                ""Sun"": ""3/11"",
                ""Moon"": ""2/12"",
                ""Mercury"": ""2/12"",
                ""Venus"": ""1/1"",
                ""Mars"": ""3/11"",
                ""Jupiter"": ""2/12"",
                ""Saturn"": ""2/12"",
                ""Uranus"": ""3/11"",
                ""Neptune"": ""3/11"",
                ""Pluto"": ""5/9"",
                ""Rahu"": ""6/8"",
                ""Ketu"": ""2/12"",
                ""Ascendant"": ""1/7""
            },
            ""Mars"": {
                ""Sun"": ""1/1"",
                ""Moon"": ""2/12"",
                ""Mercury"": ""2/12"",
                ""Venus"": ""3/11"",
                ""Mars"": ""1/1"",
                ""Jupiter"": ""4/10"",
                ""Saturn"": ""2/12"",
                ""Uranus"": ""5/9"",
                ""Neptune"": ""5/9"",
                ""Pluto"": ""1/7"",
                ""Rahu"": ""4/10"",
                ""Ketu"": ""4/10"",
                ""Ascendant"": ""5/9""
            },
            ""Jupiter"": {
                ""Sun"": ""4/10"",
                ""Moon"": ""3/11"",
                ""Mercury"": ""3/11"",
                ""Venus"": ""2/12"",
                ""Mars"": ""4/10"",
                ""Jupiter"": ""1/1"",
                ""Saturn"": ""3/11"",
                ""Uranus"": ""2/12"",
                ""Neptune"": ""2/12"",
                ""Pluto"": ""4/10"",
                ""Rahu"": ""1/7"",
                ""Ketu"": ""1/1"",
                ""Ascendant"": ""6/8""
            },
            ""Saturn"": {
                ""Sun"": ""2/12"",
                ""Moon"": ""1/1"",
                ""Mercury"": ""1/1"",
                ""Venus"": ""2/12"",
                ""Mars"": ""2/12"",
                ""Jupiter"": ""3/11"",
                ""Saturn"": ""1/1"",
                ""Uranus"": ""4/10"",
                ""Neptune"": ""4/10"",
                ""Pluto"": ""6/8"",
                ""Rahu"": ""5/9"",
                ""Ketu"": ""3/11"",
                ""Ascendant"": ""6/8""
            },
            ""Uranus"": {
                ""Sun"": ""5/9"",
                ""Moon"": ""4/10"",
                ""Mercury"": ""4/10"",
                ""Venus"": ""3/11"",
                ""Mars"": ""5/9"",
                ""Jupiter"": ""2/12"",
                ""Saturn"": ""4/10"",
                ""Uranus"": ""1/1"",
                ""Neptune"": ""1/1"",
                ""Pluto"": ""3/11"",
                ""Rahu"": ""6/8"",
                ""Ketu"": ""2/12"",
                ""Ascendant"": ""5/9""
            },
            ""Neptune"": {
                ""Sun"": ""5/9"",
                ""Moon"": ""4/10"",
                ""Mercury"": ""4/10"",
                ""Venus"": ""3/11"",
                ""Mars"": ""5/9"",
                ""Jupiter"": ""2/12"",
                ""Saturn"": ""4/10"",
                ""Uranus"": ""1/1"",
                ""Neptune"": ""1/1"",
                ""Pluto"": ""3/11"",
                ""Rahu"": ""6/8"",
                ""Ketu"": ""2/12"",
                ""Ascendant"": ""5/9""
            },
            ""Pluto"": {
                ""Sun"": ""1/7"",
                ""Moon"": ""6/8"",
                ""Mercury"": ""6/8"",
                ""Venus"": ""5/9"",
                ""Mars"": ""1/7"",
                ""Jupiter"": ""4/10"",
                ""Saturn"": ""6/8"",
                ""Uranus"": ""3/11"",
                ""Neptune"": ""3/11"",
                ""Pluto"": ""1/1"",
                ""Rahu"": ""4/10"",
                ""Ketu"": ""4/10"",
                ""Ascendant"": ""3/11""
            },
            ""Rahu"": {
                ""Sun"": ""4/10"",
                ""Moon"": ""5/9"",
                ""Mercury"": ""5/9"",
                ""Venus"": ""6/8"",
                ""Mars"": ""4/10"",
                ""Jupiter"": ""1/7"",
                ""Saturn"": ""5/9"",
                ""Uranus"": ""6/8"",
                ""Neptune"": ""6/8"",
                ""Pluto"": ""4/10"",
                ""Rahu"": ""1/1"",
                ""Ketu"": ""1/7"",
                ""Ascendant"": ""2/12""
            },
            ""Ketu"": {
                ""Sun"": ""4/10"",
                ""Moon"": ""3/11"",
                ""Mercury"": ""3/11"",
                ""Venus"": ""2/12"",
                ""Mars"": ""4/10"",
                ""Jupiter"": ""1/1"",
                ""Saturn"": ""3/11"",
                ""Uranus"": ""2/12"",
                ""Neptune"": ""2/12"",
                ""Pluto"": ""4/10"",
                ""Rahu"": ""1/7"",
                ""Ketu"": ""1/1"",
                ""Ascendant"": ""6/8""
            },
            ""Ascendant"": {
                ""Sun"": ""5/9"",
                ""Moon"": ""6/8"",
                ""Mercury"": ""6/8"",
                ""Venus"": ""1/7"",
                ""Mars"": ""5/9"",
                ""Jupiter"": ""6/8"",
                ""Saturn"": ""6/8"",
                ""Uranus"": ""5/9"",
                ""Neptune"": ""5/9"",
                ""Pluto"": ""3/11"",
                ""Rahu"": ""2/12"",
                ""Ketu"": ""6/8"",
                ""Ascendant"": ""1/1""
            }
        }
    }
}";

        JObject root3 = JObject.Parse(sampleJson3);
        JObject yoga3 = (JObject)root3["data"]["nav_pancham_yoga"];

        StringBuilder sb3 = new StringBuilder();

        // Get the first planet object safely (no LINQ First())
        JObject firstPlanet = null;
        foreach (var prop in yoga3.Properties())
        {
            firstPlanet = (JObject)prop.Value;
            break; // stop after first
        }

        // Build header row
        sb3.Append("<table border='1'><tr><th>Planet</th>");
        foreach (var inner in firstPlanet.Properties())
        {
            sb3.Append("<th>" + inner.Name + "</th>");
        }
        sb3.Append("</tr>");

        // Build rows for each planet
        foreach (var prop in yoga3.Properties())
        {
            sb3.Append("<tr>");
            sb3.Append("<td>" + prop.Name + "</td>");
            JObject planetRow = (JObject)prop.Value;
            foreach (var inner in planetRow.Properties())
            {
                sb3.Append("<td>" + inner.Value + "</td>");
            }
            sb3.Append("</tr>");
        }

        sb3.Append("</table>");

        litNavPanchamYoga.Text = sb3.ToString();
        #endregion


        #region API-4
        // Sample JSON response
        string sampleJson4 = @"{
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

        JObject root4 = JObject.Parse(sampleJson4);
        JObject p14 = (JObject)root4["data"]["p1"];
        JObject p24 = (JObject)root4["data"]["p2"];

        // Build HTML table
        string table4 = "<table><tr><th>Field</th><th>Person 1</th><th>Person 2</th></tr>";

        foreach (var field4 in p14.Properties())
        {
            string fieldName4 = field4.Name;
            string val14 = field4.Value.Type == JTokenType.Object ? field4.Value.ToString() : field4.Value.ToString();
            string val24 = p24[fieldName4] != null ? (p24[fieldName4].Type == JTokenType.Object ? p24[fieldName4].ToString() : p24[fieldName4].ToString()) : "";

            // Special handling for nested 'paya'
            if (fieldName4 == "paya")
            {
                val14 = p14["paya"]["type"] + " (" + p14["paya"]["result"] + ")";
                val24 = p24["paya"]["type"] + " (" + p24["paya"]["result"] + ")";
            }

            table4 += "<tr><td>" + fieldName4 + "</td><td>" + val14 + "</td><td>" + val24 + "</td></tr>";
        }

        table4 += "</table>";

        litTable4.Text = table4;
        #endregion


        #region API-5
        // Paste your full JSON response here
        string sampleJson5 = @"{
    ""success"": 1,
    ""data"": {
        ""p1"": {
            ""date"": ""1990-06-24"",
            ""time"": ""14:30:00"",
            ""latitude"": 28.6139,
            ""longitude"": 77.209,
            ""timezone"": 5.5,
            ""planets"": [
                {
                    ""name"": ""Sun"",
                    ""name_lan"": ""Sun"",
                    ""full_degree"": ""68.8754426"",
                    ""speed"": ""0.9542966"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""8:52:31"",
                    ""sign"": ""Gemini"",
                    ""sign_no"": 3,
                    ""rashi_lord"": ""Mercury"",
                    ""nakshatra"": ""Aradra"",
                    ""nakshatra_pada"": 1,
                    ""nakshatra_no"": 6,
                    ""nakshatra_lord"": ""Rahu"",
                    ""sub_lord"": ""Jupiter"",
                    ""awastha"": ""Kumar"",
                    ""karakamsha"": ""Putra"",
                    ""house"": 9,
                    ""type"": ""malefic"",
                    ""lord_of"": ""Eleventh House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Sun.png""
                },
                {
                    ""name"": ""Moon"",
                    ""name_lan"": ""Moon"",
                    ""full_degree"": ""90.6531177"",
                    ""speed"": ""14.4040122"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""0:39:11"",
                    ""sign"": ""Cancer"",
                    ""sign_no"": 4,
                    ""rashi_lord"": ""Moon"",
                    ""nakshatra"": ""Punarvasu"",
                    ""nakshatra_pada"": 4,
                    ""nakshatra_no"": 7,
                    ""nakshatra_lord"": ""Jupiter"",
                    ""sub_lord"": ""Mars"",
                    ""awastha"": ""Mrityu"",
                    ""karakamsha"": ""Dara"",
                    ""house"": 10,
                    ""type"": ""neutral"",
                    ""lord_of"": ""Tenth House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Moon.png""
                },
                {
                    ""name"": ""Mercury"",
                    ""name_lan"": ""Mercury"",
                    ""full_degree"": ""58.8783221"",
                    ""speed"": ""2.0735371"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""true"",
                    ""longitude"": ""28:52:41"",
                    ""sign"": ""Taurus"",
                    ""sign_no"": 2,
                    ""rashi_lord"": ""Venus"",
                    ""nakshatra"": ""Mrigashirsha"",
                    ""nakshatra_pada"": 2,
                    ""nakshatra_no"": 5,
                    ""nakshatra_lord"": ""Mars"",
                    ""sub_lord"": ""Saturn"",
                    ""awastha"": ""Baal"",
                    ""karakamsha"": ""Amatya"",
                    ""house"": 8,
                    ""type"": ""benefic"",
                    ""lord_of"": ""Ninth,Twelfth House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Mercury.png""
                },
                {
                    ""name"": ""Venus"",
                    ""name_lan"": ""Venus"",
                    ""full_degree"": ""35.5208643"",
                    ""speed"": ""1.1833104"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""5:31:15"",
                    ""sign"": ""Taurus"",
                    ""sign_no"": 2,
                    ""rashi_lord"": ""Venus"",
                    ""nakshatra"": ""Krittika"",
                    ""nakshatra_pada"": 3,
                    ""nakshatra_no"": 3,
                    ""nakshatra_lord"": ""Sun"",
                    ""sub_lord"": ""Mercury"",
                    ""awastha"": ""Mrityu"",
                    ""karakamsha"": ""Gnati"",
                    ""house"": 8,
                    ""type"": ""benefic"",
                    ""lord_of"": ""Eighth,First House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Venus.png""
                },
                {
                    ""name"": ""Mars"",
                    ""name_lan"": ""Mars"",
                    ""full_degree"": ""353.6450772"",
                    ""speed"": ""0.7072227"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""23:38:42"",
                    ""sign"": ""Pisces"",
                    ""sign_no"": 12,
                    ""rashi_lord"": ""Jupiter"",
                    ""nakshatra"": ""Revati"",
                    ""nakshatra_pada"": 3,
                    ""nakshatra_no"": 27,
                    ""nakshatra_lord"": ""Mercury"",
                    ""sub_lord"": ""Mars"",
                    ""awastha"": ""Kumar"",
                    ""karakamsha"": ""Maatra"",
                    ""house"": 6,
                    ""type"": ""malefic"",
                    ""lord_of"": ""Seventh,Second House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Mars.png""
                },
                {
                    ""name"": ""Jupiter"",
                    ""name_lan"": ""Jupiter"",
                    ""full_degree"": ""84.1045271"",
                    ""speed"": ""0.2208074"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""24:6:16"",
                    ""sign"": ""Gemini"",
                    ""sign_no"": 3,
                    ""rashi_lord"": ""Mercury"",
                    ""nakshatra"": ""Punarvasu"",
                    ""nakshatra_pada"": 2,
                    ""nakshatra_no"": 7,
                    ""nakshatra_lord"": ""Jupiter"",
                    ""sub_lord"": ""Mercury"",
                    ""awastha"": ""Mrityu"",
                    ""karakamsha"": ""Bhratra"",
                    ""house"": 9,
                    ""type"": ""malefic"",
                    ""lord_of"": ""Third,Sixth House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Jupiter.png""
                },
                {
                    ""name"": ""Saturn"",
                    ""name_lan"": ""Saturn"",
                    ""full_degree"": ""269.7474605"",
                    ""speed"": ""-0.0664860"",
                    ""is_retro"": ""true"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""29:44:50"",
                    ""sign"": ""Sagittarius"",
                    ""sign_no"": 9,
                    ""rashi_lord"": ""Jupiter"",
                    ""nakshatra"": ""Uttara Ashadha"",
                    ""nakshatra_pada"": 1,
                    ""nakshatra_no"": 21,
                    ""nakshatra_lord"": ""Sun"",
                    ""sub_lord"": ""Rahu"",
                    ""awastha"": ""Mrityu"",
                    ""karakamsha"": ""Atma"",
                    ""house"": 3,
                    ""type"": ""benefic"",
                    ""lord_of"": ""Fourth,Fifth House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Saturn.png""
                },
                {
                    ""name"": ""Uranus"",
                    ""name_lan"": ""Uranus"",
                    ""full_degree"": ""254.0847117"",
                    ""speed"": ""-0.0404188"",
                    ""is_retro"": ""true"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""14:5:4"",
                    ""sign"": ""Sagittarius"",
                    ""sign_no"": 9,
                    ""rashi_lord"": ""Jupiter"",
                    ""nakshatra"": ""Poorva Ashadha"",
                    ""nakshatra_pada"": 1,
                    ""nakshatra_no"": 20,
                    ""nakshatra_lord"": ""Venus"",
                    ""sub_lord"": ""Venus"",
                    ""awastha"": ""Yuva"",
                    ""karakamsha"": """",
                    ""house"": 3,
                    ""type"": """",
                    ""lord_of"": """",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Uranus.png""
                },
                {
                    ""name"": ""Neptune"",
                    ""name_lan"": ""Neptune"",
                    ""full_degree"": ""259.7606058"",
                    ""speed"": ""-0.0264630"",
                    ""is_retro"": ""true"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""19:45:38"",
                    ""sign"": ""Sagittarius"",
                    ""sign_no"": 9,
                    ""rashi_lord"": ""Jupiter"",
                    ""nakshatra"": ""Poorva Ashadha"",
                    ""nakshatra_pada"": 2,
                    ""nakshatra_no"": 20,
                    ""nakshatra_lord"": ""Venus"",
                    ""sub_lord"": ""Rahu"",
                    ""awastha"": ""Vriddha"",
                    ""karakamsha"": """",
                    ""house"": 3,
                    ""type"": """",
                    ""lord_of"": """",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Neptune.png""
                },
                {
                    ""name"": ""Pluto"",
                    ""name_lan"": ""Pluto"",
                    ""full_degree"": ""201.5108619"",
                    ""speed"": ""-0.0165056"",
                    ""is_retro"": ""true"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""21:30:39"",
                    ""sign"": ""Libra"",
                    ""sign_no"": 7,
                    ""rashi_lord"": ""Venus"",
                    ""nakshatra"": ""Vishakha"",
                    ""nakshatra_pada"": 1,
                    ""nakshatra_no"": 16,
                    ""nakshatra_lord"": ""Jupiter"",
                    ""sub_lord"": ""Jupiter"",
                    ""awastha"": ""Vriddha"",
                    ""karakamsha"": """",
                    ""house"": 1,
                    ""type"": """",
                    ""lord_of"": """",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Pluto.png""
                },
                {
                    ""name"": ""Rahu"",
                    ""name_lan"": ""Rahu"",
                    ""full_degree"": ""285.5002821"",
                    ""speed"": ""-0.0529920"",
                    ""is_retro"": ""true"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""15:30:1"",
                    ""sign"": ""Capricorn"",
                    ""sign_no"": 10,
                    ""rashi_lord"": ""Saturn"",
                    ""nakshatra"": ""Shravan"",
                    ""nakshatra_pada"": 2,
                    ""nakshatra_no"": 22,
                    ""nakshatra_lord"": ""Moon"",
                    ""sub_lord"": ""Jupiter"",
                    ""awastha"": ""Yuva"",
                    ""karakamsha"": """",
                    ""house"": 4,
                    ""type"": """",
                    ""lord_of"": """",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Rahu.png""
                },
                {
                    ""name"": ""Ketu"",
                    ""name_lan"": ""Ketu"",
                    ""full_degree"": ""105.50028"",
                    ""speed"": ""-0.0529920"",
                    ""is_retro"": ""true"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""15:30:1"",
                    ""sign"": ""Cancer"",
                    ""sign_no"": 4,
                    ""rashi_lord"": ""Moon"",
                    ""nakshatra"": ""Pushya"",
                    ""nakshatra_pada"": 4,
                    ""nakshatra_no"": 8,
                    ""nakshatra_lord"": ""Saturn"",
                    ""sub_lord"": ""Jupiter"",
                    ""awastha"": ""Yuva"",
                    ""karakamsha"": """",
                    ""house"": 10,
                    ""type"": """",
                    ""lord_of"": """",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Ketu.png""
                },
                {
                    ""name"": ""Ascendant"",
                    ""name_lan"": ""Ascendant"",
                    ""full_degree"": ""186.4461639"",
                    ""speed"": ""312.1685558"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""6:26:46"",
                    ""sign"": ""Libra"",
                    ""sign_no"": 7,
                    ""rashi_lord"": ""Venus"",
                    ""nakshatra"": ""Chitra"",
                    ""nakshatra_pada"": 4,
                    ""nakshatra_no"": 14,
                    ""nakshatra_lord"": ""Mars"",
                    ""sub_lord"": ""Moon"",
                    ""awastha"": ""Kumar"",
                    ""karakamsha"": """",
                    ""house"": 1,
                    ""type"": """",
                    ""lord_of"": """",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Ascendant.png""
                }
            ]
        },
        ""p2"": {
            ""date"": ""1992-08-15"",
            ""time"": ""09:45:00"",
            ""latitude"": 19.076,
            ""longitude"": 72.8777,
            ""timezone"": 5.5,
            ""planets"": [
                {
                    ""name"": ""Sun"",
                    ""name_lan"": ""Sun"",
                    ""full_degree"": ""118.8272727"",
                    ""speed"": ""0.9605447"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""28:49:38"",
                    ""sign"": ""Cancer"",
                    ""sign_no"": 4,
                    ""rashi_lord"": ""Moon"",
                    ""nakshatra"": ""Ashleysha"",
                    ""nakshatra_pada"": 4,
                    ""nakshatra_no"": 9,
                    ""nakshatra_lord"": ""Mercury"",
                    ""sub_lord"": ""Saturn"",
                    ""awastha"": ""Baal"",
                    ""karakamsha"": ""Atma"",
                    ""house"": 11,
                    ""type"": ""malefic"",
                    ""lord_of"": ""Twelfth House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Sun.png""
                },
                {
                    ""name"": ""Moon"",
                    ""name_lan"": ""Moon"",
                    ""full_degree"": ""317.8274825"",
                    ""speed"": ""11.9068816"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""17:49:38"",
                    ""sign"": ""Aquarius"",
                    ""sign_no"": 11,
                    ""rashi_lord"": ""Saturn"",
                    ""nakshatra"": ""Satabhisha"",
                    ""nakshatra_pada"": 4,
                    ""nakshatra_no"": 24,
                    ""nakshatra_lord"": ""Rahu"",
                    ""sub_lord"": ""Sun"",
                    ""awastha"": ""Yuva"",
                    ""karakamsha"": ""Putra"",
                    ""house"": 6,
                    ""type"": ""malefic"",
                    ""lord_of"": ""Eleventh House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Moon.png""
                },
                {
                    ""name"": ""Mercury"",
                    ""name_lan"": ""Mercury"",
                    ""full_degree"": ""102.4594295"",
                    ""speed"": ""0.2455948"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""12:27:33"",
                    ""sign"": ""Cancer"",
                    ""sign_no"": 4,
                    ""rashi_lord"": ""Moon"",
                    ""nakshatra"": ""Pushya"",
                    ""nakshatra_pada"": 3,
                    ""nakshatra_no"": 8,
                    ""nakshatra_lord"": ""Saturn"",
                    ""sub_lord"": ""Mars"",
                    ""awastha"": ""Yuva"",
                    ""karakamsha"": ""Dara"",
                    ""house"": 11,
                    ""type"": ""benefic"",
                    ""lord_of"": ""Tenth,First House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Mercury.png""
                },
                {
                    ""name"": ""Venus"",
                    ""name_lan"": ""Venus"",
                    ""full_degree"": ""135.9677535"",
                    ""speed"": ""1.2294696"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""15:58:3"",
                    ""sign"": ""Leo"",
                    ""sign_no"": 5,
                    ""rashi_lord"": ""Sun"",
                    ""nakshatra"": ""Purva Phalguni"",
                    ""nakshatra_pada"": 1,
                    ""nakshatra_no"": 11,
                    ""nakshatra_lord"": ""Venus"",
                    ""sub_lord"": ""Sun"",
                    ""awastha"": ""Yuva"",
                    ""karakamsha"": ""Gnati"",
                    ""house"": 12,
                    ""type"": ""benefic"",
                    ""lord_of"": ""Ninth,Second House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Venus.png""
                },
                {
                    ""name"": ""Mars"",
                    ""name_lan"": ""Mars"",
                    ""full_degree"": ""49.1069111"",
                    ""speed"": ""0.6445111"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""19:6:24"",
                    ""sign"": ""Taurus"",
                    ""sign_no"": 2,
                    ""rashi_lord"": ""Venus"",
                    ""nakshatra"": ""Rohini"",
                    ""nakshatra_pada"": 3,
                    ""nakshatra_no"": 4,
                    ""nakshatra_lord"": ""Moon"",
                    ""sub_lord"": ""Mercury"",
                    ""awastha"": ""Kumar"",
                    ""karakamsha"": ""Maatra"",
                    ""house"": 9,
                    ""type"": ""malefic"",
                    ""lord_of"": ""Eighth,Third House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Mars.png""
                },
                {
                    ""name"": ""Jupiter"",
                    ""name_lan"": ""Jupiter"",
                    ""full_degree"": ""144.2053904"",
                    ""speed"": ""0.2047836"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""24:12:19"",
                    ""sign"": ""Leo"",
                    ""sign_no"": 5,
                    ""rashi_lord"": ""Sun"",
                    ""nakshatra"": ""Purva Phalguni"",
                    ""nakshatra_pada"": 4,
                    ""nakshatra_no"": 11,
                    ""nakshatra_lord"": ""Venus"",
                    ""sub_lord"": ""Mercury"",
                    ""awastha"": ""Mrityu"",
                    ""karakamsha"": ""Amatya"",
                    ""house"": 12,
                    ""type"": ""neutral"",
                    ""lord_of"": ""Fourth,Seventh House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Jupiter.png""
                },
                {
                    ""name"": ""Saturn"",
                    ""name_lan"": ""Saturn"",
                    ""full_degree"": ""290.7993557"",
                    ""speed"": ""-0.0737215"",
                    ""is_retro"": ""true"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""20:47:57"",
                    ""sign"": ""Capricorn"",
                    ""sign_no"": 10,
                    ""rashi_lord"": ""Saturn"",
                    ""nakshatra"": ""Shravan"",
                    ""nakshatra_pada"": 4,
                    ""nakshatra_no"": 22,
                    ""nakshatra_lord"": ""Moon"",
                    ""sub_lord"": ""Venus"",
                    ""awastha"": ""Kumar"",
                    ""karakamsha"": ""Bhratra"",
                    ""house"": 5,
                    ""type"": ""benefic"",
                    ""lord_of"": ""Fifth,Sixth House"",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Saturn.png""
                },
                {
                    ""name"": ""Uranus"",
                    ""name_lan"": ""Uranus"",
                    ""full_degree"": ""260.8788312"",
                    ""speed"": ""-0.0288575"",
                    ""is_retro"": ""true"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""20:52:43"",
                    ""sign"": ""Sagittarius"",
                    ""sign_no"": 9,
                    ""rashi_lord"": ""Jupiter"",
                    ""nakshatra"": ""Poorva Ashadha"",
                    ""nakshatra_pada"": 3,
                    ""nakshatra_no"": 20,
                    ""nakshatra_lord"": ""Venus"",
                    ""sub_lord"": ""Jupiter"",
                    ""awastha"": ""Vriddha"",
                    ""karakamsha"": """",
                    ""house"": 4,
                    ""type"": """",
                    ""lord_of"": """",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Uranus.png""
                },
                {
                    ""name"": ""Neptune"",
                    ""name_lan"": ""Neptune"",
                    ""full_degree"": ""262.9029228"",
                    ""speed"": ""-0.0205783"",
                    ""is_retro"": ""true"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""22:54:10"",
                    ""sign"": ""Sagittarius"",
                    ""sign_no"": 9,
                    ""rashi_lord"": ""Jupiter"",
                    ""nakshatra"": ""Poorva Ashadha"",
                    ""nakshatra_pada"": 3,
                    ""nakshatra_no"": 20,
                    ""nakshatra_lord"": ""Venus"",
                    ""sub_lord"": ""Saturn"",
                    ""awastha"": ""Vriddha"",
                    ""karakamsha"": """",
                    ""house"": 4,
                    ""type"": """",
                    ""lord_of"": """",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Neptune.png""
                },
                {
                    ""name"": ""Pluto"",
                    ""name_lan"": ""Pluto"",
                    ""full_degree"": ""206.4555808"",
                    ""speed"": ""0.0086261"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""26:27:20"",
                    ""sign"": ""Libra"",
                    ""sign_no"": 7,
                    ""rashi_lord"": ""Venus"",
                    ""nakshatra"": ""Vishakha"",
                    ""nakshatra_pada"": 2,
                    ""nakshatra_no"": 16,
                    ""nakshatra_lord"": ""Jupiter"",
                    ""sub_lord"": ""Ketu"",
                    ""awastha"": ""Mrityu"",
                    ""karakamsha"": """",
                    ""house"": 2,
                    ""type"": """",
                    ""lord_of"": """",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Pluto.png""
                },
                {
                    ""name"": ""Rahu"",
                    ""name_lan"": ""Rahu"",
                    ""full_degree"": ""244.0180180"",
                    ""speed"": ""-0.0529920"",
                    ""is_retro"": ""true"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""4:1:4"",
                    ""sign"": ""Sagittarius"",
                    ""sign_no"": 9,
                    ""rashi_lord"": ""Jupiter"",
                    ""nakshatra"": ""Moola"",
                    ""nakshatra_pada"": 2,
                    ""nakshatra_no"": 19,
                    ""nakshatra_lord"": ""Ketu"",
                    ""sub_lord"": ""Moon"",
                    ""awastha"": ""Baal"",
                    ""karakamsha"": """",
                    ""house"": 4,
                    ""type"": """",
                    ""lord_of"": """",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Rahu.png""
                },
                {
                    ""name"": ""Ketu"",
                    ""name_lan"": ""Ketu"",
                    ""full_degree"": ""64.01802"",
                    ""speed"": ""-0.0529920"",
                    ""is_retro"": ""true"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""4:1:4"",
                    ""sign"": ""Gemini"",
                    ""sign_no"": 3,
                    ""rashi_lord"": ""Mercury"",
                    ""nakshatra"": ""Mrigashirsha"",
                    ""nakshatra_pada"": 4,
                    ""nakshatra_no"": 5,
                    ""nakshatra_lord"": ""Mars"",
                    ""sub_lord"": ""Venus"",
                    ""awastha"": ""Baal"",
                    ""karakamsha"": """",
                    ""house"": 10,
                    ""type"": """",
                    ""lord_of"": """",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Ketu.png""
                },
                {
                    ""name"": ""Ascendant"",
                    ""name_lan"": ""Ascendant"",
                    ""full_degree"": ""166.1403274"",
                    ""speed"": ""341.1013150"",
                    ""is_retro"": ""false"",
                    ""is_combusted"": ""false"",
                    ""longitude"": ""16:8:25"",
                    ""sign"": ""Virgo"",
                    ""sign_no"": 6,
                    ""rashi_lord"": ""Mercury"",
                    ""nakshatra"": ""Hasta"",
                    ""nakshatra_pada"": 2,
                    ""nakshatra_no"": 13,
                    ""nakshatra_lord"": ""Moon"",
                    ""sub_lord"": ""Saturn"",
                    ""awastha"": ""Yuva"",
                    ""karakamsha"": """",
                    ""house"": 1,
                    ""type"": """",
                    ""lord_of"": """",
                    ""image"": ""https://divineapi.com/public/api-assets/assets/images/planets/Ascendant.png""
                }
            ]
        }
    }
}"; // Replace with the JSON you provided

        JObject root5 = JObject.Parse(sampleJson5);
        JArray p1Planets5 = (JArray)root5["data"]["p1"]["planets"];
        JArray p2Planets5 = (JArray)root5["data"]["p2"]["planets"];

        string table5 = "<table><tr><th>Planet</th><th>Person 1</th><th>Person 2</th></tr>";

        // Loop through planets by index (assuming same order)
        int maxCount5 = Math.Max(p1Planets5.Count, p2Planets5.Count);
        for (int i = 0; i < maxCount5; i++)
        {
            string planetName5 = "";
            string p1Details5 = "";
            string p2Details5 = "";

            if (i < p1Planets5.Count)
            {
                planetName5 = p1Planets5[i]["name"].ToString();
                p1Details5 = "Sign: " + p1Planets5[i]["sign"] +
                            ", Nakshatra: " + p1Planets5[i]["nakshatra"] +
                            ", House: " + p1Planets5[i]["house"] +
                            ", Retro: " + p1Planets5[i]["is_retro"] +
                            ", Combust: " + p1Planets5[i]["is_combusted"];
            }

            if (i < p2Planets5.Count)
            {
                if (planetName5 == "") planetName5 = p2Planets5[i]["name"].ToString();
                p2Details5 = "Sign: " + p2Planets5[i]["sign"] +
                            ", Nakshatra: " + p2Planets5[i]["nakshatra"] +
                            ", House: " + p2Planets5[i]["house"] +
                            ", Retro: " + p2Planets5[i]["is_retro"] +
                            ", Combust: " + p2Planets5[i]["is_combusted"];
            }

            table5 += "<tr><td>" + planetName5 + "</td><td>" + p1Details5 + "</td><td>" + p2Details5 + "</td></tr>";
        }

        table5 += "</table>";

        litPlanetsTable.Text = table5;
        #endregion


        #region API-6
        string sampleJson6 = @"{
      ""success"": 1,
      ""data"": {
        ""p1"": {
          ""date"": ""1998-05-24"",
          ""time"": ""14:40:43"",
          ""maha_dasha"": {
            ""Venus"": { ""start_date"": ""1989-07-02"", ""end_date"": ""2009-06-26"" },
            ""Sun"": { ""start_date"": ""2009-06-26"", ""end_date"": ""2015-06-26"" },
            ""Moon"": { ""start_date"": ""2015-06-26"", ""end_date"": ""2025-06-26"" }
          }
        },
        ""p2"": {
          ""date"": ""1998-05-24"",
          ""time"": ""14:40:43"",
          ""maha_dasha"": {
            ""Venus"": { ""start_date"": ""1989-07-02"", ""end_date"": ""2009-06-26"" },
            ""Sun"": { ""start_date"": ""2009-06-26"", ""end_date"": ""2015-06-26"" },
            ""Moon"": { ""start_date"": ""2015-06-26"", ""end_date"": ""2025-06-26"" }
          }
        }
      }
    }";

        JObject root6 = JObject.Parse(sampleJson6);
        JObject p16 = (JObject)root6["data"]["p1"];
        JObject p26 = (JObject)root6["data"]["p2"];

        StringBuilder sb6 = new StringBuilder();
        sb6.Append("<table border='1'><tr><th>Dasha</th><th>Person 1 (Start–End)</th><th>Person 2 (Start–End)</th></tr>");

        JObject p1Dasha6 = (JObject)p16["maha_dasha"];
        JObject p2Dasha6 = (JObject)p26["maha_dasha"];

        foreach (var prop in p1Dasha6.Properties())
        {
            string dashaName6 = prop.Name;
            JObject p1Period6 = (JObject)prop.Value;
            string p1Range6 = p1Period6["start_date"] + " → " + p1Period6["end_date"];

            string p2Range6 = "";
            if (p2Dasha6[dashaName6] != null)
            {
                JObject p2Period6 = (JObject)p2Dasha6[dashaName6];
                p2Range6 = p2Period6["start_date"] + " → " + p2Period6["end_date"];
            }

            sb6.Append("<tr>");
            sb6.Append("<td>" + dashaName6 + "</td>");
            sb6.Append("<td>" + p1Range6 + "</td>");
            sb6.Append("<td>" + p2Range6 + "</td>");
            sb6.Append("</tr>");
        }

        sb6.Append("</table>");

        litMatchingVimshottariDasha.Text = sb6.ToString();
        #endregion


        #region API-7
        string sampleJson7 = @"{
        ""success"": 1,
        ""data"": {
            ""p1"": {
                ""manglik_dosha"": ""No"",
                ""strength"": ""No"",
                ""percentage"": 0,
                ""remedies"": [],
                ""comment"": []
            },
            ""p2"": {
                ""manglik_dosha"": ""No"",
                ""strength"": ""No"",
                ""percentage"": 0,
                ""remedies"": [],
                ""comment"": []
            },
            ""content"": ""Neither the boy nor the girl has Mangal Dosha in their horoscopes, which means there will be no adverse effects on their marriage. Based on this assessment, their match is recommended.""
        }
    }";

        JObject root7 = JObject.Parse(sampleJson7);
        JObject p17 = (JObject)root7["data"]["p1"];
        JObject p27 = (JObject)root7["data"]["p2"];
        string content7 = root7["data"]["content"].ToString();

        StringBuilder sb7 = new StringBuilder();
        sb7.Append("<table border='1'><tr><th>Field</th><th>Person 1</th><th>Person 2</th></tr>");

        // Manglik Dosha
        sb7.Append("<tr><td>Manglik Dosha</td><td>" + p17["manglik_dosha"] + "</td><td>" + p27["manglik_dosha"] + "</td></tr>");
        sb7.Append("<tr><td>Strength</td><td>" + p17["strength"] + "</td><td>" + p27["strength"] + "</td></tr>");
        sb7.Append("<tr><td>Percentage</td><td>" + p17["percentage"] + "</td><td>" + p27["percentage"] + "</td></tr>");

        // Remedies (if any)
        sb7.Append("<tr><td>Remedies</td><td>" + string.Join(", ", p17["remedies"]) + "</td><td>" + string.Join(", ", p27["remedies"]) + "</td></tr>");

        // Comments (if any)
        sb7.Append("<tr><td>Comments</td><td>" + string.Join(", ", p17["comment"]) + "</td><td>" + string.Join(", ", p27["comment"]) + "</td></tr>");

        sb7.Append("</table>");

        // Overall content
        sb7.Append("<div style='margin-top:15px;'><strong>Summary:</strong><br/>" + content7 + "</div>");

        litMatchingManglikDosha.Text = sb7.ToString();
        #endregion




    }
}
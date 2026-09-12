using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class apitest_divineapi_sample_4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnShowComparison_Click(object sender, EventArgs e)
    {
        string sampleJson = @"{
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

        JObject root = JObject.Parse(sampleJson);
        JObject milan = (JObject)root["data"]["ashtakoot_milan"];
        JObject result = (JObject)root["data"]["ashtakoot_milan_result"];
        JObject manglik = (JObject)root["data"]["manglik_dosha"];

        StringBuilder sb = new StringBuilder();

        sb.Append("<table><tr><th>Koota</th><th>Person 1</th><th>Person 2</th><th>Points</th><th>Max Points</th><th>Area of Life</th><th>Description</th></tr>");

        foreach (var prop in milan.Properties())
        {
            JObject koota = (JObject)prop.Value;
            sb.Append("<tr>");
            sb.Append("<td>" + prop.Name + "</td>");
            sb.Append("<td>" + koota["p1"] + "</td>");
            sb.Append("<td>" + koota["p2"] + "</td>");
            sb.Append("<td>" + koota["points_obtained"] + "</td>");
            sb.Append("<td>" + koota["max_ponits"] + "</td>");
            sb.Append("<td>" + koota["area_of_life"] + "</td>");
            sb.Append("<td>" + koota["description"] + "</td>");
            sb.Append("</tr>");
        }

        sb.Append("</table>");

        // Overall result
        sb.Append("<div class='section'><h3>Overall Result</h3>");
        sb.Append("Points Obtained: " + result["points_obtained"] + " / " + result["max_ponits"] + "<br/>");
        sb.Append("Compatible: " + result["is_compatible"] + "<br/>");
        sb.Append("Summary: " + result["content"] + "</div>");

        // Doshas
        sb.Append("<div class='section'><h3>Dosha Status</h3>");
        sb.Append("Manglik (P1): " + manglik["p1"] + ", Manglik (P2): " + manglik["p2"] + "<br/>");
        sb.Append("Nadi Dosha: " + root["data"]["nadi_dosha"] + "<br/>");
        sb.Append("Bhakoot Dosha: " + root["data"]["bhakoot_dosha"] + "</div>");

        litComparison.Text = sb.ToString();
    }



    protected void btnDashakoot_Click(object sender, EventArgs e)
    {
        // Paste Dashakoot JSON here (or Ashtakoot depending on use case)
        string sampleJson = @"{
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

        JObject root = JObject.Parse(sampleJson);
        JObject milan = (JObject)root["data"]["dashakoot_milan"];
        JObject result = (JObject)root["data"]["dashakoot_milan_result"];
        JObject manglik = (JObject)root["data"]["manglik_dosha"];

        StringBuilder sb = new StringBuilder();

        sb.Append("<table><tr><th>Koota</th><th>Person 1</th><th>Person 2</th><th>Result</th><th>Points</th><th>Max Points</th><th>Area of Life</th></tr>");

        foreach (var prop in milan.Properties())
        {
            JObject koota = (JObject)prop.Value;
            sb.Append("<tr>");
            sb.Append("<td>" + prop.Name + "</td>");
            sb.Append("<td>" + koota["p1"] + "</td>");
            sb.Append("<td>" + koota["p2"] + "</td>");
            sb.Append("<td>" + koota["result"] + "</td>");
            sb.Append("<td>" + koota["points_obtained"] + "</td>");
            sb.Append("<td>" + koota["max_ponits"] + "</td>");
            sb.Append("<td>" + koota["area_of_life"] + "</td>");
            sb.Append("</tr>");
        }

        sb.Append("</table>");

        // Overall result
        sb.Append("<div class='section'><h3>Overall Result</h3>");
        sb.Append("Points Obtained: " + result["points_obtained"] + " / " + result["max_ponits"] + "<br/>");
        sb.Append("Compatible: " + result["is_compatible"] + "<br/>");
        sb.Append("Summary: " + result["content"] + "</div>");

        // Doshas
        sb.Append("<div class='section'><h3>Dosha Status</h3>");
        sb.Append("Manglik (P1): " + manglik["p1"] + ", Manglik (P2): " + manglik["p2"] + "<br/>");
        sb.Append("Rajju Dosha: " + root["data"]["rajju_dosha"] + "</div>");

        litComparisonDashakoot.Text = sb.ToString();
    }



    protected void btnNavPanchamYoga_Click(object sender, EventArgs e)
    {
        string sampleJson = @"{
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

        JObject root = JObject.Parse(sampleJson);
        JObject yoga = (JObject)root["data"]["nav_pancham_yoga"];

        StringBuilder sb = new StringBuilder();

        // Get the first planet object safely (no LINQ First())
        JObject firstPlanet = null;
        foreach (var prop in yoga.Properties())
        {
            firstPlanet = (JObject)prop.Value;
            break; // stop after first
        }

        // Build header row
        sb.Append("<table border='1'><tr><th>Planet</th>");
        foreach (var inner in firstPlanet.Properties())
        {
            sb.Append("<th>" + inner.Name + "</th>");
        }
        sb.Append("</tr>");

        // Build rows for each planet
        foreach (var prop in yoga.Properties())
        {
            sb.Append("<tr>");
            sb.Append("<td>" + prop.Name + "</td>");
            JObject planetRow = (JObject)prop.Value;
            foreach (var inner in planetRow.Properties())
            {
                sb.Append("<td>" + inner.Value + "</td>");
            }
            sb.Append("</tr>");
        }

        sb.Append("</table>");

        litNavPanchamYoga.Text = sb.ToString();
    }

    protected void btnMatchingVimshottariDasha_Click(object sender, EventArgs e)
    {
        string sampleJson = @"{
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

        JObject root = JObject.Parse(sampleJson);
        JObject p1 = (JObject)root["data"]["p1"];
        JObject p2 = (JObject)root["data"]["p2"];

        StringBuilder sb = new StringBuilder();
        sb.Append("<table border='1'><tr><th>Dasha</th><th>Person 1 (Start–End)</th><th>Person 2 (Start–End)</th></tr>");

        JObject p1Dasha = (JObject)p1["maha_dasha"];
        JObject p2Dasha = (JObject)p2["maha_dasha"];

        foreach (var prop in p1Dasha.Properties())
        {
            string dashaName = prop.Name;
            JObject p1Period = (JObject)prop.Value;
            string p1Range = p1Period["start_date"] + " → " + p1Period["end_date"];

            string p2Range = "";
            if (p2Dasha[dashaName] != null)
            {
                JObject p2Period = (JObject)p2Dasha[dashaName];
                p2Range = p2Period["start_date"] + " → " + p2Period["end_date"];
            }

            sb.Append("<tr>");
            sb.Append("<td>" + dashaName + "</td>");
            sb.Append("<td>" + p1Range + "</td>");
            sb.Append("<td>" + p2Range + "</td>");
            sb.Append("</tr>");
        }

        sb.Append("</table>");

        litMatchingVimshottariDasha.Text = sb.ToString();
    }

    protected void btnMatchingManglikDosha_Click(object sender, EventArgs e)
    {
        string sampleJson = @"{
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

        JObject root = JObject.Parse(sampleJson);
        JObject p1 = (JObject)root["data"]["p1"];
        JObject p2 = (JObject)root["data"]["p2"];
        string content = root["data"]["content"].ToString();

        StringBuilder sb = new StringBuilder();
        sb.Append("<table border='1'><tr><th>Field</th><th>Person 1</th><th>Person 2</th></tr>");

        // Manglik Dosha
        sb.Append("<tr><td>Manglik Dosha</td><td>" + p1["manglik_dosha"] + "</td><td>" + p2["manglik_dosha"] + "</td></tr>");
        sb.Append("<tr><td>Strength</td><td>" + p1["strength"] + "</td><td>" + p2["strength"] + "</td></tr>");
        sb.Append("<tr><td>Percentage</td><td>" + p1["percentage"] + "</td><td>" + p2["percentage"] + "</td></tr>");

        // Remedies (if any)
        sb.Append("<tr><td>Remedies</td><td>" + string.Join(", ", p1["remedies"]) + "</td><td>" + string.Join(", ", p2["remedies"]) + "</td></tr>");

        // Comments (if any)
        sb.Append("<tr><td>Comments</td><td>" + string.Join(", ", p1["comment"]) + "</td><td>" + string.Join(", ", p2["comment"]) + "</td></tr>");

        sb.Append("</table>");

        // Overall content
        sb.Append("<div style='margin-top:15px;'><strong>Summary:</strong><br/>" + content + "</div>");

        litMatchingManglikDosha.Text = sb.ToString();
    }

}
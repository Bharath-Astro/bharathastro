using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class apitest_astrologyapi_sample_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnShowDosha_Click(object sender, EventArgs e)
    {
        // 1. Simple Manglik
        string simpleManglikJson = @"{ ""is_manglik"": true }";
        JObject simpleManglik = JObject.Parse(simpleManglikJson);
        lblSimpleManglik.Text = "Manglik Status: " + (simpleManglik["is_manglik"].ToString() == "true" ? "Yes" : "No");

        // 2. Manglik (detailed)
        string manglikJson = @"{
                ""manglik_present"": true,
                ""manglik_type"": ""Partial"",
                ""description"": ""Native has partial Manglik dosha due to Mars in 4th house.""
            }";
        JObject manglik = JObject.Parse(manglikJson);
        lblManglik.Text = "Manglik Present: " + manglik["manglik_present"] +
                          "<br/>Type: " + manglik["manglik_type"] +
                          "<br/>Details: " + manglik["description"];

        // 3. Kalsarpa Details
        string kalsarpaJson = @"{
                ""kalsarpa_present"": true,
                ""type"": ""Takshak"",
                ""description"": ""All planets between Rahu and Ketu.""
            }";
        JObject kalsarpa = JObject.Parse(kalsarpaJson);
        lblKalsarpa.Text = "Kalsarpa Present: " + kalsarpa["kalsarpa_present"] +
                           "<br/>Type: " + kalsarpa["type"] +
                           "<br/>Details: " + kalsarpa["description"];

        // 4. Sadhesati Current Status
        string sadhesatiStatusJson = @"{
                ""sadhesati_running"": true,
                ""current_phase"": ""Second"",
                ""description"": ""Shani is transiting over natal Moon.""
            }";
        JObject sadhesatiStatus = JObject.Parse(sadhesatiStatusJson);
        lblSadhesatiStatus.Text = "Sadhesati Running: " + sadhesatiStatus["sadhesati_running"] +
                                  "<br/>Current Phase: " + sadhesatiStatus["current_phase"] +
                                  "<br/>Details: " + sadhesatiStatus["description"];

        // 5. Sadhesati Life Details
        string sadhesatiLifeJson = @"{
                ""total_phases"": 3,
                ""phases"": [
                    { ""phase"": ""First"", ""start_date"": ""2018-01-01"", ""end_date"": ""2020-12-31"" },
                    { ""phase"": ""Second"", ""start_date"": ""2021-01-01"", ""end_date"": ""2023-12-31"" },
                    { ""phase"": ""Third"", ""start_date"": ""2024-01-01"", ""end_date"": ""2026-12-31"" }
                ]
            }";
        JObject sadhesatiLife = JObject.Parse(sadhesatiLifeJson);
        lblSadhesatiLife.Text = "Total Phases: " + sadhesatiLife["total_phases"] +
                                "<br/>Phase 1: " + sadhesatiLife["phases"][0]["phase"] + " (" + sadhesatiLife["phases"][0]["start_date"] + " to " + sadhesatiLife["phases"][0]["end_date"] + ")" +
                                "<br/>Phase 2: " + sadhesatiLife["phases"][1]["phase"] + " (" + sadhesatiLife["phases"][1]["start_date"] + " to " + sadhesatiLife["phases"][1]["end_date"] + ")" +
                                "<br/>Phase 3: " + sadhesatiLife["phases"][2]["phase"] + " (" + sadhesatiLife["phases"][2]["start_date"] + " to " + sadhesatiLife["phases"][2]["end_date"] + ")";

        // 6. Pitra Dosha Report
        string pitraDoshaJson = @"{
                ""pitra_dosha_present"": true,
                ""description"": ""Indications of ancestral karmic imbalance.""
            }";
        JObject pitra = JObject.Parse(pitraDoshaJson);
        lblPitraDosha.Text = "Pitra Dosha Present: " + pitra["pitra_dosha_present"] +
                             "<br/>Details: " + pitra["description"];
    }
}
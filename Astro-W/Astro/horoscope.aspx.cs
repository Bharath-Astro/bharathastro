using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class horoscope : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        #region API-3
        string sampleJson3 = @"{
    ""success"": 1,
    ""data"": {
        ""sign"": ""Leo"",
        ""date"": ""2025-10-07"",
        ""prediction"": {
            ""personal"": ""Your personal life is full of vibrant energy today, encouraging you to connect with those around you. Spend quality time with family and friends, as meaningful interactions could strengthen your bonds. New avenues for self-expression might open up, allowing you to explore creative pursuits more deeply. Stay open to change and embrace versatility; it could bring about personal growth and new opportunities to thrive on a personal level."",
            ""health"": ""Pay attention to physical wellness today, Leo. A balanced approach to nutrition and hydration will keep you energized. Incorporate moderate exercise into your routine to boost endorphins and alleviate stress. Meditation or yoga might also be beneficial for maintaining mental clarity and emotional equilibrium. Listen to your body's signals and don't ignore any signs of fatigue. Rest is crucial to rejuvenate your energy levels."",
            ""profession"": ""Today, you may find yourself inspired at work, Leo. New ideas are likely to flow freely, and you could impress colleagues with your creativity. However, balance innovation with practicality to achieve the best outcomes. Be open to collaboration and networking to advance your professional goals. By day's end, you may unlock new pathways for growth or receive an opportunity that aligns with your ambitions."",
            ""emotions"": ""Emotionally, you may feel heightened sensitivity, Leo, which can deepen connections with others. Trust your intuition, as it guides you through complex situations with grace. Surround yourself with positivity, as it elevates your mood and fortifies your spirit. Take time to reflect on personal desires and goals, aligning actions with intentions. Moments of solitude could provide the clarity you seek today."",
            ""travel"": ""Adventure calls today, Leo! Whether it's a spontaneous day trip or planning a future vacation, your travel aspirations demand attention. Explore new places that inspire creativity and broaden your horizons. If immediate travel isn't possible, let wanderlust fuel your dreams and research your next escape. Local excursions could offer a refreshing change and bring a sense of novelty to your routine."",
            ""luck"": [
                ""Colors of the day : Gold, Orange"",
                ""Lucky Numbers of the day : 4, 9, 13"",
                ""Lucky Alphabets you will be in sync with : L, S"",
                ""Cosmic Tip : Beware of impulsive actions; stay grounded and focused."",
                ""Tips for Singles : Express your interests confidently; attract genuine connections today."",
                ""Tips for Couples : Share your dreams; strengthen your bond through open dialogue.""
            ]
        },
        ""special"": {
            ""lucky_color_codes"": [
                ""#FFD700"",
                ""#FFA500""
            ],
            ""horoscope_percentage"": {
                ""personal"": 85,
                ""health"": 75,
                ""profession"": 80,
                ""emotions"": 78,
                ""travel"": 72,
                ""luck"": 83
            }
        }
    }
}";

        JObject root3 = JObject.Parse(sampleJson3);
        JObject data3 = (JObject)root3["data"];
        JObject prediction = (JObject)data3["prediction"];
        JObject special = (JObject)data3["special"];
        JObject percentages = (JObject)special["horoscope_percentage"];

        StringBuilder sb3 = new StringBuilder();

        // Basic Horoscope Info
        sb3.Append("<div class='section'><h3>Horoscope Details</h3>");
        sb3.Append("Sign: " + data3["sign"] + "<br/>");
        sb3.Append("Date: " + data3["date"] + "</div>");

        // Predictions
        sb3.Append("<div class='section'><h3>Predictions</h3>");
        sb3.Append("<b>Personal:</b> " + prediction["personal"] + "<br/><br/>");
        sb3.Append("<b>Health:</b> " + prediction["health"] + "<br/><br/>");
        sb3.Append("<b>Profession:</b> " + prediction["profession"] + "<br/><br/>");
        sb3.Append("<b>Emotions:</b> " + prediction["emotions"] + "<br/><br/>");
        sb3.Append("<b>Travel:</b> " + prediction["travel"] + "<br/><br/>");

        // Luck details (array)
        sb3.Append("<b>Luck:</b><ul>");
        foreach (var item in prediction["luck"])
        {
            sb3.Append("<li>" + item + "</li>");
        }
        sb3.Append("</ul></div>");

        // Special Section
        sb3.Append("<div class='section'><h3>Special</h3>");
        sb3.Append("Lucky Color Codes: " + string.Join(", ", special["lucky_color_codes"]) + "<br/>");

        // Percentages Table
        sb3.Append("<table class=\"table table-bordered table-sm text-white\"><tr><th>Aspect</th><th>Percentage</th></tr>");
        foreach (var prop in percentages.Properties())
        {
            sb3.Append("<tr><td>" + prop.Name + "</td><td>" + prop.Value + "%</td></tr>");
        }
        sb3.Append("</table></div>");

        litDailyHoroscopePrediction.Text = sb3.ToString();
        #endregion

    }

    protected void lnkGoToDownloadPdf_Click(object sender, EventArgs e)
    {
        Response.Redirect("payment.aspx", false);
    }
}
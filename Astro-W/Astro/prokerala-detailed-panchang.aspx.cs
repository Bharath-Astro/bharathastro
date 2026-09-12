using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class prokerala_detailed_panchang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Months (1–12)
            for (int m = 1; m <= 12; m++)
            {
                ddlMonth.Items.Add(new ListItem(m.ToString("00"), m.ToString()));
            }

            // Days (1–31)
            for (int d = 1; d <= 31; d++)
            {
                ddlDay.Items.Add(new ListItem(d.ToString("00"), d.ToString()));
            }

            // Hours (0–23)
            for (int h = 0; h <= 23; h++)
            {
                ddlHour.Items.Add(new ListItem(h.ToString("00"), h.ToString()));
            }

            // Minutes (0–59)
            for (int min = 0; min <= 59; min++)
            {
                ddlMinute.Items.Add(new ListItem(min.ToString("00"), min.ToString()));
            }

            // Seconds (0–59)
            for (int s = 0; s <= 59; s++)
            {
                ddlSecond.Items.Add(new ListItem(s.ToString("00"), s.ToString()));
            }
        }
    }

    public static string GetApiResponse(string apiKey, string ayanamsa, string coordinates, string formattedDateTime)
    {
        string token = nsp_BATClass.BATClass.GetAccessTokenProduction();
        string apiUrl = "";

        switch (apiKey)
        {
            case "Panchang1":
                apiUrl = string.Format(
                    "https://api.prokerala.com/v2/astrology/panchang?ayanamsa={0}&coordinates={1}&datetime={2}&la=te",
                    ayanamsa,
                    coordinates,
                    HttpUtility.UrlEncode(formattedDateTime)
                );
                break;

            case "PA":
                apiUrl = string.Format(
                    "https://api.prokerala.com/v2/astrology/panchang/advanced?ayanamsa={0}&coordinates={1}&datetime={2}",
                    ayanamsa,
                    coordinates,
                    HttpUtility.UrlEncode(formattedDateTime)
                );
                break;

            case "BirthDetails":
                apiUrl = string.Format(
                    "https://api.prokerala.com/v2/astrology/birth-details?datetime={0}&coordinates={1}&ayanamsa={2}",
                    HttpUtility.UrlEncode(formattedDateTime),
                    coordinates,
                    ayanamsa
                );
                break;

            case "panchang":
                apiUrl = string.Format(
                    "https://api.prokerala.com/v2/astrology/panchang?datetime={0}&coordinates={1}&ayanamsa={2}",
                    HttpUtility.UrlEncode(formattedDateTime),
                    coordinates,
                    ayanamsa
                );
                break;
        }


        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(apiUrl);
        request.Method = "GET";
        request.Headers.Add("Authorization", "Bearer " + token);
        request.Accept = "application/json";

        try
        {
            using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
            using (StreamReader reader = new StreamReader(response.GetResponseStream()))
            {
                return reader.ReadToEnd();
            }
        }
        catch (WebException ex)
        {
            if (ex.Response != null)
            {
                using (StreamReader reader = new StreamReader(ex.Response.GetResponseStream()))
                {
                    return reader.ReadToEnd();
                }
            }
            return ex.Message;
        }
    }

    protected void btnFetch_Click(object sender, EventArgs e)
    {
        litResults.Text = string.Empty;

        // Collect user inputs
        string selectedApi = "PA"; // ddlApis.SelectedValue;
        string ayanamsa = ddlAyanamsa.SelectedValue;
        //        string coordinates = txtCoordinates.Text.Trim();
        string coordinates = ddlCoordinates.SelectedValue; // e.g. "17.3850,78.4867"


        // Build DateTime from user inputs
        int year = int.Parse(txtYear.Text);
        int month = int.Parse(ddlMonth.SelectedValue);
        int day = int.Parse(ddlDay.SelectedValue);
        int hour = int.Parse(ddlHour.SelectedValue);
        int minute = int.Parse(ddlMinute.SelectedValue);
        int second = int.Parse(ddlSecond.SelectedValue);

        DateTime dt = new DateTime(year, month, day, hour, minute, second);

        // Convert to ISO 8601 format with timezone offset
        DateTime dtLocal = TimeZoneInfo.ConvertTime(dt, TimeZoneInfo.FindSystemTimeZoneById("India Standard Time"));
        string formattedDateTime = dtLocal.ToString("yyyy-MM-dd'T'HH:mm:sszzz");


        // Call API
        string json = GetApiResponse(selectedApi, ayanamsa, coordinates, formattedDateTime);

        // Parse JSON and bind to GridView
        //   BindJsonToGrid(json);



        JObject obj = JObject.Parse(json);
        JObject data = (JObject)obj["data"];

        StringBuilder sb = new StringBuilder();



        // Vaara
        sb.Append("<h2>Day</h2>");
        sb.Append("<p><b>Vaara:</b> " + data["vaara"] + "</p>");

        // Nakshatra
        sb.Append("<h2>Nakshatra</h2>");
        foreach (var n in data["nakshatra"])
        {
            sb.Append("<p><b>Name:</b> " + n["name"] +
                      " (Lord: " + n["lord"]["name"] + " - " + n["lord"]["vedic_name"] + ")" +
                      "<br/><b>Start:</b> " + n["start"] +
                      "<br/><b>End:</b> " + n["end"] + "</p>");
        }

        // Tithi
        sb.Append("<h2>Tithi</h2>");
        foreach (var t in data["tithi"])
        {
            sb.Append("<p><b>Name:</b> " + t["name"] + " (" + t["paksha"] + ")" +
                      "<br/><b>Start:</b> " + t["start"] +
                      "<br/><b>End:</b> " + t["end"] + "</p>");
        }

        // Karana
        sb.Append("<h2>Karana</h2>");
        foreach (var k in data["karana"])
        {
            sb.Append("<p><b>Name:</b> " + k["name"] +
                      "<br/><b>Start:</b> " + k["start"] +
                      "<br/><b>End:</b> " + k["end"] + "</p>");
        }

        // Yoga
        sb.Append("<h2>Yoga</h2>");
        foreach (var y in data["yoga"])
        {
            sb.Append("<p><b>Name:</b> " + y["name"] +
                      "<br/><b>Start:</b> " + y["start"] +
                      "<br/><b>End:</b> " + y["end"] + "</p>");
        }

        // Timings
        sb.Append("<h2>Timings</h2>");
        sb.Append("<p><b>Sunrise:</b> " + data["sunrise"] + "<br/>");
        sb.Append("<b>Sunset:</b> " + data["sunset"] + "<br/>");
        sb.Append("<b>Moonrise:</b> " + data["moonrise"] + "<br/>");
        sb.Append("<b>Moonset:</b> " + data["moonset"] + "</p>");

        // Auspicious Periods
        sb.Append("<h2>Auspicious Periods</h2>");
        foreach (var ap in data["auspicious_period"])
        {
            sb.Append("<p><b>Name:</b> " + ap["name"] + " (" + ap["type"] + ")");
            foreach (var p in ap["period"])
            {
                sb.Append("<br/><b>Start:</b> " + p["start"] +
                          "<br/><b>End:</b> " + p["end"]);
            }
            sb.Append("</p>");
        }

        // Inauspicious Periods
        sb.Append("<h2>Inauspicious Periods</h2>");
        foreach (var ip in data["inauspicious_period"])
        {
            sb.Append("<p><b>Name:</b> " + ip["name"] + " (" + ip["type"] + ")");
            foreach (var p in ip["period"])
            {
                sb.Append("<br/><b>Start:</b> " + p["start"] +
                          "<br/><b>End:</b> " + p["end"]);
            }
            sb.Append("</p>");
        }















        litPanchang.Text = sb.ToString();




    }
}
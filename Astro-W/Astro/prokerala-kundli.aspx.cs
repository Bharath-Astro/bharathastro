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

public partial class prokerala_kundli : System.Web.UI.Page
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
        string selectedApi = "panchang"; // ddlApis.SelectedValue;
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







        // Nakshatra Details
        sb.Append("<h2>Nakshatra Details</h2>");
        JObject nakshatraDetails = (JObject)data["nakshatra_details"];

        // Access Nakshatra safely
        var nakshatra = nakshatraDetails["nakshatra"];
        sb.Append("<p><b>Nakshatra:</b> " + nakshatra["name"] +
                  " (Lord: " + nakshatra["lord"]["name"] + " - " + nakshatra["lord"]["vedic_name"] + ")" +
                  "<br/><b>Pada:</b> " + nakshatra["pada"] + "</p>");

        var chandraRasi = nakshatraDetails["chandra_rasi"];
        sb.Append("<p><b>Chandra Rasi:</b> " + chandraRasi["name"] +
                  " (Lord: " + chandraRasi["lord"]["name"] + " - " + chandraRasi["lord"]["vedic_name"] + ")</p>");

        var sooryaRasi = nakshatraDetails["soorya_rasi"];
        sb.Append("<p><b>Soorya Rasi:</b> " + sooryaRasi["name"] +
                  " (Lord: " + sooryaRasi["lord"]["name"] + " - " + sooryaRasi["lord"]["vedic_name"] + ")</p>");

        var zodiac = nakshatraDetails["zodiac"];
        sb.Append("<p><b>Zodiac:</b> " + zodiac["name"] + "</p>");

        var info = nakshatraDetails["additional_info"];
        sb.Append("<h3>Additional Info</h3>");
        sb.Append("<p><b>Deity:</b> " + info["deity"] +
                  "<br/><b>Ganam:</b> " + info["ganam"] +
                  "<br/><b>Symbol:</b> " + info["symbol"] +
                  "<br/><b>Animal Sign:</b> " + info["animal_sign"] +
                  "<br/><b>Nadi:</b> " + info["nadi"] +
                  "<br/><b>Color:</b> " + info["color"] +
                  "<br/><b>Best Direction:</b> " + info["best_direction"] +
                  "<br/><b>Syllables:</b> " + info["syllables"] +
                  "<br/><b>Birth Stone:</b> " + info["birth_stone"] +
                  "<br/><b>Gender:</b> " + info["gender"] +
                  "<br/><b>Planet:</b> " + info["planet"] +
                  "<br/><b>Enemy Yoni:</b> " + info["enemy_yoni"] + "</p>");

        // Mangal Dosha
        sb.Append("<h2>Mangal Dosha</h2>");
        var mangal = data["mangal_dosha"];
        sb.Append("<p><b>Has Dosha:</b> " + mangal["has_dosha"] +
                  "<br/><b>Description:</b> " + mangal["description"] + "</p>");

        // Yoga Details
        sb.Append("<h2>Yoga Details</h2>");
        foreach (var y in data["yoga_details"])
        {
            sb.Append("<p><b>" + y["name"] + ":</b> " + y["description"] + "</p>");
        }











        litPanchang.Text = sb.ToString();




    }
}
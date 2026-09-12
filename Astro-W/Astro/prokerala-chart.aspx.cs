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

public partial class prokerala_chart : System.Web.UI.Page
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
            case "Chart":
                apiUrl = string.Format(
                    "https://api.prokerala.com/v2/astrology/chart?datetime={0}&coordinates={1}&ayanamsa={2}&chart_type=rasi&chart_style=south-indian&format=svg",
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
        string selectedApi = "Chart"; // ddlApis.SelectedValue;
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

        // Call the API and get SVG response
    //    string svgResponse = GetChartSvg();

        // Inject SVG directly into Literal control
        litChart.Text = json;




    }


    private string GetChartSvg()
    {
        // Example API call using HttpWebRequest (C# 5.0 style)
        string url = "https://api.prokerala.com/v2/astrology/chart?datetime=1970-11-10T06:14:07+05:30&latitude=17.3850&longitude=78.4867&ayanamsa=1";

        HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
        request.Method = "GET";

        // Add authentication headers (replace with your client_id and client_secret)
        request.Headers["Authorization"] = "Bearer YOUR_ACCESS_TOKEN";

        using (HttpWebResponse response = (HttpWebResponse)request.GetResponse())
        using (StreamReader reader = new StreamReader(response.GetResponseStream()))
        {
            return reader.ReadToEnd(); // This will be the SVG string
        }
    }
}
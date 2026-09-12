using Newtonsoft.Json.Linq;
using System;
using System.Data;
using System.IO;
using System.Net;

public partial class prokerala_api : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    public static string GetApiResponse(string apiKey)
    {
        string token = nsp_BATClass.BATClass.GetAccessToken();
        string apiUrl = "";

        switch (apiKey)
        {
            case "calendar":
                apiUrl = "https://api.prokerala.com/v2/calendar?date=2020-01-01&calendar=lunar";
                break;

            case "Panchang1":
                apiUrl ="https://api.prokerala.com/v2/astrology/panchang?ayanamsa=1&coordinates=10.214747,78.097626&datetime=2020-01-01T15:19:21%2B05:30&la=te";
                break;

            case "PA":
                apiUrl ="https://api.prokerala.com/v2/astrology/panchang/advanced?ayanamsa=1&coordinates=10.214747,78.097626&datetime=2020-01-01T15:19:21%2B05:30";
                break;

            case "panchang1":
                apiUrl = "https://api.prokerala.com/v2/astrology/panchang" +
                         "?datetime=2020-01-01T15:19:21%2B05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "auspicious":
                apiUrl = "https://api.prokerala.com/v2/astrology/auspicious-period" +
                         "?datetime=2020-01-01T15:19:21%2B05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "choghadiya":
                apiUrl = "https://api.prokerala.com/v2/astrology/choghadiya" +
                         "?datetime=2020-01-01T15:19:21%2B05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "Kundli":
                apiUrl = "https://api.prokerala.com/v2/astrology/kundli" + "?datetime=2020-01-01T15:19:21%2B05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "yogas":
                apiUrl = "https://api.prokerala.com/v2/astrology/yogas" +
                         "?datetime=2020-01-01T15:19:21%2B05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "chandrashtama":
                apiUrl = "https://api.prokerala.com/v2/astrology/chandrashtama-periods" +
                         "?datetime=2020-01-01T15:19:21%2B05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;








            case "chart":
                apiUrl = "https://api.prokerala.com/v2/astrology/chart" +
                         "?date=2020-01-01T06:00:00+05:30" +
                         "&coordinates=17.3850,78.4867" +
                         "&ayanamsa=1&chart_type=Rasi&chart_style=north-indian";
                break;

            case "mangal":
                apiUrl = "https://api.prokerala.com/v2/astrology/mangal-dosha" +
                         "?datetime=1990-01-01T06:00:00+05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "matchmaking":
                apiUrl = "https://api.prokerala.com/v2/astrology/matchmaking" +
                         "?male_dob=1990-01-01T06:00:00+05:30&male_coordinates=17.3850,78.4867" +
                         "&female_dob=1992-02-02T06:00:00+05:30&female_coordinates=17.3850,78.4867";
                break;

            case "ashtakavarga":
                apiUrl = "https://api.prokerala.com/v2/astrology/ashtakavarga" +
                         "?datetime=1990-01-01T06:00:00+05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "sade_sati":
                apiUrl = "https://api.prokerala.com/v2/astrology/sade-sati" +
                         "?datetime=1990-01-01T06:00:00+05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "papa_samyam":
                apiUrl = "https://api.prokerala.com/v2/astrology/papa-samyam" +
                         "?male_dob=1990-01-01T06:00:00+05:30&male_coordinates=17.3850,78.4867" +
                         "&female_dob=1992-02-02T06:00:00+05:30&female_coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "kaal_sarp":
                apiUrl = "https://api.prokerala.com/v2/astrology/kaal-sarp-dosha" +
                         "?datetime=1990-01-01T06:00:00+05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "natal":
                apiUrl = "https://api.prokerala.com/v2/western-astrology/natal-chart" +
                         "?datetime=1990-01-01T06:00:00+05:30&coordinates=17.3850,78.4867";
                break;

            case "transit":
                apiUrl = "https://api.prokerala.com/v2/astrology/transit-chart" +
                         "?datetime=2020-01-01T15:19:21%2B05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "synastry":
                apiUrl = "https://api.prokerala.com/v2/western-astrology/synastry-chart" +
                         "?male_dob=1990-01-01T06:00:00+05:30&male_coordinates=17.3850,78.4867" +
                         "&female_dob=1992-02-02T06:00:00+05:30&female_coordinates=17.3850,78.4867";
                break;

            case "num_name":
                apiUrl = "https://api.prokerala.com/v2/numerology/name?name=John%20Doe";
                break;

            case "num_number":
                apiUrl = "https://api.prokerala.com/v2/numerology/number?number=7";
                break;

            case "BirthDetails":
                apiUrl = "https://api.prokerala.com/v2/astrology/birth-details?datetime=2020-01-01T15:19:21%2B05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "panchang":
                apiUrl = "https://api.prokerala.com/v2/astrology/panchang" +
                         "?datetime=2020-01-01T15:19:21%2B05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "report_horoscope":
                apiUrl = "https://api.prokerala.com/v2/astrology/report/horoscope?zodiac=aries";
                break;

            case "report_matchmaking":
                apiUrl = "https://api.prokerala.com/v2/astrology/report/matchmaking" +
                         "?male_dob=1990-01-01T06:00:00+05:30&male_coordinates=17.3850,78.4867" +
                         "&female_dob=1992-02-02T06:00:00+05:30&female_coordinates=17.3850,78.4867";
                break;

            case "report_transit":
                apiUrl = "https://api.prokerala.com/v2/astrology/report/transit" +
                         "?datetime=2020-01-01T15:19:21%2B05:30&coordinates=17.3850,78.4867&ayanamsa=1";
                break;

            case "batch_matchmaking":
                apiUrl = "https://api.prokerala.com/v2/astrology/matchmaking/batch";
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
        string selectedApi = ddlApis.SelectedValue;
        string json = GetApiResponse(selectedApi);

        // Parse JSON and bind to GridView
        BindJsonToGrid(json);
        //
    }

    private void BindJsonToGrid(string json)
    {
        try
        {
            JObject obj = JObject.Parse(json);

            // Check status
            string status = (string)obj["status"];
            if (status != null && status.Equals("ok", StringComparison.OrdinalIgnoreCase))
            {
                // Extract the "data" section
                var data = obj["data"];

                DataTable dt = new DataTable();
                dt.Columns.Add("Key");
                dt.Columns.Add("Value");

                if (data is JObject)
                {
                    foreach (var prop in ((JObject)data).Properties())
                    {
                        dt.Rows.Add(prop.Name, prop.Value.ToString());
                    }
                }
                else if (data is JArray)
                {
                    // If data is an array, flatten it
                    int index = 1;
                    foreach (var item in (JArray)data)
                    {
                        dt.Rows.Add("Item " + index, item.ToString());
                        index++;
                    }
                }

                gvResults.DataSource = dt;
                gvResults.DataBind();
            }
            else
            {
                // Show error details
                gvResults.DataSource = null;
                gvResults.DataBind();
                litResults.Text = "Error: " + obj.ToString();
            }
        }
        catch (Exception ex)
        {
            litResults.Text = "Parsing failed: " + ex.Message;
        }
    }



}
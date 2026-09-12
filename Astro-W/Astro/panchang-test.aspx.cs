using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Text;

public partial class panchang_test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public static string FormatPanchang(Data data)
    {
        StringBuilder sb = new StringBuilder();

        // Tithi
        if (data.tithi != null && data.tithi.Count > 0)
        {
            var t = data.tithi[0];
            DateTime endTime;
            if (DateTime.TryParse(t.end, out endTime))
            {
                sb.AppendLine("Tithi: " + t.name + " upto " + endTime.ToString("HH:mm:ss"));
            }
        }

        // Month & Samvat (static placeholders unless you calculate separately)
        sb.AppendLine("Month Amanta: Margashirsha");
        sb.AppendLine("Month Purnimanta: Margashirsha");
        sb.AppendLine("Day: Guruvara | Samvat: 2082");

        // Nakshatra
        if (data.nakshatra != null && data.nakshatra.Count > 0)
        {
            var n = data.nakshatra[0];
            DateTime endTime;
            if (DateTime.TryParse(n.end, out endTime))
            {
                sb.AppendLine("Nakshatra: " + n.name + " upto " + endTime.ToString("HH:mm:ss"));
            }
        }

        // Yoga
        if (data.yoga != null && data.yoga.Count > 0)
        {
            var y = data.yoga[0];
            DateTime endTime;
            if (DateTime.TryParse(y.end, out endTime))
            {
                sb.AppendLine("Yoga: " + y.name + " upto " + endTime.ToString("HH:mm:ss"));
            }
        }

        // Karana
        if (data.karana != null && data.karana.Count > 0)
        {
            string karanaText = "";
            foreach (var k in data.karana)
            {
                DateTime endTime;
                if (DateTime.TryParse(k.end, out endTime))
                {
                    if (karanaText.Length > 0) karanaText += ", ";
                    karanaText += k.name + " upto " + endTime.ToString("HH:mm:ss");
                }
            }
            sb.AppendLine("Karan: " + karanaText);
        }

        return sb.ToString();
    }



    public static string GetApiResponse()
    {
        DateTime utcNow = DateTime.UtcNow;
        DateTime istNow = utcNow.AddMinutes(330); // IST = UTC + 5:30
        string datetimeParam = istNow.ToString("yyyy-MM-ddTHH:mm:ss+05:30");

        string token = nsp_BATClass.BATClass.GetAccessToken();
        string apiUrl = "https://api.prokerala.com/v2/astrology/panchang" +
                         "?datetime=2020-01-01T15:19:21%2B05:30&coordinates=17.3850,78.4867&ayanamsa=1";
      //  string apiUrl = "https://api.prokerala.com/v2/astrology/panchang" +
                //"?datetime=" + datetimeParam +
                //"&coordinates=17.3850,78.4867&ayanamsa=1";


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
        string json = GetApiResponse();
        var result = JsonConvert.DeserializeObject<PanchangResponse>(json);

        if (result != null && result.data != null)
        {
            // Vaara (Day)
            lblDay.Text = "Day: " + (result.data.vaara ?? "");

            // Tithi
            if (result.data.tithi != null && result.data.tithi.Count > 0)
            {
                var t = result.data.tithi[0];
                DateTime endTime;
                if (DateTime.TryParse(t.end, out endTime))
                {
                    lblTithi.Text = "Tithi: " + t.name + " upto " + endTime.ToString("HH:mm:ss");
                }
            }

            // Nakshatra
            if (result.data.nakshatra != null && result.data.nakshatra.Count > 0)
            {
                var n = result.data.nakshatra[0];
                DateTime endTime;
                if (DateTime.TryParse(n.end, out endTime))
                {
                    lblNakshatra.Text = "Nakshatra: " + n.name + " upto " + endTime.ToString("HH:mm:ss");
                }
            }

            // Yoga
            if (result.data.yoga != null && result.data.yoga.Count > 0)
            {
                var y = result.data.yoga[0];
                DateTime endTime;
                if (DateTime.TryParse(y.end, out endTime))
                {
                    lblYoga.Text = "Yoga: " + y.name + " upto " + endTime.ToString("HH:mm:ss");
                }
            }

            // Karana
            if (result.data.karana != null && result.data.karana.Count > 0)
            {
                string karanaText = "";
                foreach (var k in result.data.karana)
                {
                    DateTime endTime;
                    if (DateTime.TryParse(k.end, out endTime))
                    {
                        if (karanaText.Length > 0) karanaText += ", ";
                        karanaText += k.name + " upto " + endTime.ToString("HH:mm:ss");
                    }
                }
                lblKarana.Text = "Karan: " + karanaText;
            }

            // Sunrise, Sunset, Moonrise, Moonset
            lblSunrise.Text = "Sunrise: " + (result.data.sunrise ?? "");
            lblSunset.Text = "Sunset: " + (result.data.sunset ?? "");
            lblMoonrise.Text = "Moonrise: " + (result.data.moonrise ?? "");
            lblMoonset.Text = "Moonset: " + (result.data.moonset ?? "");

            // Month & Samvat (currently static unless you call Calendar API)
            lblMonthAmanta.Text = "Month Amanta: Margashirsha";
            lblMonthPurnimanta.Text = "Month Purnimanta: Margashirsha";
            lblSamvat.Text = "Samvat: 2082";
        }
        else
        {
            lblDay.Text = "No Panchang data available.";
        }
    }































    public class Tithi
    {
        public int id { get; set; }
        public int index { get; set; }
        public string name { get; set; }
        public string paksha { get; set; }
        public string start { get; set; }
        public string end { get; set; }  // <-- Add this
    }

    public class Nakshatra
    {
        public int id { get; set; }
        public string name { get; set; }
        public Lord lord { get; set; }
        public string start { get; set; }
        public string end { get; set; }  // <-- Add this
    }

    public class Yoga
    {
        public int id { get; set; }
        public string name { get; set; }
        public string start { get; set; }
        public string end { get; set; }  // <-- Add this
    }

    public class Karana
    {
        public int id { get; set; }
        public int index { get; set; }
        public string name { get; set; }
        public string start { get; set; }
        public string end { get; set; }  // <-- Add this
    }

    public class Data
    {
        public string vaara { get; set; }
        public List<Tithi> tithi { get; set; }
        public List<Nakshatra> nakshatra { get; set; }
        public List<Yoga> yoga { get; set; }
        public List<Karana> karana { get; set; }
        public string sunrise { get; set; }
        public string sunset { get; set; }
        public string moonrise { get; set; }
        public string moonset { get; set; }
    }

    public class PanchangResponse
    {
        public string status { get; set; }
        public Data data { get; set; }
    }

    public class Lord
    {
        public int id { get; set; }
        public string name { get; set; }
        public string vedic_name { get; set; }
    }


}
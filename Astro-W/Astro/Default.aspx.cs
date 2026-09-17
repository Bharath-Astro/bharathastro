using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Net;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTodayDate.Text = nsp_BATClass.BATClass.PanchangDate.ToString("dd MMMM, yyyy") +
            (nsp_BATClass.BATClass.IsSandbox ? " (Sandbox sample)" : "");
        if (!IsPostBack)
        {
            FillMonths();
            FillYears();
            FillHours();
            FillMinutes();
            FillSeconds();
            FillDays(); // initial fill
        }

        ///////////
        ///
        PanchangResponse result = null;
        try
        {
            result = JsonConvert.DeserializeObject<PanchangResponse>(GetApiResponse());
        }
        catch (InvalidOperationException) { /* Provider unavailable: keep Home usable. */ }
        catch (JsonException) { /* Do not render raw provider errors. */ }

        if (result != null && result.data != null)
        {
            // Vaara (Day)
            lblDay.Text = (result.data.vaara ?? "");

            // Tithi
            //if (result.data.tithi != null && result.data.tithi.Count > 0)
            //{
            //    var t = result.data.tithi[0];
            //    DateTime endTime;
            //    if (DateTime.TryParse(t.end, out endTime))
            //    {
            //        lblTithi.Text = t.name;
            //        lblTithiUpto.Text =endTime.ToString("HH:mm:ss");
            //    }
            //}
            // Tithi
            if (result.data.tithi != null && result.data.tithi.Count > 0)
            {
                var t = result.data.tithi[0];

                DateTime endTime;

                if (DateTime.TryParse(t.end, out endTime))
                {
                    lblTithi.Text = t.name;
                    lblTithiUpto.Text = endTime.ToString("HH:mm:ss");
                }
            }


            // Nakshatra
            //if (result.data.nakshatra != null && result.data.nakshatra.Count > 0)
            //{
            //    var n = result.data.nakshatra[0];
            //    DateTime endTime;
            //    if (DateTime.TryParse(n.end, out endTime))
            //    {
            //        lblNakshatra.Text = n.name;
            //        lblNakshatraUpto.Text =endTime.ToString("HH:mm:ss");
            //    }
            //}
            // Nakshatra
            if (result.data.nakshatra != null && result.data.nakshatra.Count > 0)
            {
                var n = result.data.nakshatra[0];

                DateTime endTime;

                if (DateTime.TryParse(n.end, out endTime))
                {
                    lblNakshatra.Text = n.name;
                    lblNakshatraUpto.Text = endTime.ToString("HH:mm:ss");
                }
            }


            // Yoga
            //if (result.data.yoga != null && result.data.yoga.Count > 0)
            //{
            //    var y = result.data.yoga[0];
            //    DateTime endTime;
            //    if (DateTime.TryParse(y.end, out endTime))
            //    {
            //        lblYoga.Text = y.name;
            //        lblYogaUpto.Text =endTime.ToString("HH:mm:ss");
            //    }
            //}
            // Yoga
            if (result.data.yoga != null && result.data.yoga.Count > 0)
            {
                var y = result.data.yoga[0];

                DateTime endTime;

                if (DateTime.TryParse(y.end, out endTime))
                {
                    lblYoga.Text = y.name;
                    lblYogaUpto.Text = endTime.ToString("HH:mm:ss");
                }
            }


            // Karana
            //if (result.data.karana != null && result.data.karana.Count > 0)
            //{
            //    string karanaText = "";
            //    string karanaTextUpto = "";
            //    foreach (var k in result.data.karana)
            //    {
            //        DateTime endTime;
            //        if (DateTime.TryParse(k.end, out endTime))
            //        {
            //            if (karanaText.Length > 0) karanaText += ", ";
            //            karanaText = k.name;
            //            karanaTextUpto =endTime.ToString("HH:mm:ss");
            //        }
            //    }
            //    lblKarana.Text = karanaText;
            //    lblKaranaUpto.Text = karanaTextUpto;
            //}
            // Karana
            if (result.data.karana != null && result.data.karana.Count > 0)
            {
                List<string> karanaParts = new List<string>();

                foreach (var k in result.data.karana)
                {
                    if (!string.IsNullOrEmpty(k.name) && !string.IsNullOrEmpty(k.end))
                    {
                        DateTime endTime;

                        if (DateTime.TryParse(k.end, out endTime))
                        {
                            karanaParts.Add(
                                k.name + " upto " + endTime.ToString("HH:mm:ss")
                            );
                        }
                    }
                }

                lblKarana.Text = string.Join(", ", karanaParts);
            }


            // Sunrise, Sunset, Moonrise, Moonset
            //lblSunrise.Text = "Sunrise: " + (result.data.sunrise ?? "");
            //lblSunset.Text = "Sunset: " + (result.data.sunset ?? "");
            //lblMoonrise.Text = "Moonrise: " + (result.data.moonrise ?? "");
            //lblMoonset.Text = "Moonset: " + (result.data.moonset ?? "");

            // Month & Samvat (currently static unless you call Calendar API)
            lblMonthAmanta.Text = "";
            lblMonthPurnimanta.Text = "";
            lblSamvat.Text = "";
        }
        else
        {
            lblDay.Text = "No Panchang data available.";
        }
    }
    public static string GetApiResponse()
    {
        string datetimeParam = nsp_BATClass.BATClass.PanchangDate.ToString("yyyy-MM-ddTHH:mm:ss+05:30");
        string encodedDatetime = Uri.EscapeDataString(datetimeParam);

        string token = nsp_BATClass.BATClass.GetAccessTokenProduction();

        string apiUrl = "https://api.prokerala.com/v2/astrology/panchang" +
                        "?datetime=" + encodedDatetime +
                        "&coordinates=17.3850,78.4867&ayanamsa=45";

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

    protected void lnkGenHoroscope_Click(object sender, EventArgs e)
    {

        try
        {
            // Collect dropdown values
            int day = int.Parse(ddlDay.SelectedValue);
            int month = int.Parse(ddlMonth.SelectedValue);
            int year = int.Parse(ddlYear.SelectedValue);
            int hour = int.Parse(ddlHour.SelectedValue);
            int minute = int.Parse(ddlMinute.SelectedValue);
            int second = int.Parse(ddlSecond.SelectedValue);

            // Combine into DateTime
            DateTime birthDetails = new DateTime(year, month, day, hour, minute, second);

            string connStr = ConfigurationManager.ConnectionStrings["csWorking"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = @"INSERT INTO KundliChart
                                (FirstName, Gender, BirthDetails, BirthPlace, CreatedOn)
                                VALUES (@FirstName, @Gender, @BirthDetails, @BirthPlace, @CreatedOn)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@BirthDetails", birthDetails);
                    cmd.Parameters.AddWithValue("@BirthPlace", txtBirthPlace.Text.Trim());
                    cmd.Parameters.AddWithValue("@CreatedOn", DateTime.Now);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            //lblMessage.CssClass = "text-success";
            //lblMessage.Text = "✅ Kundli record saved successfully!";
        }
        catch (Exception ex)
        {
            //lblMessage.CssClass = "text-danger";
            //lblMessage.Text = "❌ Error: " + ex.Message;
        }

        Response.Redirect("kundli-birth.aspx", false);
    }

    protected void lnkTodayPanchang_Click(object sender, EventArgs e)
    {

    }

    protected void lnk11_Click(object sender, EventArgs e)
    {
        Response.Redirect("book-now.aspx", false);
    }

    protected void lnkRM1_Click(object sender, EventArgs e)
    {

    }

    protected void lnkRM2_Click(object sender, EventArgs e)
    {

    }

    protected void lnkRM3_Click(object sender, EventArgs e)
    {

    }



    // Date of Birth::

    //private void FillDays()
    //{
    //    ddlDay.Items.Clear();

    //    int year = ddlYear.SelectedValue != "" ? int.Parse(ddlYear.SelectedValue) : DateTime.Now.Year;
    //    int month = ddlMonth.SelectedValue != "" ? int.Parse(ddlMonth.SelectedValue) : DateTime.Now.Month;

    //    int daysInMonth = DateTime.DaysInMonth(year, month);

    //    for (int i = 1; i <= daysInMonth; i++)
    //    {
    //        ddlDay.Items.Add(i.ToString("00"));
    //    }
    //}
    //private void FillDays()
    //{
    //    ddlDay.Items.Clear();

    //    int year = ddlYear.SelectedValue != "" ? int.Parse(ddlYear.SelectedValue) : DateTime.Now.Year;
    //    int month = ddlMonth.SelectedValue != "" ? int.Parse(ddlMonth.SelectedValue) : DateTime.Now.Month;

    //    int daysInMonth = DateTime.DaysInMonth(year, month);

    //    for (int i = 1; i <= daysInMonth; i++)
    //    {
    //        ddlDay.Items.Add(i.ToString("00")); // shows 01, 02, … 31
    //    }
    //}
    private void FillDays()
    {
        ddlDay.Items.Clear();

        // Add initial placeholder
        ddlDay.Items.Add(new ListItem("DD", ""));

        int year = ddlYear.SelectedValue != "" ? int.Parse(ddlYear.SelectedValue) : DateTime.Now.Year;
        int month = ddlMonth.SelectedValue != "" ? int.Parse(ddlMonth.SelectedValue) : DateTime.Now.Month;

        int daysInMonth = DateTime.DaysInMonth(year, month);

        for (int i = 1; i <= daysInMonth; i++)
        {
            ddlDay.Items.Add(i.ToString("00")); // shows 01, 02, … 31
        }
    }


    //private void FillMonths()
    //{
    //    ddlMonth.Items.Clear();
    //    for (int i = 1; i <= 12; i++)
    //    {
    //        ddlMonth.Items.Add(new ListItem(
    //            CultureInfo.CurrentCulture.DateTimeFormat.GetMonthName(i), i.ToString()));
    //    }
    //    ddlMonth.SelectedValue = DateTime.Now.Month.ToString();
    //}
    private void FillMonths()
    {
        ddlMonth.Items.Clear();

        // Add initial placeholder
        ddlMonth.Items.Add(new ListItem("MM", ""));

        for (int i = 1; i <= 12; i++)
        {
            ddlMonth.Items.Add(i.ToString("00")); // shows 01, 02, … 12
        }
      //  ddlMonth.SelectedValue = DateTime.Now.Month.ToString("00");
    }


    private void FillYears()
    {
        ddlYear.Items.Clear();

        // Add initial placeholder
        ddlYear.Items.Add(new ListItem("YYYY", ""));

        int currentYear = DateTime.Now.Year;
        for (int i = 1900; i <= currentYear; i++)
        {
            ddlYear.Items.Add(i.ToString());
        }
     //   ddlYear.SelectedValue = currentYear.ToString();
    }

    private void FillHours()
    {
        ddlHour.Items.Clear();
        for (int i = 0; i <= 23; i++)
        {
            ddlHour.Items.Add(i.ToString("00"));
        }
    }

    private void FillMinutes()
    {
        ddlMinute.Items.Clear();
        for (int i = 0; i <= 59; i++)
        {
            ddlMinute.Items.Add(i.ToString("00"));
        }
    }

    private void FillSeconds()
    {
        ddlSecond.Items.Clear();
        for (int i = 0; i <= 59; i++)
        {
            ddlSecond.Items.Add(i.ToString("00"));
        }
    }

    protected void ddlMonth_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDays(); // refresh days when month changes
    }

    protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        FillDays(); // refresh days when year changes (for leap years)
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




    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("kundli-details.aspx", false);
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        pnlGroomDetails.Visible = false;
        pnlBrideDetails.Visible = true;
    }
}

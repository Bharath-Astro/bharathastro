using MaxMind.GeoIP2;
using MaxMind.GeoIP2.Responses;
using nsp_BATClass;
using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class AstroMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        accountCreated.Visible = Session["AccountCreated"] as bool? == true;
        if (accountCreated.Visible) Session.Remove("AccountCreated");
        if (!IsPostBack)
        {
            if (Request.IsAuthenticated)
            {
                divNoLogin.Visible = false;
                divLoggedIn.Visible = true;
            }
            else
            {
                divNoLogin.Visible = true;
                divLoggedIn.Visible = false;
            }

            ///







            /// GET COUNTRY CODE
            /// 
            string ip = Request.ServerVariables["REMOTE_ADDR"];

            // Handle local development case
            if (ip == "::1" || ip == "127.0.0.1")
            {
                // Assign a test IP of your choice
                ip = "106.222.228.197"; // Local
                                // Or use "133.11.128.1" (Japan) for testing
            }

            string countryCode = GetCountryCode(ip); // your DB-IP lookup method
            lblCountry.Text = countryCode;

            //string usIp = "8.8.8.8"; // Expected: US
            //string ukIp = "212.58.244.20"; // Expected: GB
            //string jpIp = "133.11.128.1"; // Expected: JP
            lblLanguage.Text = "ENG";
        }
    }



    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        ApplicationAuthentication.SignOut(Context);
        Response.Redirect("~/Login.aspx", false);
        Context.ApplicationInstance.CompleteRequest();
    }



    public string GetCountryCode(string ipAddress)
    {
        string dbPath = Server.MapPath("~/App_Data/dbip-country-lite-2025-12.mmdb");
        using (var reader = new DatabaseReader(dbPath))
        {
            CountryResponse response = reader.Country(ipAddress);
            return response.Country.IsoCode; // e.g. "IN", "US"
        }
    }





    protected void lnkSubscribe_Click(object sender, EventArgs e)
    {
        string email = txtEmailNL.Text.Trim();
        // Validate email format
        if (IsValidEmail(email))
        {
            string connStr = ConfigurationManager.ConnectionStrings["csWorking"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // Check if email already exists
                string checkQuery = "SELECT COUNT(*) FROM NewsletterSubscribers WHERE Email = @Email";
                using (SqlCommand checkCmd = new SqlCommand(checkQuery, conn))
                {
                    checkCmd.Parameters.AddWithValue("@Email", email);
                    int count = (int)checkCmd.ExecuteScalar();

                    if (count == 0)
                    {
                        // Insert new subscriber
                        string insertQuery = "INSERT INTO NewsletterSubscribers (Email) VALUES (@Email)";
                        using (SqlCommand insertCmd = new SqlCommand(insertQuery, conn))
                        {
                            insertCmd.Parameters.AddWithValue("@Email", email);
                            insertCmd.ExecuteNonQuery();
                        }

                        lblMessageES.CssClass = "text-success";
                        lblMessageES.Text = "✅ Thank you for subscribing!";
                        txtEmailNL.Text = string.Empty;
                    }
                    else
                    {
                        lblMessageES.CssClass = "text-warning";
                        lblMessageES.Text = "⚠️ This email is already subscribed.";
                    }
                }
            }
        }
        else
        {
            lblMessageES.CssClass = "text-danger";
            lblMessageES.Text = "❌ Please enter a valid email address.";
        }
    }

    private bool IsValidEmail(string email)
    {
        if (string.IsNullOrEmpty(email)) return false;

        string pattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
        return Regex.IsMatch(email, pattern, RegexOptions.IgnoreCase);
    }
}

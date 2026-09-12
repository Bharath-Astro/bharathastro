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
        //divNoLogin.Visible = false;
        //divLoggedIn.Visible = true;
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


    protected void lnkRfRegister_Click(object sender, EventArgs e)
    {
        // Update with your actual SQL Server details
        string connectionString = ConfigurationManager.ConnectionStrings["csWorking"].ConnectionString;
        string query = "INSERT INTO CustomerInfo " +
                           "(FirstName, LastName, Gender, DateOfBirth, PlaceOfBirth, EmailID, MobileNumber, [Password], CurrentAddress, CreatedOn, ModifiedOn, IsActive) " +
                           "VALUES (@FirstName, @LastName, @Gender, @DateOfBirth, @PlaceOfBirth, @EmailID, @MobileNumber, @Password, @CurrentAddress, @CreatedOn, @ModifiedOn, @IsActive)";

        using (SqlConnection conn = new SqlConnection(connectionString))
        {
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                // Example values (replace with TextBox/ComboBox controls in your form)
                cmd.Parameters.AddWithValue("@FirstName", txtRfFirstname.Text);
                cmd.Parameters.AddWithValue("@LastName", txtRfLastname.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlRfGender.SelectedValue); // e.g. 1=Male, 2=Female
                cmd.Parameters.AddWithValue("@DateOfBirth", new DateTime(1990, 5, 20));
                cmd.Parameters.AddWithValue("@PlaceOfBirth", "0");
                cmd.Parameters.AddWithValue("@EmailID", txtRfEmail.Text);
                cmd.Parameters.AddWithValue("@MobileNumber", txtRfMobole.Text);
                cmd.Parameters.AddWithValue("@Password", "");
                cmd.Parameters.AddWithValue("@CurrentAddress", "0");
                cmd.Parameters.AddWithValue("@CreatedOn", DateTime.UtcNow.AddMinutes(330));
                cmd.Parameters.AddWithValue("@ModifiedOn", DateTime.Now);
                cmd.Parameters.AddWithValue("@IsActive", 1);

                try
                {
                    conn.Open();
                    int rows = cmd.ExecuteNonQuery();
                    if (rows > 0)
                    {
                        // MessageBox.Show("Record inserted successfully!");
                        divRegConfirmation.Visible = true;
                    }
                    else
                    {
                        //  MessageBox.Show("Insert failed.");
                        lblMessage.Text = "Insert failed.";
                    }
                }
                catch (Exception ex)
                {
                    //  MessageBox.Show("Error: " + ex.Message);
                    lblMessage.Text ="Error: " + ex.Message;
                }
            }
        }


    }

    protected void lnkRfLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx", false);
        Context.ApplicationInstance.CompleteRequest();
    }

    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        SampleAuthentication.SignOut(Context);
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
    protected void lnkShiftSignUp_Click(object sender, EventArgs e)
    {
        divSignUpForm.Visible = true;
        divLoginForm.Visible = false;
        divRegConfirmation.Visible = false;
    }

    protected void lnkShiftLogin_Click(object sender, EventArgs e)
    {
        divSignUpForm.Visible = false;
        divLoginForm.Visible = true;
        divRegConfirmation.Visible = false;
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

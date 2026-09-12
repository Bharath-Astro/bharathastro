using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class register_as_astrologer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string connStr = ConfigurationManager.ConnectionStrings["csWorking"].ConnectionString;
            string imagePath = null;

            // Save uploaded file
            if (fuProfileImage.HasFile)
            {
                string fileName = Guid.NewGuid().ToString() + System.IO.Path.GetExtension(fuProfileImage.FileName);
                imagePath = "~/uploads/" + fileName; // relative path

                // Save file to server folder
                fuProfileImage.SaveAs(Server.MapPath(imagePath));
            }

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = @"INSERT INTO AstrologerInfo
                (FirstName, LastName, Gender, DateOfBirth, Languages, Skills, Specializations, LanguagesBest,
                 EmailID, MobileNumber, PhoneUsing, TotalYearsOfExp, CreatedOn, ModifiedOn, ProfileImage)
                VALUES
                (@FirstName, @LastName, @Gender, @DateOfBirth, @Languages, @Skills, @Specializations, @LanguagesBest,
                 @EmailID, @MobileNumber, @PhoneUsing, @TotalYearsOfExp, @CreatedOn, @ModifiedOn, @ProfileImage)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.Trim());
                    cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@DateOfBirth", DateTime.Parse(txtDOB.Text));
                    cmd.Parameters.AddWithValue("@Languages", txtLanguages.Text.Trim());
                    cmd.Parameters.AddWithValue("@Skills", txtSkills.Text.Trim());
                    cmd.Parameters.AddWithValue("@Specializations", txtSpecializations.Text.Trim());
                    cmd.Parameters.AddWithValue("@LanguagesBest", txtLanguagesBest.Text.Trim());
                    cmd.Parameters.AddWithValue("@EmailID", txtEmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@MobileNumber", txtMobile.Text.Trim());
                    cmd.Parameters.AddWithValue("@PhoneUsing", txtPhoneUsing.Text.Trim());
                    cmd.Parameters.AddWithValue("@TotalYearsOfExp", int.Parse(txtExp.Text.Trim()));
                    cmd.Parameters.AddWithValue("@CreatedOn", DateTime.Now);
                    cmd.Parameters.AddWithValue("@ModifiedOn", DateTime.Now);
                    cmd.Parameters.AddWithValue("@ProfileImage", (object)imagePath ?? DBNull.Value);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            lblMessage.CssClass = "text-success";
            lblMessage.Text = "✅ Astrologer registered successfully with profile image!";
        }
        catch (Exception ex)
        {
            lblMessage.CssClass = "text-danger";
            lblMessage.Text = "❌ Error: " + ex.Message;
        }
    }

}
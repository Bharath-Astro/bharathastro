using System;
using System.Web.UI;

public partial class Login : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string returnUrl = SampleAuthentication.GetReturnUrl(Request.QueryString["ReturnUrl"], Request.ApplicationPath);
        if (Request.IsAuthenticated)
        {
            Response.Redirect(returnUrl, false);
            Context.ApplicationInstance.CompleteRequest();
            return;
        }

        if (!IsPostBack)
            return;

        bool phoneMissing = string.IsNullOrWhiteSpace(phoneNumber.Text);
        bool passwordMissing = string.IsNullOrWhiteSpace(password.Text);
        phoneError.Text = phoneMissing ? "Please enter your phone number." : "";
        passwordError.Text = passwordMissing ? "Please enter your password." : "";
        phoneNumber.Attributes["aria-invalid"] = phoneMissing ? "true" : "false";
        password.Attributes["aria-invalid"] = passwordMissing ? "true" : "false";
        if (phoneMissing || passwordMissing)
        {
            loginError.Text = "Please fill in both fields.";
            return;
        }

        if (!SampleAuthentication.ValidateCredentials(phoneNumber.Text, password.Text))
        {
            loginError.Text = "Invalid phone number or password.";
            return;
        }

        SampleAuthentication.SignIn(Context);
        Response.Redirect(returnUrl, false);
        Context.ApplicationInstance.CompleteRequest();
    }
}

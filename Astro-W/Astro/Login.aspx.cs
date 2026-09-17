using System;
using System.Web;

public partial class Login : AuthenticationPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        authToken.Value = FormToken;
        createAccountLink.NavigateUrl = "~/CreateAccount.aspx?ReturnUrl=" + HttpUtility.UrlEncode(ReturnUrl);
        googleNotice.Text = GoogleAuthentication.IsConfigured ? "" : "Google sign-in is not configured yet.";
        if (Request.IsAuthenticated) { RedirectTo(ReturnUrl); return; }
        if (Request.HttpMethod != "POST")
        {
            switch (Request.QueryString["authError"])
            {
                case "google_cancelled": loginError.Text = "Google sign-in was cancelled. Please try again."; break;
                case "google_expired": loginError.Text = "Google sign-in expired or could not be verified. Please try again."; break;
                case "google_failed": loginError.Text = "Google sign-in could not be completed. Please try again or use another login method."; break;
            }
            return;
        }
        if (!ValidSubmission) { loginError.Text = "Your session expired. Reload this page and try again."; return; }
        if (GoogleRequested)
        {
            if (!GoogleAuthentication.Begin(Context, ReturnUrl)) loginError.Text = "Google sign-in is not configured yet. Please use phone or email login.";
            return;
        }

        bool phoneMissing = string.IsNullOrWhiteSpace(phoneNumber.Text);
        bool passwordMissing = string.IsNullOrWhiteSpace(password.Text);
        phoneError.Text = phoneMissing ? "Please enter your phone number or email." : "";
        passwordError.Text = passwordMissing ? "Please enter your password." : "";
        phoneNumber.Attributes["aria-invalid"] = phoneMissing ? "true" : "false";
        password.Attributes["aria-invalid"] = passwordMissing ? "true" : "false";
        if (phoneMissing || passwordMissing) { loginError.Text = "Please fill in both fields."; return; }

        try
        {
            string userId = SampleAuthentication.ValidateCredentials(phoneNumber.Text, password.Text) ? "sample-user" : null;
            if (userId == null && phoneNumber.Text.Contains("@"))
                userId = DemoAccountStore.Current.Authenticate(phoneNumber.Text, password.Text);
            if (userId == null)
            {
                loginError.Text = phoneNumber.Text.Contains("@") ? "Invalid email or password." : "Invalid phone number or password.";
                return;
            }
            ApplicationAuthentication.SignIn(Context, userId);
            RedirectTo(ReturnUrl);
        }
        catch (Exception) { loginError.Text = "We couldn't log you in right now. Please try again later."; }
    }
}

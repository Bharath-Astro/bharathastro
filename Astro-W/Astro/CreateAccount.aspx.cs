using System;
using System.Web;

public partial class CreateAccount : AuthenticationPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        authToken.Value = FormToken;
        loginLink.NavigateUrl = "~/Login.aspx?ReturnUrl=" + HttpUtility.UrlEncode(ReturnUrl);
        googleNotice.Text = GoogleAuthentication.IsConfigured ? "" : "Google sign-in is not configured yet.";
        if (Request.IsAuthenticated) { RedirectTo(ReturnUrl); return; }
        if (Request.HttpMethod != "POST") return;
        if (!ValidSubmission) { loginError.Text = "Your session expired. Reload this page and try again."; return; }
        if (GoogleRequested)
        {
            if (!GoogleAuthentication.Begin(Context, ReturnUrl)) loginError.Text = "Google sign-in is not configured yet. You can create an account with email.";
            return;
        }

        emailError.Text = string.IsNullOrWhiteSpace(email.Text) ? "Please enter your email address."
            : DemoAccountStore.ValidEmail(email.Text) ? "" : "Please enter a valid email address.";
        passwordError.Text = DemoAccountStore.PasswordError(password.Text);
        confirmError.Text = string.IsNullOrWhiteSpace(confirmPassword.Text) ? "Please confirm your password."
            : password.Text != confirmPassword.Text ? "Passwords do not match." : "";
        email.Attributes["aria-invalid"] = (emailError.Text != "").ToString().ToLowerInvariant();
        password.Attributes["aria-invalid"] = (passwordError.Text != "").ToString().ToLowerInvariant();
        confirmPassword.Attributes["aria-invalid"] = (confirmError.Text != "").ToString().ToLowerInvariant();
        if (emailError.Text != "" || passwordError.Text != "" || confirmError.Text != "")
        { loginError.Text = "Please check the highlighted fields."; return; }
        try
        {
            string userId = DemoAccountStore.Current.Register(email.Text, password.Text);
            ApplicationAuthentication.SignIn(Context, userId);
            Session["AccountCreated"] = true;
            RedirectTo(ReturnUrl);
        }
        catch (AccountExistsException) { loginError.Text = "An account with this email already exists. Please log in."; }
        catch (Exception) { loginError.Text = "We couldn't create your account right now. Please try again later."; }
    }
}

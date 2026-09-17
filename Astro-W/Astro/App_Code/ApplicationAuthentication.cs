using System;
using System.Security.Cryptography;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;

/// <summary>One cookie/session mechanism for sample, email and Google identities.</summary>
public static class ApplicationAuthentication
{
    public static void SignIn(HttpContext context, string userId)
    {
        HttpCookie cookie = FormsAuthentication.GetAuthCookie(userId, false);
        cookie.HttpOnly = true;
        cookie.Secure = context.Request.IsSecureConnection;
        context.Response.Cookies.Add(cookie);
        context.Session.Remove("AuthFormToken");
    }

    public static void SignOut(HttpContext context)
    {
        FormsAuthentication.SignOut();
        context.Session.Clear();
        context.Session.Abandon();
    }

    public static string RandomToken()
    {
        byte[] bytes = new byte[32];
        using (var rng = RandomNumberGenerator.Create()) rng.GetBytes(bytes);
        return Base64Url(bytes);
    }

    public static string Base64Url(byte[] bytes)
    {
        return Convert.ToBase64String(bytes).TrimEnd('=').Replace('+', '-').Replace('/', '_');
    }

    public static string GetReturnUrl(string returnUrl, string applicationPath)
    {
        string root = applicationPath == "/" ? "/" : applicationPath.TrimEnd('/') + "/";
        string home = root + "Default.aspx";
        if (string.IsNullOrEmpty(returnUrl) || returnUrl.IndexOf('\\') >= 0
            || returnUrl.IndexOf('\r') >= 0 || returnUrl.IndexOf('\n') >= 0) return home;
        string path = returnUrl.Split('?', '#')[0];
        if (!path.StartsWith(root, StringComparison.OrdinalIgnoreCase)
            || path.Contains("//") || path.Contains("/./") || path.Contains("/../")
            || !Regex.IsMatch(path, @"\A/[a-zA-Z0-9_./-]*\z")
            || (!path.EndsWith(".aspx", StringComparison.OrdinalIgnoreCase) && path != root)) return home;
        foreach (string page in new[] { "Login.aspx", "CreateAccount.aspx", "GoogleCallback.aspx" })
            if (path.Equals(root + page, StringComparison.OrdinalIgnoreCase)) return home;
        return path == root ? home : returnUrl;
    }
}

/// <summary>Shared public authentication-page CSRF protection and redirects.</summary>
public class AuthenticationPage : Page
{
    protected string FormToken { get; private set; }
    protected string ReturnUrl { get; private set; }
    protected bool ValidSubmission
    {
        get { return Request.HttpMethod == "POST" && Request.Form["authToken"] == FormToken; }
    }
    protected bool GoogleRequested
    {
        get { return Request.Form["authAction"] == "google" || Request.Form["action"] == "google"; }
    }

    protected override void OnInit(EventArgs e)
    {
        Response.Headers["Referrer-Policy"] = "no-referrer";
        ViewStateUserKey = Session.SessionID;
        if (Session["AuthFormToken"] == null) Session["AuthFormToken"] = ApplicationAuthentication.RandomToken();
        FormToken = (string)Session["AuthFormToken"];
        ReturnUrl = ApplicationAuthentication.GetReturnUrl(Request.QueryString["ReturnUrl"], Request.ApplicationPath);
        base.OnInit(e);
    }

    protected void RedirectTo(string url)
    {
        Response.Redirect(url, false);
        Context.ApplicationInstance.CompleteRequest();
    }
}

using System;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;

/// <summary>Temporary sample credentials, using the site's built-in Forms Authentication.</summary>
public static class SampleAuthentication
{
    private const string PhoneNumber = "0123456789";
    private const string Password = "astrotalk123$";

    public static bool ValidateCredentials(string phoneNumber, string password)
    {
        return string.Equals(phoneNumber, PhoneNumber, StringComparison.Ordinal)
            && string.Equals(password, Password, StringComparison.Ordinal);
    }

    public static void SignIn(HttpContext context)
    {
        // A session cookie survives refreshes without saving the password in the browser.
        HttpCookie cookie = FormsAuthentication.GetAuthCookie("sample-user", false);
        cookie.HttpOnly = true;
        cookie.Secure = context.Request.IsSecureConnection;
        context.Response.Cookies.Add(cookie);
    }

    public static void SignOut(HttpContext context)
    {
        FormsAuthentication.SignOut();
        context.Session.Clear();
        context.Session.Abandon();
    }

    public static string GetReturnUrl(string returnUrl, string applicationPath)
    {
        string appRoot = applicationPath == "/" ? "/" : applicationPath.TrimEnd('/') + "/";
        string homeUrl = appRoot + "Default.aspx";
        if (string.IsNullOrEmpty(returnUrl) || returnUrl.IndexOf('\\') >= 0
            || returnUrl.IndexOf('\r') >= 0 || returnUrl.IndexOf('\n') >= 0)
            return homeUrl;

        string path = returnUrl.Split('?', '#')[0];
        // Return only to routes inside this application. Disallow schemes, encoded paths,
        // network-path URLs and traversal, while retaining the original query string.
        if (!path.StartsWith(appRoot, StringComparison.OrdinalIgnoreCase)
            || path.Contains("//") || path.Contains("/./") || path.Contains("/../")
            || !Regex.IsMatch(path, @"\A/[a-zA-Z0-9_./-]*\z")
            || (!path.EndsWith(".aspx", StringComparison.OrdinalIgnoreCase) && path != appRoot)
            || path.Equals(appRoot + "Login.aspx", StringComparison.OrdinalIgnoreCase))
            return homeUrl;

        return path == appRoot ? homeUrl : returnUrl;
    }
}

using System;
using System.Threading.Tasks;
using System.Web.UI;

public partial class GoogleCallback : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Headers["Referrer-Policy"] = "no-referrer";
        RegisterAsyncTask(new PageAsyncTask(CompleteLogin));
    }

    private async Task CompleteLogin()
    {
        var flow = GoogleAuthentication.ConsumeFlow(Context, Request.QueryString["state"]);
        string destination;
        if (Request.HttpMethod != "GET" || flow == null)
            destination = "~/Login.aspx?authError=google_expired";
        else if (!string.IsNullOrEmpty(Request.QueryString["error"]))
            destination = "~/Login.aspx?authError=google_cancelled";
        else
        {
            try
            {
                string userId = await GoogleAuthentication.GetVerifiedUserIdAsync(Request.QueryString["code"], flow);
                ApplicationAuthentication.SignIn(Context, userId);
                destination = ApplicationAuthentication.GetReturnUrl(flow.ReturnUrl, Request.ApplicationPath);
            }
            catch (Exception)
            {
                // Provider responses, codes and secrets must never reach HTML or application logs.
                destination = "~/Login.aspx?authError=google_failed";
            }
        }
        Response.Redirect(destination, false);
        Context.ApplicationInstance.CompleteRequest();
    }
}

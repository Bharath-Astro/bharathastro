using System;
using System.Web;
using Newtonsoft.Json.Linq;

public partial class kundli_matching : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        ViewStateUserKey = Session.SessionID;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        pnlSandbox.Visible = nsp_BATClass.BATClass.IsSandbox;
        pnlError.Visible = false;
    }

    private bool ReadBirthDetails(MatchingBirthDetailsControl control, string role, out MatchingBirthDetails details)
    {
        details = null;
        try { details = control.ReadDetails(nsp_BATClass.BATClass.IsSandbox); return true; }
        catch (ArgumentException ex) { ShowError(role + ": " + ex.Message); return false; }
    }

    private void ShowError(string message)
    {
        pnlError.Visible = true;
        litError.Text = HttpUtility.HtmlEncode(message);
    }

    protected void Continue_Click(object sender, EventArgs e)
    {
        MatchingBirthDetails groom;
        if (!ReadBirthDetails(GroomDetails, "Groom", out groom)) return;
        pnlGroomDetails.Visible = false;
        pnlBrideDetails.Visible = true;
        litGroomSummary.Text = HttpUtility.HtmlEncode(groom.Name + " | " +
            groom.BirthTime.ToString("yyyy-MM-dd HH:mm:ss zzz") + " | " + groom.Place);
    }

    protected void Back_Click(object sender, EventArgs e)
    {
        pnlGroomDetails.Visible = true;
        pnlBrideDetails.Visible = false;
        pnlResults.Visible = false;
        litResults.Text = "";
    }

    protected void Match_Click(object sender, EventArgs e)
    {
        pnlResults.Visible = false;
        litResults.Text = "";
        MatchingBirthDetails groom, bride;
        if (!ReadBirthDetails(GroomDetails, "Groom", out groom))
        {
            pnlGroomDetails.Visible = true;
            pnlBrideDetails.Visible = false;
            return;
        }
        if (!ReadBirthDetails(BrideDetails, "Bride", out bride)) return;
        try
        {
            // A brief per-session cache avoids another paid request for an identical resubmission.
            string key = KundliMatchingService.BuildUrl(groom, bride) + "|" + nsp_BATClass.BATClass.IsSandbox;
            JObject data = null;
            if ((string)Session["MatchingRequest"] == key && Session["MatchingExpires"] is DateTime &&
                (DateTime)Session["MatchingExpires"] > DateTime.UtcNow)
                data = KundliMatchingService.ParseResponse((string)Session["MatchingResponse"]);
            if (data == null)
            {
                data = KundliMatchingService.Fetch(groom, bride);
                Session["MatchingRequest"] = key;
                Session["MatchingResponse"] = new JObject(new JProperty("status", "ok"), new JProperty("data", data)).ToString();
                Session["MatchingExpires"] = DateTime.UtcNow.AddMinutes(10);
            }
            litResults.Text = KundliMatchingService.Render(data, groom.Name, bride.Name);
            pnlBrideDetails.Visible = false;
            pnlResults.Visible = true;
        }
        catch (InvalidOperationException ex) { ShowError(ex.Message); }
    }

    protected void Edit_Click(object sender, EventArgs e)
    {
        pnlResults.Visible = false;
        litResults.Text = "";
        pnlBrideDetails.Visible = true;
    }
}

using System;
using System.Diagnostics;
using System.Globalization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// Shared rendering for the two existing on-demand timing pages.
public abstract class PanchangTimingPage : Page
{
    protected abstract string ReportKind { get; }
    protected PanchangSelection Selection { get { return ViewState["PanchangSelection"] as PanchangSelection; } set { ViewState["PanchangSelection"] = value; } }
    protected string Status { get { return HttpUtility.HtmlEncode(Convert.ToString(ViewState["PanchangStatus"])); } }
    protected override void OnLoad(EventArgs e)
    {
        base.OnLoad(e);
        if (IsPostBack) return;
        if (Request.QueryString["date"] == null) { ViewState["PanchangStatus"] = "Choose a date and location on Daily Panchang, then open this report."; return; }
        try
        {
            Selection = PanchangSelection.FromQuery(Request.QueryString, nsp_BATClass.BATClass.IsSandbox);
            var report = PanchangService.Generate(Selection, ReportKind);
            var content = Master.FindControl("ContentPlaceHolder1");
            var day = (Repeater)content.FindControl("DayTimings"); var night = (Repeater)content.FindControl("NightTimings");
            day.DataSource = report.Day; day.DataBind(); night.DataSource = report.Night; night.DataBind();
            ViewState["PanchangStatus"] = !string.IsNullOrEmpty(report.Error) ? report.Error :
                report.Day.Count + report.Night.Count == 0 ? "No periods returned for this date and location." : "All times use the selected location's UTC offset. (+1 day) means the following date.";
        }
        catch (ArgumentException ex) { ViewState["PanchangStatus"] = ex.Message; }
        catch (Exception ex)
        {
            System.Diagnostics.Trace.TraceError("Panchang timing unexpected failure: {0}", ex.GetType().Name);
            ViewState["PanchangStatus"] = PanchangService.ErrorMessage(0);
        }
    }
    protected string DisplayDate { get { return Selection == null ? "selected date" : HttpUtility.HtmlEncode(Selection.Date.ToString("d MMMM yyyy", CultureInfo.InvariantCulture)); } }
    protected string DisplayCity { get { return Selection == null ? "Select a location on Daily Panchang" : HttpUtility.HtmlEncode(Selection.City); } }
    protected string Link(string page) { return HttpUtility.HtmlAttributeEncode(page + (Selection == null ? "" : "?" + Selection.Query())); }
}


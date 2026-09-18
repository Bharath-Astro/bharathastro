using System;
using System.Diagnostics;
using System.Globalization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class panchang_daily : System.Web.UI.Page
{
    private PanchangSelection Selection { get { return ViewState["PanchangSelection"] as PanchangSelection; } set { ViewState["PanchangSelection"] = value; } }
    private PanchangReport Report { get { return ViewState["PanchangReport"] as PanchangReport; } set { ViewState["PanchangReport"] = value; } }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) return;
        txtDate.Value = DateTime.Today.ToString("yyyy-MM-dd");
        txtCity.Value = "Mumbai, Maharashtra";
        statusMessage.InnerText = "Select a date and place, then click Continue to load Panchang.";
        if (nsp_BATClass.BATClass.IsSandbox) sandboxMessage.InnerText = "Sandbox mode: only January 1 dates are supported. Results are for testing.";
        if (Request.QueryString["date"] == null) return;
        try
        {
            var s = PanchangSelection.FromQuery(Request.QueryString, nsp_BATClass.BATClass.IsSandbox);
            txtDate.Value = s.Date.ToString("yyyy-MM-dd"); ddlCountry.Value = s.Country; txtCity.Value = s.City; ddlLang.Value = s.Language;
            txtLatitude.Value = s.ManualLatitude; txtLongitude.Value = s.ManualLongitude; txtOffset.Value = s.ManualOffset;
            LoadReport();
        }
        catch (ArgumentException ex) { statusMessage.InnerText = ex.Message; }
    }
    protected void Continue_Click(object sender, EventArgs e) { LoadReport(); }
    protected void NavigateDate(object sender, CommandEventArgs e)
    {
        DateTime day;
        if (!DateTime.TryParseExact(txtDate.Value, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out day))
        { ClearReport("Select a valid date first."); return; }
        string command = Convert.ToString(e.CommandArgument);
        if (command == "today")
        {
            try { var location = ReadSelection(false); day = DateTimeOffset.UtcNow.ToOffset(location.Date.Offset).Date; }
            catch (ArgumentException ex) { ClearReport(ex.Message); return; }
        }
        else if (day.Year >= 1900 && day.Year <= 2099) day = day.AddDays(command == "previous" ? -1 : 1);
        txtDate.Value = day.ToString("yyyy-MM-dd");
        LoadReport();
    }
    private PanchangSelection ReadSelection(bool sandbox)
    {
        return PanchangSelection.Parse(txtDate.Value, ddlCountry.Value, txtCity.Value, ddlLang.Value,
            txtLatitude.Value.Trim(), txtLongitude.Value.Trim(), txtOffset.Value.Trim(), sandbox);
    }
    private void ClearReport(string message) { Selection = null; Report = null; statusMessage.InnerText = message; }
    private void LoadReport()
    {
        ClearReport("");
        try
        {
            Selection = ReadSelection(nsp_BATClass.BATClass.IsSandbox);
            Report = PanchangService.Generate(Selection, "daily");
            statusMessage.InnerText = string.IsNullOrEmpty(Report.Error) ? "Panchang loaded. All times use the selected location's UTC offset; (+1 day) means the following date." : Report.Error;
        }
        catch (ArgumentException ex) { ClearReport(ex.Message); }
        catch (Exception ex)
        {
            System.Diagnostics.Trace.TraceError("Panchang daily unexpected failure: {0}", ex.GetType().Name);
            ClearReport(PanchangService.ErrorMessage(0));
        }
    }
    protected string Value(string key) { return HttpUtility.HtmlEncode(Report == null ? "Not loaded" : Report.Value(key)); }
    protected string DisplayDate { get { return Selection == null ? "Select date" : HttpUtility.HtmlEncode(Selection.Date.ToString("dddd, d MMMM yyyy", CultureInfo.InvariantCulture)); } }
    protected string Link(string page) { return HttpUtility.HtmlAttributeEncode(page + (Selection == null ? "" : "?" + Selection.Query())); }
    protected string CityOptions { get { return string.Join("", System.Linq.Enumerable.Select(PanchangSelection.Cities, city => "<option value=\"" + HttpUtility.HtmlAttributeEncode(city) + "\"></option>")); } }
}


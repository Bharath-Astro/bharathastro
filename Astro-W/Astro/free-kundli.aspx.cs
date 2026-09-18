using System;
using System.Globalization;
using System.Web;

public partial class free_kundli : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        ViewStateUserKey = Session.SessionID;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        pnlSandbox.Visible = nsp_BATClass.BATClass.IsSandbox;
        pnlError.Visible = false;
        System.Web.UI.ScriptManager.GetCurrent(Page).AsyncPostBackTimeout = 100;
    }

    protected void Generate_Click(object sender, EventArgs e)
    {
        pnlResults.Visible = false;
        litHoroscope.Text = "";
        imgChart.ImageUrl = "";
        pnlChart.Visible = false;
        pnlChartError.Visible = false;
        try
        {
            MatchingBirthDetails birth = BirthDetails.ReadDetails(nsp_BATClass.BATClass.IsSandbox);
            HoroscopeReport report = FreeKundliService.Generate(birth, ddlChartStyle.SelectedValue, Session);
            litProfile.Text = HttpUtility.HtmlEncode(birth.Name + " | " + birth.BirthTime.ToString("dd MMM yyyy HH:mm:ss zzz", CultureInfo.InvariantCulture) + " | " + birth.Place);
            litHoroscope.Text = FreeKundliService.Render(report.Data);
            pnlChart.Visible = report.ChartImage != null;
            imgChart.ImageUrl = report.ChartImage ?? "";
            litChartStyle.Text = ddlChartStyle.SelectedValue == "south-indian" ? "South Indian Rasi chart" : "North Indian Rasi chart";
            pnlChartError.Visible = report.ChartError != null;
            litChartError.Text = HttpUtility.HtmlEncode(report.ChartError);
            pnlResults.Visible = true;
            pnlBirthForm.Visible = false;
        }
        catch (ArgumentException ex) { ShowError(ex.Message); }
        catch (InvalidOperationException ex) { ShowError(ex.Message); }
    }

    private void ShowError(string message)
    {
        pnlBirthForm.Visible = true;
        pnlError.Visible = true;
        litError.Text = HttpUtility.HtmlEncode(message);
    }

    protected void Edit_Click(object sender, EventArgs e)
    {
        pnlResults.Visible = false;
        litHoroscope.Text = "";
        imgChart.ImageUrl = "";
        pnlBirthForm.Visible = true;
    }
}

using System;
using System.IO;
using System.Web;
using System.Web.SessionState;
using Newtonsoft.Json.Linq;

class FreeKundliUnitTests
{
    static int count;
    static void Check(bool ok, string message) { if (!ok) throw new Exception(message); count++; }
    static void Reject(Action action) { try { action(); } catch (InvalidOperationException) { count++; return; } throw new Exception("Invalid provider response accepted"); }
    static HttpSessionState Session() {
        var context = new HttpContext(new HttpRequest("", "http://localhost/", ""), new HttpResponse(new StringWriter()));
        SessionStateUtility.AddHttpSessionStateToContext(context, new HttpSessionStateContainer("test", new SessionStateItemCollection(), new HttpStaticObjectsCollection(), 20, true, HttpCookieMode.UseCookies, SessionStateMode.InProc, false));
        return context.Session;
    }
    static string Json = @"{'status':'ok','data':{'nakshatra_details':{'nakshatra':{'name':'<img src=x onerror=alert(1)>','pada':2}},'mangal_dosha':{'description':'Not Manglik','exceptions':[],'remedies':[]},'yoga_details':[{'name':'Major Yogas','description':'One yoga','yoga_list':[{'name':'<script>alert(1)</script>','has_yoga':true,'description':'Description'}]}],'dasha_balance':{'lord':{'name':'Moon'},'description':'2 years'},'dasha_periods':[{'name':'Sun','start':'2000-01-01T10:00:00+05:30','end':'2006-01-01T10:00:00+05:30','antardasha':[{'name':'Moon','start':'2000-01-01T10:00:00+05:30','end':'2001-01-01T10:00:00+05:30'}]}]}}";
    static string Svg = "<svg xmlns='http://www.w3.org/2000/svg' width='500' height='500'><text x='20' y='20'>Test</text></svg>";
    static void Main() {
        var birth = MatchingBirthDetails.Parse("Test", "Hyderabad", "1999-01-01", "12:13:12", "17.3850", "78.4867", "+05:30", true);
        var url = FreeKundliService.BuildUrl(birth, "kundli/advanced", "south-indian");
        var query = HttpUtility.ParseQueryString(new Uri(url).Query);
        Check(query["datetime"] == "1999-01-01T12:13:12+05:30", "Birth timestamp changed");
        Check(query["coordinates"] == "17.3850,78.4867", "Coordinates changed");
        Check(!url.Contains("Test") && !url.Contains("Hyderabad"), "Name or label sent to API");
        Check(FreeKundliService.BuildUrl(birth, "chart", "north-indian").Contains("chart_type=rasi&chart_style=north-indian&format=svg"), "Incorrect chart request");
        var data = FreeKundliService.ParseData(Json);
        Check(data["dasha_periods"][0]["start"].Type == JTokenType.String, "JSON parser changed date offsets");
        string html = FreeKundliService.Render(data);
        Check(html.Contains("01 Jan 2000 10:00 +05:30"), "Dasha offset lost");
        Check(html.Contains("Vimshottari Dasha") && html.Contains("Antardasha periods"), "Dasha missing");
        Check(!html.Contains("<img") && !html.Contains("<script>"), "Provider text became active HTML");
        Check(FreeKundliService.ChartImage(Svg).StartsWith("data:image/svg+xml;base64,"), "Chart not an isolated image");
        Reject(() => FreeKundliService.ChartImage("<html>Error</html>"));
        Reject(() => FreeKundliService.ChartImage("<!DOCTYPE svg [<!ENTITY x SYSTEM 'file:///test'>]><svg xmlns='http://www.w3.org/2000/svg'>&x;</svg>"));
        Reject(() => FreeKundliService.ParseData("not json"));
        Reject(() => FreeKundliService.ParseData("{'status':'ok','data':{}}"));
        Reject(() => FreeKundliService.ParseData("{'status':'error','data':null}"));
        int dataCalls = 0, chartCalls = 0;
        Func<string,string> fetch = delegate(string request) {
            if (request.Contains("/chart?")) { chartCalls++; if (chartCalls == 1) throw new InvalidOperationException("Chart unavailable"); return Svg; }
            dataCalls++; return Json;
        };
        var session = Session();
        var partial = FreeKundliService.Generate(birth, "south-indian", session, fetch);
        Check(partial.Data != null && partial.ChartImage == null && partial.ChartError != null, "Chart failure lost report");
        var retry = FreeKundliService.Generate(birth, "south-indian", session, fetch);
        Check(dataCalls == 1 && chartCalls == 2 && retry.ChartImage != null && retry.ChartError == null, "Retry refetched horoscope or cached failure");
        FreeKundliService.Generate(birth, "south-indian", session, fetch);
        Check(dataCalls == 1 && chartCalls == 2, "Duplicate submission consumed extra requests");
        FreeKundliService.Generate(birth, "north-indian", session, fetch);
        Check(dataCalls == 1 && chartCalls == 3, "Chart style did not invalidate only the chart");
        var changed = MatchingBirthDetails.Parse("Test", "Hyderabad", "2000-01-01", "12:13:12", "17.3850", "78.4867", "+05:30", true);
        FreeKundliService.Generate(changed, "north-indian", session, fetch);
        Check(dataCalls == 2 && chartCalls == 4, "Changed birth data reused stale results");
        var otherSession = Session();
        FreeKundliService.Generate(changed, "north-indian", otherSession, fetch);
        Check(dataCalls == 3 && chartCalls == 5, "Cache shared across sessions");
        Check(FreeKundliService.ErrorMessage(429).Contains("Wait"), "Rate-limit guidance missing");
        Check(FreeKundliService.ErrorMessage(403).Contains("credits"), "Credit guidance missing");
        Console.WriteLine("PASS: " + count + " horoscope request, rendering, chart, retry, cache and timezone checks.");
    }
}


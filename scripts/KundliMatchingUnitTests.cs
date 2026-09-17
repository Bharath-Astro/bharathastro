using System;
using System.Globalization;
using System.Web;
using Newtonsoft.Json.Linq;

class KundliMatchingUnitTests
{
    static int count;
    static void Check(bool value, string message) { if (!value) throw new Exception(message); count++; }
    static void Reject(Action action) { try { action(); } catch (ArgumentException) { count++; return; } throw new Exception("Invalid input accepted"); }
    static void BadResponse(string json) { try { KundliMatchingService.ParseResponse(json); } catch (InvalidOperationException) { count++; return; } throw new Exception("Bad API response accepted"); }
    static MatchingBirthDetails Birth(string date = "1999-01-01", string time = "12:13:12", string lat = "17.3850", string lon = "78.4867", string offset = "+05:30", bool sandbox = true) {
        return MatchingBirthDetails.Parse("Test", "Hyderabad", date, time, lat, lon, offset, sandbox);
    }
    static void Main() {
        CultureInfo.CurrentCulture = new CultureInfo("fr-FR");
        var groom = Birth();
        var bride = Birth("2000-01-01", "04:05", "40.7128", "-74.0060", "-05:00");
        var query = HttpUtility.ParseQueryString(new Uri(KundliMatchingService.BuildUrl(groom, bride)).Query);
        Check(query["boy_dob"] == "1999-01-01T12:13:12+05:30", "Groom offset changed");
        Check(query["girl_dob"] == "2000-01-01T04:05:00-05:00", "Bride offset changed");
        Check(query["boy_coordinates"] == "17.3850,78.4867", "Culture changed coordinates");
        Check(query["girl_coordinates"] == "40.7128,-74.0060", "Partners swapped");
        Check(!query.ToString().Contains("Test"), "Name sent to API");
        Reject(() => Birth("1999-09-11"));
        Check(Birth("1999-09-11", sandbox:false).BirthTime.Month == 9, "Production date changed");
        Reject(() => Birth("2000-02-30", sandbox:false));
        Reject(() => Birth("2999-01-01"));
        Reject(() => Birth(time:"24:01"));
        Reject(() => Birth(lat:"91"));
        Reject(() => Birth(lon:"NaN"));
        Reject(() => Birth(lat:"1,5"));
        Reject(() => Birth(offset:"+14:30"));
        Reject(() => Birth(offset:"05:30"));
        Reject(() => MatchingBirthDetails.Parse("", "Place", "1999-01-01", "10:00", "0", "0", "+00:00", true));
        Check(Birth(lat:"0", lon:"0", offset:"+00:00").Coordinates == "0,0", "Zero coordinates rejected");
        Check(Birth("2000-02-29", sandbox:false).BirthTime.Day == 29, "Leap day rejected");
        BadResponse("not json");
        BadResponse("{\"status\":\"error\",\"data\":null}");
        BadResponse("{\"status\":\"ok\",\"data\":{}}");
        var data = KundliMatchingService.ParseResponse(@"{'status':'ok','data':{'guna_milan':{'total_points':28,'maximum_points':36,'guna':[{'name':'<script>alert(1)</script>','obtained_points':1,'maximum_points':1}]},'message':{'description':'<img src=x onerror=alert(1)>'}}}");
        var html = KundliMatchingService.Render(data, "<b>Groom</b>", "Bride & Test");
        Check(!html.Contains("<script>") && !html.Contains("<img") && !html.Contains("<b>Groom"), "Unsafe rendered HTML");
        Check(html.Contains("28 / 36") && html.Contains("Bride &amp; Test"), "Result data missing");
        Check(KundliMatchingService.ErrorMessage(429).Contains("wait"), "Missing rate-limit guidance");
        Check(KundliMatchingService.ErrorMessage(403).Contains("credits"), "Missing credit guidance");
        Console.WriteLine("PASS: " + count + " matching validation, timezone, request, response and escaping checks.");
    }
}

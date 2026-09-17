using System;
using System.Globalization;
using System.IO;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using Newtonsoft.Json.Linq;

public sealed class MatchingBirthDetails
{
    public string Name { get; private set; }
    public string Place { get; private set; }
    public string Coordinates { get; private set; }
    public DateTimeOffset BirthTime { get; private set; }

    public static MatchingBirthDetails Parse(string name, string place, string date, string time,
        string latitude, string longitude, string offset, bool sandbox)
    {
        if (string.IsNullOrWhiteSpace(name) || name.Trim().Length > 100)
            throw new ArgumentException("Enter a name of up to 100 characters.");
        if (string.IsNullOrWhiteSpace(place) || place.Trim().Length > 150)
            throw new ArgumentException("Enter a birth place of up to 150 characters.");
        if (!Regex.IsMatch(offset ?? "", @"^[+-](0\d|1[0-4]):[0-5]\d$"))
            throw new ArgumentException("Enter the UTC offset at birth, such as +05:30 or -04:00.");
        DateTimeOffset birth;
        if (!DateTimeOffset.TryParseExact(date + "T" + time + offset,
            new[] { "yyyy-MM-dd'T'HH:mmzzz", "yyyy-MM-dd'T'HH:mm:sszzz" },
            CultureInfo.InvariantCulture, DateTimeStyles.None, out birth))
            throw new ArgumentException("Enter a valid birth date, 24-hour time, and UTC offset.");
        if (birth > DateTimeOffset.UtcNow)
            throw new ArgumentException("Birth date and time cannot be in the future.");
        decimal lat, lon;
        if (!decimal.TryParse(latitude, NumberStyles.AllowLeadingSign | NumberStyles.AllowDecimalPoint,
                CultureInfo.InvariantCulture, out lat) || lat < -90 || lat > 90 ||
            !decimal.TryParse(longitude, NumberStyles.AllowLeadingSign | NumberStyles.AllowDecimalPoint,
                CultureInfo.InvariantCulture, out lon) || lon < -180 || lon > 180)
            throw new ArgumentException("Enter a latitude from -90 to 90 and longitude from -180 to 180, using decimal points.");
        if (sandbox && (birth.Month != 1 || birth.Day != 1))
            throw new ArgumentException("Sandbox accepts January 1 birth dates only. Use January 1 test details, or configure production credentials for actual birth dates. Your entered date has not been changed.");
        return new MatchingBirthDetails {
            Name = name.Trim(), Place = place.Trim(), BirthTime = birth,
            Coordinates = lat.ToString(CultureInfo.InvariantCulture) + "," + lon.ToString(CultureInfo.InvariantCulture)
        };
    }
}

public static class KundliMatchingService
{
    public static string BuildUrl(MatchingBirthDetails groom, MatchingBirthDetails bride)
    {
        return "https://api.prokerala.com/v2/astrology/kundli-matching/advanced?ayanamsa=1&la=en" +
            "&boy_dob=" + Uri.EscapeDataString(groom.BirthTime.ToString("yyyy-MM-dd'T'HH:mm:sszzz", CultureInfo.InvariantCulture)) +
            "&boy_coordinates=" + Uri.EscapeDataString(groom.Coordinates) +
            "&girl_dob=" + Uri.EscapeDataString(bride.BirthTime.ToString("yyyy-MM-dd'T'HH:mm:sszzz", CultureInfo.InvariantCulture)) +
            "&girl_coordinates=" + Uri.EscapeDataString(bride.Coordinates);
    }

    public static JObject Fetch(MatchingBirthDetails groom, MatchingBirthDetails bride)
    {
        string token = nsp_BATClass.BATClass.GetAccessToken();
        var request = (HttpWebRequest)WebRequest.Create(BuildUrl(groom, bride));
        request.Method = "GET";
        request.Accept = "application/json";
        request.AllowAutoRedirect = false;
        request.Timeout = 25000;
        request.ReadWriteTimeout = 25000;
        request.Headers[HttpRequestHeader.Authorization] = "Bearer " + token;
        try
        {
            using (var response = (HttpWebResponse)request.GetResponse())
            using (var reader = new StreamReader(response.GetResponseStream()))
                return ParseResponse(reader.ReadToEnd());
        }
        catch (WebException ex)
        {
            var response = ex.Response as HttpWebResponse;
            int status = response == null ? 0 : (int)response.StatusCode;
            if (ex.Response != null) ex.Response.Dispose();
            throw new InvalidOperationException(ErrorMessage(status));
        }
    }

    public static string ErrorMessage(int status)
    {
        switch (status)
        {
            case 400: case 422: return "Prokerala could not accept these birth details. Check both dates, times, coordinates and UTC offsets. Sandbox accounts require January 1 dates.";
            case 401: return "Prokerala authentication failed. Check the server credentials and try again after the cached token expires.";
            case 402: case 403: return "Prokerala access or API credits are unavailable. Check the account's credits and access to detailed Kundli Matching.";
            case 429: return "Prokerala's request limit was reached. Please wait a minute and try again.";
            default: return "Matching results are temporarily unavailable from Prokerala. Please try again shortly. Your birth details are still in the form.";
        }
    }

    public static JObject ParseResponse(string json)
    {
        try
        {
            JObject root = JObject.Parse(json);
            JObject data = root["data"] as JObject;
            if ((string)root["status"] != "ok" || data == null ||
                data.SelectToken("guna_milan.total_points") == null ||
                data.SelectToken("guna_milan.maximum_points") == null ||
                !(data.SelectToken("guna_milan.guna") is JArray))
                throw new InvalidOperationException("Prokerala returned an incomplete matching result. Please try again.");
            return data;
        }
        catch (Newtonsoft.Json.JsonException)
        {
            throw new InvalidOperationException("Prokerala returned an unreadable result. Please try again.");
        }
    }

    private static string Value(JToken token)
    {
        return HttpUtility.HtmlEncode(token == null || token.Type == JTokenType.Null ? "Not provided" : token.ToString());
    }

    public static string Render(JObject data, string groomName, string brideName)
    {
        var html = new StringBuilder();
        html.Append("<h4>" + HttpUtility.HtmlEncode(groomName) + " &amp; " + HttpUtility.HtmlEncode(brideName) + "</h4>");
        html.Append("<p class='matching-score'>Guna Milan: <strong>" + Value(data.SelectToken("guna_milan.total_points")) +
            " / " + Value(data.SelectToken("guna_milan.maximum_points")) + "</strong></p>");
        html.Append("<p><strong>Prokerala interpretation:</strong> " + Value(data.SelectToken("message.description")) + "</p>");
        html.Append("<div class='row'>");
        foreach (string role in new[] { "boy", "girl" })
        {
            html.Append("<div class='col-md-6'><h5>" + (role == "boy" ? "Groom" : "Bride") + "</h5><p>Nakshatra: " +
                Value(data.SelectToken(role + "_info.nakshatra.name")) + "<br />Pada: " +
                Value(data.SelectToken(role + "_info.nakshatra.pada")) + "<br />Rasi: " +
                Value(data.SelectToken(role + "_info.rasi.name")) + "</p><p><strong>Mangal Dosha:</strong> " +
                Value(data.SelectToken(role + "_mangal_dosha_details.description")) + "</p></div>");
        }
        html.Append("</div><div class='table-responsive'><table class='table matching-table'><caption>Eight Guna matching factors</caption>" +
            "<thead><tr><th scope='col'>Guna</th><th scope='col'>Groom</th><th scope='col'>Bride</th><th scope='col'>Points</th></tr></thead><tbody>");
        foreach (JToken guna in (JArray)data.SelectToken("guna_milan.guna"))
        {
            html.Append("<tr><th scope='row'>" + Value(guna["name"]) + "</th><td>" + Value(guna["boy_koot"]) +
                "</td><td>" + Value(guna["girl_koot"]) + "</td><td>" + Value(guna["obtained_points"]) + " / " +
                Value(guna["maximum_points"]) + "</td></tr><tr><td colspan='4'><details><summary>About " + Value(guna["name"]) +
                "</summary><p>" + Value(guna["description"]) + "</p></details></td></tr>");
        }
        html.Append("</tbody></table></div>");
        var exceptions = data["exceptions"] as JArray;
        if (exceptions != null && exceptions.Count > 0)
        {
            html.Append("<h5>Matching exceptions</h5><ul>");
            foreach (JToken exception in exceptions) html.Append("<li>" + Value(exception) + "</li>");
            html.Append("</ul>");
        }
        return html.ToString();
    }
}

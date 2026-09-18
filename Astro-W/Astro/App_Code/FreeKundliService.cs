using System;
using System.Globalization;
using System.IO;
using System.Net;
using System.Text;
using System.Web;
using System.Web.SessionState;
using System.Xml;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

public sealed class HoroscopeReport
{
    public JObject Data;
    public string ChartImage;
    public string ChartError;
}

public static class FreeKundliService
{
    [Serializable]
    private sealed class CachedPart
    {
        public string Key, Payload;
        public DateTime Expires;
    }

    public static string BuildUrl(MatchingBirthDetails birth, string part, string style)
    {
        if (part != "kundli/advanced" && part != "chart") throw new ArgumentException("Invalid horoscope report part.");
        if (style != "south-indian" && style != "north-indian") throw new ArgumentException("Select a valid chart style.");
        string url = "https://api.prokerala.com/v2/astrology/" + part + "?ayanamsa=1&la=en&datetime=" +
            Uri.EscapeDataString(birth.BirthTime.ToString("yyyy-MM-dd'T'HH:mm:sszzz", CultureInfo.InvariantCulture)) +
            "&coordinates=" + Uri.EscapeDataString(birth.Coordinates);
        return part == "chart" ? url + "&chart_type=rasi&chart_style=" + style + "&format=svg" : url;
    }

    public static HoroscopeReport Generate(MatchingBirthDetails birth, string style, HttpSessionState session)
    {
        return Generate(birth, style, session, Request);
    }

    // The transport parameter lets tests verify retries and caching without consuming API credits.
    internal static HoroscopeReport Generate(MatchingBirthDetails birth, string style, HttpSessionState session, Func<string, string> fetch)
    {
        var report = new HoroscopeReport();
        string dataUrl = BuildUrl(birth, "kundli/advanced", style);
        report.Data = ParseData(GetPart(session, "FreeKundliData", dataUrl, fetch, s => ParseData(s)));
        try
        {
            string chartUrl = BuildUrl(birth, "chart", style);
            report.ChartImage = ChartImage(GetPart(session, "FreeKundliChart", chartUrl, fetch, s => ChartImage(s)));
        }
        catch (InvalidOperationException ex)
        {
            report.ChartError = "Your horoscope details are ready, but the birth chart could not be loaded. " + ex.Message;
        }
        return report;
    }

    private static string GetPart(HttpSessionState session, string slot, string url, Func<string, string> fetch, Action<string> validate)
    {
        string key = url + "|sandbox=" + nsp_BATClass.BATClass.IsSandbox;
        var cached = session[slot] as CachedPart;
        if (cached != null && cached.Key == key && cached.Expires > DateTime.UtcNow) return cached.Payload;
        string payload = fetch(url);
        validate(payload);
        session[slot] = new CachedPart { Key = key, Payload = payload, Expires = DateTime.UtcNow.AddMinutes(10) };
        return payload;
    }

    private static string Request(string url)
    {
        string token = nsp_BATClass.BATClass.GetAccessToken();
        var request = (HttpWebRequest)WebRequest.Create(url);
        request.Method = "GET";
        request.Accept = "application/json, image/svg+xml";
        request.Timeout = 25000;
        request.ReadWriteTimeout = 25000;
        request.AllowAutoRedirect = false;
        request.Headers[HttpRequestHeader.Authorization] = "Bearer " + token;
        try
        {
            using (var response = (HttpWebResponse)request.GetResponse())
            using (var reader = new StreamReader(response.GetResponseStream()))
                return reader.ReadToEnd();
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
            case 400: case 422: return "Prokerala could not accept these birth details. Check the date, time, coordinates and UTC offset. Sandbox accounts require January 1 dates.";
            case 401: return "Prokerala authentication failed. Check the configured server credentials.";
            case 402: case 403: return "Prokerala credits or access to the horoscope API are unavailable. Check the API account.";
            case 429: return "Prokerala's request limit was reached. Wait a minute before trying again.";
            default: return "Prokerala is temporarily unavailable. Please try again shortly. Your entered details have been retained.";
        }
    }

    public static JObject ParseData(string json)
    {
        try
        {
            JObject root;
            using (var reader = new JsonTextReader(new StringReader(json)))
            {
                reader.DateParseHandling = DateParseHandling.None;
                root = JObject.Load(reader);
            }
            JObject data = root["data"] as JObject;
            if ((string)root["status"] != "ok" || data == null ||
                !(data["nakshatra_details"] is JObject) || !(data["mangal_dosha"] is JObject) ||
                !(data["yoga_details"] is JArray) || !(data["dasha_periods"] is JArray) || !(data["dasha_balance"] is JObject))
                throw new InvalidOperationException("Prokerala returned incomplete horoscope details. Please try again.");
            return data;
        }
        catch (JsonException) { throw new InvalidOperationException("Prokerala returned unreadable horoscope details. Please try again."); }
    }

    public static string ChartImage(string svg)
    {
        try
        {
            var settings = new XmlReaderSettings { DtdProcessing = DtdProcessing.Prohibit, XmlResolver = null, MaxCharactersInDocument = 2000000 };
            using (var reader = XmlReader.Create(new StringReader(svg), settings))
            {
                reader.MoveToContent();
                if (reader.LocalName != "svg" || reader.NamespaceURI != "http://www.w3.org/2000/svg")
                    throw new XmlException();
                while (reader.Read()) { }
            }
            // SVG is an isolated image, never inserted as executable inline markup.
            return "data:image/svg+xml;base64," + Convert.ToBase64String(Encoding.UTF8.GetBytes(svg));
        }
        catch (XmlException) { throw new InvalidOperationException("Prokerala returned an invalid birth chart. Please try again."); }
    }

    private static string Text(JToken value)
    {
        return HttpUtility.HtmlEncode(value == null || value.Type == JTokenType.Null ? "Not provided" : value.ToString());
    }

    private static void Field(StringBuilder html, string label, JToken value)
    {
        html.Append("<dt>" + HttpUtility.HtmlEncode(label) + "</dt><dd>" + Text(value) + "</dd>");
    }

    private static string DateText(JToken value)
    {
        DateTimeOffset date;
        return DateTimeOffset.TryParse((string)value, CultureInfo.InvariantCulture, DateTimeStyles.None, out date)
            ? HttpUtility.HtmlEncode(date.ToString("dd MMM yyyy HH:mm zzz", CultureInfo.InvariantCulture)) : Text(value);
    }

    public static string Render(JObject data)
    {
        var html = new StringBuilder("<h3>Birth horoscope</h3><dl class='kundli-facts'>");
        var birth = (JObject)data["nakshatra_details"];
        Field(html, "Nakshatra", birth.SelectToken("nakshatra.name"));
        Field(html, "Pada", birth.SelectToken("nakshatra.pada"));
        Field(html, "Nakshatra lord", birth.SelectToken("nakshatra.lord.vedic_name"));
        Field(html, "Moon sign (Chandra Rasi)", birth.SelectToken("chandra_rasi.name"));
        Field(html, "Sun sign (Soorya Rasi)", birth.SelectToken("soorya_rasi.name"));
        Field(html, "Zodiac", birth.SelectToken("zodiac.name"));
        html.Append("</dl><h3>Mangal Dosha</h3><p>" + Text(data["mangal_dosha"]["description"]) + "</p>");
        foreach (string key in new[] { "exceptions", "remedies" })
        {
            var items = data["mangal_dosha"][key] as JArray;
            if (items == null || items.Count == 0) continue;
            html.Append("<h4>" + (key == "exceptions" ? "Exceptions" : "Remedies") + "</h4><ul>");
            foreach (var item in items) html.Append("<li>" + Text(item) + "</li>");
            html.Append("</ul>");
        }
        html.Append("<h3>Yoga details</h3>");
        foreach (JObject group in data["yoga_details"].Children<JObject>())
        {
            html.Append("<h4>" + Text(group["name"]) + "</h4><p>" + Text(group["description"]) + "</p>");
            var yogas = group["yoga_list"] as JArray;
            if (yogas == null) continue;
            foreach (JObject yoga in yogas.Children<JObject>())
                html.Append("<details><summary>" + Text(yoga["name"]) + " - " +
                    (yoga["has_yoga"] != null && yoga["has_yoga"].Type == JTokenType.Boolean ? ((bool)yoga["has_yoga"] ? "Present" : "Not present") : "Not provided") +
                    "</summary><p>" + Text(yoga["description"]) + "</p></details>");
        }
        html.Append("<h3>Vimshottari Dasha</h3><p>Balance at birth: " + Text(data.SelectToken("dasha_balance.lord.name")) +
            " - " + Text(data.SelectToken("dasha_balance.description")) + "</p><div class='table-responsive'><table class='table kundli-table'>" +
            "<caption>Mahadasha periods (birth time-zone offset)</caption><thead><tr><th scope='col'>Dasha lord</th><th scope='col'>Starts</th><th scope='col'>Ends</th></tr></thead><tbody>");
        foreach (JObject period in data["dasha_periods"].Children<JObject>())
        {
            html.Append("<tr><th scope='row'>" + Text(period["name"]) + "</th><td>" + DateText(period["start"]) + "</td><td>" + DateText(period["end"]) + "</td></tr>");
            var sub = period["antardasha"] as JArray;
            if (sub == null || sub.Count == 0) continue;
            html.Append("<tr><td colspan='3'><details><summary>Antardasha periods for " + Text(period["name"]) + "</summary><ul>");
            foreach (JObject item in sub.Children<JObject>())
                html.Append("<li>" + Text(item["name"]) + ": " + DateText(item["start"]) + " to " + DateText(item["end"]) + "</li>");
            html.Append("</ul></details></td></tr>");
        }
        html.Append("</tbody></table></div>");
        return html.ToString();
    }
}

using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Caching;
using Newtonsoft.Json;

[Serializable]
public sealed class PanchangSelection
{
    public DateTimeOffset Date;
    public string Country, City, Language, Coordinates;
    public string ManualLatitude, ManualLongitude, ManualOffset;
    private static readonly string[][] Places = {
        new[] { "IN", "Mumbai, Maharashtra", "19.0760,72.8777", "India Standard Time" },
        new[] { "IN", "Hyderabad, Telangana", "17.3850,78.4867", "India Standard Time" },
        new[] { "IN", "New Delhi", "28.6139,77.2090", "India Standard Time" },
        new[] { "IN", "Bengaluru, Karnataka", "12.9716,77.5946", "India Standard Time" },
        new[] { "IN", "Chennai, Tamil Nadu", "13.0827,80.2707", "India Standard Time" },
        new[] { "IN", "Kolkata, West Bengal", "22.5726,88.3639", "India Standard Time" },
        new[] { "GB", "London", "51.5074,-0.1278", "GMT Standard Time" },
        new[] { "US", "New York", "40.7128,-74.0060", "Eastern Standard Time" },
        new[] { "AU", "Sydney", "-33.8688,151.2093", "AUS Eastern Standard Time" }
    };
    public static IEnumerable<string> Cities { get { return Places.Select(p => p[1]); } }
    public static PanchangSelection Parse(string date, string country, string city, string language,
        string latitude, string longitude, string offset, bool sandbox)
    {
        DateTime day;
        if (!DateTime.TryParseExact(date, "yyyy-MM-dd", CultureInfo.InvariantCulture, DateTimeStyles.None, out day)
            || day.Year < 1900 || day.Year > 2099)
            throw new ArgumentException("Select a valid date between 1900 and 2099.");
        if (string.IsNullOrWhiteSpace(city) || city.Trim().Length > 150 || !Regex.IsMatch(country ?? "", "^[A-Z]{2}$"))
            throw new ArgumentException("Select a country and enter a location of up to 150 characters.");
        if (!new[] { "en", "hi", "te", "mr", "ml", "ta", "kn", "bn" }.Contains(language))
            throw new ArgumentException("Select a supported language.");
        string coords;
        TimeSpan zone;
        bool manual = !string.IsNullOrWhiteSpace(latitude) || !string.IsNullOrWhiteSpace(longitude) || !string.IsNullOrWhiteSpace(offset);
        if (manual)
        {
            decimal lat, lon;
            if (!decimal.TryParse(latitude, NumberStyles.AllowLeadingSign | NumberStyles.AllowDecimalPoint, CultureInfo.InvariantCulture, out lat) || lat < -90 || lat > 90 ||
                !decimal.TryParse(longitude, NumberStyles.AllowLeadingSign | NumberStyles.AllowDecimalPoint, CultureInfo.InvariantCulture, out lon) || lon < -180 || lon > 180)
                throw new ArgumentException("Enter a latitude from -90 to 90 and longitude from -180 to 180.");
            DateTimeOffset instant;
            if (!Regex.IsMatch(offset ?? "", @"^[+-](0\d|1[0-4]):[0-5]\d$") ||
                !DateTimeOffset.TryParseExact(date + "T12:00:00" + offset, "yyyy-MM-dd'T'HH:mm:sszzz", CultureInfo.InvariantCulture, DateTimeStyles.None, out instant))
                throw new ArgumentException("Enter the location's UTC offset on the selected date, such as +05:30 or -04:00.");
            zone = instant.Offset;
            coords = lat.ToString("0.######", CultureInfo.InvariantCulture) + "," + lon.ToString("0.######", CultureInfo.InvariantCulture);
        }
        else
        {
            var place = Places.FirstOrDefault(p => p[0] == country && string.Equals(p[1], city.Trim(), StringComparison.OrdinalIgnoreCase));
            if (place == null) throw new ArgumentException("Choose a suggested city for this country, or enter coordinates and the date's UTC offset under Other location.");
            coords = place[2];
            zone = TimeZoneInfo.FindSystemTimeZoneById(place[3]).GetUtcOffset(day.AddHours(12));
            city = place[1];
        }
        if (sandbox && (day.Month != 1 || day.Day != 1))
            throw new ArgumentException("Sandbox accepts January 1 dates only. Select January 1 for testing, or configure production credentials. Your entered date has not been changed.");
        return new PanchangSelection { Date = new DateTimeOffset(day.AddHours(12), zone), Country = country,
            City = city.Trim(), Language = language, Coordinates = coords,
            ManualLatitude = manual ? latitude : "", ManualLongitude = manual ? longitude : "", ManualOffset = manual ? offset : "" };
    }
    public static PanchangSelection FromQuery(NameValueCollection q, bool sandbox)
    {
        return Parse(q["date"], q["country"], q["city"], q["la"], q["lat"], q["lon"], q["offset"], sandbox);
    }
    public string Query()
    {
        var q = HttpUtility.ParseQueryString("");
        q["date"] = Date.ToString("yyyy-MM-dd"); q["country"] = Country; q["city"] = City; q["la"] = Language;
        if (!string.IsNullOrEmpty(ManualLatitude)) { q["lat"] = ManualLatitude; q["lon"] = ManualLongitude; q["offset"] = ManualOffset; }
        return q.ToString();
    }
}

// Provider DTOs contain only the documented fields consumed by the existing pages.
internal sealed class ProkeralaPanchangEnvelope { public string status; public ProkeralaPanchangData data; }
internal sealed class ProkeralaPanchangData
{
    public string sunrise, sunset, moonrise, moonset;
    public ProkeralaPeriod[] tithi, nakshatra, yoga, karana, auspicious_period, inauspicious_period, anandadi_yoga, muhurat, hora_timing;
    public ProkeralaName soorya_rasi, chandra_rasi, solstice, drik_ritu;
    public ProkeralaDirection disha_shool;
    public ProkeralaCalendar calendar_date;
}
internal sealed class ProkeralaName { public int? id; public string name, vedic_name; }
internal sealed class ProkeralaDirection { public string direction; }
internal sealed class ProkeralaCalendar { public int? year; public string year_name, month_name; }
internal sealed class ProkeralaPeriod
{
    public int? id;
    public string name, paksha, start, end;
    public bool? is_day;
    public ProkeralaPeriod[] period;
    public ProkeralaName hora;
}

[Serializable]
public sealed class PanchangReport
{
    public Dictionary<string, string> Values = new Dictionary<string, string>();
    public List<PanchangTimingRow> Day = new List<PanchangTimingRow>(), Night = new List<PanchangTimingRow>();
    public string Error;
    public string Value(string key) { string value; return Values.TryGetValue(key, out value) ? value : "Not available"; }
}
[Serializable]
public sealed class PanchangTimingRow
{
    public string Name { get; set; }
    public string Time { get; set; }
    public string CssClass { get; set; }
}
internal sealed class PanchangApiException : InvalidOperationException
{
    public int Status;
    public PanchangApiException(int status, string message) : base(message) { Status = status; }
}

public static class PanchangService
{
    private static readonly object CacheLock = new object();
    private static readonly string[] DailyParts = { "panchang/advanced", "birth-details", "solstice", "ritu", "anandadi-yoga", "disha-shool", "calendar/vikram-samvat", "calendar/shaka-samvat", "calendar/purnimanta", "calendar/amanta" };
    public static string BuildUrl(PanchangSelection selection, string part)
    {
        if (!DailyParts.Contains(part) && part != "hora" && part != "choghadiya") throw new ArgumentException("Unsupported Panchang operation.");
        string query = "&la=" + selection.Language;
        if (part.StartsWith("calendar/", StringComparison.Ordinal))
            return "https://api.prokerala.com/v2/calendar?calendar=" + part.Substring(9) + "&date=" + selection.Date.ToString("yyyy-MM-dd") + query;
        return "https://api.prokerala.com/v2/astrology/" + part + "?ayanamsa=1&coordinates=" + Uri.EscapeDataString(selection.Coordinates) +
            "&datetime=" + Uri.EscapeDataString(selection.Date.ToString("yyyy-MM-dd'T'HH:mm:sszzz", CultureInfo.InvariantCulture)) + query;
    }
    public static PanchangReport Generate(PanchangSelection selection, string kind)
    {
        return Generate(selection, kind, Request, nsp_BATClass.BATClass.IsSandbox ? "sandbox" : "production");
    }
    // Injection allows failure, concurrency and mapping checks without spending API credits.
    internal static PanchangReport Generate(PanchangSelection selection, string kind, Func<string, string> fetch, string cacheScope)
    {
        if (kind != "daily" && kind != "hora" && kind != "choghadiya") throw new ArgumentException("Unsupported Panchang report.");
        var report = new PanchangReport();
        var errors = new List<string>();
        foreach (string part in kind == "daily" ? DailyParts : new[] { kind })
        {
            try { Map(report, GetPart(BuildUrl(selection, part), part, fetch, cacheScope), part, selection.Date); }
            catch (PanchangApiException ex)
            {
                errors.Add(ex.Message);
                // Stop on global failures; successful parts remain cached for an explicit retry.
                if (part == "panchang/advanced" || ex.Status == 429 || ex.Status == 401 || ex.Status == 403 || ex.Status == 402 || ex.Status == 0) break;
            }
        }
        report.Error = string.Join(" ", errors.Distinct());
        return report;
    }
    private static ProkeralaPanchangData GetPart(string url, string part, Func<string, string> fetch, string scope)
    {
        string key = "Panchang:v1:" + scope + ":" + url;
        // A bounded memory cache and a shared miss lock prevent concurrent duplicate paid requests.
        lock (CacheLock)
        {
            var data = HttpRuntime.Cache[key] as ProkeralaPanchangData;
            if (data != null) return data;
            if (HttpRuntime.Cache["Panchang:cooldown:" + scope] != null) throw new PanchangApiException(429, ErrorMessage(429));
            try
            {
                data = Parse(fetch(url), part);
                HttpRuntime.Cache.Insert(key, data, null, DateTime.UtcNow.AddHours(6), Cache.NoSlidingExpiration);
                return data;
            }
            catch (PanchangApiException ex)
            {
                Trace.TraceWarning("Panchang operation={0} status={1}", part, ex.Status);
                if (ex.Status == 429) HttpRuntime.Cache.Insert("Panchang:cooldown:" + scope, true, null, DateTime.UtcNow.AddMinutes(1), Cache.NoSlidingExpiration);
                throw;
            }
        }
    }
    internal static ProkeralaPanchangData Parse(string json, string part)
    {
        try
        {
            var response = JsonConvert.DeserializeObject<ProkeralaPanchangEnvelope>(json);
            if (response == null || response.status != "ok" || response.data == null) throw new JsonSerializationException();
            var d = response.data;
            bool valid = part == "panchang/advanced" ? d.tithi != null || d.nakshatra != null :
                part == "birth-details" ? d.soorya_rasi != null || d.chandra_rasi != null :
                part == "solstice" ? d.solstice != null : part == "ritu" ? d.drik_ritu != null :
                part == "anandadi-yoga" ? d.anandadi_yoga != null : part == "disha-shool" ? d.disha_shool != null :
                part == "hora" ? d.hora_timing != null : part == "choghadiya" ? d.muhurat != null : d.calendar_date != null;
            if (!valid) throw new JsonSerializationException();
            return d;
        }
        catch (JsonException) { throw new PanchangApiException(502, "Prokerala returned an incomplete or invalid response. Please try again."); }
    }
    private static string Request(string url)
    {
        string token;
        try { token = nsp_BATClass.BATClass.GetAccessToken(); }
        catch (Exception) { throw new PanchangApiException(401, ErrorMessage(401)); }
        var request = (HttpWebRequest)WebRequest.Create(url);
        request.Method = "GET"; request.Accept = "application/json";
        request.AllowAutoRedirect = false; request.Timeout = 20000; request.ReadWriteTimeout = 20000;
        request.Headers[HttpRequestHeader.Authorization] = "Bearer " + token;
        try
        {
            using (var response = (HttpWebResponse)request.GetResponse())
            using (var reader = new StreamReader(response.GetResponseStream())) return reader.ReadToEnd();
        }
        catch (WebException ex)
        {
            var response = ex.Response as HttpWebResponse;
            int status = response == null ? 0 : (int)response.StatusCode;
            if (ex.Response != null) ex.Response.Dispose();
            throw new PanchangApiException(status, ErrorMessage(status));
        }
        catch (IOException) { throw new PanchangApiException(0, ErrorMessage(0)); }
    }
    public static string ErrorMessage(int status)
    {
        switch (status)
        {
            case 400: case 422: return "Prokerala could not accept the selected date or location. Check the coordinates and UTC offset.";
            case 401: return "Prokerala authentication is unavailable. Check the server credential configuration.";
            case 402: case 403: return "Prokerala API access or credits are unavailable. Check the configured API account.";
            case 429: return "Prokerala's request limit was reached. Wait a minute, then retry. Completed sections are cached.";
            default: return "Panchang data is temporarily unavailable. Please retry shortly. Your selection has been retained.";
        }
    }
    public static string FormatTime(string value, DateTimeOffset day)
    {
        DateTimeOffset time;
        if (string.IsNullOrEmpty(value) || !DateTimeOffset.TryParse(value, CultureInfo.InvariantCulture, DateTimeStyles.None, out time)) return "Not available";
        time = time.ToOffset(day.Offset);
        int delta = (time.Date - day.Date).Days;
        return time.ToString("HH:mm:ss", CultureInfo.InvariantCulture) + (delta == 0 ? "" : " (" + (delta > 0 ? "+" : "") + delta.ToString(CultureInfo.InvariantCulture) + " day)");
    }
    private static string Range(ProkeralaPeriod p, DateTimeOffset day) { return FormatTime(p.start, day) + " - " + FormatTime(p.end, day); }
    private static string Text(string value) { return string.IsNullOrWhiteSpace(value) ? "Not available" : value; }
    private static string Names(ProkeralaPeriod[] values, DateTimeOffset day)
    {
        if (values == null) return "Not available";
        return values.Any(p => p != null) ? string.Join("; ", values.Where(p => p != null).Select(p => Text(p.name) + " until " + FormatTime(p.end, day))) : "No period returned";
    }
    private static string Periods(ProkeralaPeriod[] values, int id, DateTimeOffset day)
    {
        if (values == null) return "Not available";
        var periods = values.Where(p => p != null && p.id == id).SelectMany(p => p.period ?? new ProkeralaPeriod[0]).Where(p => p != null).ToArray();
        return periods.Length == 0 ? "No period returned" : string.Join("; ", periods.Select(p => Range(p, day)));
    }
    internal static void Map(PanchangReport report, ProkeralaPanchangData d, string part, DateTimeOffset day)
    {
        var v = report.Values;
        if (part == "panchang/advanced")
        {
            v["Sunrise"] = FormatTime(d.sunrise, day); v["Sunset"] = FormatTime(d.sunset, day);
            v["Moonrise"] = FormatTime(d.moonrise, day); v["Moonset"] = FormatTime(d.moonset, day);
            v["Tithi"] = Names(d.tithi, day); v["Nakshatra"] = Names(d.nakshatra, day);
            v["Yoga"] = Names(d.yoga, day); v["Karana"] = Names(d.karana, day);
            v["Paksha"] = d.tithi == null ? "Not available" : Text(string.Join(" / ", d.tithi.Where(t => t != null).Select(t => t.paksha).Where(p => !string.IsNullOrEmpty(p)).Distinct()));
            string[] keys = { "Abhijit", "Amrit", "Brahma", "Rahu", "Yamaganda", "Gulika", "Dur", "Varjyam" };
            for (int id = 1; id <= 8; id++) if (id != 3) v[keys[id - 1]] = Periods(id < 4 ? d.auspicious_period : d.inauspicious_period, id, day);
        }
        else if (part == "birth-details") { v["SunSign"] = Text(d.soorya_rasi == null ? null : d.soorya_rasi.name); v["MoonSign"] = Text(d.chandra_rasi == null ? null : d.chandra_rasi.name); }
        else if (part == "solstice") v["Ayana"] = Text(d.solstice.vedic_name);
        else if (part == "ritu") v["Ritu"] = Text(d.drik_ritu.vedic_name);
        else if (part == "anandadi-yoga") v["Anandadi"] = Names(d.anandadi_yoga, day);
        else if (part == "disha-shool") v["Disha"] = Text(d.disha_shool.direction);
        else if (part.StartsWith("calendar/", StringComparison.Ordinal))
        {
            var c = d.calendar_date;
            v[part.Substring(9)] = part.EndsWith("samvat", StringComparison.Ordinal) ?
                (c.year.HasValue ? c.year.Value.ToString(CultureInfo.InvariantCulture) + (string.IsNullOrEmpty(c.year_name) ? "" : " - " + c.year_name) : "Not available") : Text(c.month_name);
        }
        else
        {
            string[] planets = { "sun", "moon", "mercury", "venus", "mars", "jupiter", "saturn" };
            foreach (var p in (part == "hora" ? d.hora_timing : d.muhurat).Where(p => p != null && p.is_day.HasValue))
            {
                var row = new PanchangTimingRow { Name = Text(part == "hora" ? (p.hora == null ? null : p.hora.name) : p.name), Time = Range(p, day) };
                int id = (part == "hora" ? (p.hora == null ? null : p.hora.id) : p.id) ?? -1;
                row.CssClass = part == "hora" ? (id >= 0 && id < planets.Length ? "planet-" + planets[id] : "") :
                    id == 1 ? "chaug-neutral" : (id == 2 || id == 3 || id == 5) ? "chaug-good" : (id == 0 || id == 4 || id == 6) ? "chaug-bad" : "";
                (p.is_day.Value ? report.Day : report.Night).Add(row);
            }
        }
    }
}

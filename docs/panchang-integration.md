# Panchang integration: analysis before implementation

## Existing execution flow

- `panchang-daily.aspx` inherits `panchang_daily`; `Page_Load` is empty.
- There is NO Continue control, ID, handler, JavaScript function, request URL,
  validation, backend response, redirect, or database/API call for Panchang.
- Date is an unnamed readonly text input. City is an unnamed text input.
  `ddlCountry` and `ddlLang` are plain HTML selects without names/server bindings.
- Desktop Previous/Next and mobile previous/Today/next are `javascript:;` links.
  The mobile city button has no handler and defaults to submitting the master form.
- Every displayed Panchang/date/timing/calendar/direction/festival value is literal
  HTML for May 5, 2026. Nothing is calculated locally or fetched for this page.
- Bottom cards navigate to `panchang-chaughadiya-muhurata.aspx`,
  `panchang-hora-muhurata.aspx`, and this page. Their code-behinds are also empty;
  the destination rows are hard-coded. There are no tabs or other Panchang actions.
- The master provides the single Web Forms form and ScriptManager; shared scripts
  initialize sliders, menus and `.as_datepicker` / `.as_timepicker`. The daily
  date input has neither class. No page-specific JavaScript or AJAX exists.
- Master authentication is Forms Authentication configured in Web.config. Initial
  master load reads the local GeoIP MMDB. Newsletter alone queries/inserts the
  NewsletterSubscribers table through csWorking; it is unrelated to Panchang.
- Existing Home loads a basic Prokerala Panchang for Hyderabad with ayanamsa=45;
  its Today Panchang handler is empty. It supplies no data to this page.
- Existing prokerala-detailed-panchang.aspx demonstrates advanced Panchang with
  page-local HttpWebRequest/JObject rendering. It is not a reusable service/DTO.
- BATClass already reads environment/local protected configuration, obtains the
  OAuth client-credentials bearer token and caches it until near expiry. Reuse it.
- Existing App_Code clients use HttpWebRequest, Newtonsoft.Json, safe displayed
  errors and session caching. No centralized application logger is configured.

## Verified mapping (official OpenAPI downloaded September 19, 2026)

All prior implementations below are static HTML. Existing form IDs are retained.
All requests use GET. Astrology paths are under `/v2/astrology/` and take
`ayanamsa=1`, `coordinates=latitude,longitude`, URL-encoded ISO-8601 `datetime`
with the location's UTC offset, and `la`. Calendar uses `/v2/calendar`, `date`
(YYYY-MM-DD), `calendar`, and `la` instead. Noon in the selected location anchors
requests; the returned day intervals are displayed without recalculating them.

| UI target | Endpoint | Response fields | English credits |
|---|---|---|---|
| Tithi/Nakshatra/Yog/Karan, sunrise/sunset/moonrise/moonset, Paksha | panchang/advanced | tithi/nakshatra/yoga/karana arrays; rise/set fields | 100 total |
| Rahu, Yamaganda, Gulika, Dur Muhurtam, Varjyam, Abhijit, Amrit | same response | inauspicious_period IDs 4-8; auspicious_period IDs 1-2; all period intervals | reused |
| Both Sun/Moon sign occurrences | birth-details | soorya_rasi.name, chandra_rasi.name | 50 |
| Both Ayana occurrences | solstice | solstice.vedic_name | 100 |
| Ritu | ritu | drik_ritu.vedic_name (existing Drik/Lahiri description) | 100 |
| Anandadi Yog | anandadi-yoga | anandadi_yoga[].name/start/end | 200 |
| Disha Shool | disha-shool | disha_shool.direction | 100 |
| Vikram/Shaka year/name and Purnimanta/Amanta month | /v2/calendar (four calendar values) | calendar_date.year/year_name/month_name | 2000 each |
| Chaughadiya card -> existing destination rows | choghadiya (only on navigation) | muhurat[].name/id/is_day/start/end | 50 |
| Hora card -> existing destination rows | hora (only on navigation) | hora_timing[].hora.id/name/is_day/start/end | 200 |
| Separate Hindu sunrise/sunset, festivals/vratas, Nakshatra Shool, Moon Nivash | No documented equivalent field/endpoint | Explicit unavailable state, no fabricated calculations | none |

No Chandra Bala/Tara Bala control exists, so no corresponding feature is added.
Published language parameter supports all existing languages; Marathi code is `mr`,
not the current `ma`. UI labels stay English; response names use selected language.
Other languages cost twice the English endpoint credits per the specification.
A complete uncached daily display requires 10 data requests / 8650 English credits;
four calendar conversions dominate that cost. Reuse each successful response,
including across users for the same public date/location/language settings.

## Implementation design

Preserve markup/classes/CSS and the three existing pages. Bind literal data slots,
make existing date/location/language/navigation controls functional, and add the
requested Continue submit action to the form bar. Initial form display makes no
paid data request. Continue and previous/next/Today validate then fetch. Location
suggestions resolve to server-owned coordinates and Windows time-zone rules;
manual locations need explicit coordinates and UTC offset. Unknown cities are
never silently replaced by Mumbai. Persist selection in links to existing pages.

Use a Panchang-only service and provider/application DTOs, retaining Web Forms,
HttpWebRequest, Newtonsoft and existing token configuration. Cache successful
parts with bounded expiry; synchronize cache misses; do not retry errors in a
loop. Partial response failures retain successful fields with explicit errors.
Rate-limit responses stop remaining calls until retry; retry fetches only missing
parts. No API call on newsletter or other unrelated postbacks. Log only operation,
HTTP status and failure category through System.Diagnostics.Trace, no secrets,
raw payloads, coordinates or personal data.

References:
- https://client-api.prokerala.com/getting-started
- https://api.prokerala.com/spec/astrology.v2.yaml
- https://api.prokerala.com/api-credits
- https://api.prokerala.com/ (rate limits vary by account plan; free plan advertises 5 requests/minute)

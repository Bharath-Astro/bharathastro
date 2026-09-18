# Free Kundli horoscope

On `free-kundli.aspx`, Generate Horoscope validates the name, date, 24-hour time,
birth coordinates and UTC offset, then renders the horoscope on the same page.
It reuses the birth-details control from Kundli Matching. City selections provide
coordinates; Another place accepts manual coordinates. There is no geocoding service.
Edit Birth Details retains the form values and hides the previous result.

The server calls Prokerala using the configured credentials from `BATClass`:

- `GET /v2/astrology/kundli/advanced`: Nakshatra, Rasi, Mangal Dosha, Yoga details,
  Dasha balance and periods. Mahadasha and Antardasha dates preserve API offsets.
- `GET /v2/astrology/chart`: Rasi chart, selected South Indian or North Indian
  style, SVG format. The SVG is validated and displayed as an isolated image;
  provider markup is never inserted directly into the page.

Both requests use `ayanamsa=1` (Lahiri), `la=en`, coordinates, and the URL-encoded
birth timestamp with the supplied UTC offset. Name and place label stay in the
application. The service uses server-only bearer authentication, timeouts and safe
error messages. It never logs tokens or provider payloads. All report text is HTML
encoded. This generates an on-page birth horoscope, not a paid PDF report.

Successful data and chart responses are cached separately in the user's session
for ten minutes. Repeated submissions reuse them. Changing the birth data
invalidates both; changing chart style only requires a new chart. A chart failure
preserves the horoscope text and displays Retry Birth Chart. Failed responses
are not cached. The last cache entry for each part is replaced, not accumulated.

The sandbox banner and server validation require January 1 birth dates. Dates are
never silently changed. For actual birth dates, configure production credentials
and `PROKERALA_SANDBOX=false`, then restart IIS Express. See README.md for secret
configuration. Production API requests consume Prokerala credits.

## Checks

```powershell
pwsh -File scripts/Test-FreeKundliUnits.ps1
pwsh -File scripts/Test-FreeKundli.ps1 -BaseUrl http://localhost:60411
# Makes two live sandbox API requests; refuses production configuration:
pwsh -File scripts/Test-FreeKundli.ps1 -BaseUrl http://localhost:60411 -LiveApi
```

The unit suite covers request parameters, output encoding, SVG validation,
timestamp offsets, partial failures, retries, cache invalidation and session
isolation. The HTTP suite uses the existing sample login and tests the form,
validation, retained inputs, and optionally a real horoscope and chart.

Provider contract: https://api.prokerala.com/spec/astrology.v2.yaml

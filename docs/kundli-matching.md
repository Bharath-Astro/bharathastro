# Kundli matching

`kundli-matching.aspx` is a two-step Web Forms flow. Continue validates the groom
and displays the bride form. Get Matching Results validates both profiles, calls
Prokerala on the server, and displays the detailed report. Back and Edit retain
both people's input. No matching request is made on Continue or city selection.

The request uses `GET https://api.prokerala.com/v2/astrology/kundli-matching/advanced`
with `ayanamsa=1` (Lahiri), `la=en`, `boy_dob`, `boy_coordinates`, `girl_dob`, and
`girl_coordinates`. Birth timestamps retain each supplied UTC offset and are URL
encoded. Names and place labels are used for display and are not sent to Prokerala.
The response's `guna_milan`, `boy_info`, `girl_info`, `message`, Mangal Dosha details,
and exceptions supply the results. Provider text and names are HTML encoded.

The city dropdown supplies coordinates for common Indian cities. Another place
allows a city name, latitude, longitude and the UTC offset at birth; there is no
automatic geocoding. Check historical or daylight-saving offsets when applicable.

The existing `BATClass.GetAccessToken()` manages server-only credentials and token
caching. See README.md for configuration. Sandbox mode accepts January 1 dates
only and is visibly labeled; other dates are rejected without changing them.
For actual dates, configure production credentials and `PROKERALA_SANDBOX=false`,
then restart IIS Express. Do not commit credentials.

The UI prevents overlapping asynchronous requests. A successful identical request
is cached in the current user's session for ten minutes. Failures are not cached.
Timeout, authorization, credits and rate-limit errors leave the input available
for correction or retry. Birth profiles are not written to the database or logs.

## Verification

```powershell
pwsh -File scripts/Test-KundliMatchingUnits.ps1
pwsh -File scripts/Test-KundliMatching.ps1 -BaseUrl http://localhost:60411
# Performs a real API request, and refuses production configuration:
pwsh -File scripts/Test-KundliMatching.ps1 -BaseUrl http://localhost:60411 -LiveApi
```

The HTTP test signs in with the existing sample account, checks both form steps,
date preservation, custom coordinates and editing, and optionally verifies the
live detailed report. It never prints credentials, cookies or API tokens.

Provider contract: https://api.prokerala.com/spec/astrology.v2.yaml

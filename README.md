# bharathastro

ASP.NET Web Forms application on .NET Framework, with Forms Authentication.

## Account flows

- `Login.aspx` is the initial public page. The original phone/password sample
  remains in `App_Code/SampleAuthentication.cs`.
- `CreateAccount.aspx` replaces the old registration modal; there is only one
  customer registration form. `register-as-astrologer.aspx` is a separate,
  unchanged professional onboarding feature.
- Login accepts the sample phone number or a registered account's email address.
  Email/password registration validates confirmation and authenticates the new user.
- `ApplicationAuthentication.cs` issues the same HttpOnly, SameSite=Lax browser-session
  cookie for sample, email, and Google identities. Its sliding idle timeout is 120 minutes.
  Refresh retains authentication. Header Logout clears the cookie and session.
- `Web.config` centrally protects application routes. Only Login, Create Account,
  GoogleCallback, and static assets are public. Safe local ReturnUrl values are preserved.
  Authentication forms have session-bound anti-forgery tokens and duplicate-submit prevention.

## Local demo account storage

The original CustomerInfo registration code had no configured `csWorking` database
connection or schema in this checkout. Its incomplete registration path has been
replaced with an explicitly labeled `DemoAccountStore` adapter.

Email accounts and Google subjects persist in `App_Data/demo-accounts.json`, which
ASP.NET does not serve and Git ignores. Only password hashes and unique random salts
are stored: PBKDF2-HMAC-SHA256, 600,000 iterations, 32-byte output. Passwords must be
12-128 characters. This follows the [OWASP password hashing guidance](https://cheatsheetseries.owasp.org/cheatsheets/Password_Storage_Cheat_Sheet.html).
Google access tokens, authorization codes, and client secrets are not stored there.

This is a single-server demo store, not production account infrastructure. Email
ownership is not verified, and recovery, distributed storage/locking, rate limiting,
and account management are not implemented. Before production, replace the store
adapter with the intended configured account service/database. Existing legacy
CustomerInfo users are not migrated, and unrelated database features keep their
original configuration requirements. Protect the account file with server filesystem
permissions; the application identity needs read/write permission.

For isolated tests, set `ASTRO_DEMO_ACCOUNTS_PATH` in the IIS Express process environment
to an absolute test file path. Otherwise the App_Data default is used.

## Enable Google sign-in

No Google configuration existed in the project. Both public forms now start Google's
real OAuth authorization-code flow with PKCE and random, session-bound state. The
callback accepts state once within ten minutes, exchanges the code server-side,
and obtains identity from Google's HTTPS UserInfo endpoint using the returned bearer
token. A verified email and stable Google subject are required. Google accounts are
not silently linked to email/password accounts by matching email.

Follow [Google's web-server OAuth setup](https://developers.google.com/identity/protocols/oauth2/web-server):

1. In Google Cloud / Google Auth Platform, configure the application's Branding,
   Audience and consent screen. Add test users while the application is in Testing.
2. Create an OAuth client of type **Web application**.
3. Register the exact authorized redirect URI:
   - Local IIS Express: `http://localhost:60412/GoogleCallback.aspx`
   - Production: `https://YOUR-HOST/GoogleCallback.aspx` (include any application
     virtual-directory prefix, for example `/Astro/GoogleCallback.aspx`).
4. Supply these values to the server process:
   - `GOOGLE_CLIENT_ID`
   - `GOOGLE_CLIENT_SECRET` — server environment only; never commit it.
   - `GOOGLE_REDIRECT_URI` — exactly the registered callback URI.
5. Restart IIS Express or recycle the IIS application pool so it inherits the environment.

Public Client ID and Redirect URI may alternatively use the existing Web.config
appSettings `Google:ClientId` and `Google:RedirectUri`. Environment values take
precedence. The application does not automatically read .env files. The secret is
never rendered into HTML or sent in an authorization URL. Use HTTPS outside localhost,
and exclude callback query strings from deployment access logs to avoid retaining
authorization codes.

Requested scopes are only `openid email profile`; Gmail/mailbox access is not
requested. Without configuration, Google buttons explain that Google sign-in is
unavailable and do not authenticate anyone. Live Google consent and sign-in cannot
be verified until valid configuration is supplied.

## Build and test

### Prokerala sandbox configuration

Existing astrology pages share `App_Code/BATClass.cs`. Both legacy token methods
now use one configured client and cache its token in server memory until 60 seconds
before expiry. There is no fallback to the old hardcoded production credentials.

This workstation uses the supplied sandbox client in
`Astro-W/Astro/App_Data/Prokerala.local.config`, loaded by Web.config's appSettings
file attribute. This file is Git-ignored and inside ASP.NET's protected App_Data
directory. Do not publish it as a static file or commit it. Restrict filesystem
access to the developer/application-pool identity. It contains a server-side secret.

For deployment, set both `PROKERALA_CLIENT_ID` and `PROKERALA_CLIENT_SECRET` in
the server process environment; together they override the local configuration.
Restart IIS after changing credentials. Rotate credentials shared in screenshots
or previously embedded in source. Prokerala credentials do not enable Google login.

The sandbox API only accepts January 1 (any year/time). With `Prokerala:Sandbox`
set to `true` in the local config, Home shows a clearly labeled January 1 sandbox
Panchang instead of pretending it is today's prediction. Existing interactive API
forms must also use January 1 during sandbox testing; user birth dates are never
silently changed. Set `PROKERALA_SANDBOX=false` together with production credentials
to restore today's Panchang. The production environment must set this explicitly
if retaining a local sandbox configuration.

Run `pwsh -File scripts/Test-Prokerala.ps1` to verify token exchange and sample
Panchang/Kundli requests without logging credentials or tokens. Run only with the
intended client: production clients can consume API credits. Sandbox results are
test data, not production predictions. Provider setup reference:
[Prokerala Getting Started](https://api.prokerala.com/getting-started).

From the repository root on Windows with .NET Framework and IIS Express installed:

```powershell
& "$env:WINDIR\Microsoft.NET\Framework64\v4.0.30319\aspnet_compiler.exe" -v /Astro -p Astro-W/Astro
./scripts/Test-AuthenticationUnits.ps1

$sitePath = (Resolve-Path Astro-W/Astro).Path
# Use isolated local accounts when running the registration tests:
$env:ASTRO_DEMO_ACCOUNTS_PATH = Join-Path (Get-Location) 'artifacts\auth-test\demo-accounts.json'
& 'C:\Program Files\IIS Express\iisexpress.exe' "/path:$sitePath" /port:60412 /systray:false
```

In a second PowerShell 7 terminal:

```powershell
./scripts/Test-Registration.ps1 -BaseUrl http://localhost:60412
node --check Astro-W/Astro/assets/js/login.js
node scripts/Test-AuthClient.js
```

Test-Registration runs the existing Test-Authentication suite first, then covers
registration, duplicate emails, CSRF rejection, subsequent email login, and Google
configuration/callback rejection. It creates uniquely named test accounts; use the
isolated test store above. The unit suite tests persisted password hashes, OAuth
state expiry/replay, safe redirects, and Google token/UserInfo handling using
test-only HTTP fixtures. Those fixtures are not an application login mechanism
and do not replace live Google verification. No lint framework is configured.

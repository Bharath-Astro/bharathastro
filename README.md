# bharathastro
ASTRO 

## Sample login

This ASP.NET Web Forms site uses its built-in Forms Authentication. Anonymous
requests go to `Login.aspx`; `Web.config` protects all application routes centrally.
Only Login and static files under `assets` are public. Sample credentials are
centralized in `Astro-W/Astro/App_Code/SampleAuthentication.cs`.

A successful login creates an HttpOnly browser-session cookie with a sliding
120-minute idle timeout, then opens the requested local page or `Default.aspx`.
Refreshing preserves authentication. Logout in the shared header clears the
authentication cookie and session. Pages use no-store caching headers. This sample
flow does not use a database, external authentication service, or browser storage.

## Build and check authentication

From the repository root on Windows with .NET Framework and IIS Express installed:

```powershell
& "$env:WINDIR\Microsoft.NET\Framework64\v4.0.30319\aspnet_compiler.exe" -v /Astro -p Astro-W/Astro

$sitePath = (Resolve-Path Astro-W/Astro).Path
& 'C:\Program Files\IIS Express\iisexpress.exe' "/path:$sitePath" /port:60412 /systray:false
```

In a second PowerShell 7 terminal:

```powershell
./scripts/Test-Authentication.ps1 -BaseUrl http://localhost:60412
```

The checks cover anonymous access to every ASPX page, public login assets, server
validation, cookies, refresh, Logout, and safe return URLs. Existing Home API and
database features retain their original configuration requirements. No separate
lint tool or test framework is configured in this repository.

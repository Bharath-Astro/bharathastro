#requires -Version 7.0
# Exchanges a token and makes two sandbox data requests. Never prints secrets.
$ErrorActionPreference = 'Stop'
$clientId = $env:PROKERALA_CLIENT_ID
$clientSecret = $env:PROKERALA_CLIENT_SECRET
if (!$clientId -and !$clientSecret) {
    $localFile = Join-Path $PSScriptRoot '../Astro-W/Astro/App_Data/Prokerala.local.config'
    $configuration = [xml](Get-Content -LiteralPath $localFile -Raw)
    foreach ($entry in $configuration.appSettings.add) {
        if ($entry.key -eq 'Prokerala:ClientId') { $clientId = $entry.value }
        if ($entry.key -eq 'Prokerala:ClientSecret') { $clientSecret = $entry.value }
    }
}
if (!$clientId -or !$clientSecret) { throw 'Configure both Prokerala credentials before running this test.' }
try {
    $token = Invoke-RestMethod -Method Post -Uri 'https://api.prokerala.com/token' -MaximumRedirection 0 -TimeoutSec 25 -Body @{
        grant_type = 'client_credentials'; client_id = $clientId; client_secret = $clientSecret
    }
    if (!$token.access_token -or $token.token_type -ne 'Bearer' -or $token.expires_in -le 0) {
        throw 'Invalid token response.'
    }
    Write-Output 'PASS: Prokerala client credentials accepted.'
    $headers = @{Authorization = 'Bearer ' + $token.access_token}
    foreach ($endpoint in @('panchang', 'kundli')) {
        $uri = 'https://api.prokerala.com/v2/astrology/' + $endpoint + '?ayanamsa=1&coordinates=23.1765,75.7885&datetime=2026-01-01T22%3A03%3A55%2B05%3A30'
        $result = Invoke-RestMethod -Uri $uri -Headers $headers -MaximumRedirection 0 -TimeoutSec 25
        if ($result.status -ne 'ok' -or !$result.data) { throw 'API did not return successful data.' }
        Write-Output ('PASS: authenticated ' + $endpoint + ' returned data.')
    }
} catch {
    $status = if ($_.Exception.Response) { [int]$_.Exception.Response.StatusCode } else { 'unavailable (network or response validation)' }
    throw ('Prokerala smoke test failed; HTTP status: ' + $status + '. No credential or response payload has been logged.')
} finally {
    $clientSecret = $null; $token = $null; $headers = $null
}

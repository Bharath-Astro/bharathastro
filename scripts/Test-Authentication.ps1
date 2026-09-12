#requires -Version 7.0
param([string]$BaseUrl = 'http://localhost:60412')

$ErrorActionPreference = 'Stop'
$BaseUrl = $BaseUrl.TrimEnd('/')
$appRoot = ([uri]$BaseUrl).AbsolutePath.TrimEnd('/')
$sourceRoot = Join-Path $PSScriptRoot '../Astro-W/Astro'
$credentialSource = Get-Content (Join-Path $sourceRoot 'App_Code/SampleAuthentication.cs') -Raw
# Read the sample values from their single source; never print credentials or cookies.
$samplePhone = [regex]::Match($credentialSource, 'PhoneNumber = "([^"]+)"').Groups[1].Value
$samplePassword = [regex]::Match($credentialSource, 'Password = "([^"]+)"').Groups[1].Value

function Assert-That($Condition, [string]$Message) {
    if (!$Condition) { throw $Message }
}

function Request-Page([string]$Path, $Session, $Form = $null) {
    $options = @{
        Uri = $BaseUrl + $Path
        WebSession = $Session
        MaximumRedirection = 0
        SkipHttpErrorCheck = $true
        ErrorAction = 'SilentlyContinue'
        TimeoutSec = 30
    }
    if ($null -ne $Form) {
        $options.Method = 'Post'
        $options.Body = $Form
    }
    $response = Invoke-WebRequest @options
    Assert-That ($null -ne $response) "No response from $Path"
    return $response
}

function Get-HiddenFields([string]$Html) {
    $fields = @{}
    foreach ($inputTag in [regex]::Matches($Html, '<input\b[^>]*type="hidden"[^>]*>')) {
        $name = [regex]::Match($inputTag.Value, 'name="([^"]*)"').Groups[1].Value
        $value = [regex]::Match($inputTag.Value, 'value="([^"]*)"').Groups[1].Value
        $fields[$name] = [System.Net.WebUtility]::HtmlDecode($value)
    }
    Assert-That ($fields.ContainsKey('__VIEWSTATE')) 'Web Forms hidden fields are missing.'
    return $fields
}

function Submit-Login($Session, [string]$Phone, [string]$Password, [string]$ReturnUrl = '') {
    $path = '/Login.aspx'
    if ($ReturnUrl) { $path += '?ReturnUrl=' + [uri]::EscapeDataString($ReturnUrl) }
    $page = Request-Page $path $Session
    Assert-That ($page.StatusCode -eq 200) 'Login page should be public.'
    $form = Get-HiddenFields $page.Content
    $form.phoneNumber = $Phone
    $form.password = $Password
    return Request-Page $path $Session $form
}

$anonymous = [Microsoft.PowerShell.Commands.WebRequestSession]::new()
$routes = @('/') + @(Get-ChildItem $sourceRoot -Recurse -Filter '*.aspx' |
    Where-Object { $_.Name -ne 'Login.aspx' -and $_.FullName -notmatch '[\\/]assets[\\/]' } |
    ForEach-Object { '/' + [IO.Path]::GetRelativePath($sourceRoot, $_.FullName).Replace('\', '/') })
foreach ($route in $routes) {
    $response = Request-Page $route $anonymous
    Assert-That ($response.StatusCode -eq 302 -and $response.Headers.Location[0].StartsWith($appRoot + '/Login.aspx?ReturnUrl=')) "Anonymous access was not blocked: $route"
}
Write-Output "PASS: all $($routes.Count) application routes redirect anonymous visitors to Login."

foreach ($asset in @('/assets/css/login.css', '/assets/js/login.js', '/assets/css/style.css', '/assets/main/logo-25-2.png')) {
    Assert-That ((Request-Page $asset $anonymous).StatusCode -eq 200) "Login asset is not public: $asset"
}
Write-Output 'PASS: login design assets load without authentication.'

foreach ($case in @(
    @{ Phone = ''; Password = ''; Error = 'Please fill in both fields.' },
    @{ Phone = ''; Password = $samplePassword; Error = 'Please enter your phone number.' },
    @{ Phone = $samplePhone; Password = ''; Error = 'Please enter your password.' },
    @{ Phone = '9999999999'; Password = $samplePassword; Error = 'Invalid phone number or password.' },
    @{ Phone = $samplePhone; Password = 'incorrect'; Error = 'Invalid phone number or password.' },
    @{ Phone = $samplePhone.Substring(1); Password = $samplePassword; Error = 'Invalid phone number or password.' },
    @{ Phone = $samplePhone; Password = $samplePassword.ToUpperInvariant(); Error = 'Invalid phone number or password.' }
)) {
    $response = Submit-Login $anonymous $case.Phone $case.Password
    Assert-That ($response.StatusCode -eq 200 -and $response.Content.Contains($case.Error)) 'An invalid or empty credential case did not show its error.'
    Assert-That ($null -eq $anonymous.Cookies.GetCookies([uri]$BaseUrl)['.BharatAstro.Auth']) 'Invalid credentials created an authentication cookie.'
}
Write-Output 'PASS: empty fields, wrong phone/password, missing leading zero, and password case are rejected without JavaScript.'

$signedIn = [Microsoft.PowerShell.Commands.WebRequestSession]::new()
$response = Submit-Login $signedIn $samplePhone $samplePassword
Assert-That ($response.StatusCode -eq 302 -and $response.Headers.Location[0] -eq ($appRoot + '/Default.aspx')) 'Successful login did not navigate to the existing Home page.'
$cookie = $signedIn.Cookies.GetCookies([uri]$BaseUrl)['.BharatAstro.Auth']
Assert-That ($null -ne $cookie -and $cookie.HttpOnly -and $cookie.Expires -eq [datetime]::MinValue) 'Expected an HttpOnly browser-session authentication cookie.'
Write-Output 'PASS: correct credentials navigate to Home with an HttpOnly session cookie.'

foreach ($route in @('/about.aspx', '/about.aspx', '/admin/Default.aspx')) {
    $response = Request-Page $route $signedIn
    Assert-That ($response.StatusCode -eq 200) "Authenticated route or refresh failed: $route"
    Assert-That (($response.Headers.'Cache-Control' -join ',').Contains('no-store')) "Protected response is cacheable: $route"
}
Write-Output 'PASS: authenticated pages, refresh, and standalone nested pages work and are not cached.'

$page = Request-Page '/about.aspx' $signedIn
$logoutForm = Get-HiddenFields $page.Content
$logoutForm.__EVENTTARGET = 'ctl00$lnkLogout'
$logoutForm.__EVENTARGUMENT = ''
$response = Request-Page '/about.aspx' $signedIn $logoutForm
Assert-That ($response.StatusCode -eq 302 -and $response.Headers.Location[0] -eq ($appRoot + '/Login.aspx')) 'Logout did not redirect to Login.'
Assert-That ($null -eq $signedIn.Cookies.GetCookies([uri]$BaseUrl)['.BharatAstro.Auth']) 'Logout did not remove the authentication cookie.'
foreach ($route in @('/Default.aspx', '/about.aspx', '/admin/Default.aspx')) {
    Assert-That ((Request-Page $route $signedIn).StatusCode -eq 302) "A protected page remains accessible after logout: $route"
}
Write-Output 'PASS: header Logout removes authentication and blocks protected pages again.'

foreach ($case in @(
    @{ Target = $appRoot + '/about.aspx?source=login-test'; Expected = $appRoot + '/about.aspx?source=login-test' },
    @{ Target = 'https://example.com/'; Expected = $appRoot + '/Default.aspx' },
    @{ Target = '//example.com/'; Expected = $appRoot + '/Default.aspx' },
    @{ Target = '/\example.com/'; Expected = $appRoot + '/Default.aspx' },
    @{ Target = $appRoot + '/%2fexample.com/'; Expected = $appRoot + '/Default.aspx' },
    @{ Target = $appRoot + '/Login.aspx'; Expected = $appRoot + '/Default.aspx' },
    @{ Target = $appRoot + '/../outside.aspx'; Expected = $appRoot + '/Default.aspx' }
)) {
    $returnSession = [Microsoft.PowerShell.Commands.WebRequestSession]::new()
    $response = Submit-Login $returnSession $samplePhone $samplePassword $case.Target
    Assert-That ($response.StatusCode -eq 302 -and $response.Headers.Location[0] -eq $case.Expected) 'A ReturnUrl case failed.'
}
Write-Output 'PASS: intended local routes are preserved; external, encoded, traversal, and Login return targets fall back to Home.'
Write-Output 'All authentication checks passed. Home API/database features require their existing provider configuration and are not exercised by this test.'

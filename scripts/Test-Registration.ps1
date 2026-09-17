#requires -Version 7.0
param([string]$BaseUrl = 'http://localhost:60412')

# Reuse and run the existing authentication regression suite first.
. (Join-Path $PSScriptRoot 'Test-Authentication.ps1') -BaseUrl $BaseUrl

function Submit-Registration($Session, [string]$Email, [string]$Password, [string]$Confirm, [string]$ReturnUrl = '') {
    $path = '/CreateAccount.aspx'
    if ($ReturnUrl) { $path += '?ReturnUrl=' + [uri]::EscapeDataString($ReturnUrl) }
    $page = Request-Page $path $Session
    Assert-That ($page.StatusCode -eq 200) 'Create Account must be public.'
    $form = Get-HiddenFields $page.Content
    $form.email = $Email
    $form.password = $Password
    $form.confirmPassword = $Confirm
    return Request-Page $path $Session $form
}

$session = [Microsoft.PowerShell.Commands.WebRequestSession]::new()
$email = 'auth-test-' + [guid]::NewGuid().ToString('N') + '@example.invalid'
$password = [guid]::NewGuid().ToString('N') + '!aA'
$login = Request-Page '/Login.aspx' $session
Assert-That ($login.Content.Contains('CreateAccount.aspx')) 'Login is missing the Create Account link.'
$create = Request-Page '/CreateAccount.aspx' $session
Assert-That ($create.Content.Contains('Login.aspx') -and $create.Content.Contains('Continue with Google')) 'Create Account navigation is incomplete.'

foreach ($case in @(
    @{ Email=''; Password=''; Confirm=''; Error='Please enter your email address.' },
    @{ Email='not-an-email'; Password=$password; Confirm=$password; Error='Please enter a valid email address.' },
    @{ Email='a@localhost'; Password=$password; Confirm=$password; Error='Please enter a valid email address.' },
    @{ Email=$email; Password=''; Confirm=$password; Error='Please enter your password.' },
    @{ Email=$email; Password='short'; Confirm='short'; Error='Use a password between 12 and 128 characters.' },
    @{ Email=$email; Password=$password; Confirm=''; Error='Please confirm your password.' },
    @{ Email=$email; Password=$password; Confirm='different-password'; Error='Passwords do not match.' }
)) {
    $response = Submit-Registration $session $case.Email $case.Password $case.Confirm
    Assert-That ($response.StatusCode -eq 200 -and $response.Content.Contains($case.Error)) 'Registration validation failed.'
    Assert-That ($null -eq $session.Cookies.GetCookies([uri]$BaseUrl)['.BharatAstro.Auth']) 'Invalid registration authenticated the user.'
}
Write-Output 'PASS: registration email, password, confirmation, length, and mismatch validation.'

$form = Get-HiddenFields $create.Content
$form.authToken = ''
$form.email = $email
$form.password = $password
$form.confirmPassword = $password
$response = Request-Page '/CreateAccount.aspx' $session $form
Assert-That ($response.Content.Contains('Your session expired.')) 'Registration accepted a missing CSRF token.'
Write-Output 'PASS: registration rejects missing anti-forgery tokens.'

$response = Submit-Registration $session $email $password $password ($appRoot + '/about.aspx')
Assert-That ($response.StatusCode -eq 302 -and $response.Headers.Location[0] -eq ($appRoot + '/about.aspx')) 'Registration did not authenticate and preserve the intended route.'
$page = Request-Page '/about.aspx' $session
Assert-That ($page.StatusCode -eq 200 -and $page.Content.Contains('Your account has been created.')) 'Registration success state is missing.'
Assert-That ((Request-Page '/about.aspx' $session).StatusCode -eq 200) 'Registration authentication did not survive refresh.'

$logout = Get-HiddenFields $page.Content
$logout.__EVENTTARGET = 'ctl00$lnkLogout'
$logout.__EVENTARGUMENT = ''
$response = Request-Page '/about.aspx' $session $logout
Assert-That ($response.StatusCode -eq 302) 'Account logout failed.'
Assert-That ((Request-Page '/about.aspx' $session).StatusCode -eq 302) 'Account remains authenticated after logout.'

$duplicate = Submit-Registration $session $email.ToUpperInvariant() $password $password
Assert-That ($duplicate.StatusCode -eq 200 -and $duplicate.Content.Contains('already exists')) 'Duplicate email registration was accepted.'
$wrongLogin = Submit-Login $session $email 'wrong-password'
Assert-That ($wrongLogin.Content.Contains('Invalid email or password.')) 'Wrong account password was accepted.'
$emailLogin = Submit-Login $session $email.ToUpperInvariant() $password
Assert-That ($emailLogin.StatusCode -eq 302 -and $emailLogin.Headers.Location[0] -eq ($appRoot + '/Default.aspx')) 'Created account cannot log in later by email.'
Write-Output 'PASS: create, success message, refresh, logout, duplicate email, and subsequent email/password login.'

$googleSession = [Microsoft.PowerShell.Commands.WebRequestSession]::new()
foreach ($path in @('/Login.aspx', '/CreateAccount.aspx')) {
    $page = Request-Page $path $googleSession
    $googleForm = Get-HiddenFields $page.Content
    $googleForm.action = 'google'
    $response = Request-Page $path $googleSession $googleForm
    if ($page.Content.Contains('Google sign-in is not configured yet.')) {
        Assert-That ($response.StatusCode -eq 200 -and $response.Content.Contains('Google sign-in is not configured yet.')) 'Missing Google config is not handled.'
    } else {
        Assert-That ($response.StatusCode -eq 302 -and $response.Headers.Location[0].StartsWith('https://accounts.google.com/o/oauth2/v2/auth?')) 'Google button did not start OAuth.'
    }
    Assert-That ($null -eq $googleSession.Cookies.GetCookies([uri]$BaseUrl)['.BharatAstro.Auth']) 'Google button authenticated without Google verification.'
}
$callback = Request-Page '/GoogleCallback.aspx?state=forged&code=untrusted' $googleSession
Assert-That ($callback.StatusCode -eq 302 -and $callback.Headers.Location[0].Contains('authError=google_expired')) 'Forged Google callback was accepted.'
Assert-That ($null -eq $googleSession.Cookies.GetCookies([uri]$BaseUrl)['.BharatAstro.Auth']) 'Forged Google callback issued a cookie.'
Write-Output 'PASS: Google button configuration handling and forged-callback rejection; no fake authentication.'
Write-Output 'Registration checks passed. Live Google consent/token exchange requires real OAuth configuration.'

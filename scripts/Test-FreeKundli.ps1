#requires -Version 7.0
param([string]$BaseUrl = 'http://localhost:60411', [switch]$LiveApi)
$ErrorActionPreference = 'Stop'
$session = [Microsoft.PowerShell.Commands.WebRequestSession]::new()
$prefix = 'ctl00$ContentPlaceHolder1$'
function Assert($ok, $message) { if (!$ok) { throw $message } }
function Request($path, $form = $null) {
    $options = @{ Uri = $BaseUrl.TrimEnd('/') + $path; WebSession = $session; MaximumRedirection = 0; SkipHttpErrorCheck = $true; ErrorAction = 'SilentlyContinue'; TimeoutSec = 60 }
    if ($null -ne $form) { $options.Method = 'Post'; $options.Body = $form }
    $response = Invoke-WebRequest @options
    Assert ($null -ne $response) 'No HTTP response.'
    Assert ($response.StatusCode -in @(200,302)) ('Unexpected HTTP status ' + $response.StatusCode)
    return $response
}
function Fields($html) {
    $fields = @{}
    foreach ($tag in [regex]::Matches($html, '<input\b[^>]*>')) {
        if ($tag.Value -match 'type="(?:submit|button|checkbox)"') { continue }
        $name = [regex]::Match($tag.Value, 'name="([^"]*)"').Groups[1].Value
        if ($name) { $fields[$name] = [Net.WebUtility]::HtmlDecode([regex]::Match($tag.Value, 'value="([^"]*)"').Groups[1].Value) }
    }
    foreach ($select in [regex]::Matches($html, '(?s)<select\b[^>]*name="([^"]+)"[^>]*>(.*?)</select>')) {
        $option = [regex]::Match($select.Groups[2].Value, '<option[^>]*selected="selected"[^>]*>')
        if (!$option.Success) { $option = [regex]::Match($select.Groups[2].Value, '<option[^>]*>') }
        $fields[$select.Groups[1].Value] = [Net.WebUtility]::HtmlDecode([regex]::Match($option.Value, 'value="([^"]*)"').Groups[1].Value)
    }
    return ,$fields
}
function Post($page, $button, $values = @{}) {
    $form = Fields $page.Content
    foreach ($key in $values.Keys) { $form[$prefix + $key] = $values[$key] }
    if ($button) { $form[$prefix + $button] = 'Submit' }
    return Request '/free-kundli.aspx' $form
}
function SelectPlace($page, $role, $value) {
    $form = Fields $page.Content
    $form[$prefix + $role + '$ddlPlace'] = $value
    $form['__EVENTTARGET'] = $prefix + $role + '$ddlPlace'
    return Request '/free-kundli.aspx' $form
}
$source = Get-Content (Join-Path $PSScriptRoot '../Astro-W/Astro/App_Code/SampleAuthentication.cs') -Raw
$page = Request '/Login.aspx?ReturnUrl=%2ffree-kundli.aspx'
$form = Fields $page.Content
$form.phoneNumber = [regex]::Match($source, 'PhoneNumber = "([^"]+)"').Groups[1].Value
$form.password = [regex]::Match($source, 'Password = "([^"]+)"').Groups[1].Value
$login = Request '/Login.aspx?ReturnUrl=%2ffree-kundli.aspx' $form
Assert ($login.StatusCode -eq 302) 'Test login failed.'
$page = Request '/free-kundli.aspx'
Assert ($page.Content.Contains('Generate Horoscope')) 'Horoscope form missing.'
$page = Post $page 'btnGenerate'
Assert ($page.Content.Contains('Select a birth city')) 'Missing-place validation missing.'
$page = SelectPlace $page 'BirthDetails' '17.3850,78.4867'
$birth = @{'BirthDetails$txtName'='Test Horoscope';'BirthDetails$txtDate'='1999-09-11';'BirthDetails$txtTime'='12:13:12';'BirthDetails$txtOffset'='+05:30'}
$isSandbox = $page.Content.Contains('Sandbox mode - test horoscope only.')
if ($isSandbox) {
    $page = Post $page 'btnGenerate' $birth
    Assert ($page.Content.Contains('Sandbox accepts January 1')) 'Sandbox restriction missing.'
    Assert ($page.Content.Contains('1999-09-11')) 'Entered date was changed.'
    $birth['BirthDetails$txtDate'] = '1999-01-01'
}
$page = SelectPlace $page 'BirthDetails' 'custom'
Assert ($page.Content.Contains('Birth place name')) 'Custom coordinates missing.'
$invalid = $birth.Clone()
$invalid['BirthDetails$txtPlace'] = 'Test City'
$invalid['BirthDetails$txtLatitude'] = '91'
$invalid['BirthDetails$txtLongitude'] = '80'
$page = Post $page 'btnGenerate' $invalid
Assert ($page.Content.Contains('Enter a latitude from -90 to 90')) 'Invalid coordinates accepted.'
$page = SelectPlace $page 'BirthDetails' '17.3850,78.4867'
Write-Output 'PASS: authenticated horoscope form, validation, custom places and sandbox date preservation.'
if ($LiveApi) {
    Assert $isSandbox 'Live automated test requires sandbox configuration; no production request was made.'
    $page = Post $page 'btnGenerate' $birth
    if (!$page.Content.Contains('Vimshottari Dasha')) {
        $errorPanel = [regex]::Match($page.Content, '(?s)id="ContentPlaceHolder1_pnlError".*?</div>').Value
        throw ('Horoscope generation failed. ' + [Net.WebUtility]::HtmlDecode([regex]::Replace($errorPanel, '<[^>]+>', ' ')))
    }
    Assert ($page.Content.Contains('data:image/svg+xml;base64,')) 'Horoscope text returned but chart is missing.'
    Assert ($page.Content.Contains('Mangal Dosha') -and $page.Content.Contains('Yoga details') -and $page.Content.Contains('Moon sign (Chandra Rasi)')) 'Horoscope sections missing.'
    Assert ($page.Content.Contains('Test Horoscope') -and $page.Content.Contains('12:13:12 +05:30')) 'Birth summary missing or changed.'
    Write-Output 'PASS: live Prokerala advanced Kundli and SVG chart displayed with the entered birth details.'
    $page = Post $page 'btnEdit'
    Assert ($page.Content.Contains('Test Horoscope') -and $page.Content.Contains('1999-01-01')) 'Edit lost birth details.'
    Assert (!$page.Content.Contains('<h3>Your horoscope</h3>')) 'Stale result visible during editing.'
    $page = Post $page 'btnGenerate'
    Assert ($page.Content.Contains('Vimshottari Dasha') -and $page.Content.Contains('data:image/svg+xml;base64,')) 'Repeated submission failed.'
    Write-Output 'PASS: edit, preserved birth inputs and cached resubmission.'
}

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
    return Request '/kundli-matching.aspx' $form
}
function SelectPlace($page, $role, $value) {
    $form = Fields $page.Content
    $form[$prefix + $role + '$ddlPlace'] = $value
    $form['__EVENTTARGET'] = $prefix + $role + '$ddlPlace'
    return Request '/kundli-matching.aspx' $form
}
$source = Get-Content (Join-Path $PSScriptRoot '../Astro-W/Astro/App_Code/SampleAuthentication.cs') -Raw
$page = Request '/Login.aspx?ReturnUrl=%2fkundli-matching.aspx'
$form = Fields $page.Content
$form.phoneNumber = [regex]::Match($source, 'PhoneNumber = "([^"]+)"').Groups[1].Value
$form.password = [regex]::Match($source, 'Password = "([^"]+)"').Groups[1].Value
$login = Request '/Login.aspx?ReturnUrl=%2fkundli-matching.aspx' $form
Assert ($login.StatusCode -eq 302) 'Test login failed.'
$page = Request '/kundli-matching.aspx'
Assert ($page.Content.Contains('Step 1 of 2:')) 'Groom step missing.'
$page = Post $page 'btnContinue'
Assert ($page.Content.Contains('Select a birth city')) 'Missing-place validation missing.'
$page = SelectPlace $page 'GroomDetails' '17.3850,78.4867'
$groom = @{'GroomDetails$txtName'='Test Groom'; 'GroomDetails$txtDate'='1999-09-11'; 'GroomDetails$txtTime'='12:13:12'; 'GroomDetails$txtOffset'='+05:30'}
$isSandbox = $page.Content.Contains('Sandbox mode - test results only.')
if ($isSandbox) {
    $page = Post $page 'btnContinue' $groom
    Assert ($page.Content.Contains('Sandbox accepts January 1')) 'Sandbox restriction missing.'
    Assert ($page.Content.Contains('1999-09-11')) 'Actual birth date was changed.'
    $groom['GroomDetails$txtDate'] = '1999-01-01'
}
$page = Post $page 'btnContinue' $groom
Assert ($page.Content.Contains('Step 2 of 2:') -and $page.Content.Contains('Test Groom')) 'Continue did not retain groom and show bride.'
$page = SelectPlace $page 'BrideDetails' 'custom'
Assert ($page.Content.Contains('Birth place name')) 'Custom location fields missing.'
$page = Post $page 'btnMatch' @{'BrideDetails$txtName'='Test Bride';'BrideDetails$txtDate'='2000-01-01';'BrideDetails$txtTime'='10:30:00';'BrideDetails$txtPlace'='Test City';'BrideDetails$txtLatitude'='91';'BrideDetails$txtLongitude'='80';'BrideDetails$txtOffset'='+05:30'}
Assert ($page.Content.Contains('Enter a latitude from -90 to 90')) 'Bad coordinates were accepted.'
$page = Post $page 'btnBack'
Assert ($page.Content.Contains('Step 1 of 2:') -and $page.Content.Contains('Test Groom')) 'Back lost groom values.'
$page = Post $page 'btnContinue'
Assert ($page.Content.Contains('Test Bride')) 'Back/Continue lost bride values.'
$page = SelectPlace $page 'BrideDetails' '13.0827,80.2707'
Write-Output 'PASS: authenticated form, validation, sandbox date preservation, two-step navigation, custom locations and retained partner details.'
if ($LiveApi) {
    Assert $isSandbox 'Live automated test requires sandbox configuration; no production API call was made.'
    $page = Post $page 'btnMatch'
    if (!$page.Content.Contains('Guna Milan:')) {
        $errorPanel = [regex]::Match($page.Content, '(?s)id="ContentPlaceHolder1_pnlError".*?</div>').Value
        throw ('Live matching did not return a result. ' + [Net.WebUtility]::HtmlDecode([regex]::Replace($errorPanel, '<[^>]+>', ' ')))
    }
    Assert ($page.Content.Contains('Eight Guna matching factors') -and $page.Content.Contains('Mangal Dosha:')) 'Detailed API results are missing.'
    Assert ($page.Content.Contains('Test Groom') -and $page.Content.Contains('Test Bride')) 'Results lost names.'
    $score = [regex]::Match($page.Content, "Guna Milan: <strong>([^<]+)").Groups[1].Value
    Write-Output ('PASS: live Prokerala detailed matching rendered; sandbox score ' + $score + '.')
    $page = Post $page 'btnEdit'
    Assert ($page.Content.Contains('Test Bride') -and $page.Content.Contains('Step 2 of 2:')) 'Edit lost bride values.'
    $page = Post $page 'btnMatch'
    Assert ($page.Content.Contains('Guna Milan:')) 'Identical resubmission failed.'
    Write-Output 'PASS: edit and identical resubmission rendered the cached result.'
}

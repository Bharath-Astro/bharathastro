param()
$ErrorActionPreference = 'Stop'
$repo = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$output = Join-Path $repo 'artifacts/auth-unit-tests'
New-Item -ItemType Directory -Force $output | Out-Null
$framework = Join-Path $env:WINDIR 'Microsoft.NET/Framework64/v4.0.30319'
$json = Join-Path $repo 'Astro-W/Astro/Bin/Newtonsoft.Json.dll'
$sources = @('ApplicationAuthentication.cs', 'DemoAccountStore.cs', 'GoogleAuthentication.cs') |
    ForEach-Object { Join-Path $repo ('Astro-W/Astro/App_Code/' + $_) }
$executable = Join-Path $output 'AuthenticationUnitTests.exe'
& (Join-Path $framework 'csc.exe') /nologo /target:exe "/out:$executable" /r:System.Web.dll /r:System.Configuration.dll /r:System.Net.Http.dll "/r:$json" $sources (Join-Path $PSScriptRoot 'AuthenticationUnitTests.cs')
if ($LASTEXITCODE -ne 0) { throw 'Unit-test compilation failed.' }
Copy-Item -LiteralPath $json -Destination $output -Force
& $executable
if ($LASTEXITCODE -ne 0) { throw 'Authentication unit tests failed.' }

$ErrorActionPreference = 'Stop'
$repo = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$output = Join-Path $repo 'artifacts/free-kundli/unit'
New-Item -ItemType Directory -Force $output | Out-Null
$framework = Join-Path $env:WINDIR 'Microsoft.NET/Framework64/v4.0.30319'
$json = Join-Path $repo 'Astro-W/Astro/Bin/Newtonsoft.Json.dll'
$exe = Join-Path $output 'FreeKundliUnitTests.exe'
& (Join-Path $framework 'csc.exe') /nologo /target:exe "/out:$exe" /r:System.Web.dll /r:System.Configuration.dll "/r:$json" (Join-Path $repo 'Astro-W/Astro/App_Code/BATClass.cs') (Join-Path $repo 'Astro-W/Astro/App_Code/KundliMatchingService.cs') (Join-Path $repo 'Astro-W/Astro/App_Code/FreeKundliService.cs') (Join-Path $PSScriptRoot 'FreeKundliUnitTests.cs')
if ($LASTEXITCODE -ne 0) { throw 'Horoscope unit-test compilation failed.' }
Copy-Item -LiteralPath $json -Destination $output -Force
& $exe
if ($LASTEXITCODE -ne 0) { throw 'Horoscope unit tests failed.' }


# Create site.zip containing the current project files (site root)
# Usage: run this script from Windows PowerShell, or use create-zip.bat wrapper

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$zipPath = Join-Path $scriptDir 'site.zip'
if (Test-Path $zipPath) { Remove-Item $zipPath -Force }
# Compress all non-hidden files in the project folder into site.zip
Compress-Archive -Path (Join-Path $scriptDir '*') -DestinationPath $zipPath -Force
Write-Host "Created $zipPath"
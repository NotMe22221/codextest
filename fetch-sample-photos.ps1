# Fetch six sample photos into the local images/ folder.
# Usage: Right-click -> Run with PowerShell, or run from an elevated PowerShell prompt.
# Requires internet access. Files saved as images\photo1.jpg ... photo6.jpg

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$imagesDir = Join-Path $scriptDir 'images'
if (-not (Test-Path $imagesDir)) { New-Item -ItemType Directory -Path $imagesDir | Out-Null }

$urls = @( 
  'https://picsum.photos/1600/1000?random=101',
  'https://picsum.photos/1600/1000?random=102',
  'https://picsum.photos/1600/1000?random=103',
  'https://picsum.photos/1600/1000?random=104',
  'https://picsum.photos/1600/1000?random=105',
  'https://picsum.photos/1600/1000?random=106'
)

$i = 1
foreach ($u in $urls) {
  $dest = Join-Path $imagesDir ("photo{0}.jpg" -f $i)
  Write-Host "Downloading $u -> $dest"
  try {
    Invoke-WebRequest -Uri $u -OutFile $dest -ErrorAction Stop
  } catch {
    Write-Warning "Failed to download $u : $_"
  }
  $i++
}

Write-Host "Done. Open index.html in your browser to preview the site."
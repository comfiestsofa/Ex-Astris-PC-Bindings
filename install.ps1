[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Convert current directory to Windows forward slash path
$repoDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoDir = $repoDir -replace '\\','/'

$gamepadTemplatePath = Join-Path $repoDir "data/MuMuPlayer/gamepadConfig.template.json"
$keymapTemplatePath  = Join-Path $repoDir "data/MuMuPlayer/keymapConfig.template.json"

$gamepadTemplate = Get-Content $gamepadTemplatePath -Raw -Encoding UTF8
$keymapTemplate  = Get-Content $keymapTemplatePath -Raw -Encoding UTF8

$gamepadConfig = $gamepadTemplate.Replace('${repo_dir}', $repoDir)
$keymapConfig  = $keymapTemplate.Replace('${repo_dir}', $repoDir)

$gamepadPath = Join-Path $env:APPDATA "Netease\MuMuPlayerGlobal\data\gamepadConfig\com.gryphline.exastris.gp.json"
$keymapPath  = Join-Path $env:APPDATA "Netease\MuMuPlayerGlobal\data\keymapConfig\com.gryphline.exastris.gp.json"

New-Item -ItemType Directory -Force -Path (Split-Path $gamepadPath) | Out-Null
New-Item -ItemType Directory -Force -Path (Split-Path $keymapPath) | Out-Null

$utf8NoBom = New-Object System.Text.UTF8Encoding($false)
[System.IO.File]::WriteAllText($gamepadPath, $gamepadConfig, $utf8NoBom)
[System.IO.File]::WriteAllText($keymapPath, $keymapConfig, $utf8NoBom)

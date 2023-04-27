If([String](Get-Item -Path "$Env:ProgramFiles\Mozilla Thunderbird\thunderbird.exe","${Env:ProgramFiles(x86)}\Mozilla Thunderbird\thunderbird.exe" -ErrorAction SilentlyContinue).VersionInfo.FileVersion -ge "102.9.0"){
Write-Host "Installed"
exit 0
}
else {
exit 1
}

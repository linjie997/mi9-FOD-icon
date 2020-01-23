# I know I could use a regex but I'm lazy, will do later

$context = Get-Content .\module\module.prop
$versionText = Get-Content .\module\module.prop | Select-String "version="
$versionString = $versionText.ToString();
$length = $versionString.Length - 1;
$version = ($versionString.Split('v'))[2]
$Time = Get-Date -Format "MM-dd-yyyy_HHmmss"

Compress-Archive ./module/* ./dist/Mi9FODIconPotato997-v$($version)_$($Time).zip

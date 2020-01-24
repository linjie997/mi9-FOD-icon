# I know I could use a regex but I'm lazy, will do later

$context = Get-Content .\module\module.prop
$versionText = Get-Content .\module\module.prop | Select-String "version="
$versionString = $versionText.ToString();
$length = $versionString.Length - 1;
$version = ($versionString.Split('v'))[2]
$Time = Get-Date -Format "MM-dd-yyyy_HHmmss"

# This makes an archive that isn't recognized by Magisk/TWRP so I used 7zip cli
#Compress-Archive -Path ./module/* -DestinationPath ./dist/Mi9FODIconPotato997-v$($version)_$($Time).zip
7z a -tzip ./dist/Mi9FODIconPotato997-v$($version)_$($Time).zip ./module/*

param (
[string]$OutputDir,
[string]$ConfuserConfigurationFile
) 
 
function replacefilecontent([string] $path, [string] $replace, [string] $replaceWith)
{
(Get-Content $path) |
Foreach-Object {$_ -replace $replace,$replaceWith}|
Out-File $path
}
 
# Let's first copy the configuration file to a temporary directory
Write-Output "Obfuscating..."
# Write-Output $OutputDir
# Write-Output $ConfuserConfigurationFile
$tempFile = [string]::Concat($OutputDir, "confuser.temp.crproj")
Write-Output "Copying " $ConfuserConfigurationFile " to " $tempFile
Copy-Item $ConfuserConfigurationFile -Destination $tempFile
Write-Output "Replacing placeholders..."
replacefilecontent $tempFile "{OutputDir}" "$OutputDir"
Write-Output "Performing Obfuscation..."
start-process -wait "$env:USERPROFILE\OneDrive - NodesAutomations\Softwares\Portables\ConfuserEx_bin\Confuser.CLI.exe" "$tempFile"
Write-Output "Obfuscation complete."
Write-Output "Removing " $tempFile
Remove-Item $tempFile
Write-Output "Adding Wix Custom Action dll to Target"
Copy-Item -Path "$PSScriptRoot\WixCustomAction.CA.dll" -Destination "$OutputDir"
Write-Output "Done!!!"
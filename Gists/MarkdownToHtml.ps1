# This Script Convert Markdown Files to HTML using

param ([string]$markdownFile,[string]$htmlFile)

Write-Output "markdown:$markdownFile"
Write-Output "html:$htmlFile"
# pandoc $markdownFile -o $htmlFile
 pandoc --self-contained -c $PSScriptRoot\pandocTypora.css -s $markdownFile -o $htmlFile
 Write-Output "markdown File Successfully Converted to HTML"
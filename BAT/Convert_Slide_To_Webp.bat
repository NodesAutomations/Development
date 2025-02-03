@echo off
setlocal

:: Path to the cwebp tool
set CWEBP_PATH="%USERPROFILE%\OneDrive - NodesAutomations\Softwares\Portables\webp Converter\bin\cwebp.exe"

:: Convert all .png files in the folder to .webp
for %%f in (*.png) do (
    %CWEBP_PATH% "%%f" -o "%%~nf.webp"
)

endlocal
@echo off
setlocal

:: Path to the cloc tool
set CLOC_PATH="%USERPROFILE%\OneDrive - NodesAutomations\Softwares\Portables\Cloc\cloc.exe"

:: Count only Git-tracked files, ignoring common build folders
git ls-files | %CLOC_PATH% --list-file=- --exclude-dir=bin,obj,.vs,.venv

pause
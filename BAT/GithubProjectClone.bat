@echo off
REM Loop to allow cloning multiple repositories
:CLONE_LOOP
echo.
set /p PROJECT_NAME=Enter the project name to clone (or just press Enter to exit): 

REM Exit if no project name is entered
if "%PROJECT_NAME%"=="" goto END

REM Set the download folder path
set "DOWNLOAD_FOLDER=%USERPROFILE%\Downloads"

REM Change to the download folder
cd /d "%DOWNLOAD_FOLDER%"

REM Clone the GitHub repository
git clone https://github.com/NodesAutomations/%PROJECT_NAME%

REM Remove the .git folder after cloning
rmdir /s /q "%DOWNLOAD_FOLDER%\%PROJECT_NAME%\.git"

echo Repository cloned to %DOWNLOAD_FOLDER%\%PROJECT_NAME% (without .git)
goto CLONE_LOOP

:END
echo All done. Press any key
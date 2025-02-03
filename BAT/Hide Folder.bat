@ECHO OFF

:: Unhide folder if it exists
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" (
    attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
    ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Secure
    goto End
)

:: Create Secure folder if it doesn't exist
if NOT EXIST Secure (
    md Secure
    goto End
)

:: Hide Secure folder
ren Secure "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked

:End
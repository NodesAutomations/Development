#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

;Addtional Script
#Include %A_ScriptDir%\HotStrings.ahk
#Include %A_ScriptDir%\Programming.ahk

;Suspend script:Win + scrollLock
#ScrollLock::Suspend ; Assign the toggle-suspend function to a hotkey.

;Change Volume: when Cursor is on taskbar[WheelUp=VolUp,wheelDown=volDown]
#If MouseIsOver("ahk_class Shell_TrayWnd")
   WheelUp::Send {Volume_Up}
   WheelDown::Send {Volume_Down}
   MButton::Send {Volume_Mute}
#If
MouseIsOver(WinTitle)
{
   MouseGetPos,,, Win
   Return WinExist(WinTitle . " ahk_id " . Win)
}

;Key Remapping
~::Send {ASC 96}

;Download folder
#1::
Run, C:\Users\%A_UserName%\downloads
return

;Repos folder
#2:: 
Run, C:\Users\%A_UserName%\source\repos
return

;ClientData folder
#3:: 
Run, C:\Users\%A_UserName%\OneDrive - NodesAutomations\Client Data
return

;Media Library
#4::
Run, C:\Users\%A_UserName%\OneDrive - NodesAutomations\SYW\Media Library
return

; Open Windows Terminal in current folder or default location
#t::
WinGetClass, class, A
if (class = "CabinetWClass") ; File Explorer window
{
    ClipSaved := ClipboardAll
    Clipboard := ""
    Send, ^l        ; Focus address bar
    Sleep, 100
    Send, ^c        ; Copy current folder path
    Sleep, 100
    path := Clipboard
    Clipboard := ClipSaved

    if (path != "")
        Run, wt.exe -d "%path%"
    else
        Run, wt.exe
}
else
{
    Run, wt.exe
}
return
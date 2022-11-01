
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Addtional Script
#Include %A_ScriptDir%\HotStrings.ahk
#Include %A_ScriptDir%\Programming.ahk

 ;Suspend script:Win + scrollLock
#ScrollLock::Suspend  ; Assign the toggle-suspend function to a hotkey.

;Key Remapping
~::Send {ASC 96}

;Direct Search
#f::
{
 Send, ^c
 ClipBoard :=clipboard
 Sleep 50
 If (InStr(Clipboard, "https://"))
 Run, %clipboard%`
 Else
 Run, https://www.google.com/search?q=%clipboard%
 Return
}

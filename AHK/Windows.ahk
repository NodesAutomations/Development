
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

; ;Change Volume: when Cursor is on taskbar[WheelUp=VolUp,wheelDown=volDown]
; #If MouseIsOver("ahk_class Shell_TrayWnd")
;    WheelUp::Send {Volume_Up}
;    WheelDown::Send {Volume_Down}
;    MButton::Send {Volume_Mute}
; #If
; MouseIsOver(WinTitle)
; {
;    MouseGetPos,,, Win
;    Return WinExist(WinTitle . " ahk_id " . Win)
; }

; ;Horizontal scrolling in Excel only
; #IfWinActive ahk_class XLMAIN

;     +WheelUp:: 
;         SetScrollLockState, On 
;         SendInput {Left 5}	
;         SetScrollLockState, Off 
;     Return 

;     +WheelDown:: 
;         SetScrollLockState, On 
;         SendInput {Right 5} 
;         SetScrollLockState, Off 
;     Return 

; ; Horizontal scrolling in everything except Excel. 
; #IfWinNotActive ahk_class XLMAIN 
; 	#IfWinNotActive ahk_exe  CamtasiaStudio.exe 
;     +WheelDown::Send, {WheelRight 5}
;     +WheelUp:: Send, {WheelLeft 5}

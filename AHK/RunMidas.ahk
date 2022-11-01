#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
{
Run  "C:\Users\%A_UserName%\OneDrive - NodesAutomations\Scripts\Links\RunMidas.lnk"
sleep 5000
Send, {ALTDOWN}{F4}{ALTUP}
ExitApp 
}
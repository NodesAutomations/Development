#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
CoordMode, Mouse, Screen
D := 20 ; Distance (pixels) to move
J := 100 ; 'Jumps' (pixels) to move

;Addtional Script
#Include %A_ScriptDir%\HotStrings.ahk

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

;Key Remapping for Backtick,due to Ditto Clipboard Manager
~::Send {ASC 96}

;Cursor Movement one character [ALT + i,j,k,l]
!i:: Send { UP }
!j:: Send { LEFT }
!k:: Send { DOWN }
!l:: Send { RIGHT }

;Cursor Movement one word [ALT + SHIFT + i,j,k,l]
!+j::Send ^{LEFT}
!+l::Send ^{RIGHT}

;Mouse Movement Normal [CTRL + i,j,k,l]
^i:: MouseMove, 0, -D, , R
^j:: MouseMove, -D, 0, , R
^k:: MouseMove, 0, D, , R
^l:: MouseMove, D, 0, , R

;Mouse Movement Fast [CTRL + SHIFT + i,j,k,l]
^+i:: MouseMove, 0, -J, , R
^+j:: MouseMove, -J, 0, , R
^+k:: MouseMove, 0, J, , R
^+l:: MouseMove, J, 0, , R

;Mouse Clicks [CTRL + U,O]
^u:: Click left
^o:: Click right

; Open Windows Terminal in current folder or default location
#t::
WinGetClass, class, A
if (class = "CabinetWClass") ; File Explorer window
{
    ClipSaved := ClipboardAll
    Clipboard := ""
    Send, !d        ; Focus address bar
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

;Office Tools
#5::
Run, C:\Users\%A_UserName%\source\repos\0_Office Tools
return

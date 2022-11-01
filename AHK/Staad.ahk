#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Suspend script:Win + scrollLock
~#ScrollLock::Suspend, Toggle

;Staad
#IfWinActive, STAAD.Pro V8i (SELECTseries 6), 
	;Close Current Model
	q::
	{
	Send,{ALT}fc
	return
	}
	;Set Top View
	t::
	{
	Send,{F4}
	Sleep,100
	Send,{TAB}90{TAB}0
	Send,{ALTDOWN}a{ALTUP}
	Send,{ALTDOWN}c{ALTUP}
	return
	}
	;Set Front View
	f::
	{
	Send,{F4}
	Sleep,100
	Send,{TAB}0{TAB}0
	Send,{ALTDOWN}a{ALTUP}
	Send,{ALTDOWN}c{ALTUP}
	return
	}
	;Set 3d View
	d::
	{
	Send,{F4}
	Sleep,100
	Send,{TAB}30{TAB}30
	Send,{ALTDOWN}a{ALTUP}
	Send,{ALTDOWN}c{ALTUP}
	return
	}
	r::
	{
	Send,{ALTDOWN}v{ALTUP}
	Send,3
	}

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#SingleInstance force

;Company
:o:nds::Nodes Automations

;Bookmarks
:o:linkurl::https://linktr.ee/NodesAutomations
:o:youtubeurl::https://www.youtube.com/NodesAutomations
:o:nodesurl::https://www.nodesautomations.com

;Emails
:o:neml::vivek@nodesautomations.com
:o:oeml::vivek_patel@outlook.com
:o:heml::vkp.unique@hotmail.com
:o:geml::vkp.unique@gmail.com

;UPI
:o:gupi::vkp.unique@okaxis
:o:nupi::nodes@axisbank

;Symbols
:o:$ru::{U+20B9}
:o:$deg::{U+00B0}
:o:$2sup::{U+00B2}
:o:$3sup::{U+00B3}

;Date
:o:ddmmyy::
FormatTime, CurrentDateTime,, dd-MM-yy
SendInput %CurrentDateTime%
return

;Date
:o:yyyymmdd::
FormatTime, CurrentDateTime,, yyyy-MM-dd
SendInput %CurrentDateTime%
return

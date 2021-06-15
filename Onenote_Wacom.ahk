#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; some helpful setup first
SetTitleMatchMode, RegEx ; match window titles by regular expressions
#InstallKeybdHook

SetKeyDelay [,40,-1,-1]

Posicion := 3

#IfWinActive - OneNote Preview$

#^!1::
{
Posicion := Posicion + 1
if(Posicion > 9)
{
	Posicion := 3
} 
Send !{%Posicion%}
}
return

#^!2::
{
Posicion := Posicion - 1
if(Posicion < 3)
{
	Posicion := 9
} 
Send !{%Posicion%}
}
return
#IfWinActive



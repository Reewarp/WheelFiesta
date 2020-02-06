#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Suspend
SplashTextOn,100,30, ,Script OFF   ;Print message box
sleep 700
SplashTextOff


*WheelDown::                              ;Scroll down with your mousewheel 



if GetKeyState("WheelDown","P") = 1	  ; if Scroll down than do
{
Loop,1					  ;a loop
	{
	Click,down,left                   ;that left click down
	sleep 24                          ;with a little delay 
	Click,up,left		          ;that left click up
	sleep 24                         ;with a little delay
	return    
	}
}
;*WheelUp::                              ;Scroll up with your mousewheel 



;if GetKeyState("WheelUp","P") = 1	  ; if Scroll up than do
;{
;Loop,1					  ;a loop
;	{
;	Click,down,left                   ;that left click down
;	sleep 24                          ;with a little delay 
;	Click,up,left		          ;that left click up
;	sleep 24                         ;with a little delay
;	return    
;	}
;}
                                 

*RShift::
	Suspend                           ;press Right Shift to suspend the scrip and access again to the MouseWheel normal
	if (A_IsSuspended)		  ; If Suspend	
	{				 
		SplashTextOn,100,30, ,Script OFF   ;Print message box
		sleep 700
		SplashTextOff
	} 
	else				; If Resume	
	{
		SplashTextOn,100,30, ,Script ON    ;Print message box
		sleep 700
		SplashTextOff
	}
	return

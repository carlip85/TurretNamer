#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Screen
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
DetectHiddenWindows Off
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1

SysGet, Mon1, Monitor, 1
ResMultiX = % Mon1Right/1920
ResMultiY = % Mon1Bottom/1080

color = gray

PinX := % 1230 * ResMultiX
PinY := % 450 * ResMultiY
NameX := % 1215 * ResMultiX
NameY := % 750 * ResMultiY
PNameX := % 1250 * ResMultiX
PNameY := % 600 * ResMultiY
NameBarX := % 960 * ResMultiX
NameBarY := % 440 * ResMultiY
NameAccX := % 960 * ResMultiX
NameAccY := % 670 * ResMultiY
TargetX := % 675 * ResMultiX
TargetY := % 450 * ResMultiY
PTargetX := % 830 * ResMultiX
PTargetY := % 830 * ResMultiY
TargetX1 := % 730 * ResMultiX
TargetY1 := % 360 * ResMultiY
TargetX2 := % 670 * ResMultiX
TargetY2 := % 610 * ResMultiY
TargetX3 := % 840 * ResMultiX
TargetY3 := % 820 * ResMultiY
TargetX4 := % 1100 * ResMultiX
TargetY4 := % 820 * ResMultiY
TargetX5 := % 1260 * ResMultiX
TargetY5 := % 640 * ResMultiY
TargetX6 := % 1200 * ResMultiX
TargetY6 := % 350 * ResMultiY
RangeX := % 730 * ResMultiX
RangeY := % 740 * ResMultiY
pRangeX := % 730 * ResMultiX
pRangeY := % 350 * ResMultiY
RangeHX := % 1260 * ResMultiX
RangeHY := % 540 * ResMultiY
RangeMX := % 960 * ResMultiX
RangeMY := % 850 * ResMultiY
RangeLX := % 650 * ResMultiX
RangeLY := % 540 * ResMultiY
InvBarX := % 210 * ResMultiX
InvBarY := % 190 * ResMultiY
Slot1X := % 165 * ResMultiX
Slot1Y := % 275 * ResMultiY
AllX := % 350 * ResmultiX
AllY := % 182 * ResmultiY


Goto Main

F8::
ExitApp

F10::
if modeT = 1
	{
		goto Turret
	}
if modeP = 1
	{
		goto Plant
	}

Turret:
;Set Turret Pincode ---
send {e down}
sleep, 1000
MouseMove, %PinX%, %PinY%
sleep, 100
send {e up}
sleep, 800
send %PinDig1%
sleep, 500
send %pinDig2%
sleep, 500
send %pindig3%
sleep, 500
send %pindig4%
sleep, 500
;------

;Sets Turret Name ---
sleep, 1000
send {e down}
sleep, 500
MouseMove, %NameX%, %NameY%
sleep, 500
send {e up}
sleep, 1000
MouseMove, %NameBarX%, %NameBarY%
Sleep, 1000
send {click}
sleep, 500
Send, {LControl Down}
Sleep, 500
Send, {v}
Sleep, 500
Send, {LControl Up}
Sleep, 500
MouseMove, %NameAccX%, %NameAccY%
sleep, 500
send {click}
;------


;Sets Turret Target ---
if targ= 0
	{
		return
	}
if targ = 1
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %pTargetX%, %pTargetY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %TargetX1%, %TargetY1%
		sleep, 500
		send {e up}
	}	

if targ = 2
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %TargetX%, %TargetY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %TargetX2%, %TargetY2%
		sleep, 500
		send {e up}
	}	

if targ = 3
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %TargetX%, %TargetY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %TargetX3%, %TargetY3%
		sleep, 500
		send {e up}
	}	

if targ = 4
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %TargetX%, %TargetY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %TargetX4%, %TargetY4%
		sleep, 500
		send {e up}
	}	

if targ = 5
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %TargetX%, %TargetY%
		sleep, 500	
		send {click}
		sleep, 500
		mousemove, %TargetX5%, %TargetY5%
		sleep, 500
		send {e up}
	}	

if targ = 6
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %TargetX%, %TargetY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %TargetX6%, %TargetY6%
		sleep, 500
		send {e up}
	}	
;------

;Sets Turret Range ---
if rang = 0
	{
		return
	}
if rang = 1
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %RangeX%, %RangeY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %RangeHX%, %RangeHY%
		sleep, 500
		send {e up}
	}	
if rang = 2
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %RangeX%, %RangeY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %RangeMX%, %RangeMY%
		sleep, 500
		send {e up}
	}	
if rang = 3
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %RangeX%, %RangeY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %RangeLX%, %RangeLY%
		sleep, 500
		send {e up}
}	
;------

;Loads Ammo
sleep, 500
send {f}
sleep, 800
MouseMove, %InvBarX%, %InvBarY%
sleep, 800
send {click}
sleep, 500
send ADV
sleep, 500
MouseMove, %Slot1X%, %Slot1Y%
sleep, 500
send {click}
sleep, 200
if %bvalue% > 23
	{
		sleep, 200
		MouseMove, %AllX%, %AllY%
		sleep, 200
		send {click}
		send {esc}
		return
	}
else
	{
	loop, %Bvalue%
		{
			send {t}
			sleep, 500
		}
	send {esc}
	}
;------
Return

Plant:
;Name Plant X ---
sleep, 1000
send {e down}
sleep, 500
MouseMove, %PNameX%, %PNameY%
sleep, 500
send {e up}
sleep, 1000
MouseMove, %NameBarX%, %NameBarY%
Sleep, 1000
send {click}
sleep, 500
Send, {LControl Down}
Sleep, 500
Send, {v}
Sleep, 500
Send, {LControl Up}
Sleep, 500
MouseMove, %NameAccX%, %NameAccY%
sleep, 500
send {click}
;------

;Sets Plant X Target ---
if targ= 0
	{
		return
	}
if targ = 1
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %pTargetX%, %pTargetY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %TargetX1%, %TargetY1%
		sleep, 500
		send {e up}
	}	

if targ = 2
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %pTargetX%, %pTargetY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %TargetX2%, %TargetY2%
		sleep, 500
		send {e up}
	}	

if targ = 3
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %pTargetX%, %pTargetY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %TargetX3%, %TargetY3%
		sleep, 500
		send {e up}
	}	

if targ = 4
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %pTargetX%, %pTargetY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %TargetX4%, %TargetY4%
		sleep, 500
		send {e up}
	}	

if targ = 5
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %pTargetX%, %pTargetY%
		sleep, 500	
		send {click}
		sleep, 500
		mousemove, %TargetX5%, %TargetY5%
		sleep, 500
		send {e up}
	}	

if targ = 6
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %pTargetX%, %pTargetY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %TargetX6%, %TargetY6%
		sleep, 500
		send {e up}
	}
;-----

;Sets Plant X Range ---
if rang = 0
	{
		return
	}
if rang = 1
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %pRangeX%, %pRangeY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %RangeHX%, %RangeHY%
		sleep, 500
		send {e up}
	}	
if rang = 2
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %pRangeX%, %pRangeY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %RangeMX%, %RangeMY%
		sleep, 500
		send {e up}
	}	
if rang = 3
	{
		sleep, 1000
		send {e down}
		sleep, 500
		MouseMove, %pRangeX%, %pRangeY%
		sleep, 500
		send {click}
		sleep, 500
		mousemove, %RangeLX%, %RangeLY%
		sleep, 500
		send {e up}
}
;-----

F11::
PIN := ""
Goto Main
Return

Main:
SysGet, Mon1, Monitor, 1
suspend, on

Avalue:=24
Bvalue:=0

GUI, show, w280 h155, Turret Namer 1.2

modeT := 1
modeP := 0

Gui, Add, Text, x5 y8, Enter Name:
Gui, Add, Edit, w185 limit34 x75 y5 vTitle gTitleLab

Gui, Add, DropDownList, w190 x75 y36= vTarg gTarg AltSubmit, All Targets|Only Survivors or Tamed Creatures|Only Survivors|Only Wild Creatures|Only Suriviors & Mounted Creatures|Only Tamed Creatures
Gui, Add, Text, x5 y38, Select Target:

Gui, Add, DropDownList, x75 y60= vRang gRang AltSubmit, High|Medium|Low
Gui, Add, Text, x5 y63, Select Range:

Gui, Add, Text, x5 y88 vPINT, Enter PIN:
Gui, Add, Edit, w100 Number limit4 x75 y85 vPIN gPIN

Gui, Add, Button, gSet default h30 w40 x235 y105, Set

Gui, Add, Slider, x115 y108 h25 w120 vBvalue gChange2 TickInterval2 Range0-%Avalue%, 0
Gui, Add, Text, x95 y110 w25 vB02 , %Bvalue%
Gui, Add, Text, x5 y110 w80 vA02, Stacks of Ammo`:

Gui, Add, Radio, x208 y68 vModeT gModeT Checked, Turret
Gui, Add, Radio, x208 y88 vModeP gModeP, Plant X

Gui, Add, Text, x5 y140, F11 To Open Menu | F10 to Initiate Script | F8 to Exit

Return

ModeT:
Gui, Submit, nohide
modeT := 1
modeP := 0
guicontrol, enabled, PIN
guicontrol, enabled, BValue
return

ModeP:
Gui, Submit, nohide
modeT := 0
modeP := 1
guicontrol,, PIN = ""
guicontrol, +disabled, PIN
guicontrol, +disabled, Bvalue
return

Tur:
Gui, Submit, NoHide

Targ:
Gui, Submit, nohide
return

PIN:
Gui, Submit, nohide
return

Rang:
Gui, Submit, nohide
return

titlelab:
Gui, submit, nohide
return

Change1:
Gui, Submit, NoHide
GuiControl, +Range0-%Avalue%, Bvalue
GuiControl,, A01, %Avalue%
return

Change2:
Gui, Submit, NoHide
GuiControl,, B02, %Bvalue%
return

Set:

suspend, off

Gui, Destroy

clipboard = %title%

if modeP = 1
	{
		return
	}
else
	PIN = %pin%
	if StrLen(PIN) < 4
		{
			msgbox, Pin is not Valid.
			Gui, Destroy
			GOTO Main
		}
	else
		{
			PinDig1 := SubStr(pin,1,1)
			PinDig2 := SubStr(pin,2,1)
			PinDig3 := SubStr(pin,3,1)
			PinDig4 := SubStr(pin,4,1)
		}
		
WinActivate, ARK: Survival Evolved ahk_class UnrealWindow
Return

GuiClose:
suspend, off
Gui, destroy



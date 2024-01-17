#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#SingleINstance,Off
DetectHIddenWindows,On


Gui,add,Button,x10 y10 w110 h25 gSelect_Window,Select Window
Gui,Font,s8
Gui,add,Edit,x+10 w90 gUPdate vWindow,

Gui,Add,Button,x10 y+10 gTarget1 ,Position 1
Gui,ADd,Edit,x+10 w130 vTArget1 gUpdate,

Gui,Add,Button,x10 y+10 gTarget2 ,Position 2
Gui,ADd,Edit,x+10 w130 vTArget2 gUpdate,

Gui,Add,Button,x10 y+10 gTarget3 ,Position 3
Gui,ADd,Edit,x+10 w130 vTArget3 gUpdate,

Gui,add,TExt,x10 y+10 ,Block Hit
Gui,add,Edit,x+10 w60 gUpdate,
Gui,add,updown,gUpdate vHitung,4

Gui,add,Radio,x10 y+10 vPlace gUpdate Checked, Place
Gui,add,Radio,x+10 vbreak gUpdate,break

Gui,add,Button,x10 y+10 w100 h30 gStart vStart,Start
Gui,add,Button,x+10 w100 h30 gStop vStop,Stop
Gui,Add,Button,x+10 w120 h50 gReload,Reload

Gui,add,Button,x10 y+10 w100 h30 ghide vhide,Hide
Gui,add,Button,x+10 w100 h30 gShow vShow,Show




gui,Show,x0 y0,ngetes
return

Hide:
GuiControl,Disable,HIde
GuiControl,Enable,Show
WinHide,AHk_Pid %Window%
return

Show:
GuiControl,Disable,Show
GuiControl,Enable,Hide
WinShow,AHk_Pid %Window%
return

Start:
Mulai := 1
GuiControl,Disable,Start
GuiControl,Enable,Stop
ControlSend, Edit1, {Alt down}f{Alt up}, Untitled
While (Mulai == 1)
{

if (Place == 1)
{
ControlClick,x255  y70 ,Ahk_Pid %Window%,,,, NA x255 y70
sleep,150
ControlClick,x340 y70 ,Ahk_Pid %Window%,,,, NA x340 y70
sleep,150
ControlClick,x430 y70 ,Ahk_Pid %Window%,,,, NA x430 y70
sleep,150
ControlClick,x605  y70 ,Ahk_Pid %Window%,,,, NA x605 y70
sleep,150
ControlClick,x690 y70 ,Ahk_Pid %Window%,,,, NA x690 y70
sleep,150
ControlClick,x785 y70 ,Ahk_Pid %Window%,,,, NA x785 y70
sleep,150

ControlClick,x255  y160 ,Ahk_Pid %Window%,,,, NA x255 y160
sleep,150
ControlClick,x340 y160 ,Ahk_Pid %Window%,,,, NA x340 y160
sleep,150
ControlClick,x430 y160 ,Ahk_Pid %Window%,,,, NA x430 y160
sleep,150
ControlClick,x605  y160 ,Ahk_Pid %Window%,,,, NA x605 y160
sleep,150
ControlClick,x690 y160 ,Ahk_Pid %Window%,,,, NA x690 y160
sleep,150
ControlClick,x785 y160 ,Ahk_Pid %Window%,,,, NA x785 y160
sleep,150

ControlClick,x255  y250 ,Ahk_Pid %Window%,,,, NA x255 y250
sleep,150
ControlClick,x340 y250 ,Ahk_Pid %Window%,,,, NA x340 y250
sleep,150
ControlClick,x430 y250 ,Ahk_Pid %Window%,,,, NA x430 y250
sleep,150
ControlClick,x605  y250 ,Ahk_Pid %Window%,,,, NA x605 y250
sleep,150
ControlClick,x690 y250 ,Ahk_Pid %Window%,,,, NA x690 y250
sleep,150
ControlClick,x785 y250 ,Ahk_Pid %Window%,,,, NA x785 y250
sleep,150
if (mulai == 1){
			Controlsend,,{w down}, ahk_pid %Window%
			if (mulai == 1){
				sleep,400
			}
		}
		if (mulai == 1){
			Controlsend,,{w up}, ahk_pid %Window%
			if (mulai == 1){
				sleep,200
			}
		}
        sleep,400
}

if (Break == 1)
{
	if (mulai == 1){
       ControlClick,x%x1% y%y1% ,Ahk_Pid %Window%,,,, NA x%x1% y%y1%
sleep,25
		}
        
        
}
}
return

Stop:
Mulai := 0
GuiControl,Disable,Stop
GuiControl,Enable,Start
return

Target1:
Set_POsition(x1,y1)
GuiControl,,Target1,%x1% %y1%
return

Target2:
Set_POsition(x2,y2)
GuiControl,,Target2,%x2% %y2%
return

Target3:
Set_POsition(x3,y3)
GuiControl,,Target3,%x3% %y3%
return


Set_Position(ByRef X, ByRef Y)
{
    while true {
        MouseGetPos, x, y
        tooltip, Klik untuk set posisi X:%x% Y:%y%
        Sleep 50  ; Small delay to reduce CPU usage
        if (GetKeyState("LButton", "P")) {
            X := x
            Y := y
            tooltip
            break
        }
    }
    Return Target_Window
}


Select_Window:
Target_Window:=Set(Window)
Guicontrol,,Window,% Target_Window
Gui,Submit,Nohide
return

Set(Window)
{
	i := 0
	k := 0
	loop {
		klik := GetKeyState("Lbutton")
		tooltip,Klik 2 kali pada windows
		if (Klik == False && k == 0)
		k := 1
		else if (klik == True && k == 1)
		{
		i++ ,K:=0
		if (i>=2)
		{
		Winget,Target_Window,PID,A
		tooltip,
		break
}
}
}
Return TArget_Window
}

UPdate:
Gui,Submit,NOhide
return

REload:
reload
return

GuiClose:
ExitAPp
return
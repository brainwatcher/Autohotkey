mywindow:="DeadByDaylight"
#IfWinActive DeadByDaylight
;#IfWinActive test.txt - 记事本
	WinW := WinH := 10
    WinX := A_ScreenWidth - WinW -10
	Gui,+AlwaysOnTop
	Gui, -Caption
	Gui +LastFound 
	WinSet, Transparent, 200
    Gui, Color, red
    Gui, Show, Hide x%WinX% y0 w%WinW% h%WinH%
    mark := false
	return
	
#maxThreadsPerHotkey, 2 ; normal repair
seton1:=0
v::
	seton1:=!seton1
	if (seton1=1)
	{
		Send,{f down}
		Gui, Show
		WinActivate, %mywindow%
	}
	else
	{   
		Send,{f up}
		Gui, Hide

	}
return

#maxThreadsPerHotkey, 2 ; item repair
seton2:=0
b::
	seton2:=!seton2
	if (seton2=1)
	{
		Send,{RButton down}
		Gui, Show
		WinActivate, %mywindow%
	}
	else
	{   
		Send,{RButton up}
		Gui, Hide
	}
return

#maxThreadsPerHotkey, 2 ; struggle on hook
seton3:=0
g::
	seton3:=!seton3
	if (seton3=1)
	{	
		Gui, Show
		WinActivate, %mywindow%
		while (seton3=1)
		{   
		
			Send, {Space down}  ; Press down the up-arrow key.
			Sleep, 80 
			Send, {Space up}
			Sleep, 80   ; Keep it down for one second.
		}
	}
	else 
	{ 
		Gui, Hide
	}
	
return

#maxThreadsPerHotkey, 2 ; struggle on killer
seton4:=0
t::
	seton4:=!seton4
	if (seton4=1)
	{	
		Gui, Show
		WinActivate, %mywindow%
		while (seton4=1)
		{
			Send, {a down} ; Press down the a key.
			Sleep, 80 
			Send, {a up}
			Sleep, 80
			Send, {d down}  ; Press down the a key.
			Sleep, 80   ; Keep it down for a moment
			Send, {d up}  ; Press down the a key.
			Sleep, 80
		}
	}
	else
	{ 
		Gui, Hide
	}
return
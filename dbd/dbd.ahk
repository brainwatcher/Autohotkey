#IfWinActive DeadByDaylight
;#IfWinActive test.txt - 记事本
	WinW := WinH := 10
    WinX1 := A_ScreenWidth - WinW -10
	Gui,+AlwaysOnTop +E0x08000000
	Gui, -Caption
	Gui, +LastFound 
	WinSet, Transparent, 200
    Gui, Show, Hide x%WinX1% y0 w%WinW% h%WinH%
    mark := false
	tmax := 139
	tmin := 55
	return
	
#maxThreadsPerHotkey, 2 ; normal repair
seton1:=0
v::
	seton1:=!seton1
	if (seton1=1)
	{   
	    Gui, Color, red
		Gui, Show,NoActivate
		Send,{f down}

	}
	else
	{   
		Gui, Hide	
		Send,{f up}
	}
return

#maxThreadsPerHotkey, 2 ; item repair
seton2:=0
b::
	seton2:=!seton2
	if (seton2=1)
	{
		Gui, Color, red
		Gui, Show, NoActivate
		Send,{RButton down}
	}
	else
	{   
		Gui, Hide
		Send,{RButton up}
	}
return

#maxThreadsPerHotkey, 2 ; struggle on hook
seton3:=0
g::
	seton3:=!seton3
	if (seton3=1)
	{	
		Gui, Color, Green
		Gui, Show,NoActivate
		while (seton3=1)
		{   
			Send, {Space down}  ; Press down the up-arrow key.
			Random Num, %tmin%,%tmax%
			Sleep, Num 
			Send, {Space up}
			Random Num, %tmin%,%tmax%
			Sleep, Num   ; Keep it down for one second.
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
		Gui, Color, Green
		Gui, Show,NoActivate
		while (seton4=1)
		{
			Send, {a down} ; Press down the a key.
			Random Num, %tmin%,%tmax%
			Sleep, Num 
			Send, {a up}
			Random Num, %tmin%,%tmax%
			Sleep, Num
			Send, {d down}  ; Press down the a key.
			Random Num, %tmin%,%tmax%
			Sleep, Num   ; Keep it down for a moment
			Send, {d up}  ; Press down the a key.
			Random Num, %tmin%,%tmax%
			Sleep, Num
		}
	}
	else
	{ 
		Gui, Hide
	}
return
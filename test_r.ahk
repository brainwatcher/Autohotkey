#IfWinActive test.txt - 记事本
#maxThreadsPerHotkey, 2
seton:=0
v::
	seton:=!seton
	if (seton=1)
	{
		Send,{f down}
	}
	else
	{   
		Send,{f up}
	}
return

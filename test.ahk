#IfWinActive test.txt - 记事本
#maxThreadsPerHotkey, 2
seton:=0
v::
	seton:=!seton
	while (seton=1)
	{
		Send,{f down}
		sleep, .5
		;Send,{f down}
	}
return

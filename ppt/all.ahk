SetTitleMatchMode, 2
#IfWinActive PowerPoint
!1::
	ppt:=ComObjActive("PowerPoint.Application")	
	SR:=ppt.ActiveWindow.Selection.ShapeRange.Align(4,0)
	return
!2::
	ppt:=ComObjActive("PowerPoint.Application")	
	SR:=ppt.ActiveWindow.Selection.ShapeRange.Align(3,0)
	return
!3::
	ppt:=ComObjActive("PowerPoint.Application")	
	SR:=ppt.ActiveWindow.Selection.ShapeRange.Align(5,0)
	return
!+1::
	ppt:=ComObjActive("PowerPoint.Application")	
	SR:=ppt.ActiveWindow.Selection.ShapeRange.Align(1,0)
	return
!+2::
	ppt:=ComObjActive("PowerPoint.Application")	
	SR:=ppt.ActiveWindow.Selection.ShapeRange.Align(0,0)
	return
!+3::
	ppt:=ComObjActive("PowerPoint.Application")	
	SR:=ppt.ActiveWindow.Selection.ShapeRange.Align(2,0)
	return
#IfWinActive Windows PowerShell ISE
F9::Send, {F8}
F12::Send, {F9}



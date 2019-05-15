SetTitleMatchMode, 2
SetTitleMatchMode, slow
#IfWinActive PowerPoint
v:: ;end, tDCS

	ppt:=ComObjActive("PowerPoint.Application")

	SR:=ppt.ActiveWindow.Selection.ShapeRange

	MsgBox % "x: " SR.Left "`ny: " SR.Top	

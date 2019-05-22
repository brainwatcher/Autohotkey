  cd E:\hotkey\DBD\Autohotkey\youdao
 $text= get-content -path .\test.txt
 $p=get-process | where-object {$_.mainwindowhandle -ne 0} | Select-Object -Property ProcessName -ExpandProperty ProcessName
 #Set-ForegroundWindow (Get-Process YoudaoDict).MainWindowHandle
 . .\Show-Process.ps1
 Show-Process -Process YoudaoDict
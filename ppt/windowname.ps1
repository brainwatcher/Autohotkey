$win = get-process | where-object {$_.mainwindowhandle -ne 0} | Select-Object MainWindowTitle -ExpandProperty MainWindowTitle
cd D:\zw\Autohotkey
$file = "windowname.txt"
if (Test-Path -Path $file) {remove-item -Path $file -Force}
Add-Content -Path $file -value $win
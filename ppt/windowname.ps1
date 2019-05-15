echo $PSScriptRoot
$win = get-process | where-object {$_.mainwindowhandle -ne 0} | Select-Object MainWindowTitle -ExpandProperty MainWindowTitle
cd $PSScriptRoot
$file = "windowname.txt"
if (Test-Path -Path $file) {remove-item -Path $file -Force}
Add-Content -Path $file -value $win
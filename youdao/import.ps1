#Start-Process -FilePath C:\Users\brainwatcher\AppData\Local\youdao\dict\Application\YoudaoDict.exe
$text= Get-Content -path E:\hotkey\DBD\Autohotkey\youdao\Newword.txt
#$win = get-process | where-object {$_.mainwindowhandle -ne 0}| Select-Object -Property ProcessName
$w = Get-Process -Name "YoudaoDict"
$sig = '[DllImport("user32.dll")] public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);'
$Win32ShowWindowAsync = Add-Type –memberDefinition $sig -name “Win32ShowWindowAsync” -namespace Win32Functions –passThru
$Win32ShowWindowAsync::ShowWindowAsync($w.MainWindowHandle,3) | Out-Null
foreach ($i in 0..($text.Count-1))
{
Set-Clipboard -Value $text[$i]
[void][reflection.assembly]::loadwithpartialname("system.windows.forms")
[system.windows.forms.sendkeys]::sendwait('^v')
if ($i -eq 0)
{Start-Sleep -Seconds 2}
else
{Start-Sleep -Seconds 1}
[system.windows.forms.sendkeys]::sendwait('{F10}')
Start-Sleep -Seconds 0.5
[system.windows.forms.sendkeys]::sendwait('^a')
[system.windows.forms.sendkeys]::sendwait('{BS}')
}
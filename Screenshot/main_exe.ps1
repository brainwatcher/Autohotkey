cd "D:\zw\gitfile\Autohotkey\Screenshot"
. .\Save-ScreenCapture.ps1
   #foreach ($i in 0)
   $file = .\Save-ScreenCapture.ps1 -Directory . 
   # exe
   Start-Process -Wait .\test.exe -ArgumentList $file -WindowStyle Hidden
   remove-item -path .\$file
   #start-sleep -seconds 2


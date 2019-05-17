cd "D:\zw\gitfile\Autohotkey\Screenshot"
. .\Save-ScreenCapture.ps1
   $file = .\Save-ScreenCapture.ps1 -Directory . 
   $file1= "'"+"$file"+"'"
   $x0="-nohup"
   $x1="-nosplash"
   $x2="-nodesktop"
   $x3="-r"
   $x4='"'+"test1($file1);exit"+'"'
   Start-Process -Wait matlab -ArgumentList $x1,$x2,$x3,$x4 
   remove-item -path $file


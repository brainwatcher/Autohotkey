. .\main.ps1
$job=Start-Job -ScriptBlock {main.ps1}
((Get-Job $job.Name).PSEndTime.TimeOfDay - (Get-Job $job.Name).PSBeginTime.TimeOfDay).TotalMinutes
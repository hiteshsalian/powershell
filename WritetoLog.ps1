$this = $MyInvocation.MyCommand.Path
Write-Host "Executing $this"
Write-Output "Executing $this" > Log.txt

Write-Host "Completed $this"
Write-Output "Completed $this" > Log.txt
Write-Output $HOST.Version
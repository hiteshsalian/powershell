Clear-Host
$this = $MyInvocation.MyCommand.Path
Write-Host "Executing $this"

$myArrayList = New-Object System.Collections.ArrayList

$myArrayList.Add("Sunday")
$myArrayList.Add(1)
$myArrayList.Add("egg")
$myArrayList.Add("true")

Write-Host $myArrayList

foreach($x in $myArrayList)
{
    Write-Host "==========================================="
    Write-Host $x
}

Write-Host "Completed $this"
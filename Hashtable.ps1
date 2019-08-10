$this = $MyInvocation.MyCommand.Path
Write-Host "Executing $this"

$myHashTable = New-Object System.Collections.Hashtable

$myHashTable.Add("1","One")
$myHashTable.Add("2", "Two")
$myHashTable.Add("3", "Three")
$myHashTable.Add("4","Four")
$myHashTable.Add("5","Five")

foreach($key in $myHashTable.Keys)
{
    Write-Host $key
}

foreach($val in $myHashTable.Values)
{
    Write-Host $val
}


$myHashTable.Values.ForEach({Write-Host $_})

Write-Host "Completed $this"
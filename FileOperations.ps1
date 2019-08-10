$this = $MyInvocation.MyCommand.Path
Clear-Host
Write-Host "Executing $this"

# Define the Base Directory and Working Directory
$baseDir = "D:\Powershell"
$dirName = "$baseDir\SomeDirectory"
$sourceDir = "$dirName\Source"
$targetDir = "$dirName\Target"

# Check if the Directory exists
if((Test-Path $baseDir) -eq 1)
{
    Write-Host "$baseDir folder Exists"
}
else
{
    Write-Host "$baseDir folder doesnt Exist"
}

# Create Directory
if((Test-Path $baseDir) -eq 0)
{
   New-Item $baseDir -ItemType Directory 
}

# Create Directory
if((Test-Path $dirName) -eq 0)
{
   New-Item $dirName -ItemType Directory 
}

Get-ChildItem -Path $dirName Force

# Get Items or list the items in the directory
if((Test-Path $dirName) -eq 1)
{
    Get-ChildItem -Path $dirName Force
}

# Create file
foreach($a in 1..10)
{
    New-Item $dirName\file$a.txt -ItemType File -Force
}

# List all the files
Get-ChildItem $dirName

# Copy files
if((Test-Path $sourceDir) -eq 0)
{
    New-Item $sourceDir -ItemType Directory
    #mkdir $sourceDir
}

if((Test-Path $targetDir) -eq 0)
{
    New-Item $targetDir -ItemType Directory
    #mkdir $targetDir
}

# Create Source Files
if((Test-Path $sourceDir) -eq 1)
{
    for($i=0;$i -le 5; $i++)
    {
        New-Item $sourceDir\a$i.txt -ItemType File -Force
    }
}

# Copy Source Files to Target
if((Test-Path $targetDir) -eq 1)
{
    foreach($file in ((Get-ChildItem $sourceDir).FullName))
    {
        Copy-Item -Path $file -Destination $targetDir -Force
        
    }
}

if((Test-Path $targetDir) -eq 1)
{
   foreach($f in (Get-ChildItem $targetDir).FullName)
   {
        Write-Host $f
   }
}

# Delete Item
if((Test-Path $targetDir) -eq 1)
{
   foreach($f in (Get-ChildItem $targetDir).FullName)
   {
       Remove-Item -Path $f -Force
       #rm $f
   }
}

Write-Host "Completed $this"
$this = $MyInvocation.MyCommand.Path
Write-Host "Executing $this"

$baseDir ="D:\Powershell"
$archiveDir = "$baseDir\Archive"
$unArchiveDir = "$baseDir\Unarchive"

# Check if the Base directory exists, if not then create
if((Test-Path $baseDir) -eq 0)
{
    New-Item $baseDir -ItemType Directory
}

# Check if the Archive directory exists, if not then create
if((Test-Path $archiveDir) -eq 0)
{
    New-Item $archiveDir -ItemType Directory
}

# Check if the Archive.zip file exists in Base Directory, if yes then delete
if((Test-Path $baseDir\Archive.zip) -eq 1)
{
    Remove-Item $baseDir\Archive.zip -Force
}

# Check if the Archive Directory exists. Create files.
if((Test-Path $archiveDir) -eq 1)
{
    # Create 10 files 
    foreach($file in 1..10)
    {
        # Create file with .txt extension
        New-Item $archiveDir\abc$file.txt -ItemType File -Force
    }    
}

# Display Files in the Archive Folder
foreach($file in (Get-ChildItem $archiveDir).FullName)
{
    Write-Host $file
}

# Archive file to Archive.zip
Compress-Archive -Path $archiveDir -DestinationPath $baseDir\Archive.zip -Force

# Delete the old or previous UnArchive directory
if((Test-Path $unArchiveDir) -eq 1)
{
    Remove-Item $unArchiveDir -Recurse -Force
}

# Recreate the Unarchive Directory
if((Test-Path $unArchiveDir) -eq 0)
{
    New-Item $unArchiveDir -ItemType Directory
}

# Expand File to UnArchive folder
Expand-Archive -Path $baseDir\Archive.zip -DestinationPath $unArchiveDir -Force

Write-Host "Completed $this"
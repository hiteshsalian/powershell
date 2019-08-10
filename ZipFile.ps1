$this = $MyInvocation.MyCommand.Path
Write-Host "Executing $this"

Add-Type -AssemblyName system.io.compression.fileSystem

$baseDir ="D:\Powershell"
$zipDir = "$baseDir\Zip"
$unZipDir = "$baseDir\UnZip"

$level = [system.io.compression.compressionlevel]::Optimal
$Include = $false

# Check if the Base directory exists, if not then create
if((Test-Path $baseDir) -eq 0)
{
    New-Item $baseDir -ItemType Directory
}

# Check if the Archive directory exists, if not then create
if((Test-Path $zipDir) -eq 0)
{
    New-Item $zipDir -ItemType Directory
}

# Check if the Archive.zip file exists in Base Directory, if yes then delete
if((Test-Path $baseDir\zipData.zip) -eq 1)
{
    Remove-Item $baseDir\zipData.zip -Force
}

# Check if the Archive Directory exists. Create files.
if((Test-Path $zipDir) -eq 1)
{
    # Create 10 files 
    foreach($file in 1..10)
    {
        # Create file with .txt extension
        New-Item $zipDir\abc$file.txt -ItemType File -Force
    }    
}

# Display Files in the Archive Folder
foreach($file in (Get-ChildItem $zipDir).FullName)
{
    Write-Host $file
}

# Archive file to ZipData.zip
[io.compression.zipfile]::CreateFromDirectory($zipDir, "$baseDir\zipData.zip", $level, $Include)

# Delete the old or previous UnArchive directory
if((Test-Path $unZipDir) -eq 1)
{
    Remove-Item $unZipDir -Recurse -Force
}

# Recreate the Unarchive Directory
if((Test-Path $unZipDir) -eq 0)
{
    New-Item $unZipDir -ItemType Directory
}

# Expand File to UnArchive folder
[system.io.compression.zipfile]::ExtractToDirectory("$baseDir\zipData.zip", $unZipDir)

Write-Host "Completed $this"
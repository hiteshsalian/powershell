$this = $MyInvocation.MyCommand.Path
Write-Host "Executing $this"

# Include the management tools so that we can manage IIS on this server, 
# If we do not plan on managing IIS through this server then do not include this option.
# Install-WindowsFeature -name Web-Server -IncludeManagementTools

Get-WindowsFeature > C:\Logs\IIS.log

Write-Host "Completed $this"
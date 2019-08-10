$this = $MyInvocation.MyCommand.Path
Write-Host "Executing $this"

# Include the management tools so that we can manage IIS on this server, 
# If we do not plan on managing IIS through this server then do not include this option.
# Use this command on the Windows Server 2012
# Install-WindowsFeature -name Web-Server -IncludeManagementTools
# Get-WindowsFeature > C:\Logs\IIS.log

# Enable Windows Feature on Windows 7

# Enable the Media Player
# DISM /Online /Enable-Feature /FeatureName:MediaPlayback /NoRestart
# DISM /Online /Enable-Feature /FeatureName:WindowsMediaPlayer /NoRestart

# Enable the TFTP client
# DISM /Online /Enable-Feature /FeatureName:TFTP /NoRestart

# Enable the MSMQ Server
# DISM /Online /NoRestart /English /Enable-Feature /FeatureName:MSMQ-Container /FeatureName:MSMQ-Server

# Disable the Media Player on Windows 7
DISM /Online /Disable-Feature /FeatureName:MediaPlayback /NoRestart
DISM /Online /Disable-Feature /FeatureName:WindowsMediaPlayer /NoRestart

# Disable the TFTP client
Dism /Online /Disable-Feature /FeatureName:TFTP /NoRestart

# Disable the MSMQ Server
DISM /Online /NoRestart /English /Disable-Feature /FeatureName:MSMQ-Container /FeatureName:MSMQ-Server



Write-Host "Completed $this"
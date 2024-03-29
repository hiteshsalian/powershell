﻿function Install-IIS()
{
DISM /Online /Enable-Feature /FeatureName:IIS-ApplicationDevelopment 
/FeatureName:IIS-ASP
/FeatureName:IIS-ASPNET
/FeatureName:IIS-BasicAuthentication
/FeatureName:IIS-CGI
/FeatureName:IIS-ClientCertificateMappingAuthentication
/FeatureName:IIS-CommonHttpFeatures
/FeatureName:IIS-CustomLogging
/FeatureName:IIS-DefaultDocument
/FeatureName:IIS-DigestAuthentication
/FeatureName:IIS-DirectoryBrowsing
/FeatureName:IIS-FTPExtensibility
/FeatureName:IIS-FTPServer
/FeatureName:IIS-FTPSvc
/FeatureName:IIS-HealthAndDiagnostics
/FeatureName:IIS-HostableWebCore
/FeatureName:IIS-HttpCompressionDynamic
/FeatureName:IIS-HttpCompressionStatic
/FeatureName:IIS-HttpErrors
/FeatureName:IIS-HttpLogging
/FeatureName:IIS-HttpRedirect
/FeatureName:IIS-HttpTracing
/FeatureName:IIS-IIS6ManagementCompatibility
/FeatureName:IIS-IISCertificateMappingAuthentication
/FeatureName:IIS-IPSecurity
/FeatureName:IIS-ISAPIExtensions
/FeatureName:IIS-ISAPIFilter
/FeatureName:IIS-LegacyScripts
/FeatureName:IIS-LegacySnapIn
/FeatureName:IIS-LoggingLibraries
/FeatureName:IIS-ManagementConsole
/FeatureName:IIS-ManagementScriptingTools
/FeatureName:IIS-ManagementService
/FeatureName:IIS-Metabase
/FeatureName:IIS-NetFxExtensibility
/FeatureName:IIS-ODBCLogging
/FeatureName:IIS-Performance
/FeatureName:IIS-RequestFiltering
/FeatureName:IIS-RequestMonitor
/FeatureName:IIS-Security
/FeatureName:IIS-ServerSideIncludes
/FeatureName:IIS-StaticContent
/FeatureName:IIS-URLAuthorization
/FeatureName:IIS-WebDAV
/FeatureName:IIS-WebServer
/FeatureName:IIS-WebServerManagementTools
/FeatureName:IIS-WebServerRole
/FeatureName:IIS-WindowsAuthentication
/FeatureName:IIS-WMICompatibility
/FeatureName:WAS-ConfigurationAPI
/FeatureName:WAS-NetFxEnvironment
/FeatureName:WAS-ProcessModel
/FeatureName:WAS-WindowsActivationService /NoRestart
}

function UnInstall-IIS()
{
DISM /Online /Disable-Feature /FeatureName:IIS-ApplicationDevelopment
/FeatureName:IIS-ASP
/FeatureName:IIS-ASPNET
/FeatureName:IIS-BasicAuthentication
/FeatureName:IIS-CGI
/FeatureName:IIS-ClientCertificateMappingAuthentication
/FeatureName:IIS-CommonHttpFeatures
/FeatureName:IIS-CustomLogging
/FeatureName:IIS-DefaultDocument
/FeatureName:IIS-DigestAuthentication
/FeatureName:IIS-DirectoryBrowsing
/FeatureName:IIS-FTPExtensibility
/FeatureName:IIS-FTPServer
/FeatureName:IIS-FTPSvc
/FeatureName:IIS-HealthAndDiagnostics
/FeatureName:IIS-HostableWebCore
/FeatureName:IIS-HttpCompressionDynamic
/FeatureName:IIS-HttpCompressionStatic
/FeatureName:IIS-HttpErrors
/FeatureName:IIS-HttpLogging
/FeatureName:IIS-HttpRedirect
/FeatureName:IIS-HttpTracing
/FeatureName:IIS-IIS6ManagementCompatibility
/FeatureName:IIS-IISCertificateMappingAuthentication
/FeatureName:IIS-IPSecurity
/FeatureName:IIS-ISAPIExtensions
/FeatureName:IIS-ISAPIFilter
/FeatureName:IIS-LegacyScripts
/FeatureName:IIS-LegacySnapIn
/FeatureName:IIS-LoggingLibraries
/FeatureName:IIS-ManagementConsole
/FeatureName:IIS-ManagementScriptingTools
/FeatureName:IIS-ManagementService
/FeatureName:IIS-Metabase
/FeatureName:IIS-NetFxExtensibility
/FeatureName:IIS-ODBCLogging
/FeatureName:IIS-Performance
/FeatureName:IIS-RequestFiltering
/FeatureName:IIS-RequestMonitor
/FeatureName:IIS-Security
/FeatureName:IIS-ServerSideIncludes
/FeatureName:IIS-StaticContent
/FeatureName:IIS-URLAuthorization
/FeatureName:IIS-WebDAV
/FeatureName:IIS-WebServer
/FeatureName:IIS-WebServerManagementTools
/FeatureName:IIS-WebServerRole
/FeatureName:IIS-WindowsAuthentication
/FeatureName:IIS-WMICompatibility
/FeatureName:WAS-ConfigurationAPI
/FeatureName:WAS-NetFxEnvironment
/FeatureName:WAS-ProcessModel
/FeatureName:WAS-WindowsActivationService /NoRestart

}


Clear-Host
$this = $MyInvocation.MyCommand.Path
Write-Host "Executing $this"

Install-IIS 

Write-Host "Completed $this"
#
# Module manifest for module 'PSOpenAPITools'
#
# Generated by: OpenAPI Generator Team
#
# Generated on: 11/20/2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'PSOpenAPITools.psm1'

# Version number of this module.
ModuleVersion = '0.1.2'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'c6f11845-396a-4007-94a0-6dca7a878c4d'

# Author of this module
Author = 'OpenAPI Generator Team'

# Company or vendor of this module
CompanyName = 'openapitools.org'

# Copyright statement for this module
Copyright = '(c) OpenAPI Generator Team. All rights reserved.'

# Description of the functionality provided by this module
Description = 'PSOpenAPITools - the PowerShell module for Login Enterprise'

# Minimum version of the PowerShell engine required by this module
PowerShellVersion = '6.2'

# Name of the PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# ClrVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Invoke-ConfigurationCreateAccount', 
               'Invoke-ConfigurationCreateAccounts', 
               'Invoke-ConfigurationDeleteAccount', 
               'Invoke-ConfigurationDeleteAccounts', 
               'Invoke-ConfigurationGetAccount', 'Invoke-ConfigurationGetAccounts', 
               'Invoke-ConfigurationUpdateAccount', 
               'Invoke-ConfigurationUpdateAccountEnabled', 
               'Invoke-ConfigurationAddAccountGroupMembers', 
               'Invoke-ConfigurationGetAccountGroupMembers', 
               'Invoke-ConfigurationRemoveAccountGroupMembers', 
               'Invoke-ConfigurationSetAccountGroupMembers', 
               'Invoke-ConfigurationCreateAccountGroup', 
               'Invoke-ConfigurationDeleteAccountGroup', 
               'Invoke-ConfigurationDeleteAccountGroups', 
               'Invoke-ConfigurationGetAccountGroup', 
               'Invoke-ConfigurationGetAccountGroupCandidates', 
               'Invoke-ConfigurationGetAccountGroups', 
               'Invoke-ConfigurationUpdateAccountGroup', 
               'Invoke-DataGetAppExecutions', 
               'Invoke-ConfigurationCreateApplication', 
               'Invoke-ConfigurationDeleteApplication', 
               'Invoke-ConfigurationDeleteApplications', 
               'Invoke-ConfigurationGetApplication', 
               'Invoke-ConfigurationGetApplications', 
               'Invoke-ConfigurationParseApplicationDetails', 
               'Invoke-ConfigurationUpdateApplication', 
               'Invoke-ConfigurationAddStepsToApplicationGroup', 
               'Invoke-ConfigurationCreateApplicationGroup', 
               'Invoke-ConfigurationDeleteApplicationGroup', 
               'Invoke-ConfigurationDeleteApplicationGroupList', 
               'Invoke-ConfigurationGetApplicationGroup', 
               'Invoke-ConfigurationGetApplicationGroups', 
               'Invoke-ConfigurationRemoveStepsFromApplicationGroup', 
               'Invoke-ConfigurationReplaceApplicationGroupSteps', 
               'Invoke-ConfigurationUpdateApplicationGroup', 
               'Invoke-ConfigurationUpdateStepInApplicationGroup', 
               'Invoke-ConfigurationGetTestEnvironment', 
               'Invoke-ConfigurationUpdateTestEnvironment', 'Invoke-DataGetEvent', 
               'Invoke-DataGetEvents', 'Invoke-DataGetEventsByAppExecution', 
               'Invoke-DataGetEventsByUserSession', 
               'Invoke-ConfigurationGetLauncher', 
               'Invoke-ConfigurationGetLaunchers', 
               'Invoke-ConfigurationUpdateLauncherLocation', 
               'Invoke-ConfigurationCreateLauncherGroup', 
               'Invoke-ConfigurationDeleteLauncherGroup', 
               'Invoke-ConfigurationDeleteLauncherGroups', 
               'Invoke-ConfigurationGetLauncherGroup', 
               'Invoke-ConfigurationGetLauncherGroups', 
               'Invoke-ConfigurationUpdateLauncherGroup', 
               'Invoke-ConfigurationAddLauncherGroupMembers', 
               'Invoke-ConfigurationGetLauncherGroupMembers', 
               'Invoke-ConfigurationRemoveLauncherGroupMembers', 
               'Invoke-ConfigurationCreateLocation', 
               'Invoke-ConfigurationDeleteLocation', 
               'Invoke-ConfigurationDeleteLocations', 
               'Invoke-ConfigurationGetLocation', 
               'Invoke-ConfigurationGetLocations', 
               'Invoke-ConfigurationUpdateLocation', 'Invoke-DataGetMeasurements', 
               'Invoke-DataGetMeasurementsByAppExecution', 
               'Invoke-DataGetMeasurementsByUserSession', 
               'Invoke-ConfigurationCreateContinuousTestNotification', 
               'Invoke-ConfigurationDeleteContinuousTestNotification', 
               'Invoke-ConfigurationGetContinuousTestNotifications', 
               'Invoke-ConfigurationUpdateContinuousTestNotification', 
               'Invoke-DataDownloadApplicationTestReport', 
               'Invoke-DataDownloadContinuousTestReport', 
               'Invoke-DataGetApplicationTestReport', 
               'Invoke-DataGetContinuousTestReport', 
               'Invoke-DataGetContinuousTestReports', 
               'Invoke-ConfigurationCreateReportConfiguration', 
               'Invoke-ConfigurationCreateReportConfigurationThreshold', 
               'Invoke-ConfigurationDeleteReportConfiguration', 
               'Invoke-ConfigurationDeleteReportConfigurationLogo', 
               'Invoke-ConfigurationDeleteReportConfigurationThreshold', 
               'Invoke-ConfigurationDeleteReportConfigurationThresholds', 
               'Invoke-ConfigurationDeleteReportConfigurations', 
               'Invoke-ConfigurationGetReportConfiguration', 
               'Invoke-ConfigurationGetReportConfigurationLogo', 
               'Invoke-ConfigurationGetReportConfigurations', 
               'Invoke-ConfigurationReplaceReportConfigurationThresholds', 
               'Invoke-ConfigurationRequestReport', 
               'Invoke-ConfigurationUpdateReportConfiguration', 
               'Invoke-ConfigurationUpdateReportConfigurationLogo', 
               'Invoke-ConfigurationUpdateReportConfigurationThreshold', 
               'Invoke-DataGetScreenshotByAppExecution', 
               'Invoke-DataGetScreenshotByEvent', 
               'Invoke-DataGetScreenshotsByAppExecution', 
               'Invoke-ConfigurationCreateScript', 'Invoke-ConfigurationGetScript', 
               'Invoke-DataGetApplicationDiagnostics', 
               'Invoke-DataGetContinuousTestDiagnostic', 
               'Invoke-DataGetContinuousTestDiagnostics', 
               'Invoke-ConfigurationCopyTest', 'Invoke-ConfigurationCreateTest', 
               'Invoke-ConfigurationDeleteTest', 'Invoke-ConfigurationDeleteTests', 
               'Invoke-ConfigurationGetTest', 'Invoke-ConfigurationGetTests', 
               'Invoke-ConfigurationStartTest', 'Invoke-ConfigurationStopTest', 
               'Invoke-ConfigurationUpdateTest', 
               'Invoke-DataGetLoadTestRunStatistics', 'Invoke-DataGetTestRun', 
               'Invoke-DataGetTestRuns', 
               'Invoke-ConfigurationCreateApplicationTestThreshold', 
               'Invoke-ConfigurationDeleteApplicationTestThreshold', 
               'Invoke-ConfigurationGetApplicationTestThresholds', 
               'Invoke-ConfigurationUpdateApplicationTestThreshold', 
               'Invoke-DataGetUserSession', 'Invoke-DataGetUserSessions', 
               'Invoke-ConfigurationCreateTestWorkloadSteps', 
               'Invoke-ConfigurationDeleteTestWorkloadStep', 
               'Invoke-ConfigurationDeleteTestWorkloadSteps', 
               'Invoke-ConfigurationGetTestWorkload', 
               'Invoke-ConfigurationReplaceTestWorkloadSteps', 
               'Invoke-ConfigurationUpdateTestWorkloadStep', 'Initialize-Account', 
               'ConvertFrom-JsonToAccount', 'Initialize-AccountBulkCreate', 
               'ConvertFrom-JsonToAccountBulkCreate', 'Initialize-AccountCreate', 
               'ConvertFrom-JsonToAccountCreate', 'Initialize-AccountField', 
               'ConvertFrom-JsonToAccountField', 'Initialize-AccountFilterGroup', 
               'ConvertFrom-JsonToAccountFilterGroup', 
               'Initialize-AccountFilterGroupCreate', 
               'ConvertFrom-JsonToAccountFilterGroupCreate', 
               'Initialize-AccountFilterGroupUpdate', 
               'ConvertFrom-JsonToAccountFilterGroupUpdate', 
               'Initialize-AccountGroupResultSet', 
               'ConvertFrom-JsonToAccountGroupResultSet', 
               'Initialize-AccountResultSet', 'ConvertFrom-JsonToAccountResultSet', 
               'Initialize-AccountSelectionGroup', 
               'ConvertFrom-JsonToAccountSelectionGroup', 
               'Initialize-AccountSelectionGroupCreate', 
               'ConvertFrom-JsonToAccountSelectionGroupCreate', 
               'Initialize-AccountSelectionGroupUpdate', 
               'ConvertFrom-JsonToAccountSelectionGroupUpdate', 
               'Initialize-AccountUpdate', 'ConvertFrom-JsonToAccountUpdate', 
               'Initialize-Affected', 'ConvertFrom-JsonToAffected', 
               'Initialize-AppExecution', 'ConvertFrom-JsonToAppExecution', 
               'Initialize-AppExecutionResultSet', 
               'ConvertFrom-JsonToAppExecutionResultSet', 
               'Initialize-AppGroupReference', 
               'ConvertFrom-JsonToAppGroupReference', 
               'Initialize-AppGroupReferenceCreate', 
               'ConvertFrom-JsonToAppGroupReferenceCreate', 
               'Initialize-AppGroupReferenceUpdate', 
               'ConvertFrom-JsonToAppGroupReferenceUpdate', 
               'Initialize-AppInvocation', 'ConvertFrom-JsonToAppInvocation', 
               'ConvertFrom-JsonToAppInvocationApplication', 
               'Initialize-AppInvocationCreate', 
               'ConvertFrom-JsonToAppInvocationCreate', 
               'Initialize-AppInvocationUpdate', 
               'ConvertFrom-JsonToAppInvocationUpdate', 
               'Initialize-ApplicationDetails', 
               'ConvertFrom-JsonToApplicationDetails', 
               'Initialize-ApplicationDiagnostic', 
               'ConvertFrom-JsonToApplicationDiagnostic', 
               'Initialize-ApplicationGroup', 'ConvertFrom-JsonToApplicationGroup', 
               'Initialize-ApplicationGroupCreate', 
               'ConvertFrom-JsonToApplicationGroupCreate', 
               'Initialize-ApplicationGroupResultSet', 
               'ConvertFrom-JsonToApplicationGroupResultSet', 
               'ConvertFrom-JsonToApplicationGroupStepsInner', 
               'Initialize-ApplicationGroupUpdate', 
               'ConvertFrom-JsonToApplicationGroupUpdate', 
               'Initialize-ApplicationResultSet', 
               'ConvertFrom-JsonToApplicationResultSet', 
               'Initialize-ApplicationTest', 'ConvertFrom-JsonToApplicationTest', 
               'Initialize-ApplicationTestCreate', 
               'ConvertFrom-JsonToApplicationTestCreate', 
               'ConvertFrom-JsonToApplicationTestCreateConnector', 
               'Initialize-ApplicationTestReport', 
               'ConvertFrom-JsonToApplicationTestReport', 
               'Initialize-ApplicationTestRun', 
               'ConvertFrom-JsonToApplicationTestRun', 
               'Initialize-ApplicationTestUpdate', 
               'ConvertFrom-JsonToApplicationTestUpdate', 
               'Initialize-AppThreshold', 'ConvertFrom-JsonToAppThreshold', 
               'Initialize-AppThresholdCreate', 
               'ConvertFrom-JsonToAppThresholdCreate', 
               'ConvertFrom-JsonToConfigurationCreateAccountGroupRequest', 
               'ConvertFrom-JsonToConfigurationCreateApplicationRequest', 
               'ConvertFrom-JsonToConfigurationCreateLauncherGroupRequest', 
               'ConvertFrom-JsonToConfigurationCreateTestRequest', 
               'ConvertFrom-JsonToConfigurationGetAccountGroup200Response', 
               'ConvertFrom-JsonToConfigurationGetApplication200Response', 
               'ConvertFrom-JsonToConfigurationGetApplicationTestThresholds200ResponseInner', 
               'ConvertFrom-JsonToConfigurationGetContinuousTestNotifications200ResponseInner', 
               'ConvertFrom-JsonToConfigurationGetLauncherGroup200Response', 
               'ConvertFrom-JsonToConfigurationGetTest200Response', 
               'ConvertFrom-JsonToConfigurationParseApplicationDetails200Response', 
               'ConvertFrom-JsonToConfigurationReplaceApplicationGroupStepsRequestInner', 
               'ConvertFrom-JsonToConfigurationUpdateAccountGroupRequest', 
               'ConvertFrom-JsonToConfigurationUpdateApplicationRequest', 
               'ConvertFrom-JsonToConfigurationUpdateContinuousTestNotificationRequest', 
               'ConvertFrom-JsonToConfigurationUpdateStepInApplicationGroupRequest', 
               'ConvertFrom-JsonToConfigurationUpdateTestRequest', 
               'ConvertFrom-JsonToConfigurationUpdateTestWorkloadStepRequest', 
               'Initialize-ContinuousTest', 'ConvertFrom-JsonToContinuousTest', 
               'Initialize-ContinuousTestCreate', 
               'ConvertFrom-JsonToContinuousTestCreate', 
               'Initialize-ContinuousTestReport', 
               'ConvertFrom-JsonToContinuousTestReport', 
               'Initialize-ContinuousTestRun', 
               'ConvertFrom-JsonToContinuousTestRun', 
               'Initialize-ContinuousTestUpdate', 
               'ConvertFrom-JsonToContinuousTestUpdate', 'Initialize-Created', 
               'ConvertFrom-JsonToCreated', 'Initialize-CustomConnector', 
               'ConvertFrom-JsonToCustomConnector', 
               'ConvertFrom-JsonToDataGetApplicationTestReport200Response', 
               'ConvertFrom-JsonToDataGetTestRun200Response', 'Initialize-Delay', 
               'ConvertFrom-JsonToDelay', 'Initialize-DelayCreate', 
               'ConvertFrom-JsonToDelayCreate', 'Initialize-DelayUpdate', 
               'ConvertFrom-JsonToDelayUpdate', 'Initialize-DesktopConnector', 
               'ConvertFrom-JsonToDesktopConnector', 'Initialize-Environment', 
               'ConvertFrom-JsonToEnvironment', 'Initialize-EnvironmentUpdate', 
               'ConvertFrom-JsonToEnvironmentUpdate', 
               'ConvertFrom-JsonToEnvironmentUpdateConnector', 
               'Initialize-EuxScore', 'ConvertFrom-JsonToEuxScore', 
               'Initialize-EventNotification', 
               'ConvertFrom-JsonToEventNotification', 
               'Initialize-EventNotificationUpdate', 
               'ConvertFrom-JsonToEventNotificationUpdate', 
               'Initialize-EventResultSet', 'ConvertFrom-JsonToEventResultSet', 
               'Initialize-HorizonConnector', 'ConvertFrom-JsonToHorizonConnector', 
               'Initialize-Launcher', 'ConvertFrom-JsonToLauncher', 
               'Initialize-LauncherFilterGroup', 
               'ConvertFrom-JsonToLauncherFilterGroup', 
               'Initialize-LauncherFilterGroupData', 
               'ConvertFrom-JsonToLauncherFilterGroupData', 
               'Initialize-LauncherGroupResultSet', 
               'ConvertFrom-JsonToLauncherGroupResultSet', 
               'Initialize-LauncherLocationUpdate', 
               'ConvertFrom-JsonToLauncherLocationUpdate', 
               'Initialize-LauncherProperty', 'ConvertFrom-JsonToLauncherProperty', 
               'Initialize-LauncherResultSet', 
               'ConvertFrom-JsonToLauncherResultSet', 
               'Initialize-LauncherSelectionGroup', 
               'ConvertFrom-JsonToLauncherSelectionGroup', 
               'Initialize-LauncherSelectionGroupData', 
               'ConvertFrom-JsonToLauncherSelectionGroupData', 
               'Initialize-LoadTest', 'ConvertFrom-JsonToLoadTest', 
               'Initialize-LoadTestCreate', 'ConvertFrom-JsonToLoadTestCreate', 
               'Initialize-LoadTestRun', 'ConvertFrom-JsonToLoadTestRun', 
               'Initialize-LoadTestRunStatistics', 
               'ConvertFrom-JsonToLoadTestRunStatistics', 
               'Initialize-LoadTestUpdate', 'ConvertFrom-JsonToLoadTestUpdate', 
               'Initialize-Location', 'ConvertFrom-JsonToLocation', 
               'Initialize-LocationCreate', 'ConvertFrom-JsonToLocationCreate', 
               'Initialize-LocationResultSet', 
               'ConvertFrom-JsonToLocationResultSet', 'Initialize-LocationUpdate', 
               'ConvertFrom-JsonToLocationUpdate', 'Initialize-Measurement', 
               'ConvertFrom-JsonToMeasurement', 'Initialize-MeasurementResultSet', 
               'ConvertFrom-JsonToMeasurementResultSet', 'Initialize-ModelEvent', 
               'ConvertFrom-JsonToModelEvent', 'Initialize-NetscalerConnector', 
               'ConvertFrom-JsonToNetscalerConnector', 
               'Initialize-NotFoundProblemDetails', 
               'ConvertFrom-JsonToNotFoundProblemDetails', 'Initialize-ObjectId', 
               'ConvertFrom-JsonToObjectId', 'Initialize-ObjectIdList', 
               'ConvertFrom-JsonToObjectIdList', 'Initialize-ProblemDetails', 
               'ConvertFrom-JsonToProblemDetails', 'Initialize-Property', 
               'ConvertFrom-JsonToProperty', 'Initialize-RdpConnector', 
               'ConvertFrom-JsonToRdpConnector', 'Initialize-ReportConfiguration', 
               'ConvertFrom-JsonToReportConfiguration', 
               'Initialize-ReportConfigurationCreate', 
               'ConvertFrom-JsonToReportConfigurationCreate', 
               'Initialize-ReportConfigurationResultSet', 
               'ConvertFrom-JsonToReportConfigurationResultSet', 
               'Initialize-ReportConfigurationUpdate', 
               'ConvertFrom-JsonToReportConfigurationUpdate', 
               'Initialize-ReportNotification', 
               'ConvertFrom-JsonToReportNotification', 'Initialize-ReportRequest', 
               'ConvertFrom-JsonToReportRequest', 'Initialize-ReportResultSet', 
               'ConvertFrom-JsonToReportResultSet', 'Initialize-Resolution', 
               'ConvertFrom-JsonToResolution', 'Initialize-Screenshot', 
               'ConvertFrom-JsonToScreenshot', 'Initialize-SessionThreshold', 
               'ConvertFrom-JsonToSessionThreshold', 'Initialize-StartRequest', 
               'ConvertFrom-JsonToStartRequest', 'Initialize-StorefrontConnector', 
               'ConvertFrom-JsonToStorefrontConnector', 'Initialize-SuccessCounts', 
               'ConvertFrom-JsonToSuccessCounts', 'Initialize-SuccessRate', 
               'ConvertFrom-JsonToSuccessRate', 'Initialize-TargetHost', 
               'ConvertFrom-JsonToTargetHost', 'Initialize-TestCopy', 
               'ConvertFrom-JsonToTestCopy', 'Initialize-TestDiagnostic', 
               'ConvertFrom-JsonToTestDiagnostic', 'Initialize-TestResultSet', 
               'ConvertFrom-JsonToTestResultSet', 'Initialize-TestRunResultSet', 
               'ConvertFrom-JsonToTestRunResultSet', 
               'Initialize-ThresholdNotification', 
               'ConvertFrom-JsonToThresholdNotification', 
               'Initialize-ThresholdNotificationCreate', 
               'ConvertFrom-JsonToThresholdNotificationCreate', 
               'ConvertFrom-JsonToThresholdNotificationThreshold', 
               'Initialize-ThresholdNotificationUpdate', 
               'ConvertFrom-JsonToThresholdNotificationUpdate', 
               'Initialize-ThresholdUpdate', 'ConvertFrom-JsonToThresholdUpdate', 
               'Initialize-UserSession', 'ConvertFrom-JsonToUserSession', 
               'Initialize-UserSessionResultSet', 
               'ConvertFrom-JsonToUserSessionResultSet', 
               'Initialize-ValidationProblemDetails', 
               'ConvertFrom-JsonToValidationProblemDetails', 'Initialize-VsiMax', 
               'ConvertFrom-JsonToVsiMax', 'Initialize-WebApplication', 
               'ConvertFrom-JsonToWebApplication', 
               'Initialize-WebApplicationCreate', 
               'ConvertFrom-JsonToWebApplicationCreate', 
               'Initialize-WebApplicationDetails', 
               'ConvertFrom-JsonToWebApplicationDetails', 
               'Initialize-WebApplicationUpdate', 
               'ConvertFrom-JsonToWebApplicationUpdate', 
               'Initialize-WindowsApplication', 
               'ConvertFrom-JsonToWindowsApplication', 
               'Initialize-WindowsApplicationCreate', 
               'ConvertFrom-JsonToWindowsApplicationCreate', 
               'Initialize-WindowsApplicationDetails', 
               'ConvertFrom-JsonToWindowsApplicationDetails', 
               'Initialize-WindowsApplicationUpdate', 
               'ConvertFrom-JsonToWindowsApplicationUpdate', 'Initialize-Workload', 
               'ConvertFrom-JsonToWorkload', 'Get-Configuration', 
               'Set-Configuration', 'Set-ConfigurationApiKey', 
               'Set-ConfigurationApiKeyPrefix', 'Set-ConfigurationDefaultHeader', 
               'Get-HostSetting', 'Get-UrlFromHostSetting', 
               'Set-ConfigurationHttpSigning', 'Get-ConfigurationHttpSigning'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        # ProjectUri = ''

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}


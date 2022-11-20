# WindowsApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**CommandLine** | **String** | Command line arguments | [optional] 
**WorkingDirectory** | **String** | Working directory | [optional] 
**MainWindowTitle** | **String** | Main window title | [optional] 
**MainProcessName** | **String** | Main process name | [optional] 
**Id** | **String** | Application id | [optional] 
**Name** | **String** | Application name | [optional] 
**Description** | **String** | Application description | [optional] 
**Username** | **String** | Application user name | [optional] 
**Created** | **System.DateTime** | Created date-time | [optional] 
**LastModified** | **System.DateTime** | Last modified date-time | [optional] 
**Script** | **String** | Application script | [optional] 
**Timers** | **String[]** | Application timers | [optional] 

## Examples

- Prepare the resource
```powershell
$WindowsApplication = Initialize-PSOpenAPIToolsWindowsApplication  -Type null `
 -CommandLine null `
 -WorkingDirectory null `
 -MainWindowTitle null `
 -MainProcessName null `
 -Id null `
 -Name null `
 -Description null `
 -Username null `
 -Created null `
 -LastModified null `
 -Script null `
 -Timers null
```

- Convert the resource to JSON
```powershell
$WindowsApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


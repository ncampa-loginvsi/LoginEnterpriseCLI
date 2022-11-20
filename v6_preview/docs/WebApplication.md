# WebApplication
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**BrowserName** | [**BrowserName**](BrowserName.md) |  | [optional] 
**Url** | **String** | Start URL | [optional] 
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
$WebApplication = Initialize-PSOpenAPIToolsWebApplication  -Type null `
 -BrowserName null `
 -Url null `
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
$WebApplication | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# AccountCreate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Username** | **String** | Username | [optional] 
**Domain** | **String** | Domain id | [optional] 
**Email** | **String** | Email | [optional] 
**Password** | **String** | Password | [optional] 
**Fields** | [**AccountField[]**](AccountField.md) | Account custom fields | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountCreate = Initialize-PSOpenAPIToolsAccountCreate  -Username null `
 -Domain null `
 -Email null `
 -Password null `
 -Fields null
```

- Convert the resource to JSON
```powershell
$AccountCreate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# CustomConnector
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**VarHost** | **String** | Host | 
**CommandLine** | **String** | Connection command line | 

## Examples

- Prepare the resource
```powershell
$CustomConnector = Initialize-PSOpenAPIToolsCustomConnector  -Type null `
 -VarHost null `
 -CommandLine null
```

- Convert the resource to JSON
```powershell
$CustomConnector | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


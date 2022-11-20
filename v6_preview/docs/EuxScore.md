# EuxScore
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Score** | **Double** | Final Eux score | [optional] 
**Version** | **String** | Eux score version | [optional] 
**State** | [**EuxState**](EuxState.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EuxScore = Initialize-PSOpenAPIToolsEuxScore  -Score null `
 -Version null `
 -State null
```

- Convert the resource to JSON
```powershell
$EuxScore | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


# PSOpenAPITools.PSOpenAPITools\Api.LauncherGroupApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationCreateLauncherGroup**](LauncherGroupApi.md#Invoke-ConfigurationCreateLauncherGroup) | **POST** /v5/launcher-groups | Create launcher-group
[**Invoke-ConfigurationDeleteLauncherGroup**](LauncherGroupApi.md#Invoke-ConfigurationDeleteLauncherGroup) | **DELETE** /v5/launcher-groups/{groupId} | Delete launcher-group
[**Invoke-ConfigurationDeleteLauncherGroups**](LauncherGroupApi.md#Invoke-ConfigurationDeleteLauncherGroups) | **DELETE** /v5/launcher-groups | delete multiple launcher-groups
[**Invoke-ConfigurationGetLauncherGroup**](LauncherGroupApi.md#Invoke-ConfigurationGetLauncherGroup) | **GET** /v5/launcher-groups/{groupId} | Get launcher-group by id
[**Invoke-ConfigurationGetLauncherGroups**](LauncherGroupApi.md#Invoke-ConfigurationGetLauncherGroups) | **GET** /v5/launcher-groups | Get paginated list of launcher-groups
[**Invoke-ConfigurationUpdateLauncherGroup**](LauncherGroupApi.md#Invoke-ConfigurationUpdateLauncherGroup) | **PUT** /v5/launcher-groups/{groupId} | Update launcher-group


<a name="Invoke-ConfigurationCreateLauncherGroup"></a>
# **Invoke-ConfigurationCreateLauncherGroup**
> ObjectId Invoke-ConfigurationCreateLauncherGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationCreateLauncherGroupRequest] <PSCustomObject><br>

Create launcher-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: Bearer
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ConfigurationCreateLauncherGroupRequest = Initialize-ConfigurationCreateLauncherGroupRequest -Type "MyType" -VarFilter "MyVarFilter" -Name "MyName" -Description "MyDescription" -LauncherNames "MyLauncherNames" # ConfigurationCreateLauncherGroupRequest | Launcher-group data

# Create launcher-group
try {
    $Result = Invoke-ConfigurationCreateLauncherGroup -ConfigurationCreateLauncherGroupRequest $ConfigurationCreateLauncherGroupRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateLauncherGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConfigurationCreateLauncherGroupRequest** | [**ConfigurationCreateLauncherGroupRequest**](ConfigurationCreateLauncherGroupRequest.md)| Launcher-group data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationDeleteLauncherGroup"></a>
# **Invoke-ConfigurationDeleteLauncherGroup**
> void Invoke-ConfigurationDeleteLauncherGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>

Delete launcher-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: Bearer
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Launcher-group id

# Delete launcher-group
try {
    $Result = Invoke-ConfigurationDeleteLauncherGroup -GroupId $GroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteLauncherGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Launcher-group id | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationDeleteLauncherGroups"></a>
# **Invoke-ConfigurationDeleteLauncherGroups**
> void Invoke-ConfigurationDeleteLauncherGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

delete multiple launcher-groups

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: Bearer
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestBody = "MyRequestBody" # String[] | Launcher-group ids (optional)

# delete multiple launcher-groups
try {
    $Result = Invoke-ConfigurationDeleteLauncherGroups -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteLauncherGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)| Launcher-group ids | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationGetLauncherGroup"></a>
# **Invoke-ConfigurationGetLauncherGroup**
> ConfigurationGetLauncherGroup200Response Invoke-ConfigurationGetLauncherGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get launcher-group by id

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: Bearer
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Launcher-group id
$Include = "none" # LauncherGroupInclude[] | Include options (optional)

# Get launcher-group by id
try {
    $Result = Invoke-ConfigurationGetLauncherGroup -GroupId $GroupId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetLauncherGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Launcher-group id | 
 **Include** | [**LauncherGroupInclude[]**](LauncherGroupInclude.md)| Include options | [optional] 

### Return type

[**ConfigurationGetLauncherGroup200Response**](ConfigurationGetLauncherGroup200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationGetLauncherGroups"></a>
# **Invoke-ConfigurationGetLauncherGroups**
> LauncherGroupResultSet Invoke-ConfigurationGetLauncherGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of launcher-groups

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: Bearer
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OrderBy = "name" # LauncherGroupSortKey | Sort Key
$Direction = "asc" # String | Sort direction (default to "asc")
$Count = 56 # Int32 | Number of records to return (default to 100)
$Filter = "MyFilter" # String | A Launcher-Group Filter applied on Name and Description fields (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Include = "none" # LauncherGroupInclude[] | Include options (optional)

# Get paginated list of launcher-groups
try {
    $Result = Invoke-ConfigurationGetLauncherGroups -OrderBy $OrderBy -Direction $Direction -Count $Count -Filter $Filter -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetLauncherGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**LauncherGroupSortKey**](LauncherGroupSortKey.md)| Sort Key | 
 **Direction** | **String**| Sort direction | [default to &quot;asc&quot;]
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Filter** | **String**| A Launcher-Group Filter applied on Name and Description fields | [optional] 
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Include** | [**LauncherGroupInclude[]**](LauncherGroupInclude.md)| Include options | [optional] 

### Return type

[**LauncherGroupResultSet**](LauncherGroupResultSet.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationUpdateLauncherGroup"></a>
# **Invoke-ConfigurationUpdateLauncherGroup**
> void Invoke-ConfigurationUpdateLauncherGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-GroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationCreateLauncherGroupRequest] <PSCustomObject><br>

Update launcher-group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure API key authorization: Bearer
$Configuration.ApiKey.Authorization = "YOUR_API_KEY"
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
#$Configuration.ApiKeyPrefix.Authorization = "Bearer"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$GroupId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Launcher-group id
$ConfigurationCreateLauncherGroupRequest = Initialize-ConfigurationCreateLauncherGroupRequest -Type "MyType" -VarFilter "MyVarFilter" -Name "MyName" -Description "MyDescription" -LauncherNames "MyLauncherNames" # ConfigurationCreateLauncherGroupRequest | Launcher-group data

# Update launcher-group
try {
    $Result = Invoke-ConfigurationUpdateLauncherGroup -GroupId $GroupId -ConfigurationCreateLauncherGroupRequest $ConfigurationCreateLauncherGroupRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateLauncherGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **GroupId** | **String**| Launcher-group id | 
 **ConfigurationCreateLauncherGroupRequest** | [**ConfigurationCreateLauncherGroupRequest**](ConfigurationCreateLauncherGroupRequest.md)| Launcher-group data | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# PSOpenAPITools.PSOpenAPITools\Api.LauncherApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationGetLauncher**](LauncherApi.md#Invoke-ConfigurationGetLauncher) | **GET** /v6-preview/launchers/{launcherName} | Get launcher by name.
[**Invoke-ConfigurationGetLaunchers**](LauncherApi.md#Invoke-ConfigurationGetLaunchers) | **GET** /v6-preview/launchers | Get paginated list of launchers
[**Invoke-ConfigurationUpdateLauncherLocation**](LauncherApi.md#Invoke-ConfigurationUpdateLauncherLocation) | **PUT** /v6-preview/launchers/{launcherName}/location | Change launcher&#39;s location


<a name="Invoke-ConfigurationGetLauncher"></a>
# **Invoke-ConfigurationGetLauncher**
> Launcher Invoke-ConfigurationGetLauncher<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LauncherName] <String><br>

Get launcher by name.

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

$LauncherName = "MyLauncherName" # String | Launcher name

# Get launcher by name.
try {
    $Result = Invoke-ConfigurationGetLauncher -LauncherName $LauncherName
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetLauncher: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LauncherName** | **String**| Launcher name | 

### Return type

[**Launcher**](Launcher.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationGetLaunchers"></a>
# **Invoke-ConfigurationGetLaunchers**
> LauncherResultSet Invoke-ConfigurationGetLaunchers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LocationIds] <System.Nullable[Int32][]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Online] <System.Nullable[Boolean]><br>

Get paginated list of launchers

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

$OrderBy = "name" # LauncherSortKey | Sort Key
$Direction = "asc" # String | Sort direction (default to "asc")
$Count = 56 # Int32 | Number of records to return (default to 100)
$Filter = "MyFilter" # String | filter the launcher key in the list (optional)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$LocationIds = 0 # Int32[] | Location ids (optional)
$Online = $true # Boolean | Launcher state (default true) (optional) (default to $true)

# Get paginated list of launchers
try {
    $Result = Invoke-ConfigurationGetLaunchers -OrderBy $OrderBy -Direction $Direction -Count $Count -Filter $Filter -Offset $Offset -IncludeTotalCount $IncludeTotalCount -LocationIds $LocationIds -Online $Online
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetLaunchers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**LauncherSortKey**](LauncherSortKey.md)| Sort Key | 
 **Direction** | **String**| Sort direction | [default to &quot;asc&quot;]
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Filter** | **String**| filter the launcher key in the list | [optional] 
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **LocationIds** | [**Int32[]**](Int32.md)| Location ids | [optional] 
 **Online** | **Boolean**| Launcher state (default true) | [optional] [default to $true]

### Return type

[**LauncherResultSet**](LauncherResultSet.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationUpdateLauncherLocation"></a>
# **Invoke-ConfigurationUpdateLauncherLocation**
> void Invoke-ConfigurationUpdateLauncherLocation<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LauncherName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LauncherLocationUpdate] <PSCustomObject><br>

Change launcher's location

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

$LauncherName = "MyLauncherName" # String | Launcher name
$LauncherLocationUpdate = Initialize-LauncherLocationUpdate -LocationId 0 # LauncherLocationUpdate | Launcher location data

# Change launcher's location
try {
    $Result = Invoke-ConfigurationUpdateLauncherLocation -LauncherName $LauncherName -LauncherLocationUpdate $LauncherLocationUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateLauncherLocation: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **LauncherName** | **String**| Launcher name | 
 **LauncherLocationUpdate** | [**LauncherLocationUpdate**](LauncherLocationUpdate.md)| Launcher location data | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


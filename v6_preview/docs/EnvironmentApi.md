# PSOpenAPITools.PSOpenAPITools\Api.EnvironmentApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationGetTestEnvironment**](EnvironmentApi.md#Invoke-ConfigurationGetTestEnvironment) | **GET** /v6-preview/tests/{testId}/environment | Get test-environment by id
[**Invoke-ConfigurationUpdateTestEnvironment**](EnvironmentApi.md#Invoke-ConfigurationUpdateTestEnvironment) | **PUT** /v6-preview/tests/{testId}/environment | Update test-environment


<a name="Invoke-ConfigurationGetTestEnvironment"></a>
# **Invoke-ConfigurationGetTestEnvironment**
> Environment Invoke-ConfigurationGetTestEnvironment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Get test-environment by id

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id

# Get test-environment by id
try {
    $Result = Invoke-ConfigurationGetTestEnvironment -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetTestEnvironment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 

### Return type

[**Environment**](Environment.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationUpdateTestEnvironment"></a>
# **Invoke-ConfigurationUpdateTestEnvironment**
> void Invoke-ConfigurationUpdateTestEnvironment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EnvironmentUpdate] <PSCustomObject><br>

Update test-environment

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

$TestId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test id
$Resolution = Initialize-Resolution -Width 0 -Height 0
$TargetHost = Initialize-TargetHost -Enabled $false -Endpoint "MyEndpoint"
$EnvironmentUpdateConnector = Initialize-EnvironmentUpdateConnector -Type "MyType" -VarHost "MyVarHost" -CommandLine "MyCommandLine" -Resource "MyResource" -ServerUrl "MyServerUrl" -DisplayResolution $Resolution -HostList $TargetHost -Gateway "MyGateway" -SuppressCertWarn $false

$EnvironmentUpdate = Initialize-EnvironmentUpdate -Connector $EnvironmentUpdateConnector -LauncherGroups "MyLauncherGroups" -AccountGroups "MyAccountGroups" # EnvironmentUpdate | Test-environment data

# Update test-environment
try {
    $Result = Invoke-ConfigurationUpdateTestEnvironment -TestId $TestId -EnvironmentUpdate $EnvironmentUpdate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateTestEnvironment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **EnvironmentUpdate** | [**EnvironmentUpdate**](EnvironmentUpdate.md)| Test-environment data | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# PSOpenAPITools.PSOpenAPITools\Api.ScreenshotApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataGetScreenshotByAppExecution**](ScreenshotApi.md#Invoke-DataGetScreenshotByAppExecution) | **GET** /v6-preview/test-runs/{testRunId}/app-executions/{appExecutionId}/screenshots/{screenshotId} | Get screenshot by app-execution id and screenshot id
[**Invoke-DataGetScreenshotByEvent**](ScreenshotApi.md#Invoke-DataGetScreenshotByEvent) | **GET** /v6-preview/test-runs/{testRunId}/events/{eventId}/screenshots | Get screenshot by event id
[**Invoke-DataGetScreenshotsByAppExecution**](ScreenshotApi.md#Invoke-DataGetScreenshotsByAppExecution) | **GET** /v6-preview/test-runs/{testRunId}/app-executions/{appExecutionId}/screenshots | Get list of screenshot by app-execution id


<a name="Invoke-DataGetScreenshotByAppExecution"></a>
# **Invoke-DataGetScreenshotByAppExecution**
> System.IO.FileInfo Invoke-DataGetScreenshotByAppExecution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppExecutionId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScreenshotId] <String><br>

Get screenshot by app-execution id and screenshot id

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$AppExecutionId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | App-execution id
$ScreenshotId = "MyScreenshotId" # String | Screenshot id

# Get screenshot by app-execution id and screenshot id
try {
    $Result = Invoke-DataGetScreenshotByAppExecution -TestRunId $TestRunId -AppExecutionId $AppExecutionId -ScreenshotId $ScreenshotId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetScreenshotByAppExecution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **AppExecutionId** | **String**| App-execution id | 
 **ScreenshotId** | **String**| Screenshot id | 

### Return type

**System.IO.FileInfo**

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DataGetScreenshotByEvent"></a>
# **Invoke-DataGetScreenshotByEvent**
> System.IO.FileInfo Invoke-DataGetScreenshotByEvent<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventId] <String><br>

Get screenshot by event id

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$EventId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Event id

# Get screenshot by event id
try {
    $Result = Invoke-DataGetScreenshotByEvent -TestRunId $TestRunId -EventId $EventId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetScreenshotByEvent: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **EventId** | **String**| Event id | 

### Return type

**System.IO.FileInfo**

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DataGetScreenshotsByAppExecution"></a>
# **Invoke-DataGetScreenshotsByAppExecution**
> Screenshot[] Invoke-DataGetScreenshotsByAppExecution<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AppExecutionId] <String><br>

Get list of screenshot by app-execution id

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

$TestRunId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-run id
$AppExecutionId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | App-execution id

# Get list of screenshot by app-execution id
try {
    $Result = Invoke-DataGetScreenshotsByAppExecution -TestRunId $TestRunId -AppExecutionId $AppExecutionId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetScreenshotsByAppExecution: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 
 **AppExecutionId** | **String**| App-execution id | 

### Return type

[**Screenshot[]**](Screenshot.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


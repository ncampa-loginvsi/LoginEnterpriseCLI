# PSOpenAPITools.PSOpenAPITools\Api.ScriptApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationCreateScript**](ScriptApi.md#Invoke-ConfigurationCreateScript) | **POST** /v6-preview/applications/{applicationId}/script | Create script via a text or file payload
[**Invoke-ConfigurationGetScript**](ScriptApi.md#Invoke-ConfigurationGetScript) | **GET** /v6-preview/applications/{applicationId}/script | Get script content by application id


<a name="Invoke-ConfigurationCreateScript"></a>
# **Invoke-ConfigurationCreateScript**
> void Invoke-ConfigurationCreateScript<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Create script via a text or file payload

To create a Script,  the following payloads may be added to the POST request:    a) A script file with valid script content (.cs file extension)<br />  b) A manual input of text via the POST request's text payload

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

$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application id

# Create script via a text or file payload
try {
    $Result = Invoke-ConfigurationCreateScript -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateScript: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationId** | **String**| Application id | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationGetScript"></a>
# **Invoke-ConfigurationGetScript**
> String Invoke-ConfigurationGetScript<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Get script content by application id

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

$ApplicationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Application id

# Get script content by application id
try {
    $Result = Invoke-ConfigurationGetScript -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetScript: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationId** | **String**| Application id | 

### Return type

**String**

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


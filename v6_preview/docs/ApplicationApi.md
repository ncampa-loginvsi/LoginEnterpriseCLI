# PSOpenAPITools.PSOpenAPITools\Api.ApplicationApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationCreateApplication**](ApplicationApi.md#Invoke-ConfigurationCreateApplication) | **POST** /v6-preview/applications | Create application.
[**Invoke-ConfigurationDeleteApplication**](ApplicationApi.md#Invoke-ConfigurationDeleteApplication) | **DELETE** /v6-preview/applications/{applicationId} | Delete application
[**Invoke-ConfigurationDeleteApplications**](ApplicationApi.md#Invoke-ConfigurationDeleteApplications) | **DELETE** /v6-preview/applications | Delete multiple applications
[**Invoke-ConfigurationGetApplication**](ApplicationApi.md#Invoke-ConfigurationGetApplication) | **GET** /v6-preview/applications/{applicationId} | Get application by id
[**Invoke-ConfigurationGetApplications**](ApplicationApi.md#Invoke-ConfigurationGetApplications) | **GET** /v6-preview/applications | Gets a paginated list of applications
[**Invoke-ConfigurationParseApplicationDetails**](ApplicationApi.md#Invoke-ConfigurationParseApplicationDetails) | **POST** /v6-preview/applications/parse | Parse application details from script content
[**Invoke-ConfigurationUpdateApplication**](ApplicationApi.md#Invoke-ConfigurationUpdateApplication) | **PUT** /v6-preview/applications/{applicationId} | Update application


<a name="Invoke-ConfigurationCreateApplication"></a>
# **Invoke-ConfigurationCreateApplication**
> ObjectId Invoke-ConfigurationCreateApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationCreateApplicationRequest] <PSCustomObject><br>

Create application.

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

$ConfigurationCreateApplicationRequest = Initialize-ConfigurationCreateApplicationRequest -Type "MyType" -BrowserName "chrome" -Url "MyUrl" -Name "MyName" -Description "MyDescription" -Username "MyUsername" -Password "MyPassword" -ScriptContent "MyScriptContent" -CommandLine "MyCommandLine" -WorkingDirectory "MyWorkingDirectory" # ConfigurationCreateApplicationRequest | Application data

# Create application.
try {
    $Result = Invoke-ConfigurationCreateApplication -ConfigurationCreateApplicationRequest $ConfigurationCreateApplicationRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConfigurationCreateApplicationRequest** | [**ConfigurationCreateApplicationRequest**](ConfigurationCreateApplicationRequest.md)| Application data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationDeleteApplication"></a>
# **Invoke-ConfigurationDeleteApplication**
> void Invoke-ConfigurationDeleteApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>

Delete application

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

# Delete application
try {
    $Result = Invoke-ConfigurationDeleteApplication -ApplicationId $ApplicationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ConfigurationDeleteApplications"></a>
# **Invoke-ConfigurationDeleteApplications**
> void Invoke-ConfigurationDeleteApplications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple applications

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

$RequestBody = "MyRequestBody" # String[] | Application ids (optional)

# Delete multiple applications
try {
    $Result = Invoke-ConfigurationDeleteApplications -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteApplications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)| Application ids | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationGetApplication"></a>
# **Invoke-ConfigurationGetApplication**
> ConfigurationGetApplication200Response Invoke-ConfigurationGetApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get application by id

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
$Include = "none" # ApplicationInclude[] | Include options (optional)

# Get application by id
try {
    $Result = Invoke-ConfigurationGetApplication -ApplicationId $ApplicationId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationId** | **String**| Application id | 
 **Include** | [**ApplicationInclude[]**](ApplicationInclude.md)| Include options | [optional] 

### Return type

[**ConfigurationGetApplication200Response**](ConfigurationGetApplication200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationGetApplications"></a>
# **Invoke-ConfigurationGetApplications**
> ApplicationResultSet Invoke-ConfigurationGetApplications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Gets a paginated list of applications

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

$OrderBy = "name" # ApplicationSortKey | Sort Key
$Direction = "asc" # String | Sort direction (default to "asc")
$Count = 56 # Int32 | Number of records to return (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$Filter = "MyFilter" # String | Filter on name or description (optional)
$Include = "none" # ApplicationInclude[] | Include options (optional)

# Gets a paginated list of applications
try {
    $Result = Invoke-ConfigurationGetApplications -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -Filter $Filter -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetApplications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**ApplicationSortKey**](ApplicationSortKey.md)| Sort Key | 
 **Direction** | **String**| Sort direction | [default to &quot;asc&quot;]
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **Filter** | **String**| Filter on name or description | [optional] 
 **Include** | [**ApplicationInclude[]**](ApplicationInclude.md)| Include options | [optional] 

### Return type

[**ApplicationResultSet**](ApplicationResultSet.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationParseApplicationDetails"></a>
# **Invoke-ConfigurationParseApplicationDetails**
> ConfigurationParseApplicationDetails200Response Invoke-ConfigurationParseApplicationDetails<br>

Parse application details from script content

To specify a Script, the following payloads may be added to the POST request:    a) A script file with valid script content (.cs file extension)<br />  b) A manual input of text via the POST request's text payload

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


# Parse application details from script content
try {
    $Result = Invoke-ConfigurationParseApplicationDetails
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationParseApplicationDetails: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConfigurationParseApplicationDetails200Response**](ConfigurationParseApplicationDetails200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationUpdateApplication"></a>
# **Invoke-ConfigurationUpdateApplication**
> void Invoke-ConfigurationUpdateApplication<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApplicationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationUpdateApplicationRequest] <PSCustomObject><br>

Update application

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
$ConfigurationUpdateApplicationRequest = Initialize-ConfigurationUpdateApplicationRequest -Type "MyType" -BrowserName "chrome" -Url "MyUrl" -Name "MyName" -Description "MyDescription" -Username "MyUsername" -Password "MyPassword" -MustUpdatePassword $false -ScriptContent "MyScriptContent" -CommandLine "MyCommandLine" -WorkingDirectory "MyWorkingDirectory" # ConfigurationUpdateApplicationRequest | Application data

# Update application
try {
    $Result = Invoke-ConfigurationUpdateApplication -ApplicationId $ApplicationId -ConfigurationUpdateApplicationRequest $ConfigurationUpdateApplicationRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateApplication: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApplicationId** | **String**| Application id | 
 **ConfigurationUpdateApplicationRequest** | [**ConfigurationUpdateApplicationRequest**](ConfigurationUpdateApplicationRequest.md)| Application data | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


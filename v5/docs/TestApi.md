# PSOpenAPITools.PSOpenAPITools\Api.TestApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationCopyTest**](TestApi.md#Invoke-ConfigurationCopyTest) | **POST** /v5/tests/{testId}/copy | Copy test
[**Invoke-ConfigurationCreateTest**](TestApi.md#Invoke-ConfigurationCreateTest) | **POST** /v5/tests | Create test
[**Invoke-ConfigurationDeleteTest**](TestApi.md#Invoke-ConfigurationDeleteTest) | **DELETE** /v5/tests/{testId} | Delete test
[**Invoke-ConfigurationDeleteTests**](TestApi.md#Invoke-ConfigurationDeleteTests) | **DELETE** /v5/tests | Delete multiple tests
[**Invoke-ConfigurationGetTest**](TestApi.md#Invoke-ConfigurationGetTest) | **GET** /v5/tests/{testId} | Get test by id
[**Invoke-ConfigurationGetTests**](TestApi.md#Invoke-ConfigurationGetTests) | **GET** /v5/tests | Get paginated list of tests
[**Invoke-ConfigurationStartTest**](TestApi.md#Invoke-ConfigurationStartTest) | **PUT** /v5/tests/{testId}/start | Start test
[**Invoke-ConfigurationStopTest**](TestApi.md#Invoke-ConfigurationStopTest) | **PUT** /v5/tests/{testId}/stop | Stop test
[**Invoke-ConfigurationUpdateTest**](TestApi.md#Invoke-ConfigurationUpdateTest) | **PUT** /v5/tests/{testId} | Update test


<a name="Invoke-ConfigurationCopyTest"></a>
# **Invoke-ConfigurationCopyTest**
> ObjectId Invoke-ConfigurationCopyTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestCopy] <PSCustomObject><br>

Copy test

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
$TestCopy = Initialize-TestCopy -Name "MyName" # TestCopy | Object containing the Name of the new Test

# Copy test
try {
    $Result = Invoke-ConfigurationCopyTest -TestId $TestId -TestCopy $TestCopy
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCopyTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **TestCopy** | [**TestCopy**](TestCopy.md)| Object containing the Name of the new Test | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationCreateTest"></a>
# **Invoke-ConfigurationCreateTest**
> ObjectId Invoke-ConfigurationCreateTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationCreateTestRequest] <PSCustomObject><br>

Create test

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

$Resolution = Initialize-Resolution -Width 0 -Height 0
$TargetHost = Initialize-TargetHost -Enabled $false -Endpoint "MyEndpoint"
$ApplicationTestCreateConnector = Initialize-ApplicationTestCreateConnector -Type "MyType" -VarHost "MyVarHost" -CommandLine "MyCommandLine" -ServerUrl "MyServerUrl" -Resource "MyResource" -DisplayResolution $Resolution -HostList $TargetHost -Gateway "MyGateway" -SuppressCertWarn $false

$ConfigurationCreateTestRequest = Initialize-ConfigurationCreateTestRequest -Type "MyType" -Name "MyName" -Description "MyDescription" -Connector $ApplicationTestCreateConnector -AccountGroups "MyAccountGroups" -LauncherGroups "MyLauncherGroups" # ConfigurationCreateTestRequest | Test data

# Create test
try {
    $Result = Invoke-ConfigurationCreateTest -ConfigurationCreateTestRequest $ConfigurationCreateTestRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConfigurationCreateTestRequest** | [**ConfigurationCreateTestRequest**](ConfigurationCreateTestRequest.md)| Test data | 

### Return type

[**ObjectId**](ObjectId.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationDeleteTest"></a>
# **Invoke-ConfigurationDeleteTest**
> void Invoke-ConfigurationDeleteTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Delete test

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

# Delete test
try {
    $Result = Invoke-ConfigurationDeleteTest -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationDeleteTests"></a>
# **Invoke-ConfigurationDeleteTests**
> void Invoke-ConfigurationDeleteTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete multiple tests

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

$RequestBody = "MyRequestBody" # String[] | Test ids

# Delete multiple tests
try {
    $Result = Invoke-ConfigurationDeleteTests -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)| Test ids | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationGetTest"></a>
# **Invoke-ConfigurationGetTest**
> ConfigurationGetTest200Response Invoke-ConfigurationGetTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get test by id

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
$Include = "none" # TestInclude[] | Include options (optional)

# Get test by id
try {
    $Result = Invoke-ConfigurationGetTest -TestId $TestId -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **Include** | [**TestInclude[]**](TestInclude.md)| Include options | [optional] 

### Return type

[**ConfigurationGetTest200Response**](ConfigurationGetTest200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationGetTests"></a>
# **Invoke-ConfigurationGetTests**
> TestResultSet Invoke-ConfigurationGetTests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-OrderBy] <PSCustomObject><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Include] <PSCustomObject[]><br>

Get paginated list of tests

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

$OrderBy = "name" # TestSortKey | Sort Key
$Direction = "asc" # String | Sort direction (default to "asc")
$Count = 56 # Int32 | Number of records to return (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)
$TestType = "applicationTest" # String | Test type (if null gets all) (optional)
$Include = "none" # TestInclude[] | include options (optional)

# Get paginated list of tests
try {
    $Result = Invoke-ConfigurationGetTests -OrderBy $OrderBy -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount -TestType $TestType -Include $Include
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetTests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **OrderBy** | [**TestSortKey**](TestSortKey.md)| Sort Key | 
 **Direction** | **String**| Sort direction | [default to &quot;asc&quot;]
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]
 **TestType** | **String**| Test type (if null gets all) | [optional] 
 **Include** | [**TestInclude[]**](TestInclude.md)| include options | [optional] 

### Return type

[**TestResultSet**](TestResultSet.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationStartTest"></a>
# **Invoke-ConfigurationStartTest**
> void Invoke-ConfigurationStartTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartRequest] <PSCustomObject><br>

Start test

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
$StartRequest = Initialize-StartRequest -Comment "MyComment" # StartRequest | Start-request data

# Start test
try {
    $Result = Invoke-ConfigurationStartTest -TestId $TestId -StartRequest $StartRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationStartTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **StartRequest** | [**StartRequest**](StartRequest.md)| Start-request data | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationStopTest"></a>
# **Invoke-ConfigurationStopTest**
> void Invoke-ConfigurationStopTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Stop test

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

# Stop test
try {
    $Result = Invoke-ConfigurationStopTest -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationStopTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationUpdateTest"></a>
# **Invoke-ConfigurationUpdateTest**
> void Invoke-ConfigurationUpdateTest<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationUpdateTestRequest] <PSCustomObject><br>

Update test

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
$EnvironmentUpdateConnector = Initialize-EnvironmentUpdateConnector -Type "MyType" -VarHost "MyVarHost" -CommandLine "MyCommandLine" -ServerUrl "MyServerUrl" -Resource "MyResource" -DisplayResolution $Resolution -HostList $TargetHost -Gateway "MyGateway" -SuppressCertWarn $false

$EnvironmentUpdate = Initialize-EnvironmentUpdate -Connector $EnvironmentUpdateConnector -LauncherGroups "MyLauncherGroups" -AccountGroups "MyAccountGroups"

$ConfigurationReplaceApplicationGroupStepsRequestInner = Initialize-ConfigurationReplaceApplicationGroupStepsRequestInner -Type "MyType" -ApplicationId "MyApplicationId" -RunOnce $false -LeaveRunning $false -IsEnabled $false -DelayInSeconds 0 -ApplicationGroupId "MyApplicationGroupId"
$ConfigurationUpdateTestRequest = Initialize-ConfigurationUpdateTestRequest -Type "MyType" -IsEmailEnabled $false -EmailRecipient "MyEmailRecipient" -IncludeSuccessfulApplications $false -Name "MyName" -Description "MyDescription" -EnvironmentUpdate $EnvironmentUpdate -Steps $ConfigurationReplaceApplicationGroupStepsRequestInner -NumberOfSessions 0 -RampUpDurationInMinutes 0 -TestDurationInMinutes 0 -ScheduleType "desktop" -IntervalInMinutes 0 -EnableCustomScreenshots $false -RepeatCount 0 -IsRepeatEnabled $false -IsEnabled $false -RestartOnComplete $false # ConfigurationUpdateTestRequest | Test data

# Update test
try {
    $Result = Invoke-ConfigurationUpdateTest -TestId $TestId -ConfigurationUpdateTestRequest $ConfigurationUpdateTestRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateTest: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationUpdateTestRequest** | [**ConfigurationUpdateTestRequest**](ConfigurationUpdateTestRequest.md)| Test data | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


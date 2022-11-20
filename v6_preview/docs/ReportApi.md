# PSOpenAPITools.PSOpenAPITools\Api.ReportApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-DataDownloadApplicationTestReport**](ReportApi.md#Invoke-DataDownloadApplicationTestReport) | **GET** /v6-preview/test-runs/{testRunId}/reports/pdf | Download application-test report PDF file by test-run id
[**Invoke-DataDownloadContinuousTestReport**](ReportApi.md#Invoke-DataDownloadContinuousTestReport) | **GET** /v6-preview/reports/{reportId}/pdf | Download report PDF file by id
[**Invoke-DataGetApplicationTestReport**](ReportApi.md#Invoke-DataGetApplicationTestReport) | **GET** /v6-preview/test-runs/{testRunId}/reports | Get application-test report by test-run id
[**Invoke-DataGetContinuousTestReport**](ReportApi.md#Invoke-DataGetContinuousTestReport) | **GET** /v6-preview/reports/{reportId} | Get report by id
[**Invoke-DataGetContinuousTestReports**](ReportApi.md#Invoke-DataGetContinuousTestReports) | **GET** /v6-preview/tests/{testId}/report-configurations/{configurationId}/reports | Get paginated list of continuous-test reports by configuration id


<a name="Invoke-DataDownloadApplicationTestReport"></a>
# **Invoke-DataDownloadApplicationTestReport**
> System.IO.FileInfo Invoke-DataDownloadApplicationTestReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>

Download application-test report PDF file by test-run id

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

# Download application-test report PDF file by test-run id
try {
    $Result = Invoke-DataDownloadApplicationTestReport -TestRunId $TestRunId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataDownloadApplicationTestReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 

### Return type

**System.IO.FileInfo**

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DataDownloadContinuousTestReport"></a>
# **Invoke-DataDownloadContinuousTestReport**
> System.IO.FileInfo Invoke-DataDownloadContinuousTestReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportId] <String><br>

Download report PDF file by id

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

$ReportId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report id

# Download report PDF file by id
try {
    $Result = Invoke-DataDownloadContinuousTestReport -ReportId $ReportId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataDownloadContinuousTestReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReportId** | **String**| Report id | 

### Return type

**System.IO.FileInfo**

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DataGetApplicationTestReport"></a>
# **Invoke-DataGetApplicationTestReport**
> DataGetApplicationTestReport200Response Invoke-DataGetApplicationTestReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestRunId] <String><br>

Get application-test report by test-run id

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

# Get application-test report by test-run id
try {
    $Result = Invoke-DataGetApplicationTestReport -TestRunId $TestRunId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetApplicationTestReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestRunId** | **String**| Test-run id | 

### Return type

[**DataGetApplicationTestReport200Response**](DataGetApplicationTestReport200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DataGetContinuousTestReport"></a>
# **Invoke-DataGetContinuousTestReport**
> DataGetApplicationTestReport200Response Invoke-DataGetContinuousTestReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ReportId] <String><br>

Get report by id

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

$ReportId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Report id

# Get report by id
try {
    $Result = Invoke-DataGetContinuousTestReport -ReportId $ReportId
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetContinuousTestReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ReportId** | **String**| Report id | 

### Return type

[**DataGetApplicationTestReport200Response**](DataGetApplicationTestReport200Response.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-DataGetContinuousTestReports"></a>
# **Invoke-DataGetContinuousTestReports**
> ReportResultSet Invoke-DataGetContinuousTestReports<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Direction] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <Int32><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeTotalCount] <System.Nullable[Boolean]><br>

Get paginated list of continuous-test reports by configuration id

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
$ConfigurationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Configuration id
$Direction = "asc" # String | Sort direction (default to "desc")
$Count = 56 # Int32 | Number of records to return (default to 100)
$Offset = 56 # Int32 | Start offset (optional) (default to 0)
$IncludeTotalCount = $true # Boolean | Include total number of records (optional) (default to $false)

# Get paginated list of continuous-test reports by configuration id
try {
    $Result = Invoke-DataGetContinuousTestReports -TestId $TestId -ConfigurationId $ConfigurationId -Direction $Direction -Count $Count -Offset $Offset -IncludeTotalCount $IncludeTotalCount
} catch {
    Write-Host ("Exception occurred when calling Invoke-DataGetContinuousTestReports: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ConfigurationId** | **String**| Configuration id | 
 **Direction** | **String**| Sort direction | [default to &quot;desc&quot;]
 **Count** | **Int32**| Number of records to return | [default to 100]
 **Offset** | **Int32**| Start offset | [optional] [default to 0]
 **IncludeTotalCount** | **Boolean**| Include total number of records | [optional] [default to $false]

### Return type

[**ReportResultSet**](ReportResultSet.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


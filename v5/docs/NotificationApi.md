# PSOpenAPITools.PSOpenAPITools\Api.NotificationApi

All URIs are relative to */publicApi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ConfigurationCreateContinuousTestNotification**](NotificationApi.md#Invoke-ConfigurationCreateContinuousTestNotification) | **POST** /v5/tests/{testId}/notifications | Create test-notification
[**Invoke-ConfigurationDeleteContinuousTestNotification**](NotificationApi.md#Invoke-ConfigurationDeleteContinuousTestNotification) | **DELETE** /v5/tests/{testId}/notifications/{notificationId} | Delete test-notification
[**Invoke-ConfigurationGetContinuousTestNotifications**](NotificationApi.md#Invoke-ConfigurationGetContinuousTestNotifications) | **GET** /v5/tests/{testId}/notifications | Get list of test-notification
[**Invoke-ConfigurationUpdateContinuousTestNotification**](NotificationApi.md#Invoke-ConfigurationUpdateContinuousTestNotification) | **PUT** /v5/tests/{testId}/notifications/{notificationId} | Update test-notification


<a name="Invoke-ConfigurationCreateContinuousTestNotification"></a>
# **Invoke-ConfigurationCreateContinuousTestNotification**
> void Invoke-ConfigurationCreateContinuousTestNotification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ThresholdNotificationCreate] <PSCustomObject><br>

Create test-notification

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
$AppThresholdCreate = Initialize-AppThresholdCreate -ApplicationId "MyApplicationId" -Timer "MyTimer" -IsEnabled $false -Value 0
$ThresholdNotificationCreate = Initialize-ThresholdNotificationCreate -Type "MyType" -Threshold $AppThresholdCreate -TimesExceeded 0 -PeriodDuration 0 -IsEnabled $false # ThresholdNotificationCreate | Test-notification date

# Create test-notification
try {
    $Result = Invoke-ConfigurationCreateContinuousTestNotification -TestId $TestId -ThresholdNotificationCreate $ThresholdNotificationCreate
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationCreateContinuousTestNotification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **ThresholdNotificationCreate** | [**ThresholdNotificationCreate**](ThresholdNotificationCreate.md)| Test-notification date | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationDeleteContinuousTestNotification"></a>
# **Invoke-ConfigurationDeleteContinuousTestNotification**
> void Invoke-ConfigurationDeleteContinuousTestNotification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationId] <String><br>

Delete test-notification

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
$NotificationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-notification id

# Delete test-notification
try {
    $Result = Invoke-ConfigurationDeleteContinuousTestNotification -TestId $TestId -NotificationId $NotificationId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationDeleteContinuousTestNotification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **NotificationId** | **String**| Test-notification id | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationGetContinuousTestNotifications"></a>
# **Invoke-ConfigurationGetContinuousTestNotifications**
> ConfigurationGetContinuousTestNotifications200ResponseInner[] Invoke-ConfigurationGetContinuousTestNotifications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>

Get list of test-notification

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

# Get list of test-notification
try {
    $Result = Invoke-ConfigurationGetContinuousTestNotifications -TestId $TestId
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationGetContinuousTestNotifications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 

### Return type

[**ConfigurationGetContinuousTestNotifications200ResponseInner[]**](ConfigurationGetContinuousTestNotifications200ResponseInner.md) (PSCustomObject)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ConfigurationUpdateContinuousTestNotification"></a>
# **Invoke-ConfigurationUpdateContinuousTestNotification**
> void Invoke-ConfigurationUpdateContinuousTestNotification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TestId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NotificationId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConfigurationUpdateContinuousTestNotificationRequest] <PSCustomObject><br>

Update test-notification

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
$NotificationId = "38400000-8cf0-11bd-b23e-10b96e4ef00d" # String | Test-notification id
$ThresholdUpdate = Initialize-ThresholdUpdate -IsEnabled $false -Value 0
$ConfigurationUpdateContinuousTestNotificationRequest = Initialize-ConfigurationUpdateContinuousTestNotificationRequest -Type "MyType" -TimesExceeded 0 -PeriodDuration 0 -IsEnabled $false -ThresholdUpdate $ThresholdUpdate # ConfigurationUpdateContinuousTestNotificationRequest | Test-notification data

# Update test-notification
try {
    $Result = Invoke-ConfigurationUpdateContinuousTestNotification -TestId $TestId -NotificationId $NotificationId -ConfigurationUpdateContinuousTestNotificationRequest $ConfigurationUpdateContinuousTestNotificationRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ConfigurationUpdateContinuousTestNotification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TestId** | **String**| Test id | 
 **NotificationId** | **String**| Test-notification id | 
 **ConfigurationUpdateContinuousTestNotificationRequest** | [**ConfigurationUpdateContinuousTestNotificationRequest**](ConfigurationUpdateContinuousTestNotificationRequest.md)| Test-notification data | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


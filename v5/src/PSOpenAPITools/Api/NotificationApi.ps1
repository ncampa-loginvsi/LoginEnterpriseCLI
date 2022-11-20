#
# Login Enterprise
# v6.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6-preview), [Documentation (ReDoc)](/publicApi/v6-preview/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <b>Public API version 5 is the preferred API to be used. Version 3 was deprecated in 4.5 and officially removed in 4.9.</b> <b>Public API version 6 is currently a preview API and is subject of (breaking) changes in the future.</b>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 5.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create test-notification

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER ThresholdNotificationCreate
Test-notification date

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ConfigurationCreateContinuousTestNotification {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ThresholdNotificationCreate},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationCreateContinuousTestNotification' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/v5/tests/{testId}/notifications'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling configurationCreateContinuousTestNotification."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))

        if (!$ThresholdNotificationCreate) {
            throw "Error! The required parameter `ThresholdNotificationCreate` missing when calling configurationCreateContinuousTestNotification."
        }

        $LocalVarBodyParameter = $ThresholdNotificationCreate | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["Bearer"]) {
            $LocalVarHeaderParameters['Bearer'] = $Configuration["ApiKey"]["Bearer"]
            Write-Verbose ("Using API key 'Bearer' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Delete test-notification

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER NotificationId
Test-notification id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ConfigurationDeleteContinuousTestNotification {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${NotificationId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationDeleteContinuousTestNotification' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/v5/tests/{testId}/notifications/{notificationId}'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling configurationDeleteContinuousTestNotification."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))
        if (!$NotificationId) {
            throw "Error! The required parameter `NotificationId` missing when calling configurationDeleteContinuousTestNotification."
        }
        $LocalVarUri = $LocalVarUri.replace('{notificationId}', [System.Web.HTTPUtility]::UrlEncode($NotificationId))

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["Bearer"]) {
            $LocalVarHeaderParameters['Bearer'] = $Configuration["ApiKey"]["Bearer"]
            Write-Verbose ("Using API key 'Bearer' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-ApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get list of test-notification

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ConfigurationGetContinuousTestNotifications200ResponseInner[]
#>
function Invoke-ConfigurationGetContinuousTestNotifications {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationGetContinuousTestNotifications' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/v5/tests/{testId}/notifications'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling configurationGetContinuousTestNotifications."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["Bearer"]) {
            $LocalVarHeaderParameters['Bearer'] = $Configuration["ApiKey"]["Bearer"]
            Write-Verbose ("Using API key 'Bearer' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ConfigurationGetContinuousTestNotifications200ResponseInner[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Update test-notification

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER NotificationId
Test-notification id

.PARAMETER ConfigurationUpdateContinuousTestNotificationRequest
Test-notification data

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ConfigurationUpdateContinuousTestNotification {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${NotificationId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ConfigurationUpdateContinuousTestNotificationRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationUpdateContinuousTestNotification' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        $Configuration = Get-Configuration
        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/v5/tests/{testId}/notifications/{notificationId}'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling configurationUpdateContinuousTestNotification."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))
        if (!$NotificationId) {
            throw "Error! The required parameter `NotificationId` missing when calling configurationUpdateContinuousTestNotification."
        }
        $LocalVarUri = $LocalVarUri.replace('{notificationId}', [System.Web.HTTPUtility]::UrlEncode($NotificationId))

        if (!$ConfigurationUpdateContinuousTestNotificationRequest) {
            throw "Error! The required parameter `ConfigurationUpdateContinuousTestNotificationRequest` missing when calling configurationUpdateContinuousTestNotification."
        }

        $LocalVarBodyParameter = $ConfigurationUpdateContinuousTestNotificationRequest | ConvertTo-Json -Depth 100

        if ($Configuration["ApiKey"] -and $Configuration["ApiKey"]["Bearer"]) {
            $LocalVarHeaderParameters['Bearer'] = $Configuration["ApiKey"]["Bearer"]
            Write-Verbose ("Using API key 'Bearer' in the header for authentication in {0}" -f $MyInvocation.MyCommand)
        }


        $LocalVarResult = Invoke-ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

#
# Login Enterprise
# v6.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6-preview), [Documentation (ReDoc)](/publicApi/v6-preview/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <b>Public API version 5 is the preferred API to be used. Version 3 was deprecated in 4.5 and officially removed in 4.9.</b> <b>Public API version 6 is currently a preview API and is subject of (breaking) changes in the future.</b>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 6.0-preview
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Get application diagnostics by test id

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER TimeRange
Time range

.PARAMETER LocationId
Location id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ApplicationDiagnostic[]
#>
function Invoke-DataGetApplicationDiagnostics {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("last15Minutes", "last30Minutes", "lastHour")]
        [String]
        ${TimeRange},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${LocationId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DataGetApplicationDiagnostics' | Write-Debug
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

        $LocalVarUri = '/v6-preview/tests/{testId}/application-diagnostics'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling dataGetApplicationDiagnostics."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))

        if ($TimeRange) {
            $LocalVarQueryParameters['timeRange'] = $TimeRange
        }

        $LocalVarQueryParameters['locationId'] = $LocationId

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
                                -ReturnType "ApplicationDiagnostic[]" `
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

Get continuous test diagnostic by test id

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER TimeRange
Time range

.PARAMETER LocationId
Location id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

TestDiagnostic
#>
function Invoke-DataGetContinuousTestDiagnostic {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("last15Minutes", "last30Minutes", "lastHour")]
        [String]
        ${TimeRange},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${LocationId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DataGetContinuousTestDiagnostic' | Write-Debug
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

        $LocalVarUri = '/v6-preview/tests/{testId}/test-diagnostics'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling dataGetContinuousTestDiagnostic."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))

        if ($TimeRange) {
            $LocalVarQueryParameters['timeRange'] = $TimeRange
        }

        $LocalVarQueryParameters['locationId'] = $LocationId

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
                                -ReturnType "TestDiagnostic" `
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

Get continuous test diagnostics

.DESCRIPTION

No description available.

.PARAMETER TimeRange
Time range

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

TestDiagnostic[]
#>
function Invoke-DataGetContinuousTestDiagnostics {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("last15Minutes", "last30Minutes", "lastHour")]
        [String]
        ${TimeRange},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DataGetContinuousTestDiagnostics' | Write-Debug
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

        $LocalVarUri = '/v6-preview/test-diagnostics'

        if ($TimeRange) {
            $LocalVarQueryParameters['timeRange'] = $TimeRange
        }

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
                                -ReturnType "TestDiagnostic[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}


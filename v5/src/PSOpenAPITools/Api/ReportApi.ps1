#
# Login Enterprise
# v6.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6-preview), [Documentation (ReDoc)](/publicApi/v6-preview/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <b>Public API version 5 is the preferred API to be used. Version 3 was deprecated in 4.5 and officially removed in 4.9.</b> <b>Public API version 6 is currently a preview API and is subject of (breaking) changes in the future.</b>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 5.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Download application-test report PDF file by test-run id

.DESCRIPTION

No description available.

.PARAMETER TestRunId
Test-run id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

System.IO.FileInfo
#>
function Invoke-DataDownloadApplicationTestReport {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestRunId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DataDownloadApplicationTestReport' | Write-Debug
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

        $LocalVarUri = '/v5/test-runs/{testRunId}/reports/pdf'
        if (!$TestRunId) {
            throw "Error! The required parameter `TestRunId` missing when calling dataDownloadApplicationTestReport."
        }
        $LocalVarUri = $LocalVarUri.replace('{testRunId}', [System.Web.HTTPUtility]::UrlEncode($TestRunId))

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
                                -ReturnType "System.IO.FileInfo" `
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

Download report PDF file by id

.DESCRIPTION

No description available.

.PARAMETER ReportId
Report id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

System.IO.FileInfo
#>
function Invoke-DataDownloadReport {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ReportId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DataDownloadReport' | Write-Debug
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

        $LocalVarUri = '/v5/reports/{reportId}/pdf'
        if (!$ReportId) {
            throw "Error! The required parameter `ReportId` missing when calling dataDownloadReport."
        }
        $LocalVarUri = $LocalVarUri.replace('{reportId}', [System.Web.HTTPUtility]::UrlEncode($ReportId))

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
                                -ReturnType "System.IO.FileInfo" `
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

Get application-test report by test-run id

.DESCRIPTION

No description available.

.PARAMETER TestRunId
Test-run id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DataGetApplicationTestReport200Response
#>
function Invoke-DataGetApplicationTestReport {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestRunId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DataGetApplicationTestReport' | Write-Debug
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

        $LocalVarUri = '/v5/test-runs/{testRunId}/reports'
        if (!$TestRunId) {
            throw "Error! The required parameter `TestRunId` missing when calling dataGetApplicationTestReport."
        }
        $LocalVarUri = $LocalVarUri.replace('{testRunId}', [System.Web.HTTPUtility]::UrlEncode($TestRunId))

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
                                -ReturnType "DataGetApplicationTestReport200Response" `
                                -IsBodyNullable $false

        # process oneOf response
        $LocalVarResult["Response"] = ConvertFrom-JsonToDataGetApplicationTestReport200Response (ConvertTo-Json $LocalVarResult["Response"] -Depth 100)

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get paginated list of continuous-test reports by configuration id

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER ConfigurationId
Configuration id

.PARAMETER Direction
Sort direction

.PARAMETER Count
Number of records to return

.PARAMETER Offset
Start offset

.PARAMETER IncludeTotalCount
Include total number of records

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ReportResultSet
#>
function Invoke-DataGetContinuousTestReports {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ConfigurationId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("asc", "desc")]
        [String]
        ${Direction},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${Count},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${IncludeTotalCount},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DataGetContinuousTestReports' | Write-Debug
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

        $LocalVarUri = '/v5/tests/{testId}/report-configurations/{configurationId}/reports'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling dataGetContinuousTestReports."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))
        if (!$ConfigurationId) {
            throw "Error! The required parameter `ConfigurationId` missing when calling dataGetContinuousTestReports."
        }
        $LocalVarUri = $LocalVarUri.replace('{configurationId}', [System.Web.HTTPUtility]::UrlEncode($ConfigurationId))

        if (!$Direction) {
            throw "Error! The required parameter `Direction` missing when calling dataGetContinuousTestReports."
        }
        $LocalVarQueryParameters['direction'] = $Direction

        if (!$Count) {
            throw "Error! The required parameter `Count` missing when calling dataGetContinuousTestReports."
        }
        $LocalVarQueryParameters['count'] = $Count

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($IncludeTotalCount) {
            $LocalVarQueryParameters['includeTotalCount'] = $IncludeTotalCount
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
                                -ReturnType "ReportResultSet" `
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

Get report by id

.DESCRIPTION

No description available.

.PARAMETER ReportId
Report id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

DataGetApplicationTestReport200Response
#>
function Invoke-DataGetReport {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${ReportId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-DataGetReport' | Write-Debug
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

        $LocalVarUri = '/v5/reports/{reportId}'
        if (!$ReportId) {
            throw "Error! The required parameter `ReportId` missing when calling dataGetReport."
        }
        $LocalVarUri = $LocalVarUri.replace('{reportId}', [System.Web.HTTPUtility]::UrlEncode($ReportId))

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
                                -ReturnType "DataGetApplicationTestReport200Response" `
                                -IsBodyNullable $false

        # process oneOf response
        $LocalVarResult["Response"] = ConvertFrom-JsonToDataGetApplicationTestReport200Response (ConvertTo-Json $LocalVarResult["Response"] -Depth 100)

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

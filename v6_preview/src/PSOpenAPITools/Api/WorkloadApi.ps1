#
# Login Enterprise
# v6.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6-preview), [Documentation (ReDoc)](/publicApi/v6-preview/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <b>Public API version 5 is the preferred API to be used. Version 3 was deprecated in 4.5 and officially removed in 4.9.</b> <b>Public API version 6 is currently a preview API and is subject of (breaking) changes in the future.</b>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 6.0-preview
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Add test-workload steps

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER ConfigurationReplaceApplicationGroupStepsRequestInner
List of step data

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ConfigurationCreateTestWorkloadSteps {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${ConfigurationReplaceApplicationGroupStepsRequestInner},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationCreateTestWorkloadSteps' | Write-Debug
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

        $LocalVarUri = '/v6-preview/tests/{testId}/workload'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling configurationCreateTestWorkloadSteps."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))

        if (!$ConfigurationReplaceApplicationGroupStepsRequestInner) {
            throw "Error! The required parameter `ConfigurationReplaceApplicationGroupStepsRequestInner` missing when calling configurationCreateTestWorkloadSteps."
        }

        $LocalVarBodyParameter = $ConfigurationReplaceApplicationGroupStepsRequestInner | ConvertTo-Json -Depth 100

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

Remove test-workload step

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER StepId
Step id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ConfigurationDeleteTestWorkloadStep {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${StepId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationDeleteTestWorkloadStep' | Write-Debug
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

        $LocalVarUri = '/v6-preview/tests/{testId}/workload/{stepId}'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling configurationDeleteTestWorkloadStep."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))
        if (!$StepId) {
            throw "Error! The required parameter `StepId` missing when calling configurationDeleteTestWorkloadStep."
        }
        $LocalVarUri = $LocalVarUri.replace('{stepId}', [System.Web.HTTPUtility]::UrlEncode($StepId))

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

Remove test-workload steps

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER RequestBody
Step ids

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ConfigurationDeleteTestWorkloadSteps {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${RequestBody},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationDeleteTestWorkloadSteps' | Write-Debug
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

        $LocalVarUri = '/v6-preview/tests/{testId}/workload'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling configurationDeleteTestWorkloadSteps."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))

        if (!$RequestBody) {
            throw "Error! The required parameter `RequestBody` missing when calling configurationDeleteTestWorkloadSteps."
        }

        $LocalVarBodyParameter = $RequestBody | ConvertTo-Json -Depth 100

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

Get test-workload by test id

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

Workload
#>
function Invoke-ConfigurationGetTestWorkload {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationGetTestWorkload' | Write-Debug
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

        $LocalVarUri = '/v6-preview/tests/{testId}/workload'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling configurationGetTestWorkload."
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
                                -ReturnType "Workload" `
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

Replace test-workload steps

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER ConfigurationReplaceApplicationGroupStepsRequestInner
List of step data

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ConfigurationReplaceTestWorkloadSteps {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${ConfigurationReplaceApplicationGroupStepsRequestInner},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationReplaceTestWorkloadSteps' | Write-Debug
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

        $LocalVarUri = '/v6-preview/tests/{testId}/workload'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling configurationReplaceTestWorkloadSteps."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))

        $LocalVarBodyParameter = $ConfigurationReplaceApplicationGroupStepsRequestInner | ConvertTo-Json -Depth 100

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
                                -IsBodyNullable $true

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Update test-workload step

.DESCRIPTION

No description available.

.PARAMETER TestId
Test id

.PARAMETER StepId
Step id

.PARAMETER ConfigurationUpdateTestWorkloadStepRequest
Step data

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ConfigurationUpdateTestWorkloadStep {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TestId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${StepId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ConfigurationUpdateTestWorkloadStepRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationUpdateTestWorkloadStep' | Write-Debug
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

        $LocalVarUri = '/v6-preview/tests/{testId}/workload/{stepId}'
        if (!$TestId) {
            throw "Error! The required parameter `TestId` missing when calling configurationUpdateTestWorkloadStep."
        }
        $LocalVarUri = $LocalVarUri.replace('{testId}', [System.Web.HTTPUtility]::UrlEncode($TestId))
        if (!$StepId) {
            throw "Error! The required parameter `StepId` missing when calling configurationUpdateTestWorkloadStep."
        }
        $LocalVarUri = $LocalVarUri.replace('{stepId}', [System.Web.HTTPUtility]::UrlEncode($StepId))

        if (!$ConfigurationUpdateTestWorkloadStepRequest) {
            throw "Error! The required parameter `ConfigurationUpdateTestWorkloadStepRequest` missing when calling configurationUpdateTestWorkloadStep."
        }

        $LocalVarBodyParameter = $ConfigurationUpdateTestWorkloadStepRequest | ConvertTo-Json -Depth 100

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


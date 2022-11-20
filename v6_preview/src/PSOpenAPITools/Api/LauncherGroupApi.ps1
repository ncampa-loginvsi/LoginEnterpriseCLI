#
# Login Enterprise
# v6.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6-preview), [Documentation (ReDoc)](/publicApi/v6-preview/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <b>Public API version 5 is the preferred API to be used. Version 3 was deprecated in 4.5 and officially removed in 4.9.</b> <b>Public API version 6 is currently a preview API and is subject of (breaking) changes in the future.</b>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 6.0-preview
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create launcher-group

.DESCRIPTION

No description available.

.PARAMETER ConfigurationCreateLauncherGroupRequest
Launcher-group data

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ObjectId
#>
function Invoke-ConfigurationCreateLauncherGroup {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ConfigurationCreateLauncherGroupRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationCreateLauncherGroup' | Write-Debug
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

        $LocalVarUri = '/v6-preview/launcher-groups'

        if (!$ConfigurationCreateLauncherGroupRequest) {
            throw "Error! The required parameter `ConfigurationCreateLauncherGroupRequest` missing when calling configurationCreateLauncherGroup."
        }

        $LocalVarBodyParameter = $ConfigurationCreateLauncherGroupRequest | ConvertTo-Json -Depth 100

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
                                -ReturnType "ObjectId" `
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

Delete launcher-group

.DESCRIPTION

No description available.

.PARAMETER GroupId
Launcher-group id

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ConfigurationDeleteLauncherGroup {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${GroupId},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationDeleteLauncherGroup' | Write-Debug
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

        $LocalVarUri = '/v6-preview/launcher-groups/{groupId}'
        if (!$GroupId) {
            throw "Error! The required parameter `GroupId` missing when calling configurationDeleteLauncherGroup."
        }
        $LocalVarUri = $LocalVarUri.replace('{groupId}', [System.Web.HTTPUtility]::UrlEncode($GroupId))

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

delete multiple launcher-groups

.DESCRIPTION

No description available.

.PARAMETER RequestBody
Launcher-group ids

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ConfigurationDeleteLauncherGroups {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${RequestBody},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationDeleteLauncherGroups' | Write-Debug
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

        $LocalVarUri = '/v6-preview/launcher-groups'

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

Get launcher-group by id

.DESCRIPTION

No description available.

.PARAMETER GroupId
Launcher-group id

.PARAMETER Include
Include options

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ConfigurationGetLauncherGroup200Response
#>
function Invoke-ConfigurationGetLauncherGroup {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${GroupId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${Include},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationGetLauncherGroup' | Write-Debug
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

        $LocalVarUri = '/v6-preview/launcher-groups/{groupId}'
        if (!$GroupId) {
            throw "Error! The required parameter `GroupId` missing when calling configurationGetLauncherGroup."
        }
        $LocalVarUri = $LocalVarUri.replace('{groupId}', [System.Web.HTTPUtility]::UrlEncode($GroupId))

        if ($Include) {
            $LocalVarQueryParameters['include'] = $Include
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
                                -ReturnType "ConfigurationGetLauncherGroup200Response" `
                                -IsBodyNullable $false

        # process oneOf response
        $LocalVarResult["Response"] = ConvertFrom-JsonToConfigurationGetLauncherGroup200Response (ConvertTo-Json $LocalVarResult["Response"] -Depth 100)

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get paginated list of launcher-groups

.DESCRIPTION

No description available.

.PARAMETER OrderBy
Sort Key

.PARAMETER Direction
Sort direction

.PARAMETER Count
Number of records to return

.PARAMETER Filter
A Launcher-Group Filter applied on Name and Description fields

.PARAMETER Offset
Start offset

.PARAMETER IncludeTotalCount
Include total number of records

.PARAMETER Include
Include options

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

LauncherGroupResultSet
#>
function Invoke-ConfigurationGetLauncherGroups {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${OrderBy},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [ValidateSet("asc", "desc")]
        [String]
        ${Direction},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [Int32]
        ${Count},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filter},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${IncludeTotalCount},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${Include},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationGetLauncherGroups' | Write-Debug
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

        $LocalVarUri = '/v6-preview/launcher-groups'

        $LocalVarQueryParameters['filter'] = $Filter

        if (!$OrderBy) {
            throw "Error! The required parameter `OrderBy` missing when calling configurationGetLauncherGroups."
        }
        $LocalVarQueryParameters['orderBy'] = $OrderBy

        if (!$Direction) {
            throw "Error! The required parameter `Direction` missing when calling configurationGetLauncherGroups."
        }
        $LocalVarQueryParameters['direction'] = $Direction

        if (!$Count) {
            throw "Error! The required parameter `Count` missing when calling configurationGetLauncherGroups."
        }
        $LocalVarQueryParameters['count'] = $Count

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($IncludeTotalCount) {
            $LocalVarQueryParameters['includeTotalCount'] = $IncludeTotalCount
        }

        if ($Include) {
            $LocalVarQueryParameters['include'] = $Include
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
                                -ReturnType "LauncherGroupResultSet" `
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

Update launcher-group

.DESCRIPTION

No description available.

.PARAMETER GroupId
Launcher-group id

.PARAMETER ConfigurationCreateLauncherGroupRequest
Launcher-group data

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Invoke-ConfigurationUpdateLauncherGroup {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${GroupId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ConfigurationCreateLauncherGroupRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-ConfigurationUpdateLauncherGroup' | Write-Debug
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

        $LocalVarUri = '/v6-preview/launcher-groups/{groupId}'
        if (!$GroupId) {
            throw "Error! The required parameter `GroupId` missing when calling configurationUpdateLauncherGroup."
        }
        $LocalVarUri = $LocalVarUri.replace('{groupId}', [System.Web.HTTPUtility]::UrlEncode($GroupId))

        if (!$ConfigurationCreateLauncherGroupRequest) {
            throw "Error! The required parameter `ConfigurationCreateLauncherGroupRequest` missing when calling configurationUpdateLauncherGroup."
        }

        $LocalVarBodyParameter = $ConfigurationCreateLauncherGroupRequest | ConvertTo-Json -Depth 100

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


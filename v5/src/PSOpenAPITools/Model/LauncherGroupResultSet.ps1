#
# Login Enterprise
# v6.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6-preview), [Documentation (ReDoc)](/publicApi/v6-preview/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <b>Public API version 5 is the preferred API to be used. Version 3 was deprecated in 4.5 and officially removed in 4.9.</b> <b>Public API version 6 is currently a preview API and is subject of (breaking) changes in the future.</b>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 5.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Paginated result-set

.PARAMETER Items
Requested items
.PARAMETER TotalCount
Total item count (if requested)
.PARAMETER Offset
Offset requested
.OUTPUTS

LauncherGroupResultSet<PSCustomObject>
#>

function Initialize-LauncherGroupResultSet {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Items},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${TotalCount},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${Offset}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => LauncherGroupResultSet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "items" = ${Items}
            "totalCount" = ${TotalCount}
            "offset" = ${Offset}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LauncherGroupResultSet<PSCustomObject>

.DESCRIPTION

Convert from JSON to LauncherGroupResultSet<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LauncherGroupResultSet<PSCustomObject>
#>
function ConvertFrom-JsonToLauncherGroupResultSet {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => LauncherGroupResultSet' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LauncherGroupResultSet
        $AllProperties = ("items", "totalCount", "offset")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "items"))) { #optional property not found
            $Items = $null
        } else {
            $Items = $JsonParameters.PSobject.Properties["items"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "totalCount"))) { #optional property not found
            $TotalCount = $null
        } else {
            $TotalCount = $JsonParameters.PSobject.Properties["totalCount"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "offset"))) { #optional property not found
            $Offset = $null
        } else {
            $Offset = $JsonParameters.PSobject.Properties["offset"].value
        }

        $PSO = [PSCustomObject]@{
            "items" = ${Items}
            "totalCount" = ${TotalCount}
            "offset" = ${Offset}
        }

        return $PSO
    }

}


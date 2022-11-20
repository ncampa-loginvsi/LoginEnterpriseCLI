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

Object creation response list

.PARAMETER IdList
Id of the newly created object
.OUTPUTS

ObjectIdList<PSCustomObject>
#>

function Initialize-ObjectIdList {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${IdList}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ObjectIdList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "idList" = ${IdList}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ObjectIdList<PSCustomObject>

.DESCRIPTION

Convert from JSON to ObjectIdList<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ObjectIdList<PSCustomObject>
#>
function ConvertFrom-JsonToObjectIdList {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ObjectIdList' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ObjectIdList
        $AllProperties = ("idList")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "idList"))) { #optional property not found
            $IdList = $null
        } else {
            $IdList = $JsonParameters.PSobject.Properties["idList"].value
        }

        $PSO = [PSCustomObject]@{
            "idList" = ${IdList}
        }

        return $PSO
    }

}


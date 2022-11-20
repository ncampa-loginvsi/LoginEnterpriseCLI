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

Start request

.PARAMETER Comment
Comment
.OUTPUTS

StartRequest<PSCustomObject>
#>

function Initialize-StartRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Comment}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => StartRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StartRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to StartRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StartRequest<PSCustomObject>
#>
function ConvertFrom-JsonToStartRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => StartRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in StartRequest
        $AllProperties = ("comment")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "comment"))) { #optional property not found
            $Comment = $null
        } else {
            $Comment = $JsonParameters.PSobject.Properties["comment"].value
        }

        $PSO = [PSCustomObject]@{
            "comment" = ${Comment}
        }

        return $PSO
    }

}

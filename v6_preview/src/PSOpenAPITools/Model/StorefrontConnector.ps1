#
# Login Enterprise
# v6.0-preview [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v6-preview), [Documentation (ReDoc)](/publicApi/v6-preview/docs/index.html)  v5.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v5), [Documentation (ReDoc)](/publicApi/v5/docs/index.html)  v4.0 [API Console (Swagger)](/publicApi/swagger/index.html?urls.primaryName=Login%20Enterprise%20API%20v4), [Documentation (ReDoc)](/publicApi/v4/docs/index.html)    <b>Public API version 5 is the preferred API to be used. Version 3 was deprecated in 4.5 and officially removed in 4.9.</b> <b>Public API version 6 is currently a preview API and is subject of (breaking) changes in the future.</b>   The Login Enterprise Public API provides documentation and Swagger per version within the product. For additional information please refer to the [documentation](https://support.loginvsi.com/hc/en-us/articles/360009534760) on our website. 
# Version: 6.0-preview
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Citrix StoreFront

.PARAMETER Type
No description available.
.PARAMETER ServerUrl
Server Url
.PARAMETER Resource
Resource
.PARAMETER DisplayResolution
No description available.
.OUTPUTS

StorefrontConnector<PSCustomObject>
#>

function Initialize-StorefrontConnector {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ServerUrl},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Resource},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${DisplayResolution}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => StorefrontConnector' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $ServerUrl) {
            throw "invalid value for 'ServerUrl', 'ServerUrl' cannot be null."
        }

        if ($null -eq $Resource) {
            throw "invalid value for 'Resource', 'Resource' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "serverUrl" = ${ServerUrl}
            "resource" = ${Resource}
            "displayResolution" = ${DisplayResolution}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to StorefrontConnector<PSCustomObject>

.DESCRIPTION

Convert from JSON to StorefrontConnector<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

StorefrontConnector<PSCustomObject>
#>
function ConvertFrom-JsonToStorefrontConnector {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => StorefrontConnector' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in StorefrontConnector
        $AllProperties = ("type", "serverUrl", "resource", "displayResolution")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'type' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "serverUrl"))) {
            throw "Error! JSON cannot be serialized due to the required property 'serverUrl' missing."
        } else {
            $ServerUrl = $JsonParameters.PSobject.Properties["serverUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "resource"))) {
            throw "Error! JSON cannot be serialized due to the required property 'resource' missing."
        } else {
            $Resource = $JsonParameters.PSobject.Properties["resource"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "displayResolution"))) { #optional property not found
            $DisplayResolution = $null
        } else {
            $DisplayResolution = $JsonParameters.PSobject.Properties["displayResolution"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "serverUrl" = ${ServerUrl}
            "resource" = ${Resource}
            "displayResolution" = ${DisplayResolution}
        }

        return $PSO
    }

}


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

App group invocation step

.PARAMETER Type
No description available.
.PARAMETER ApplicationGroup
No description available.
.PARAMETER Id
Step id
.PARAMETER IsEnabled
Enable step
.OUTPUTS

AppGroupReference<PSCustomObject>
#>

function Initialize-AppGroupReference {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ApplicationGroup},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${IsEnabled}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => AppGroupReference' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "applicationGroup" = ${ApplicationGroup}
            "id" = ${Id}
            "isEnabled" = ${IsEnabled}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AppGroupReference<PSCustomObject>

.DESCRIPTION

Convert from JSON to AppGroupReference<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AppGroupReference<PSCustomObject>
#>
function ConvertFrom-JsonToAppGroupReference {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => AppGroupReference' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AppGroupReference
        $AllProperties = ("type", "applicationGroup", "id", "isEnabled")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationGroup"))) { #optional property not found
            $ApplicationGroup = $null
        } else {
            $ApplicationGroup = $JsonParameters.PSobject.Properties["applicationGroup"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEnabled"))) { #optional property not found
            $IsEnabled = $null
        } else {
            $IsEnabled = $JsonParameters.PSobject.Properties["isEnabled"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "applicationGroup" = ${ApplicationGroup}
            "id" = ${Id}
            "isEnabled" = ${IsEnabled}
        }

        return $PSO
    }

}


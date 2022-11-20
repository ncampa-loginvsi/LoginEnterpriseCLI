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

Location create data

.PARAMETER Name
Location name
.PARAMETER Latitude
Latitude
.PARAMETER Longitude
Longitude
.PARAMETER Description
Description
.OUTPUTS

LocationCreate<PSCustomObject>
#>

function Initialize-LocationCreate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Latitude},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Longitude},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => LocationCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($Name.length -gt 100) {
            throw "invalid value for 'Name', the character length must be smaller than or equal to 100."
        }

        if ($Name.length -lt 1) {
            throw "invalid value for 'Name', the character length must be great than or equal to 1."
        }

        if ($Latitude -and $Latitude -gt 90) {
          throw "invalid value for 'Latitude', must be smaller than or equal to 90."
        }

        if ($Latitude -and $Latitude -lt -90) {
          throw "invalid value for 'Latitude', must be greater than or equal to -90."
        }

        if ($Longitude -and $Longitude -gt 180) {
          throw "invalid value for 'Longitude', must be smaller than or equal to 180."
        }

        if ($Longitude -and $Longitude -lt -180) {
          throw "invalid value for 'Longitude', must be greater than or equal to -180."
        }

        if (!$Description -and $Description.length -gt 256) {
            throw "invalid value for 'Description', the character length must be smaller than or equal to 256."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "latitude" = ${Latitude}
            "longitude" = ${Longitude}
            "description" = ${Description}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to LocationCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to LocationCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

LocationCreate<PSCustomObject>
#>
function ConvertFrom-JsonToLocationCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => LocationCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in LocationCreate
        $AllProperties = ("name", "latitude", "longitude", "description")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "latitude"))) { #optional property not found
            $Latitude = $null
        } else {
            $Latitude = $JsonParameters.PSobject.Properties["latitude"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "longitude"))) { #optional property not found
            $Longitude = $null
        } else {
            $Longitude = $JsonParameters.PSobject.Properties["longitude"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "latitude" = ${Latitude}
            "longitude" = ${Longitude}
            "description" = ${Description}
        }

        return $PSO
    }

}


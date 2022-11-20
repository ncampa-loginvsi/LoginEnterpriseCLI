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

Report configuration creation data

.PARAMETER Frequency
No description available.
.PARAMETER LatencyThreshold
No description available.
.PARAMETER LoginTimeThreshold
No description available.
.PARAMETER Name
Report configuration name
.PARAMETER Description
Report configuration description
.PARAMETER IsEnabled
Enable report configuration
.PARAMETER Notification
No description available.
.OUTPUTS

ReportConfigurationCreate<PSCustomObject>
#>

function Initialize-ReportConfigurationCreate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("daily", "monthly", "weekly")]
        [PSCustomObject]
        ${Frequency},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LatencyThreshold},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${LoginTimeThreshold},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsEnabled},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Notification}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ReportConfigurationCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Frequency) {
            throw "invalid value for 'Frequency', 'Frequency' cannot be null."
        }

        if ($null -eq $LatencyThreshold) {
            throw "invalid value for 'LatencyThreshold', 'LatencyThreshold' cannot be null."
        }

        if ($null -eq $LoginTimeThreshold) {
            throw "invalid value for 'LoginTimeThreshold', 'LoginTimeThreshold' cannot be null."
        }

        if ($null -eq $Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if ($null -eq $IsEnabled) {
            throw "invalid value for 'IsEnabled', 'IsEnabled' cannot be null."
        }

        if ($null -eq $Notification) {
            throw "invalid value for 'Notification', 'Notification' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "frequency" = ${Frequency}
            "latencyThreshold" = ${LatencyThreshold}
            "loginTimeThreshold" = ${LoginTimeThreshold}
            "name" = ${Name}
            "description" = ${Description}
            "isEnabled" = ${IsEnabled}
            "notification" = ${Notification}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReportConfigurationCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReportConfigurationCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReportConfigurationCreate<PSCustomObject>
#>
function ConvertFrom-JsonToReportConfigurationCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ReportConfigurationCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ReportConfigurationCreate
        $AllProperties = ("frequency", "latencyThreshold", "loginTimeThreshold", "name", "description", "isEnabled", "notification")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'frequency' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "frequency"))) {
            throw "Error! JSON cannot be serialized due to the required property 'frequency' missing."
        } else {
            $Frequency = $JsonParameters.PSobject.Properties["frequency"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "latencyThreshold"))) {
            throw "Error! JSON cannot be serialized due to the required property 'latencyThreshold' missing."
        } else {
            $LatencyThreshold = $JsonParameters.PSobject.Properties["latencyThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "loginTimeThreshold"))) {
            throw "Error! JSON cannot be serialized due to the required property 'loginTimeThreshold' missing."
        } else {
            $LoginTimeThreshold = $JsonParameters.PSobject.Properties["loginTimeThreshold"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEnabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'isEnabled' missing."
        } else {
            $IsEnabled = $JsonParameters.PSobject.Properties["isEnabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notification"))) {
            throw "Error! JSON cannot be serialized due to the required property 'notification' missing."
        } else {
            $Notification = $JsonParameters.PSobject.Properties["notification"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        $PSO = [PSCustomObject]@{
            "frequency" = ${Frequency}
            "latencyThreshold" = ${LatencyThreshold}
            "loginTimeThreshold" = ${LoginTimeThreshold}
            "name" = ${Name}
            "description" = ${Description}
            "isEnabled" = ${IsEnabled}
            "notification" = ${Notification}
        }

        return $PSO
    }

}


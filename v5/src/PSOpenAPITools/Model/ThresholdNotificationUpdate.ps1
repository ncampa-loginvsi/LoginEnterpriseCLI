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

Threshold notification update data

.PARAMETER Type
No description available.
.PARAMETER ThresholdUpdate
No description available.
.PARAMETER TimesExceeded
Number of times the event occurred
.PARAMETER PeriodDuration
Time range for calculation
.PARAMETER IsEnabled
Enables notification
.OUTPUTS

ThresholdNotificationUpdate<PSCustomObject>
#>

function Initialize-ThresholdNotificationUpdate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${ThresholdUpdate},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${TimesExceeded},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Int32]
        ${PeriodDuration},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsEnabled}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => ThresholdNotificationUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $ThresholdUpdate) {
            throw "invalid value for 'ThresholdUpdate', 'ThresholdUpdate' cannot be null."
        }

        if ($null -eq $TimesExceeded) {
            throw "invalid value for 'TimesExceeded', 'TimesExceeded' cannot be null."
        }

        if ($null -eq $PeriodDuration) {
            throw "invalid value for 'PeriodDuration', 'PeriodDuration' cannot be null."
        }

        if ($null -eq $IsEnabled) {
            throw "invalid value for 'IsEnabled', 'IsEnabled' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "thresholdUpdate" = ${ThresholdUpdate}
            "timesExceeded" = ${TimesExceeded}
            "periodDuration" = ${PeriodDuration}
            "isEnabled" = ${IsEnabled}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ThresholdNotificationUpdate<PSCustomObject>

.DESCRIPTION

Convert from JSON to ThresholdNotificationUpdate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ThresholdNotificationUpdate<PSCustomObject>
#>
function ConvertFrom-JsonToThresholdNotificationUpdate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => ThresholdNotificationUpdate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ThresholdNotificationUpdate
        $AllProperties = ("type", "thresholdUpdate", "timesExceeded", "periodDuration", "isEnabled")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "thresholdUpdate"))) {
            throw "Error! JSON cannot be serialized due to the required property 'thresholdUpdate' missing."
        } else {
            $ThresholdUpdate = $JsonParameters.PSobject.Properties["thresholdUpdate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "timesExceeded"))) {
            throw "Error! JSON cannot be serialized due to the required property 'timesExceeded' missing."
        } else {
            $TimesExceeded = $JsonParameters.PSobject.Properties["timesExceeded"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "periodDuration"))) {
            throw "Error! JSON cannot be serialized due to the required property 'periodDuration' missing."
        } else {
            $PeriodDuration = $JsonParameters.PSobject.Properties["periodDuration"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEnabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'isEnabled' missing."
        } else {
            $IsEnabled = $JsonParameters.PSobject.Properties["isEnabled"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "thresholdUpdate" = ${ThresholdUpdate}
            "timesExceeded" = ${TimesExceeded}
            "periodDuration" = ${PeriodDuration}
            "isEnabled" = ${IsEnabled}
        }

        return $PSO
    }

}


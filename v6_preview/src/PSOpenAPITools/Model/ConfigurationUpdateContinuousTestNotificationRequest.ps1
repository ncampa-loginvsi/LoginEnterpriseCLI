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

Test-notification data

.PARAMETER Json

JSON object

.OUTPUTS

ConfigurationUpdateContinuousTestNotificationRequest<PSCustomObject>
#>
function ConvertFrom-JsonToConfigurationUpdateContinuousTestNotificationRequest {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match EventNotificationUpdate defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToEventNotificationUpdate $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "EventNotificationUpdate"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'EventNotificationUpdate' defined in oneOf (ConfigurationUpdateContinuousTestNotificationRequest). Proceeding to the next one if any."
        }

        # try to match ThresholdNotificationUpdate defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToThresholdNotificationUpdate $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "ThresholdNotificationUpdate"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'ThresholdNotificationUpdate' defined in oneOf (ConfigurationUpdateContinuousTestNotificationRequest). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([EventNotificationUpdate, ThresholdNotificationUpdate]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("EventNotificationUpdate", "ThresholdNotificationUpdate")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([EventNotificationUpdate, ThresholdNotificationUpdate]). JSON Payload: $($Json)"
        }
    }
}


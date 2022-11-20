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

Application details

.PARAMETER Json

JSON object

.OUTPUTS

ConfigurationParseApplicationDetails200Response<PSCustomObject>
#>
function ConvertFrom-JsonToConfigurationParseApplicationDetails200Response {
    [CmdletBinding()]
    Param (
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        $match = 0
        $matchType = $null
        $matchInstance = $null

        # try to match ApplicationDetails defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToApplicationDetails $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "ApplicationDetails"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'ApplicationDetails' defined in oneOf (ConfigurationParseApplicationDetails200Response). Proceeding to the next one if any."
        }

        # try to match WebApplicationDetails defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToWebApplicationDetails $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "WebApplicationDetails"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'WebApplicationDetails' defined in oneOf (ConfigurationParseApplicationDetails200Response). Proceeding to the next one if any."
        }

        # try to match WindowsApplicationDetails defined in the oneOf schemas
        try {
            $matchInstance = ConvertFrom-JsonToWindowsApplicationDetails $Json

            foreach($property in $matchInstance.PsObject.Properties) {
                if ($null -ne $property.Value) {
                    $matchType = "WindowsApplicationDetails"
                    $match++
                    break
                }
            }
        } catch {
            # fail to match the schema defined in oneOf, proceed to the next one
            Write-Debug "Failed to match 'WindowsApplicationDetails' defined in oneOf (ConfigurationParseApplicationDetails200Response). Proceeding to the next one if any."
        }

        if ($match -gt 1) {
            throw "Error! The JSON payload matches more than one type defined in oneOf schemas ([ApplicationDetails, WebApplicationDetails, WindowsApplicationDetails]). JSON Payload: $($Json)"
        } elseif ($match -eq 1) {
            return [PSCustomObject]@{
                "ActualType" = ${matchType}
                "ActualInstance" = ${matchInstance}
                "OneOfSchemas" = @("ApplicationDetails", "WebApplicationDetails", "WindowsApplicationDetails")
            }
        } else {
            throw "Error! The JSON payload doesn't matches any type defined in oneOf schemas ([ApplicationDetails, WebApplicationDetails, WindowsApplicationDetails]). JSON Payload: $($Json)"
        }
    }
}


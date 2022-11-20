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

App invocation step creation data

.PARAMETER Type
No description available.
.PARAMETER ApplicationId
Application id
.PARAMETER RunOnce
Run the application only once
.PARAMETER LeaveRunning
Do not close the application
.PARAMETER IsEnabled
Enable step
.OUTPUTS

AppInvocationCreate<PSCustomObject>
#>

function Initialize-AppInvocationCreate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApplicationId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${RunOnce},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${LeaveRunning},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${IsEnabled}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => AppInvocationCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if ($null -eq $ApplicationId) {
            throw "invalid value for 'ApplicationId', 'ApplicationId' cannot be null."
        }

        if ($null -eq $RunOnce) {
            throw "invalid value for 'RunOnce', 'RunOnce' cannot be null."
        }

        if ($null -eq $LeaveRunning) {
            throw "invalid value for 'LeaveRunning', 'LeaveRunning' cannot be null."
        }

        if ($null -eq $IsEnabled) {
            throw "invalid value for 'IsEnabled', 'IsEnabled' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "applicationId" = ${ApplicationId}
            "runOnce" = ${RunOnce}
            "leaveRunning" = ${LeaveRunning}
            "isEnabled" = ${IsEnabled}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AppInvocationCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to AppInvocationCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AppInvocationCreate<PSCustomObject>
#>
function ConvertFrom-JsonToAppInvocationCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => AppInvocationCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AppInvocationCreate
        $AllProperties = ("type", "applicationId", "runOnce", "leaveRunning", "isEnabled")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "applicationId"))) {
            throw "Error! JSON cannot be serialized due to the required property 'applicationId' missing."
        } else {
            $ApplicationId = $JsonParameters.PSobject.Properties["applicationId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "runOnce"))) {
            throw "Error! JSON cannot be serialized due to the required property 'runOnce' missing."
        } else {
            $RunOnce = $JsonParameters.PSobject.Properties["runOnce"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "leaveRunning"))) {
            throw "Error! JSON cannot be serialized due to the required property 'leaveRunning' missing."
        } else {
            $LeaveRunning = $JsonParameters.PSobject.Properties["leaveRunning"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "isEnabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'isEnabled' missing."
        } else {
            $IsEnabled = $JsonParameters.PSobject.Properties["isEnabled"].value
        }

        $PSO = [PSCustomObject]@{
            "type" = ${Type}
            "applicationId" = ${ApplicationId}
            "runOnce" = ${RunOnce}
            "leaveRunning" = ${LeaveRunning}
            "isEnabled" = ${IsEnabled}
        }

        return $PSO
    }

}


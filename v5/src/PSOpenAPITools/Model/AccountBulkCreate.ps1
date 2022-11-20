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

No description available.

.PARAMETER NumberOfDigits
Number of Digits
.PARAMETER NumberOfAccounts
Number of Accounts
.PARAMETER Username
Username
.PARAMETER Domain
Domain id
.PARAMETER Email
Email
.PARAMETER Password
Password
.PARAMETER Fields
Account custom fields
.OUTPUTS

AccountBulkCreate<PSCustomObject>
#>

function Initialize-AccountBulkCreate {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NumberOfDigits},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Int32]]
        ${NumberOfAccounts},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Username},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Domain},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Password},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Fields}
    )

    Process {
        'Creating PSCustomObject: PSOpenAPITools => AccountBulkCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "numberOfDigits" = ${NumberOfDigits}
            "numberOfAccounts" = ${NumberOfAccounts}
            "username" = ${Username}
            "domain" = ${Domain}
            "email" = ${Email}
            "password" = ${Password}
            "fields" = ${Fields}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccountBulkCreate<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccountBulkCreate<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccountBulkCreate<PSCustomObject>
#>
function ConvertFrom-JsonToAccountBulkCreate {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSOpenAPITools => AccountBulkCreate' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in AccountBulkCreate
        $AllProperties = ("numberOfDigits", "numberOfAccounts", "username", "domain", "email", "password", "fields")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberOfDigits"))) { #optional property not found
            $NumberOfDigits = $null
        } else {
            $NumberOfDigits = $JsonParameters.PSobject.Properties["numberOfDigits"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "numberOfAccounts"))) { #optional property not found
            $NumberOfAccounts = $null
        } else {
            $NumberOfAccounts = $JsonParameters.PSobject.Properties["numberOfAccounts"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "username"))) { #optional property not found
            $Username = $null
        } else {
            $Username = $JsonParameters.PSobject.Properties["username"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "domain"))) { #optional property not found
            $Domain = $null
        } else {
            $Domain = $JsonParameters.PSobject.Properties["domain"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "password"))) { #optional property not found
            $Password = $null
        } else {
            $Password = $JsonParameters.PSobject.Properties["password"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "fields"))) { #optional property not found
            $Fields = $null
        } else {
            $Fields = $JsonParameters.PSobject.Properties["fields"].value
        }

        $PSO = [PSCustomObject]@{
            "numberOfDigits" = ${NumberOfDigits}
            "numberOfAccounts" = ${NumberOfAccounts}
            "username" = ${Username}
            "domain" = ${Domain}
            "email" = ${Email}
            "password" = ${Password}
            "fields" = ${Fields}
        }

        return $PSO
    }

}


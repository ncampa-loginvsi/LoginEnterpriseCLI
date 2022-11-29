# LoginEnterpriseCLI
Experimental CLI for interacting with Login Enterprise v5 and v6-preview endpoints. This is not officially supported in any way.

Please navigate to the v5 or v6_preview folders for extensive documentation and example code snippets on every available command.

Generally, this is the process to get started.

1. Download the ZIP file containing the repository files.
2. In a Powershell window (v6.3 or greater), navigate to the directory of your desired API version.
3. Run the following commands

``` 
# Run the build to import all of the commands.
.\Build.ps1

# Import all available functions
Import-Module ".\src\PSOpenAPITools -Verbose

# Get current API connection configuration
Get-Configuration

# Set API Credentials
$BaseUrl = "YOUR_FQDN/publicApi"
$AccessToken = "YOUR_ACCESS_TOKEN"
$DefaultHeaders = @{
  "Accept" = "application/json"
  "Authorization" = "Bearer $AccessToken"
}

# Set API connection configuation
Set-Configuration -BaseUrl $BaseUrl -AccessToken $AccessToken -DefaultHeaders $DefaultHeaders
```

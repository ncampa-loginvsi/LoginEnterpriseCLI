# LoginEnterpriseCLI
Experimental CLI for interacting with Login Enterprise v5 and v6-preview endpoints.

Please navigate to the v5 or v6_preview folders for extensive documentation and example code snippets.


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
# Set API connection configuation
Set-Configuration \
  -BaseUrl $BaseUrl
  -AccessToken $AccessToken

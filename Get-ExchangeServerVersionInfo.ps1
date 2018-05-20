<#
#>
[CmdletBinding()]
param(
  [Parameter(Mandatory,HelpMessage='Enter Active Directory FQDN')][string]$DomainName,
  [Parameter(Mandatory,HelpMessage='Enter Exchange Organisation Name')][string]$ExchangeOrganisation
)

$DomainParts = $DomainName.Split('.')

Write-Host ('Exchange Server Schema and Object Information for {0}' -f $DomainName)

Write-Host 'Schema Version rangeUpper -----------------------------'

DSQUERY.exe * "CN=ms-Exch-Schema-Version-Pt,CN=schema,CN=configuration,DC=$($DomainParts[0]),DC=$($DomainParts[1])" -Scope base -Attr rangeUpper

Write-Host 'MESO Objects objectVersion ----------------------------'

DSQUERY.exe * "CN=Microsoft Exchange System Objects,DC=$($DomainParts[0]),DC=$($DomainParts[1])" -Scope base -Attr objectVersion

Write-Host 'Exchange Organisation msExchProductId -----------------'

DSQUERY.exe * "CN=$($ExchangeOrganisation),CN=Microsoft Exchange,CN=Services,CN=Configuration,DC=$($DomainParts[0]),DC=$($DomainParts[1])" -Scope base -Attr msExchProductId

Write-Host 'Exchange Organisation objectVersion -------------------'

DSQUERY.exe * "CN=$($ExchangeOrganisation),CN=Microsoft Exchange,CN=Services,CN=Configuration,DC=$($DomainParts[0]),DC=$($DomainParts[1])" -Scope base -Attr objectVersion
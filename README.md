# Get-ExchangeServerVersionInfo.ps1

Get Exchange Server schema and version related information for an exisiting Exchange Organization

## Description

This script gets the Exchange schema version from the Active Directory schema partition

The Exchange organization name is fetched from Active Directory automatically

The script fetches at forest level:

- objectVersion of MESO Container
- rangeUpper of ms-Exch-Schema-Version-Pt
- msExchProductId of Exchange Organization container
- objectVersion of Exchange Organization container

The script fetches at forest level:

- objectVersion of MESO Container

## Requirements

- Windows Server 2012 R2, Windows Server 2016

## Parameters

None

## Examples

``` PowerShell
.\Get-ExchangeServerVersionInfo.ps1
```

Fetch all version information in the Active Directory forest

## Note

THIS CODE IS MADE AVAILABLE AS IS, WITHOUT WARRANTY OF ANY KIND. THE ENTIRE
RISK OF THE USE OR THE RESULTS FROM THE USE OF THIS CODE REMAINS WITH THE USER.

## TechNet Gallery

Download and vote at TechNet Gallery

* [https://gallery.technet.microsoft.com/Get-Exchange-Schema-73d3e629](https://gallery.technet.microsoft.com/Get-Exchange-Schema-73d3e629)

## Credits

Written by: Thomas Stensitzki

Stay connected:

* My Blog: [http://justcantgetenough.granikos.eu](http://justcantgetenough.granikos.eu)
* Twitter: [https://twitter.com/stensitzki](https://twitter.com/stensitzki)
* LinkedIn: [http://de.linkedin.com/in/thomasstensitzki](http://de.linkedin.com/in/thomasstensitzki)
* Github: [https://github.com/Apoc70](https://github.com/Apoc70)

For more Office 365, Cloud Security, and Exchange Server stuff checkout services provided by Granikos

* Blog: [http://blog.granikos.eu](http://blog.granikos.eu)
* Website: [https://www.granikos.eu/en/](https://www.granikos.eu/en/)
* Twitter: [https://twitter.com/granikos_de](https://twitter.com/granikos_de)
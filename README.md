# GUID

A PowerShell module that extends the native capabilities for working with Globally Unique Identifiers (GUIDs).
It adds convenient commands to validate whether a string is a GUID and to extract GUIDs embedded in text.

## Installation

Install the module from the PowerShell Gallery:

```powershell
Install-PSResource -Name GUID
Import-Module -Name GUID
```

## Usage

### Example: Test if a string is a GUID

Validate whether a string is a well-formed GUID. The command accepts pipeline input and returns a boolean.

```powershell
Test-Guid -String 'd85b1407-351d-4694-9392-03acc5870eb1'
'd85b1407-351d-4694-9392-03acc5870eb1' | Test-Guid
```

```text
True
True
```

### Example: Find a GUID in a string

Extract the GUID embedded in a longer string. The command returns the matched GUID value.

```powershell
'The ID is d85b1407-351d-4694-9392-03acc5870eb1' | Search-Guid
```

```text
d85b1407-351d-4694-9392-03acc5870eb1
```

## Documentation

Documentation is published at [psmodule.io/GUID](https://psmodule.io/GUID/).

Discover the available commands and browse their help from the terminal:

```powershell
Get-Command -Module GUID
Get-Help -Name Test-Guid -Examples
```

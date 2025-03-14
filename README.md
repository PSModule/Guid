# GUID


A PowerShell module that extends the native capabilities for working with Globally Unique Identifiers (GUIDs).

## Prerequisites

This module uses the following external resources:
- The [PSModule framework](https://github.com/PSModule) for building, testing, and publishing the module.

## Installation

To install the module from the PowerShell Gallery, run the following commands:

```powershell
Install-PSResource -Name GUID
Import-Module -Name GUID
```

## Usage

Here are some typical use cases for the GUID module.

### Example 1: Test if a string is a GUID

Check if a string is a valid GUID using:

```powershell
Test-Guid -Guid 'd85b1407-351d-4694-9392-03acc5870eb1'
'd85b1407-351d-4694-9392-03acc5870eb1' | Test-Guid
'd85b1407-351d-4694-9392-03acc5870eb1' | IsGuid
```

This command returns `True` if the provided string is a valid GUID; otherwise, it returns `False`.

### Example 2: Find a GUID in a string

Extract a GUID from a string using:

```powershell
Search-Guid -Text "The GUID is d85b1407-351d-4694-9392-03acc5870eb1"
```

This command returns the GUID found in the provided string.

### Find More Examples

For additional usage examples, please refer to the [examples](examples) folder. You can also list all available commands with:

```powershell
Get-Command -Module GUID
```

And view detailed help for each command (for instance, for New-GuidPlus) by running:

```powershell
Get-Help -Examples <command>
```

## Contributing

Contributions are welcome—whether you're reporting an issue, suggesting improvements, or submitting new code!

### For Users

If you encounter any bugs, unexpected behavior, or missing functionality, please open an issue on this repository. Your feedback is valuable.

### For Developers

If you'd like to contribute code or enhancements, please review the [Contribution Guidelines](CONTRIBUTING.md) first. You can start by addressing
an existing issue or proposing a new feature.

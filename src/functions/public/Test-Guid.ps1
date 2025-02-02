filter Test-Guid {
    <#
        .SYNOPSIS
        Validates whether a given string is a GUID.

        .DESCRIPTION
        Checks if the input string matches the standard GUID format.
        The function returns `$true` if the string is a valid GUID, otherwise `$false`.

        .EXAMPLE
        "550e8400-e29b-41d4-a716-446655440000" | Test-Guid

        Returns `$true` since the provided string is a valid GUID.

        .EXAMPLE
        "not-a-guid" | IsGuid

        Returns `$false` because the input is not a valid GUID.

        .EXAMPLE
        Test-Guid -String "550e8400-e29b-41d4-a716-446655440000"

        Directly checks if the provided string is a valid GUID and returns `$true`.

        .LINK
        https://psmodule.io/GUID/Functions/Test-Guid/
    #>

    [Cmdletbinding()]
    [Alias('IsGuid', 'Test-IsGuid')]
    [OutputType([bool])]
    param (
        # The string to validate as a GUID.
        [Parameter(
            Mandatory,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName
        )]
        [string] $String
    )

    # Check GUID against regex
    $String -match $script:GUIDPattern
}

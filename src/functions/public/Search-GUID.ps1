filter Search-Guid {
    <#
        .SYNOPSIS
        Extracts a GUID from a given string.

        .DESCRIPTION
        This function searches for a GUID within the provided string and returns it.
        The function accepts input from the pipeline and processes each string to extract GUIDs.

        .EXAMPLE
        "The ID is 550e8400-e29b-41d4-a716-446655440000" | Search-Guid

        Extracts and returns the GUID `550e8400-e29b-41d4-a716-446655440000` from the input string.

        .EXAMPLE
        Search-Guid -String "GUID: 123e4567-e89b-12d3-a456-426614174000"

        Returns the extracted GUID `123e4567-e89b-12d3-a456-426614174000`.

        .LINK
        https://psmodule.io/GUID/Functions/Search-Guid/
    #>
    [CmdletBinding()]
    [Alias('Find-Guid')]
    [OutputType([guid])]
    param(
        # The string containing a potential GUID.
        [Parameter(
            Mandatory,
            ValueFromPipeline,
            ValueFromPipelineByPropertyName
        )]
        [string] $String
    )

    Write-Verbose "Looking for a GUID in $String"
    $GUID = $String.ToLower() |
        Select-String -Pattern '[0-9a-f]{8}\-[0-9a-f]{4}\-[0-9a-f]{4}\-[0-9a-f]{4}\-[0-9a-f]{12}' |
        Select-Object -ExpandProperty Matches |
        Select-Object -ExpandProperty Value
    Write-Verbose "Found GUID: $GUID"
    $GUID
}

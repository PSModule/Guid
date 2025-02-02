Describe 'Functions' {
    Context 'Function: Search-Guid' {
        It 'Search-Guid finds a GUID from a string' {
            $GUID = 'Test this 123e4567-e89b-12d3-a456-426655440000' | Search-Guid
            $GUID | Should -Be '123e4567-e89b-12d3-a456-426655440000'
        }
        It 'Search-Guid returns null if a GUID is not found' {
            $GUID = 'Test this 123e4567-e85440000' | Search-Guid
            $GUID | Should -BeNullOrEmpty
        }
        It 'Search-Guid finds multiple GUIDs from a string' {
            $multi = @'
.EXAMPLE
'The ID is 550e8400-e29b-41d4-a716-446655440000' | Search-Guid

Extracts and returns the GUID `550e8400-e29b-41d4-a716-446655440000` from the input string.

.EXAMPLE
Search-Guid -String 'GUID: 123e4567-e89b-12d3-a456-426614174000'

Returns the extracted GUID `123e4567-e89b-12d3-a456-426614174000`.
'@

            $multi | Search-GUID | Should -HaveCount 4
        }
    }

    Context 'Function: Search-Guid' {
        It 'Search-Guid returns true if a GUID is found' {
            $GUID = '123e4567-e89b-12d3-a456-426655440000' | Test-Guid
            $guid | Should -BeTrue
        }
        It 'Search-Guid returns false if a GUID is not found' {
            $GUID = 'Test this 123e4567-e85440000' | IsGuid
            $guid | Should -BeFalse
        }
    }
}

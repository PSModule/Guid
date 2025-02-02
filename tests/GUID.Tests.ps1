Describe 'Functions' {
    Context 'Function: Search-GUID' {
        It 'Search-GUID finds a GUID from a string' {
            $GUID = 'Test this 123e4567-e89b-12d3-a456-426655440000' | Search-GUID
            $GUID | Should -Be '123e4567-e89b-12d3-a456-426655440000'
        }
        It 'Search-GUID returns null if a GUID is not found' {
            $GUID = 'Test this 123e4567-e85440000' | Search-GUID
            $GUID | Should -BeNullOrEmpty
        }
    }

    Context 'Function: Search-GUID' {
        It 'Search-GUID returns true if a GUID is found' {
            $GUID = '123e4567-e89b-12d3-a456-426655440000' | Test-IsGUID
            $guid | Should -BeTrue
        }
        It 'Search-GUID returns false if a GUID is not found' {
            $GUID = 'Test this 123e4567-e85440000' | Test-IsGUID
            $guid | Should -BeFalse
        }
    }
}

﻿Describe 'Functions' {
    Context 'Function: Search-Guid' {
        It 'Search-Guid finds a GUID from a string' {
            $GUID = 'Test this 123e4567-e89b-12d3-a456-426655440000' | Search-Guid
            $GUID | Should -Be '123e4567-e89b-12d3-a456-426655440000'
        }
        It 'Search-Guid returns null if a GUID is not found' {
            $GUID = 'Test this 123e4567-e85440000' | Search-Guid
            $GUID | Should -BeNullOrEmpty
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

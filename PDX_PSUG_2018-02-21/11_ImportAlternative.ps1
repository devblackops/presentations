# Run me first!
$env:PSModulePath += ":$((pwd).path)"
$VerbosePreference = 'Continue'

# Can't specify version!
# using module Fruit

# Module specification doesn't seem to work
# using module @{ModuleName = 'Fruit'; ModuleVersion = '1.0.0' }
# using module @{ModuleName = 'Fruit'; ModuleVersion = '2.0.0' }

# Import-Module -Name Fruit -RequiredVersion 1.0.0
# New-Apple
# Import-Module -Name Fruit -RequiredVersion 1.0.0
# New-Apple
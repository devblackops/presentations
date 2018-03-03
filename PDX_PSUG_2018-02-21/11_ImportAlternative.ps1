# Run me first!
# Restart session
$env:PSModulePath += ":$((pwd).path)"
$VerbosePreference = 'Continue'

# Dragon: Can't specify version!
# Get-Module Fruit -ListAvailable
# using module Fruit

# Latest version of Fruit module was installed
# What if I wanted an older one?

# Module specification doesn't seem to work
# using module @{ModuleName = 'Fruit'; ModuleVersion = '1.0.0' }
# Get-Module Fruit

# using module @{ModuleName = 'Fruit'; ModuleVersion = '2.0.0' }

# Import-Module -Name Fruit -RequiredVersion 1.0.0
# Get-Module Fruit
# New-Apple

# Import-Module -Name Fruit -RequiredVersion 2.0.0 -Force
# Get-Module Fruit
# New-Apple
# Both versions are imported
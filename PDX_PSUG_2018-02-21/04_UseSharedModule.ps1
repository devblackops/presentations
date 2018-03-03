
# Here be dragons!
# Inheriting from classes in another module can be problematic
# Classes must be in psm1 and not dot sourced
Import-Module ./Tesla -Verbose
New-Tesla # nope

# This works
Import-Module ./Car
Get-Module Car
New-Car


# Dragons: RequiresModules doesn't work to import classes
# This doesn't
Import-Module ./Tesla
[car]::new()

# Fix Car module
# Fix Tesla module to not use RequiresModules

Import-Module ./Tesla -Force
New-Tesla
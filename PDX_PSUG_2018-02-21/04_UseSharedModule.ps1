
# Here be dragons!
# Inheriting from classes in another module can be problematic
# Classes must be in psm1 and not dot sourced
Import-Module ./Tesla -Verbose
New-Tesla # nope

# This works
Import-Module ./Car
Get-Module Car
New-Car

# This doesn't
Import-Module ./Tesla
[car]::new()

# Fix Car module
Import-Module ./Tesla -Force



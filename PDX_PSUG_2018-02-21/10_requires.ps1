<#
#requires -module car
#>
using module Car

# Run me first!
#$env:PSModulePath += ":$((pwd).path)"
$c = [Car]::new()
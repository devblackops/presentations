#requires -module car

#Dragon: requires doesn't expose classes

# Run me first!
#$env:PSModulePath += ":$((pwd).path)"

<#

#>
#using module Car

$c = [Car]::new()
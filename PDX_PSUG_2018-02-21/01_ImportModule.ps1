#Scenario: Try to use a class by importing module
Import-Module ./MyClass1
[Foo]::new()

<#
Dragon: Import-Module DOES NOT expose classes from module
#>
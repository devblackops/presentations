# Try to use a class by importing module
Import-Module ./MyClass1
[Foo]::new()

<#
Issues
Import-Module DOES NOT expose classes
#>
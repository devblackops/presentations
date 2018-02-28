# Try to use a class with "using module ..."
using module ./MyClass1
[Foo]::new()

Get-Module -Name MyClass1 | Format-list
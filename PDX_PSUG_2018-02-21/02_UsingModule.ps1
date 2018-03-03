#Scenario: Try to use a class with "using module ..."
using module ./MyClass1
[Foo]::new()

Get-Module MyClass1

# Dragons beware
# There are issues with "using module" we'll see later

# No 'private' properties, only 'hidden', but not very well

class Foo {
    [string]$Name = 'bar'
    hidden [string]$Secret = 'hunter2'
}

$f = [Foo]::new()
$f | Get-Member
$f | Get-Member -Force
$f.Secret
$f.Secret = '12345'
$f.Secret
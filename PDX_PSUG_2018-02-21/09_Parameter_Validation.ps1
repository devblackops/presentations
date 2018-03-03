
# http://overpoweredshell.com/Introduction-to-PowerShell-Classes/#method-property-validation---being-clever

# Custom validator class
class ValidatedName {
    [ValidateLength(3, 15)]
    [string]$Value

    ValidatedName([string]$String) {
        $this.Value = $String
    }
}

class MyClass {
    [string]MyMethod([ValidatedName]$Name) {
        return "Hi $($Name.Value)"
    }
}

$x = [MyClass]::new()
$x.MyMethod('Brandon')
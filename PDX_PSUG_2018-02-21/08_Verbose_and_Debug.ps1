
# via @JohnLBevan https://stackoverflow.com/questions/39413401/powershell-5-class-write-debug-or-write-verbose-output-in-constructor-or-method

class DemoClass {

    [string]$Name

    DemoClass([string]$Name) {
        Write-Verbose "I'm told my name is $Name"
        $this.Name = $Name
    }

    [string]GetMyName() {
        Write-Debug 'Beginning GetMyName() function'
        Write-Verbose "I've been asked my name"
        return "Hello, my name is $($this.Name)"
    }
}

function Invoke-NormalFunction([string]$Name) {
    $myDemo = [DemoClass]::new($Name)
    $myDemo.GetMyName()
}

function Invoke-AdvancedFunction {
    [CmdletBinding()]
    param(
        [string]$Name
    )

    $myDemo = [DemoClass]::new($Name)
    $myDemo.GetMyName()
}

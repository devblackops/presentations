[cmdletbinding()]
param(
    [string[]]$Task = 'default'
)

Import-Module psake -Verbose:$false -ErrorAction Stop
$psakeParams = @{
    buildFile = "$PSScriptRoot/psake.ps1"
    taskList  = $Task
    noLogo    = $true
    Verbose   = ($VerbosePreference -eq 'Continue')
}
Invoke-psake @psakeParams
exit ([int](-not $psake.build_success))
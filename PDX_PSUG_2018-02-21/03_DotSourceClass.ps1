#Scenario: Import a module that uses dot sourced classes.
#Classes are exposed if returned from a module function

Import-Module ./Car -Verbose
$c = New-Car 
$c | gm

# Dragons beware! You'll see later
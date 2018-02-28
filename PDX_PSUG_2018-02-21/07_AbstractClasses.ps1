
# An abstract class is not a "thing" with PowerShell classes
# You can mimic it... sort of

# An abstract class can be useful if it makes to logical sense to 
# instantiate an instance of the base class. Like an animal.

# You can use an abstract class when there is a 'IS-A' relationship

class Animal {
    Animal() {
        $type = $this.GetType()
        if ($type -eq [Animal]) {
            throw "Class [$Type] must be inherited"
        }
    }

    [void]MakeSound() {
        throw 'Must override method'
    }
}

class Cow : Animal {
    [void]MakeSound() {
        Write-Host 'moo'
    }
}

# "pseudo abstract" class not intended to be used directly
$animal = [Animal]::new()

# Cow is a subclass of animal
$cow = [Cow]::new()
$cow.MakeSound()

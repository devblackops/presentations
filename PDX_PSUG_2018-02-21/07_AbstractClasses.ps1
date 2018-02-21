
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

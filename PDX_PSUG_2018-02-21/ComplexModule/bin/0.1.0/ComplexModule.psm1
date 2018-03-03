
class Planet {
    [int]$Moons = 0
}

class Earth : Planet {
    [string]$Name = 'Earth'
    [int]$Moons = 1
}

class Mars : Planet {
    [string]$Name = 'Mars'
    [int]$Moons = 2
}
function New-Planet {
    [cmdletbinding()]
    param(
        [ValidateSet('Earth', 'Mars')]
        [string]$Type = 'Earth'
    )
    
    switch ($Type) {
        'Earth' {
            [Earth]::new()
        }
        'Mars' {
            [Mars]::new()
        }
    }
}


# No variables here. Only  literal paths!
#using module '/Users/bolin/OneDrive/Decks/PDX_PSUG_2018-02-21\Car'
using module ..\Car

class Tesla : Car {
    [int]$MaxSpeed = 250
    [int]$Range = 620

    Tesla () {
        $this.Manufacturer = 'Tesla'
        $this.Model = 'Roadster'
        $this.Year = 2020
    }

    [string]Drive() {
        return 'zoom'
    }
}

function New-Tesla {
    [Tesla]::new()
}

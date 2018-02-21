
class Tesla : Car {
    [string]$Model = 'Roadster'
}

class Car {
    [string]$Model = 'Corolla'
}

[Car]::new()
[Tesla]::new()
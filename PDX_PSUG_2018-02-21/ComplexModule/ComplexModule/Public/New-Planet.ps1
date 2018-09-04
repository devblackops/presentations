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
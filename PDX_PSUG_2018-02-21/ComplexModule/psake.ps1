properties {
    $manifest = Import-PowerShellDataFile -Path ./ComplexModule/ComplexModule.psd1
    $outputPath = "$PSScriptRoot/bin/$($manifest.ModuleVersion)"
    $srcPsd1 = './ComplexModule/ComplexModule.psd1'
    $outPsd1 = "$outputPath/ComplexModule.psd1"
    $outPsm1 = "$outputPath/ComplexModule.psm1"
}

task default -depends build

task Clean {
    if (Test-Path -LiteralPath $outputPath) {
        Remove-Item -Path $outputPath -Recurse -Force
    }   
}

task Build -depends Clean {
    Write-Verbose "Creating module version [$($manifest.ModuleVersion)]"
    $modDir = New-Item -Path $outputPath -ItemType Directory

    # Classes
    @('Planet', 'Earth', 'Mars') | ForEach-Object {
        Get-Content -Path "./ComplexModule/Classes/$($_).ps1" | 
            Add-Content -Path $outPsm1 -Encoding utf8
    }

    # Private functions
    Get-ChildItem -Path ./ComplexModule/Private -File | ForEach-Object {
        $_ | Get-Content | 
            Add-Content -Path $outPsm1 -Encoding utf8
    }

    # Public functions
    Get-ChildItem -Path ./ComplexModule/Public -File | ForEach-Object {
        $_ | Get-Content |
            Add-Content -Path $outPsm1 -Encoding utf8
    }

    Copy-Item -Path $srcPsd1 -Destination $outPsd1
}
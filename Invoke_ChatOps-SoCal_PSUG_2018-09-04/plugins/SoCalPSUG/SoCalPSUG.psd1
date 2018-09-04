@{
    RootModule        = 'SoCalPSUG.psm1'
    ModuleVersion     = '0.1.0'
    GUID              = '398cd8a1-01cf-4c8a-a3e9-7cf7ba3464ef'
    Author            = 'Brandon Olin'
    CompanyName       = 'Community'
    Copyright         = '(c) 2018 Brandon Olin. All rights reserved.'
    Description       = 'Example PoshBot commands for SoCal PSUG'
    PowerShellVersion = '5.0.0'
    RequiredModules   = @('PoshBot')
    FunctionsToExport = '*'
    CmdletsToExport   = '*'
    VariablesToExport = '*'
    AliasesToExport   = '*'
    PrivateData       = @{
        Permissions = @(
            'getsecrets'
        )
        PSData      = @{
            # Tags = @()
            # LicenseUri = ''
            # ProjectUri = ''
            # IconUri = ''
            # ReleaseNotes = ''
        }
    }
}


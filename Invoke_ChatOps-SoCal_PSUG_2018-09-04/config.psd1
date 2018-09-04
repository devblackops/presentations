@{
  CommandHistoryMaxLogSizeMB = 10
  Name = 'PoshBot'
  LogCommandHistory = $True
  PluginRepository = @('PSGallery')
  CommandPrefix = '!'
  AlternateCommandPrefixSeperators = @(':',',',';')
  LogLevel = 'Debug'
  PluginConfiguration = @{
    'SoCalPSUG' = @{
      GoogleApiShortenerApiKey = $env:GOOGLE_API_SHORTENER_API_KEY
    }
    'PoshBot.Wolfram' = @{
      ApiKey = $env:WOLFRAM_API_KEY
    }
  }
  DisallowDMs = $False
  ApprovalConfiguration = @{
    ExpireMinutes = 30
    Commands = @(
      @{
        Expression = 'SoCalPSUG:Deploy-MyApp:*'
        Groups = @('admin', 'release')
        PeerApproval = $true
      }
    )
  }
  MaxLogsToKeep = 5
  PluginDirectory = '/Users/bolin/OneDrive/Documents/GitHub/presentations/Invoke_ChatOps-SoCal_PSUG_2018-09-04/plugins'
  FormatEnumerationLimitOverride = -1
  ConfigurationDirectory = '/Users/bolin/OneDrive/Documents/GitHub/presentations/Invoke_ChatOps-SoCal_PSUG_2018-09-04'
  LogDirectory = '/Users/bolin/OneDrive/Documents/GitHub/presentations/Invoke_ChatOps-SoCal_PSUG_2018-09-04/logs'
  AlternateCommandPrefixes = @('hal', 'bender')
  MuteUnknownCommand = $False
  AddCommandReactions = $True
  CommandHistoryMaxLogsToKeep = 5
  ChannelRules = @(
    @{
      IncludeCommands = @('*')
      Channel = 'SoCal PSUG'
      ExcludedCommands = @('poshbot.giphy:*')
    }
    @{
      IncludeCommands = @('*')
      Channel = '*'
      ExcludeCommands = @()
    }
  )
  MaxLogSizeMB = 10
  BotAdmins = @('devblackops')
  ModuleManifestsToLoad = @()
  SendCommandResponseToPrivate = @()
  MiddlewareConfiguration = @{
    PreResponse = @{
      Name = 'preresponse'
      Path = '/Users/bolin/OneDrive/Documents/GitHub/presentations/Invoke_ChatOps-SoCal_PSUG_2018-09-04/middleware/preresponse.ps1'
    }
    PostResponse = @{
      Name = 'postresponse'
      Path = '/Users/bolin/OneDrive/Documents/GitHub/presentations/Invoke_ChatOps-SoCal_PSUG_2018-09-04/middleware/postresponse.ps1'
    }
    PostReceive = @{
      Name = 'postreceive'
      Path = '/Users/bolin/OneDrive/Documents/GitHub/presentations/Invoke_ChatOps-SoCal_PSUG_2018-09-04/middleware/postreceive.ps1'
    }
    PreExecute = @{
      Name = 'preexecute'
      Path = '/Users/bolin/OneDrive/Documents/GitHub/presentations/Invoke_ChatOps-SoCal_PSUG_2018-09-04/middleware/preexecute.ps1'
    }
    PreReceive = @{
      Name = 'dropuser'
      Path = '/Users/bolin/OneDrive/Documents/GitHub/presentations/Invoke_ChatOps-SoCal_PSUG_2018-09-04/middleware/dropuser.ps1'
    }
    PostExecute = @{
      Name = 'postexecute'
      Path = '/Users/bolin/OneDrive/Documents/GitHub/presentations/Invoke_ChatOps-SoCal_PSUG_2018-09-04/middleware/postexecute.ps1'
    }
  }
}

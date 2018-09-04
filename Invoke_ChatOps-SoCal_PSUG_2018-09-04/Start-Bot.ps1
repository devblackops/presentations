[cmdletbinding()]
param(
    [ValidateSet('Slack', 'Teams')]
    [string]$Type = 'Slack'
)

Import-Module '/Users/bolin/OneDrive/Documents/GitHub/poshbotio/poshbot/out/poshbot' -Force -Verbose:$false

# Get config
$configFile = Join-Path (pwd).Path 'config.psd1'
$config     = Get-PoshBotConfiguration $configFile

# Add plugin config
$config.PluginConfiguration = @{
    'SoCalPSUG' = @{
        GoogleApiShortenerApiKey = $env:GOOGLE_API_SHORTENER_API_KEY
    }
    'PoshBot.Wolfram' = @{
        ApiKey = $env:WOLFRAM_API_KEY
    }
}

# Create chat backend
switch ($Type) {
    'Slack' {
        $config.BackendConfiguration = @{
            Name  = 'Slack'
            Token = $env:POSHBOT_SLACK_API_KEY
        }
        $backend = New-PoshBotSlackBackend -Configuration $config.BackendConfiguration
        break
    }
    'Teams' {
        $config.BotAdmins = @('brandon@devblackops.onmicrosoft.com')
        $config.BackendConfiguration = @{
            Name                = 'Teams'
            BotName             = 'PoshBot'
            TeamId              = $env:POSHBOT_TEAMS_ID
            ServiceBusNamespace = 'poshbot-teams'
            QueueName           = 'messages'
            AccessKeyName       = 'receive'
            AccessKey           = $env:POSHBOT_TEAMS_SB_KEY | ConvertTo-SecureString -AsPlainText -Force
            Credential = [pscredential]::new(
                $env:POSHBOT_BF_APP_ID,
                ($env:POSHBOT_BF_PASSWORD | ConvertTo-SecureString -AsPlainText -Force)
            )
        }
        $backend = New-PoshBotTeamsBackend -Configuration $config.BackendConfiguration
    }
}

# Create and start bot
$bot = New-PoshBotInstance -Backend $backend -Configuration $config -WarningAction SilentlyContinue
$bot | Start-PoshBot -WarningAction SilentlyContinue

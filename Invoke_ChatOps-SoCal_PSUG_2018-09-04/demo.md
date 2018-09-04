# Demo Notes

## Start PoshBot

```powershell
. .\Start-Bot.ps1
```

## Show uptime

```text
!status
!about
```

## Help

```text
!help get-plugin
!help help
!help get-plugin -examples
```

## Plugins

```text
!get-plugin
!get-plugin builtin
!find-plugin
!install-plugin poshbot.giphy
!install-plugin poshbot.wolfram
!install-plugin nameit
!get-plugin nameit
!person
!address
!baseverbnoun
!install-plugin SoCalPSUG
```

## Triggers

- Command
- Event
- RegEx

### Command

```text
!get-helloworld
!get-helloworld brandon
hal: about
bender, status
```

### Event

```text
change topic
```

### Regex

```text
did you know that cookies are awesome
lgtm shipit!
```

## Output

```
!get-multiplethings
!get-multiplethings -thing1 foo, bar, baz -thing2 42
```

## Errors

```
!bad-command
```

## Cards

```
!createvm -name server01 -type windows -vcpu 32 -ram 64
!createvm -name server01 -type windows -vcpu 4 -ram 32
```

## Aliases

```
!get-randomnumber
!rnd
!rand
```

## Permissions / Fileupload / DM

```
!get-secretplan
!help get-secretplan
!add-rolepermission -role admin -permission socalpsug:getsecrets
!get-secretplan

!new-role henchmen
!add-rolepermission henchmen socalpsug:getsecrets
!new-group minions
!add-grouprole minions henchmen
!add-groupuser minions brandolomite
```

## Confirmation (Use the -Force)...arrays

```
!remove-something foo
!remove-something -name foo, bar, baz -force
```

## Concurrent commands

```
!start-longrunningcommand
!status
!about
!rnd
```

## Scheduled Commands

```text
!get-scheduledcommand
!man schedule
!man newschedule
!man newschedule -full
!newschedule -command 'status' -interval seconds -value 10
!getschedule
!removeschedule <id>
```

## Command Approvals

```text
!deploy-myapp -environment dev
!approve <id>
<look at bot config>
!new-group release
!add-groupuser release brandolomite
!approve <id>
!deploy-myapp -environment prod
!deny <id>
```

## Channel Rules

```
> General channel
!giphy powershell
<look at bot config>
> SoCal PSUG
!giphy powershell
```

## History / Logging

```
!history
!history -id <id>
<look at CommandHistory.log>
```

## Parameter Injection

```text
!get-plugin poshbot.wolfram
!help askwolfram
!askwolfram speed of laden swallow?
!shorten https://github.com/powershell
<look at command and bot config>
```

## Stateful Data

```text
!getmystuff
!setmystuff foo bar
!getmystuff foo
!removemystuff -name foo
```

---

## Extras

## Command Context

```
!get-commandcontext
```

## Middleware

http://docs.poshbot.io/en/latest/guides/middleware/

## TicTacToe
```
!ip poshbot.tictactoe
!help tictactoe
!mygames
!newticktactoe -against brandolomite
```

## Multiple plugin versions

```
!gp nameit
!ip nameit -version 1.8.0
!nameit:noun:1.8.0
!nameit:noun:1.8.3
```

## Disabling Plugin

```
!disableplugin nameit -version 1.8.3
!nameit:noun:1.8.3
!enableplugin nameit -version 1.8.3
```

## Running as service
http://docs.poshbot.io/en/latest/guides/run-poshbot-as-a-service/

## Docs
https://docs.poshbot.io

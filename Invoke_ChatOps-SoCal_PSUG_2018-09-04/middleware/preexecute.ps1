param(
    $Context,
    $Bot
)

$commandName = $Context.Command.Name
$Bot.LogInfo("Preparing to execute [$commandName] command")
$info = $Context.ParsedCommand.CallingUserInfo

$bot.LogInfo("UserInfo", $info)

$Context
param(
    $Context,
    $Bot
)

$commandName = $Context.Command.Name
$Bot.LogInfo("Preparing to send responeses for [$commandName] command")
$Context
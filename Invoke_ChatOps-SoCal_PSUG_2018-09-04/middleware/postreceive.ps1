param(
    $Context,
    $Bot
)

$commandName = $Context.Command.Name
$Bot.LogInfo("Received [$commandName] command")
$Context
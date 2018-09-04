param(
    $Context,
    $Bot
)

$commandName = $Context.Command.Name
$Bot.LogInfo("Finished executing [$commandName] command")
$Context
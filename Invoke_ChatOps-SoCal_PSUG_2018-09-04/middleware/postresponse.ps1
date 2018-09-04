param(
    $Context,
    $Bot
)

$commandName = $Context.Command.Name
$Bot.LogInfo("Finished sending responeses for [$commandName] command")
$Context
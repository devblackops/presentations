param(
    $Context,
    $Bot
)

$blacklistedUsers = @('bob')

$Bot.LogDebug('Running user drop middleware')
if ($blacklistedUsers -contains $Context.Message.FromName) {
    $Bot.LogInfo("Dropping message from [$($Context.Message.FromName)]")
    return
}
$Context
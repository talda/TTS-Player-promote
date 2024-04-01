function onPlayerConnect(player)
    local pplayers = self.getDescription()
    local isPlayerInList = (pplayers == "")
    for name in pplayers:gmatch("%S+") do
        if name == player.steam_name then
            isPlayerInList = true
            break
        end
    end

    if (not player.admin) and isPlayerInList then
        player.promote()
    end
end
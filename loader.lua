do
    local list = {
        3808223175
    }
    
    local path = nil
    for i, v in next, list do
        if type(v) == 'table' then
            path = v[table.find(v, game.PlaceId)]
        end
    end

    if path == nil then
        path = list[table.find(list, game.GameId)]
    end

    local s, source = pcall(function()
        return game:HttpGet(('https://raw.githubusercontent.com/AloneBiNgu/JackyHub/refs/heads/main/%s'):format(path))
    end)
    
    if not source then
        game.Players.LocalPlayer:Kick('[Jacky Hub] This game hasn\'t supported yet.')
    end
    
    loadstring(source)()
end

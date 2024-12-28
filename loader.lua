local s, source = pcall(function()
    return game:HttpGet(('https://raw.githubusercontent.com/AloneBiNgu/JackyHub/refs/heads/main/%s'):format(tostring(game.PlaceId), true)
end)

if not source then
    game.Players.LocalPlayer:Kick('[Jacky Hub] This game hasn\'t supported yet.')
end

loadstring(source)()

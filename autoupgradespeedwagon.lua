if game.PlaceId == 4996049426 then
    function waitupgrade(num, table, unitnum)
        if tonumber(game:GetService("Players").LocalPlayer.Money.Value) >= num then
            wait(0.2)
            game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", table[unitnum])
        else
            repeat wait() until tonumber(game:GetService("Players").LocalPlayer.Money.Value) >= num
            wait(0.2)
            game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", table[unitnum])
        end
    end
    
    
    local SW = {}
    
    for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
        if v.Name == 'Speedwagon' and v.Owner.Value == game.Players.LocalPlayer then
            table.insert(SW, v)
        end
    end
    
    upgradecosts = {500, 500, 500, 320, 750, 1550, 1750, 2200, 3100, 5500, 6400, 8800, 12000, 13500, 25000, 45000, 69000, 90000, 100000, 120000, 135000, 155000, 200000} -- 23 max, 17 = 69000 upg
    i = 0
    repeat
        i = i+1
        waitupgrade(upgradecosts[i], SW, 1)
    until i == 18
end

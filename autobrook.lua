local me = game.Players.LocalPlayer
local remote = game.ReplicatedStorage.Remotes.Input
local Brooks = {}
for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
    if v.Name == 'Brook6' and v.Owner.Value == me then
        table.insert(Brooks, v)
    end
end

ffw = game:GetService("Players").LocalPlayer.PlayerGui.HUD.FastForward.TextLabel.Text
if ffw == "1X" then
    speed = 1
elseif ffw == "2X" then
    speed = 2
else
    speed = 3
end

if #Brooks == 4 then
    while true do
        remote:FireServer('UseSpecialMove', Brooks[1])
        wait(15.4/speed)
        remote:FireServer('UseSpecialMove', Brooks[3])
        wait(15.4/speed)
        remote:FireServer('UseSpecialMove', Brooks[2])
        wait(15.4/speed)
        remote:FireServer('UseSpecialMove', Brooks[4])
        wait(15.4/speed)
    end
end

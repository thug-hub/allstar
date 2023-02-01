-- THUG HUB ALL STAR EXP FARM

-- Farms Infinite Extreme until Wave 20
-- Needs Uryu 6 star (use fire orb just to be safe)

task.wait(3)

if game.PlaceId == 4996049426 then

for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
    v:Disable();
	end;

repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.ModeVoteFrame.Visible == true
task.wait(2)
game:GetService("ReplicatedStorage").Remotes.Input:FireServer("VoteGameMode", "Extreme")
task.wait(1)
game:GetService("ReplicatedStorage").Remotes.Input:FireServer("SpeedChange", true)
task.wait(0.2)
game:GetService("ReplicatedStorage").Remotes.Input:FireServer("SpeedChange", true)

repeat task.wait() until tonumber(game:GetService("Players").LocalPlayer.Money.Value) >= 680
if tonumber(game:GetService("Players").LocalPlayer.Money.Value) >= 680 then

    local args = {
        [1] = "Summon",
        [2] = {
            ["Rotation"] = 0,
            ["cframe"] = CFrame.new(Vector3.new(1257.2894287109375, 907.244384765625, -721.8648681640625), Vector3.new(-0, -0, -1)), --- (422.569458, 596.420959, 37.8146896, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            ["Unit"] = "Uryu5"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))
end

task.wait(5)

repeat wait() until tonumber(game:GetService("Players").LocalPlayer.Money.Value) >= 680
if tonumber(game:GetService("Players").LocalPlayer.Money.Value) >= 680 then
    wait(2)
    local args = {
    [1] = "Summon",
    [2] = {
        ["Rotation"] = 0,
        ["cframe"] = CFrame.new(Vector3.new(1257.056396484375, 907.244384765625, -724.4644775390625), Vector3.new(-0, -0, -1)),
        ["Unit"] = "Uryu5"
        }
    }

    game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))
end

task.wait(5)

repeat wait() until tonumber(game:GetService("Players").LocalPlayer.Money.Value) >= 680
if tonumber(game:GetService("Players").LocalPlayer.Money.Value) >= 680 then
    wait(2)
    local args = {
    [1] = "Summon",
    [2] = {
        ["Rotation"] = 0,
        ["cframe"] = CFrame.new(Vector3.new(1259.5394287109375, 907.244384765625, -721.8999633789062), Vector3.new(-0, -0, -1)),
        ["Unit"] = "Uryu5"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))
end

task.wait(5)

function waitupgrade(num, table, unitnum)
    if tonumber(game:GetService("Players").LocalPlayer.Money.Value) >= num then
        wait(2)
        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", table[unitnum])
    else
        repeat wait() until tonumber(game:GetService("Players").LocalPlayer.Money.Value) >= num
        wait(2)
        game:GetService("ReplicatedStorage").Remotes.Server:InvokeServer("Upgrade", table[unitnum])
    end
end


local Uryus = {}
for _,v in pairs(game:GetService("Workspace").Unit:GetChildren()) do
   if v.Name == 'Uryu5' and v.Owner.Value == game.Players.LocalPlayer then
       table.insert(Uryus, v)
   end
end

print(#Uryus)

waitupgrade(680, Uryus, 1)
task.wait(2)
print("up1")
waitupgrade(1450, Uryus, 1)
task.wait(2)
print("up2")
waitupgrade(1750, Uryus, 1)
task.wait(2)
print("up3")
waitupgrade(1500, Uryus, 1)
task.wait(2)
print("up4")
waitupgrade(1400, Uryus, 1)
task.wait(2)
print("up5")
waitupgrade(1500, Uryus, 1)
task.wait(2)
print("up6")
waitupgrade(1500, Uryus, 1)
task.wait(2)
print("up7")
waitupgrade(4000, Uryus, 1)


repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.Wave.Text == "Wave 18"
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Wave.Text == "Wave 18" then
    wait(13)
    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Sell", Uryus[1])
    task.wait(1)
    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Sell", Uryus[2])
    task.wait(1)
    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Sell", Uryus[3])
end

print("wait next")
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.MissionEnd.BG.Actions.Replay.Visible == true
task.wait(12)
print("replayed")
local VIM = game:GetService("VirtualInputManager")
local clickGui = function(gui)
    for i = 1, 2 do
        VIM:SendMouseButtonEvent(gui.AbsolutePosition.X + gui.AbsoluteSize.X / 2, gui.AbsolutePosition.Y + 50, 0, ({true, false})[i], THUG_HUB, 1)
    end
end

clickGui(game:GetService("Players").LocalPlayer.PlayerGui.HUD.MissionEnd.BG.Actions.Replay)


end

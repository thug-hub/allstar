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

repeat task.wait() until tonumber(game:GetService("Players").LocalPlayer.Money.Value) >= 680
if tonumber(game:GetService("Players").LocalPlayer.Money.Value) >= 680 then

    local args = {
        [1] = "Summon",
        [2] = {
            ["Rotation"] = 0,
            ["cframe"] = CFrame.new(-402.004303, 596.420959, 2.55724812, 1, 0, 0, 0, 1, 0, 0, 0, 1), --- (422.569458, 596.420959, 37.8146896, 1, 0, 0, 0, 1, 0, 0, 0, 1)
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
        ["cframe"] = CFrame.new(-399.999695, 596.420959, 3.50890923, 1, 0, 0, 0, 1, 0, 0, 0, 1),
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
        ["cframe"] = CFrame.new(-401.80929, 596.420959, -4.37113883e-08, 1, 0, 0, 0, 1, 0, 0, 0, -4.37113883e-08),
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


repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.Wave.Text == "Wave 17"
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Wave.Text == "Wave 17" then
    wait(16)
    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Sell", Uryus[1])
    task.wait(1)
    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Sell", Uryus[2])
    task.wait(1)
    game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Sell", Uryus[3])
end


game:GetService("Players").LocalPlayer.PlayerGui.ChildAdded:Connect(function()
    
for _, p in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetDescendants()) do
    if p:IsA("ScreenGui") and p.Name == "MissionEndNavigateDialog" then

        task.wait(2)
        local gui = p

        for i, v in pairs(gui:GetDescendants()) do
            if v:IsA("TextButton") and string.lower(tostring(v.Name)) == "replay" then
                
            local xy = v.AbsolutePosition
                local split = string.split(tostring(xy), ", ")
                local x = tonumber(split[1]) + 30
                local y = tonumber(split[2]) + 50
                        
                print(x)
                print(y)
                
                local vim = game:GetService('VirtualInputManager')
                
                vim:SendMouseButtonEvent(x,y,0,true,game,0)
                task.wait()
                vim:SendMouseButtonEvent(x,y,0,false,game,0)
                
            end
        end
    end

end
end)

end

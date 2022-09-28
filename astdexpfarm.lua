-- THUG HUB ALL STAR EXP FARM

-- Farms Infinite Extreme until Wave 10
-- Needs Uryu 6 star (orb isn't needed)

if game.PlaceId == 4996049426 then

repeat wait() until game:IsLoaded()

for i, v in next, getconnections(game.Players.LocalPlayer.Idled) do
    v:Disable();
	end;

repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.ModeVoteFrame.Visible == true
wait(3)
game:GetService("ReplicatedStorage").Remotes.Input:FireServer("VoteGameMode", "Extreme")
wait(1)
game:GetService("ReplicatedStorage").Remotes.Input:FireServer("SpeedChange", true)

repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.Wave.Text == "Wave 3"
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Wave.Text == "Wave 3" then

    local args = {
        [1] = "Summon",
        [2] = {
            ["Rotation"] = 0,
            ["cframe"] = CFrame.new(-422.569458, 596.420959, 37.8146896, 1, 0, 0, 0, 1, 0, 0, 0, 1),
            ["Unit"] = "Uryu5"
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.Input:FireServer(unpack(args))
end

repeat wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.Wave.Text == "Wave 8"
if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Wave.Text == "Wave 8" then
wait(16.2)
game:GetService("ReplicatedStorage").Remotes.Input:FireServer("Sell", workspace.Unit.Uryu5)
end

game:GetService("Players").LocalPlayer.PlayerGui.ChildAdded:Connect(function()
    
for _, p in pairs(game:GetService("Players").LocalPlayer.PlayerGui:GetDescendants()) do
    if p:IsA("ScreenGui") and p.Name == "MissionEndNavigateDialog" then

        wait(2)
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
                wait()
                vim:SendMouseButtonEvent(x,y,0,false,game,0)
                
            end
        end
    end

end
end)

end

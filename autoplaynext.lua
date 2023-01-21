print("auto next activated")
repeat task.wait() until game:GetService("Players").LocalPlayer.PlayerGui.HUD.MissionEnd.BG.Actions.Next.Visible == true
task.wait(2)
local VIM = game:GetService("VirtualInputManager")
local clickGui = function(gui)
    for i = 1, 2 do
        VIM:SendMouseButtonEvent(gui.AbsolutePosition.X + gui.AbsoluteSize.X / 2, gui.AbsolutePosition.Y + 50, 0, ({true, false})[i], THUG_HUB, 1)
    end
end

clickGui(game:GetService("Players").LocalPlayer.PlayerGui.HUD.MissionEnd.BG.Actions.Next)

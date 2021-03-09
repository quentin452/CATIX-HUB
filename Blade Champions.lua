--https://www.roblox.com/games/4466798016/Blade-Champions-Simulator-UPDATE-v1-5
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Blade Champions GUI","things", true)
local MISC = Library:CreateTab("MISC","things", true)
local credits = Library:CreateTab("Credits","things", true)


credits:CreateButton("Our Discords", function() 
  setclipboard("AHAHAHAHAH")
end)

credits:CreateButton("https://discord.gg/KmHZUpXEmQ", function() 
  setclipboard("https://discord.gg/KmHZUpXEmQ")
end)

credits:CreateButton("by Altix#3395", function() 
  setclipboard("Altix#3395")
end)

credits:CreateButton("by I'm A Cat#7202", function() 
  setclipboard("I'm A Cat#7202")
end)

MISC:CreateToggle("NO CLIP Press(E)", function(arg) 
    if arg then
_G.NO = true 
  noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
else
_G.NO = false
end
end)

MISC:CreateToggle("Speed Hack 100", function(arg) 
    if arg then
_G.Speed = true 
        while wait() and _G.Speed do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100--NEED FIX
        end
    else
        _G.Speed = false
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
         end
end)

AutoTab:CreateToggle("Auto click fast", function(bool) 
        _G.a = bool 
        while wait(0) and _G.a do
              for i = 1,15 do
                  local Event = game:GetService("ReplicatedStorage").Events.GetSwing
              end
       end
end)

    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)


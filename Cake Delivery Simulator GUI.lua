--https://www.roblox.com/games/3011348948/
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Cake-Delivery-Simulator GUI","things", true)
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

AutoTab:CreateToggle("Auto Click", function(bool) 
        _G.a = bool 
        while wait(0) and _G.a do
         local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
    end
end)

MISC:CreateToggle("Speed Hack 100", function(arg) 
    if arg then
_G.Speed = true 
        while wait() and _G.Speed do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        end
    else
        _G.Speed = false
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
         end
end)

AutoTab:CreateToggle("Auto Buy Cake", function(bool) 
        _G.c = bool 
        while wait(0) and _G.c do
            local A_1 = "UpCake"
            local Event = game:GetService("ReplicatedStorage").Trigger
            Event:FireServer(A_1)
    end
end)

AutoTab:CreateToggle("Auto Buy Sac", function(bool) 
        _G.d = bool 
        while wait(0) and _G.d do
            local A_1 = "UpPlate"
            local Event = game:GetService("ReplicatedStorage").Trigger
            Event:FireServer(A_1)
    end
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

--https://www.roblox.com/games/1122519450/Titan-Simulator




local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Titan Simulator GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local MISC = Library:CreateTab("MISC","things", true)
local credits = Library:CreateTab("Credits","things", true)


credits:CreateButton("Our Discords", function() --you dont need "arg" for a button
    setclipboard("AHAHAHAHAH")
end)

credits:CreateButton("https://discord.gg/KmHZUpXEmQ", function() --you dont need "arg" for a button
    setclipboard("https://discord.gg/KmHZUpXEmQ")
end)

credits:CreateButton("by Altix#3395", function() --you dont need "arg" for a button
    setclipboard("Altix#3395")
end)

credits:CreateButton("by I'm A Cat#7202", function() --you dont need "arg" for a button
    setclipboard("I'm A Cat#7202")
end)

AutoTab:CreateToggle("Auto Punch", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.LULU = true 
        while wait(0) and _G.LULU do
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
end

    else
        _G.LULU = false
    end
end)

MISC:CreateToggle("NO CLIP Press(E)", function(arg) --the (arg) is if the checkbox is toggled or not
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
print('Created by FileExplorer')
print('Credits to Peyton for the ChangeState part of this script')

         
else
_G.NO = false
end
end)


MISC:CreateToggle("Speed Hack 100", function(arg) --the (arg) is if the checkbox is toggled or not
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

AutoTab:CreateToggle("Auto Equip Punch", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
         local toolname = "Punch" -- replace with the name of the tool
local Plr = game:GetService("Players").LocalPlayer
while wait() do
    pcall(function()
        if Plr.Backpack:FindFirstChild(toolname) and Plr.Character:FindFirstChild(toolname) == nil then
            local tool = Plr.Backpack:FindFirstChild(toolname)
            Plr.Character.Humanoid:EquipTool(tool)
        end
    end)
end	
        end
    else
        _G.b = false
    end
end)

AutoTab:CreateToggle("Auto Rebirth", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
            local Event = game:GetService("ReplicatedStorage").RemoteEventContainer.Rebirth
Event:FireServer()
        end
    else
        _G.c = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(312.771423, 73.0996628, 148.455795)
end)

teleports:CreateButton("Safe Zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-250.985138, 504.085693, 1571.776)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

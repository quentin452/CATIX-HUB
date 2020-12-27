--https://www.roblox.com/games/5087932411/MONEY-Dummy-Simulator





local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Dummy Simulator GUI","things", true)
local Boosts = Library:CreateTab("Auto Buy Boosts","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local MISC = Library:CreateTab("MISC","things", true)
local credits = Library:CreateTab("Credits","things", true)


Boosts:CreateToggle("Auto Buy Strenghts Boosts", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.A = true 
        while wait(0) and _G.A do
    local A_1 = "Strength"
local Event = game:GetService("ReplicatedStorage").Remotes.RebirthStore
Event:FireServer(A_1)


        end
    else
        _G.A = false
    end
end)

Boosts:CreateToggle("Auto Buy Dummy Boosts", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.B = true 
        while wait(0) and _G.B do
      local A_1 = "Dummy"
local Event = game:GetService("ReplicatedStorage").Remotes.RebirthStore
Event:FireServer(A_1)


        end
    else
        _G.B = false
    end
end)

Boosts:CreateToggle("Auto Buy Boss Boosts", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.C = true 
        while wait(0) and _G.C do
         local A_1 = "Boss"
local Event = game:GetService("ReplicatedStorage").Remotes.RebirthStore
Event:FireServer(A_1)


        end
    else
        _G.C = false
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

AutoTab:CreateToggle("Auto Pushups", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.E = true 
        while wait(0) and _G.E do
           local Event = game:GetService("Workspace").quentin453.Pushups.Event
Event:FireServer()

        end
    else
        _G.E = false
    end
end)

AutoTab:CreateToggle("Auto Fists", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.F = true 
        while wait(0) and _G.F do
           local Event = game:GetService("Workspace").quentin453.Fists.Event
Event:FireServer()

        end
    else
        _G.F = false
    end
end)

AutoTab:CreateToggle("Auto Squats", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.G = true 
        while wait(0) and _G.G do
            local Event = game:GetService("Workspace").quentin453.Squats.Event
Event:FireServer()

        end
    else
        _G.G = false
    end
end)

AutoTab:CreateToggle("Auto Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.H = true 
        while wait(0) and _G.H do
           
local Event = game:GetService("ReplicatedStorage").Remotes.Rebirth
Event:FireServer()


        end
    else
        _G.H = false
    end
end)


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

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-730.885132, 3.2782228, -51.035202)
end)

teleports:CreateButton("Island 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-754.027283, 876.15686, -69.751358)
end)

teleports:CreateButton("Island 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-787.304932, 1979.15247, -49.3521614)
end)


teleports:CreateButton("Island 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-984.026062, 3592.08862, 42.9996567)
end)


teleports:CreateButton("Island 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-828.455261, 6661.90332, -164.874573)
end)

teleports:CreateButton("Island 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1164.57617, 9349.49707, -172.996323)
end)

teleports:CreateButton("Island 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1176.50037, 16670.1621, -175.047363)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

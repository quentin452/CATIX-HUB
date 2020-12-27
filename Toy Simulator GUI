--https://www.roblox.com/games/2683386222/15-NEW-PETS-Toy-Simulator





local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Toy Simulator GUI","things", true)
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



AutoTab:CreateToggle("Auto Sell", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0) and _G.a do
            local A_1 = "SellTeleport"
local Event = game:GetService("ReplicatedStorage").EVENTS.NETWORKING
Event:FireServer(A_1)

        end
    else
        _G.a = false
    end
end)

AutoTab:CreateToggle("All Chest Reward", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
            local A_1 = "ChestReward"
local A_2 = "Chest1"
local Event = game:GetService("ReplicatedStorage").EVENTS.NETWORKING
Event:FireServer(A_1, A_2)

local A_1 = "ChestReward"
local A_2 = "Chest2"
local Event = game:GetService("ReplicatedStorage").EVENTS.NETWORKING
Event:FireServer(A_1, A_2)

local A_1 = "ChestReward"
local A_2 = "Chest3"
local Event = game:GetService("ReplicatedStorage").EVENTS.NETWORKING
Event:FireServer(A_1, A_2)

local A_1 = "ChestReward"
local A_2 = "Chest4"
local Event = game:GetService("ReplicatedStorage").EVENTS.NETWORKING
Event:FireServer(A_1, A_2)

local A_1 = "ChestReward"
local A_2 = "Chest5"
local Event = game:GetService("ReplicatedStorage").EVENTS.NETWORKING
Event:FireServer(A_1, A_2)

local A_1 = "ChestReward"
local A_2 = "Chest6"
local Event = game:GetService("ReplicatedStorage").EVENTS.NETWORKING
Event:FireServer(A_1, A_2)

local A_1 = "ChestReward"
local A_2 = "Chest7"
local Event = game:GetService("ReplicatedStorage").EVENTS.NETWORKING
Event:FireServer(A_1, A_2)

local A_1 = "ChestReward"
local A_2 = "Chest8"
local Event = game:GetService("ReplicatedStorage").EVENTS.NETWORKING
Event:FireServer(A_1, A_2)

local A_1 = "ChestReward"
local A_2 = "Chest9"
local Event = game:GetService("ReplicatedStorage").EVENTS.NETWORKING
Event:FireServer(A_1, A_2)

local A_1 = "ChestReward"
local A_2 = "Chest10"
local Event = game:GetService("ReplicatedStorage").EVENTS.NETWORKING
Event:FireServer(A_1, A_2)

        end
    else
        _G.b = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Sell x4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-164.111252, 22400.8203, 41.353611)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

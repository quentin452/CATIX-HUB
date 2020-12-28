--https://www.roblox.com/games/4613228940/Fairy-Legends


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Coin Collection Simulator GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
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

AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
            local A_1 = "swing"
local A_2 = "play"
local Event = game:GetService("Workspace").quentin453.Wings.AnimEvent
Event:FireServer(A_1, A_2)
        end
    else
        _G.b = false
    end
end)

eggs:CreateToggle("Egg 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
           local A_1 = "Forest Capsule"
local A_2 = "Open1"
local Event = game:GetService("ReplicatedStorage").PetFunction
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.c = false
    end
end)

eggs:CreateToggle("Egg 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
         local A_1 = "Advanced Capsule"
local A_2 = "Open1"
local Event = game:GetService("ReplicatedStorage").PetFunction
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.d = false
    end
end)

eggs:CreateToggle("Egg 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
        local A_1 = "National Capsule"
local A_2 = "Open1"
local Event = game:GetService("ReplicatedStorage").PetFunction
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.e = false
    end
end)

eggs:CreateToggle("Egg 4", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
        local A_1 = "Beach Island Capsule"
local A_2 = "Open1"
local Event = game:GetService("ReplicatedStorage").PetFunction
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.f = false
    end
end)

eggs:CreateToggle("Egg 5", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
        local A_1 = "Tundra Capsule"
local A_2 = "Open1"
local Event = game:GetService("ReplicatedStorage").PetFunction
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.g = false
    end
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(193.26503, 218.361801, -1217.10193)
end)

teleports:CreateButton("Island 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(437.294495, 3389.51831, -1268.42334)
end)

teleports:CreateButton("Island 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2.28499031, 15752.2793, -76.5179749)
end)

teleports:CreateButton("Island 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1505.10461, 39586.1914, 217.398392)
end)


teleports:CreateButton("Island 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-30.9581642, 56922.5352, 1074.37183)
end)


teleports:CreateButton("Island 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1916.11768, 80907.1484, -512.382446)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)


--https://www.roblox.com/games/5158017550/UPDATE-2-Eating-Simulator-2


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Eating Simulator GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local AutoBuy = Library:CreateTab("AutoBuy","things", true)
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
            local Event = game:GetService("ReplicatedStorage").Eat
Event:FireServer()

        end
    else
        _G.b = false
    end
end)

AutoTab:CreateToggle("Auto Farting", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
            local A_1 = true
local Event = game:GetService("ReplicatedStorage").Farting
Event:FireServer(A_1)

        end
    else
        _G.c = false
    end
end)

AutoBuy:CreateToggle("Auto Buy StomahSize", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
            local A_1 = true
local A_1 = "StomachSize"
local Event = game:GetService("ReplicatedStorage").BuyStats
Event:FireServer(A_1)


        end
    else
        _G.d = false
    end
end)

AutoBuy:CreateToggle("Auto Buy FartCapacity", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
            local A_1 = true
local A_1 = "FartCapacity"
local Event = game:GetService("ReplicatedStorage").BuyStats
Event:FireServer(A_1)

        end
    else
        _G.e = false
    end
end)

AutoBuy:CreateToggle("Auto Buy CommonEgg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
            local A_1 = true
local A_1 = 1
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").BuyEgg
Event:FireServer(A_1, A_2)

        end
    else
        _G.f = false
    end
end)

AutoBuy:CreateToggle("Auto Buy UncommonEgg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
            local A_1 = true
local A_1 = 2
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").BuyEgg
Event:FireServer(A_1, A_2)

        end
    else
        _G.g = false
    end
end)

AutoBuy:CreateToggle("Auto Buy BirdEgg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
            local A_1 = true
local A_1 = 3
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").BuyEgg
Event:FireServer(A_1, A_2)

        end
    else
        _G.h = false
    end
end)
 
AutoBuy:CreateToggle("Auto Buy HoneyEgg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
            local A_1 = true
local A_1 = 4
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").BuyEgg
Event:FireServer(A_1, A_2)

        end
    else
        _G.i = false
    end
end)

AutoBuy:CreateToggle("Auto Buy OvergrownEgg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
            local A_1 = true
local A_1 = 5
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").BuyEgg
Event:FireServer(A_1, A_2)

        end
    else
        _G.j = false
    end
end)

AutoBuy:CreateToggle("Auto Buy IcecreamEgg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
            local A_1 = true
local A_1 = 6
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").BuyEgg
Event:FireServer(A_1, A_2)

        end
    else
        _G.k = false
    end
end)

AutoBuy:CreateToggle("Auto Buy RocketEgg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
            local A_1 = true
local A_1 = 7
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").BuyEgg
Event:FireServer(A_1, A_2)

        end
    else
        _G.l = false
    end
end)

AutoBuy:CreateToggle("Auto Buy FrostEgg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
            local A_1 = true
local A_1 = 8
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").BuyEgg
Event:FireServer(A_1, A_2)

        end
    else
        _G.m = false
    end
end)

AutoBuy:CreateToggle("Auto Buy MagmaEgg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do
            local A_1 = true
local A_1 = 9
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").BuyEgg
Event:FireServer(A_1, A_2)

        end
    else
        _G.n = false
    end
end)

AutoBuy:CreateToggle("Auto Buy AlienEgg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do
            local A_1 = true
local A_1 = 10
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").BuyEgg
Event:FireServer(A_1, A_2)

        end
    else
        _G.o = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Sell x4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-164.111252, 22400.8203, 41.353611)
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-162.197205, 5.13943338, 73.6561432)
end)

teleports:CreateButton("Island 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-174.703339, 281.787323, 69.1980209)
end)

teleports:CreateButton("Island 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-163.868576, 1399.02795, 67.4594955)
end)

teleports:CreateButton("Island 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-196.701996, 5600.94092, 58.7970009)
end)

teleports:CreateButton("Island 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-153.667999, 11202.0225, 74.4319992)
end)

teleports:CreateButton("Island 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-189.307007, 16802.6758, 48.9319992)
end)

teleports:CreateButton("Island 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-195.701996, 22400.8203, 55.7970009)
end)

teleports:CreateButton("Island 7", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-184.452377, 28000.8203, 56.8228683)
end)


   local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

setfflag("DFStringCrashPadUploadToBacktraceToBacktraceBaseUrl", "")
setfflag("DFIntCrashUploadToBacktracePercentage", "0")
setfflag("DFStringCrashUploadToBacktraceBlackholeToken", "")
setfflag("DFStringCrashUploadToBacktraceWindowsPlayerToken", "")

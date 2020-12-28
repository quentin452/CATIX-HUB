--https://www.roblox.com/games/4546789281/Sprinting-Heroes



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Sprinting Heroes GUI","things", true)
local AutoRebirth = Library:CreateTab("Auto Rebirth","things", true)
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

AutoTab:CreateToggle("PVP Disable", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
            local A_1 = false
local Event = game:GetService("ReplicatedStorage").Events.pvpEnabled
Event:FireServer(A_1)
        end
    else
        _G.b = false
    end
end)

AutoRebirth:CreateToggle("Rebirth x1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
               local A_1 = 1
local Event = game:GetService("ReplicatedStorage").Events.rebirthFunction
Event:InvokeServer(A_1)
        end
    else
        _G.c = false
    end
end)

AutoRebirth:CreateToggle("Rebirth x5", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
               local A_1 = 5
local Event = game:GetService("ReplicatedStorage").Events.rebirthFunction
Event:InvokeServer(A_1)
        end
    else
        _G.d = false
    end
end)

AutoRebirth:CreateToggle("Rebirth x10", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
               local A_1 = 10
local Event = game:GetService("ReplicatedStorage").Events.rebirthFunction
Event:InvokeServer(A_1)
        end
    else
        _G.e = false
    end
end)

AutoRebirth:CreateToggle("Rebirth x25", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
            local A_1 = 25
local Event = game:GetService("ReplicatedStorage").Events.rebirthFunction
Event:InvokeServer(A_1)

        end
    else
        _G.f = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs X1k money", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
            local A_1 = "Pets"
local A_2 = "Classic"
local A_3 = false
local Event = game:GetService("ReplicatedStorage").Events.GetRandomItem
Event:InvokeServer(A_1, A_2, A_3)

        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs X2,5K money", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
            local A_1 = "Pets"
local A_2 = "Robotic"
local A_3 = false
local Event = game:GetService("ReplicatedStorage").Events.GetRandomItem
Event:InvokeServer(A_1, A_2, A_3)

        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs X5,5K money", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
           local A_1 = "Pets"
local A_2 = "Superior"
local A_3 = false
local Event = game:GetService("ReplicatedStorage").Events.GetRandomItem
Event:InvokeServer(A_1, A_2, A_3)
        end
    else
        _G.i = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs X12100 money", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
           local A_1 = "Pets"
local A_2 = "Energy"
local A_3 = false
local Event = game:GetService("ReplicatedStorage").Events.GetRandomItem
Event:InvokeServer(A_1, A_2, A_3)
        end
    else
        _G.j = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs X25k money", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
            local A_1 = "Pets"
local A_2 = "Black and White"
local A_3 = false
local Event = game:GetService("ReplicatedStorage").Events.GetRandomItem
Event:InvokeServer(A_1, A_2, A_3)

        end
    else
        _G.k = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs X68500 money", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
            local A_1 = "Pets"
local A_2 = "Rainbow"
local A_3 = false
local Event = game:GetService("ReplicatedStorage").Events.GetRandomItem
Event:InvokeServer(A_1, A_2, A_3)

        end
    else
        _G.l = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs X250500 money", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
            local A_1 = "Pets"
local A_2 = "Dragon"
local A_3 = false
local Event = game:GetService("ReplicatedStorage").Events.GetRandomItem
Event:InvokeServer(A_1, A_2, A_3)

        end
    else
        _G.m = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs X350k money", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do
            local A_1 = "Pets"
local A_2 = "Whimsical"
local A_3 = false
local Event = game:GetService("ReplicatedStorage").Events.GetRandomItem
Event:InvokeServer(A_1, A_2, A_3)

        end
    else
        _G.n = false
    end
end)
eggs:CreateToggle("Auto Buy Eggs X1 tokens", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do
            local A_1 = "Pets"
local A_2 = "Super Splash"
local A_3 = false
local Event = game:GetService("ReplicatedStorage").Events.GetRandomItem
Event:InvokeServer(A_1, A_2, A_3)
        end
    else
        _G.o = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs X10 tokens", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
        while wait(0) and _G.p do
            local A_1 = "Pets"
local A_2 = "Ancient"
local A_3 = false
local Event = game:GetService("ReplicatedStorage").Events.GetRandomItem
Event:InvokeServer(A_1, A_2, A_3)

        end
    else
        _G.p = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

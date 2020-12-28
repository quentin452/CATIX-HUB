--https://www.roblox.com/games/5380617411/CORRUPT-EGG-Tapping-Champions


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Tapping Champions GUI","things", true)
local Rebirth = Library:CreateTab("Auto Rebirth","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
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

AutoTab:CreateToggle("Auto Click Slow", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
            local Event = game:GetService("ReplicatedStorage").Events.Activated
Event:FireServer()
        end
    else
        _G.b = false
    end
end)

Rebirth:CreateToggle("Rebirth x1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
            local A_1 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseRebirth
Event:FireServer(A_1)

        end
    else
        _G.c = false
    end
end)

Rebirth:CreateToggle("Rebirth x10", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
            local A_1 = 2
local Event = game:GetService("ReplicatedStorage").Events.PurchaseRebirth
Event:FireServer(A_1)

        end
    else
        _G.d = false
    end
end)

Rebirth:CreateToggle("Rebirth x50", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
            local A_1 = 3
local Event = game:GetService("ReplicatedStorage").Events.PurchaseRebirth
Event:FireServer(A_1)

        end
    else
        _G.e = false
    end
end)

Rebirth:CreateToggle("Rebirth x200", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
            local A_1 = 4
local Event = game:GetService("ReplicatedStorage").Events.PurchaseRebirth
Event:FireServer(A_1)

        end
    else
        _G.f = false
    end
end)

Rebirth:CreateToggle("Rebirth x500", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
            local A_1 = 5
local Event = game:GetService("ReplicatedStorage").Events.PurchaseRebirth
Event:FireServer(A_1)

        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Auto Buy Common egg(1)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
            local A_1 = "Common Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Auto Buy Jungle egg(2)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
            local A_1 = "Jungle Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.i = false
    end
end)

eggs:CreateToggle("Auto Buy Icy egg(3)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
            local A_1 = "Icy Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.j = false
    end
end)

eggs:CreateToggle("Auto Buy Geowing egg(4)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
            local A_1 = "Geowing Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.k = false
    end
end)

eggs:CreateToggle("Auto Buy Golden Egg(5)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
            local A_1 = "Golden Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.l = false
    end
end)

eggs:CreateToggle("Auto Buy Ancient egg(6)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
            local A_1 = "Ancient Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.m = false
    end
end)

eggs:CreateToggle("Auto Buy Lightning egg(7)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do
            local A_1 = "Lightning Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.n = false
    end
end)

eggs:CreateToggle("Auto Buy Crystal egg(8)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do
            local A_1 = "Lightning Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.o = false
    end
end)

eggs:CreateToggle("Auto Buy Snow egg(9)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
        while wait(0) and _G.p do
            local A_1 = "Snow Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.p = false
    end
end)

eggs:CreateToggle("Auto Buy Stone egg(10)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
        while wait(0) and _G.q do
            local A_1 = "Stone Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.q = false
    end
end)

eggs:CreateToggle("Auto Buy Space egg(11)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
        while wait(0) and _G.r do
            local A_1 = "Space Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.r = false
    end
end)

eggs:CreateToggle("Auto Buy Evil egg(12)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s = true 
        while wait(0) and _G.s do
            local A_1 = "Evil Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.s = false
    end
end)

eggs:CreateToggle("Auto Buy Flaming egg(13)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t = true 
        while wait(0) and _G.t do
            local A_1 = "Flaming Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.t = false
    end
end)

eggs:CreateToggle("Auto Buy Radioactive egg(14)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.u = true 
        while wait(0) and _G.u do
            local A_1 = "Radioactive Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.u = false
    end
end)

eggs:CreateToggle("Auto Buy Corrupt egg(15)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.v = true 
        while wait(0) and _G.v do
            local A_1 = "Corrupt Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.v = false
    end
end)

eggs:CreateToggle("Auto Buy King egg(16)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.w = true 
        while wait(0) and _G.w do
            local A_1 = "King Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
Event:InvokeServer(A_1, A_2)
        end
    else
        _G.w = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-36.0005112, 59.6242905, 49.5574341)
end)

teleports:CreateButton("Island 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1683.55457, 59.8275146, -1643.88416)
end)

teleports:CreateButton("Island 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(3387.84058, 59.8272743, -3360.28516)
end)

teleports:CreateButton("Island 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(3268.01025, -113.480865, -3542.91602)
end)

teleports:CreateButton("Island 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-35095.9063, 2471.0686, 34342.3164)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

--https://www.roblox.com/games/5629916497/TOXIC-Crystal-Clickers

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Crystal-Clickers GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local rebirths = Library:CreateTab("Auto Rebirth","things", true)
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

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
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


  game:GetService("ReplicatedStorage").Events.ClickEvents["CL*$K"]:FireServer()
game:GetService("ReplicatedStorage").Events.ClickEvents["CL*$K"]:FireServer()
game:GetService("ReplicatedStorage").Events.ClickEvents["CL*$K"]:FireServer()


        end
    else
        _G.b= false
    end
end)

AutoTab:CreateToggle("Auto Buy Potions", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
local args = {
    [1] = "2xClicks",
    [2] = "1 Minutes",
}

game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer(unpack(args))
local args = {
    [1] = "2xClicks",
    [2] = "5 Minutes",
}

game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer(unpack(args))
local args = {
    [1] = "2xClicks",
    [2] = "30 Minutes",
}

game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer(unpack(args))
local args = {
    [1] = "2xCrystals",
    [2] = "1 Minute",
}

game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer(unpack(args))
local args = {
    [1] = "2xCrystals",
    [2] = "5 Minutes",
}

game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer(unpack(args))
local args = {
    [1] = "2xCrystals",
    [2] = "30 Minutes",
}

game:GetService("ReplicatedStorage").Events.BuyBoost:FireServer(unpack(args))


        end
    else
        _G.c= false
    end
end)
AutoTab:CreateToggle("Auto Buy Upgrades", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0.5) and _G.d do

local args = {
    [1] = "Refresh Buttons",
}

game:GetService("ReplicatedStorage").Events.UpgradeEvents.Upgrade:FireServer(unpack(args))

local args = {
    [1] = "Gem Upgrade",
}

game:GetService("ReplicatedStorage").Events.UpgradeEvents.Upgrade:FireServer(unpack(args))

local args = {
    [1] = "UnEquip All",
}

game:GetService("ReplicatedStorage").Events.UpgradeEvents.Upgrade:FireServer(unpack(args))
local args = {
    [1] = "Multi Delete",
}

game:GetService("ReplicatedStorage").Events.UpgradeEvents.Upgrade:FireServer(unpack(args))

local args = {
    [1] = "Player Speed",
}

game:GetService("ReplicatedStorage").Events.UpgradeEvents.Upgrade:FireServer(unpack(args))
local args = {
    [1] = "Inventory Slots",
}

game:GetService("ReplicatedStorage").Events.UpgradeEvents.Upgrade:FireServer(unpack(args))

        end
    else
        _G.d= false
    end
end)
rebirths:CreateToggle("Auto Buy Rebirths x1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do


local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Events.RefreshEvents.Refresh:FireServer(unpack(args))
        end
    else
        _G.e= false
    end
end)
rebirths:CreateToggle("Auto Buy Rebirths x15", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do


local args = {
    [1] = 2,
}

game:GetService("ReplicatedStorage").Events.RefreshEvents.Refresh:FireServer(unpack(args))
        end
    else
        _G.h= false
    end
end)
rebirths:CreateToggle("Auto Buy Rebirths x50", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do


local args = {
    [1] = 3,
}

game:GetService("ReplicatedStorage").Events.RefreshEvents.Refresh:FireServer(unpack(args))
        end
    else
        _G.i= false
    end
end)
rebirths:CreateToggle("Auto Buy Rebirths x500", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do


local args = {
    [1] = 4,
}

game:GetService("ReplicatedStorage").Events.RefreshEvents.Refresh:FireServer(unpack(args))
        end
    else
        _G.j= false
    end
end)
rebirths:CreateToggle("Auto Buy Rebirths x5k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do


local args = {
    [1] = 5,
}

game:GetService("ReplicatedStorage").Events.RefreshEvents.Refresh:FireServer(unpack(args))
        end
    else
        _G.l= false
    end
end)
rebirths:CreateToggle("Auto Buy Rebirths x25k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do


local args = {
    [1] = 6,
}

game:GetService("ReplicatedStorage").Events.RefreshEvents.Refresh:FireServer(unpack(args))
        end
    else
        _G.m= false
    end
end)
rebirths:CreateToggle("Auto Buy Rebirths x150k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do


local args = {
    [1] = 7,
}

game:GetService("ReplicatedStorage").Events.RefreshEvents.Refresh:FireServer(unpack(args))
        end
    else
        _G.o= false
    end
end)
rebirths:CreateToggle("Auto Buy Rebirths x500k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
        while wait(0) and _G.p do


local args = {
    [1] = 8,
}

game:GetService("ReplicatedStorage").Events.RefreshEvents.Refresh:FireServer(unpack(args))
        end
    else
        _G.p= false
    end
end)
rebirths:CreateToggle("Auto Buy Rebirths x1.5M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
        while wait(0) and _G.r do


local args = {
    [1] = 9,
}

game:GetService("ReplicatedStorage").Events.RefreshEvents.Refresh:FireServer(unpack(args))
        end
    else
        _G.r= false
    end
end)
rebirths:CreateToggle("Auto Buy Rebirths x5M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s = true 
        while wait(0) and _G.s do


local args = {
    [1] = 10,
}

game:GetService("ReplicatedStorage").Events.RefreshEvents.Refresh:FireServer(unpack(args))
        end
    else
        _G.s= false
    end
end)
rebirths:CreateToggle("Auto Buy Rebirths x25M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t = true 
        while wait(0) and _G.t do


local args = {
    [1] = 11,
}

game:GetService("ReplicatedStorage").Events.RefreshEvents.Refresh:FireServer(unpack(args))
        end
    else
        _G.t= false
    end
end)
rebirths:CreateToggle("Auto Buy Rebirths x100M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.u = true 
        while wait(0) and _G.u do


local args = {
    [1] = 12,
}

game:GetService("ReplicatedStorage").Events.RefreshEvents.Refresh:FireServer(unpack(args))
        end
    else
        _G.u= false
    end
end)
eggs:CreateToggle("Auto Buy Common Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do



local args = {
    [1] = "Common Egg",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").Events.PetEvents.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.f= false
    end
end)

eggs:CreateToggle("Auto Buy 1,5k diamond Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do



local args = {
    [1] = "Release Egg",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").Events.PetEvents.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.g= false
    end
end)
eggs:CreateToggle("Auto Buy 1,5m Click Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do



local args = {
    [1] = "Candy Egg",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").Events.PetEvents.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.k= false
    end
end)
eggs:CreateToggle("Auto Buy 15m Click Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do



local args = {
    [1] = "Desert Egg",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").Events.PetEvents.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.n= false
    end
end)
eggs:CreateToggle("Auto Buy 100m Click Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
        while wait(0) and _G.q do



local args = {
    [1] = "Neon Egg",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").Events.PetEvents.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.q= false
    end
end)
eggs:CreateToggle("Auto Buy 1b Click Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.v = true 
        while wait(0) and _G.v do



local args = {
    [1] = "Lava Egg",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").Events.PetEvents.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.v= false
    end
end)
eggs:CreateToggle("Auto Buy 100b Click Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.w = true 
        while wait(0) and _G.w do



local args = {
    [1] = "Toxic Egg",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").Events.PetEvents.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.w= false
    end
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-33.1470413, -3.32439613, 158.751083)
end)
teleports:CreateButton("x2 zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(579.216003, 14.6725683, 15691.248)
end)
teleports:CreateButton("x3 zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(849.561707, 80.4727249, 14561.7402)
end)
teleports:CreateButton("x5 zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1388.45215, 71.4382629, 13856.6904)
end)
teleports:CreateButton("x7 zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1795.99951, 108.551674, 14610.5186)
end)
     teleports:CreateButton("x10 zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-746.490967, 108.625504, 14120.0469)
end)  
 local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

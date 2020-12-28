--https://www.roblox.com/games/5420697005/Tap-Tap-Simulator

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Tap-Tap-Simulator GUI","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local Rebirths = Library:CreateTab("Auto Rebirth","things", true)
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


AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)


MISC:CreateButton("NO CLIP Press(E)", function(arg) --the (arg) is if the checkbox is toggled or not
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
 game:GetService("ReplicatedStorage").Remotes.Click:InvokeServer()
        end
    else
        _G.b= false
    end
end)


eggs:CreateToggle("Auto Buy Basic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
       while wait(0) and _G.c do
local args = {
    [1] = "BasicEgg",
}

game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(unpack(args))
end
    else
        _G.c= false
    end
end)
eggs:CreateToggle("Auto Buy Dragon Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
       while wait(0) and _G.d do
local args = {
    [1] = "DragonEgg",
}

game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(unpack(args))
end
    else
        _G.d= false
    end
end)
eggs:CreateToggle("Auto Buy Robot Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
       while wait(0) and _G.e do
local args = {
    [1] = "RobotEgg",
}

game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(unpack(args))
end
    else
        _G.e= false
    end
end)
eggs:CreateToggle("Auto Buy Element Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
       while wait(0) and _G.f do
local args = {
    [1] = "ElementEgg",
}

game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(unpack(args))
end
    else
        _G.f= false
    end
end)
eggs:CreateToggle("Auto Buy Ice Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
       while wait(0) and _G.i do
local args = {
    [1] = "IceEgg",
}

game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(unpack(args))
end
    else
        _G.i= false
    end
end)
eggs:CreateToggle("Auto Buy Lava Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
       while wait(0) and _G.h do
local args = {
    [1] = "LavaEgg",
}

game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(unpack(args))
end
    else
        _G.h= false
    end
end)
eggs:CreateToggle("Auto Buy Aqua Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
       while wait(0) and _G.j do
local args = {
    [1] = "AquaEgg",
}

game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(unpack(args))
end
    else
        _G.j= false
    end
end)
eggs:CreateToggle("Auto Buy Moon Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
       while wait(0) and _G.k do
local args = {
    [1] = "MoonEgg",
}

game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(unpack(args))
end
    else
        _G.k= false
    end
end)
eggs:CreateToggle("Auto Buy Desert Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
       while wait(0) and _G.l do
local args = {
    [1] = "DesertEgg",
}

game:GetService("ReplicatedStorage").Remotes.BuyEgg:InvokeServer(unpack(args))
end
    else
        _G.l= false
    end
end)
Rebirths:CreateToggle("Auto Buy Rebirths x1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
       while wait(0) and _G.g do
local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Remotes.BuyRebirths:InvokeServer(unpack(args))
end
    else
        _G.g= false
    end
end)
Rebirths:CreateToggle("Auto Buy Rebirths x2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
       while wait(0) and _G.m do
local args = {
    [1] = 2,
}

game:GetService("ReplicatedStorage").Remotes.BuyRebirths:InvokeServer(unpack(args))
end
    else
        _G.m= false
    end
end)
Rebirths:CreateToggle("Auto Buy Rebirths x3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
       while wait(0) and _G.n do
local args = {
    [1] = 3,
}

game:GetService("ReplicatedStorage").Remotes.BuyRebirths:InvokeServer(unpack(args))
end
    else
        _G.n= false
    end
end)
Rebirths:CreateToggle("Auto Buy Rebirths x8", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
       while wait(0) and _G.o do
local args = {
    [1] = 8,
}

game:GetService("ReplicatedStorage").Remotes.BuyRebirths:InvokeServer(unpack(args))
end
    else
        _G.o= false
    end
end)
Rebirths:CreateToggle("Auto Buy Rebirths x20", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
       while wait(0) and _G.p do
local args = {
    [1] = 20,
}

game:GetService("ReplicatedStorage").Remotes.BuyRebirths:InvokeServer(unpack(args))
end
    else
        _G.p= false
    end
end)
Rebirths:CreateToggle("Auto Buy Rebirths x50", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
       while wait(0) and _G.q do
local args = {
    [1] = 50,
}

game:GetService("ReplicatedStorage").Remotes.BuyRebirths:InvokeServer(unpack(args))
end
    else
        _G.q= false
    end
end)
Rebirths:CreateToggle("Auto Buy Rebirths x200", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
       while wait(0) and _G.r do
local args = {
    [1] = 200,
}

game:GetService("ReplicatedStorage").Remotes.BuyRebirths:InvokeServer(unpack(args))
end
    else
        _G.r= false
    end
end)
Rebirths:CreateToggle("Auto Buy Rebirths x500", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s = true 
       while wait(0) and _G.s do
local args = {
    [1] = 500,
}

game:GetService("ReplicatedStorage").Remotes.BuyRebirths:InvokeServer(unpack(args))
end
    else
        _G.s= false
    end
end)
Rebirths:CreateToggle("Auto Buy Rebirths x1k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t = true 
       while wait(0) and _G.t do
local args = {
    [1] = 1000,
}

game:GetService("ReplicatedStorage").Remotes.BuyRebirths:InvokeServer(unpack(args))
end
    else
        _G.t= false
    end
end)
teleports:CreateButton("Aqua", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(640.644165, 37.8075066, 628.374939)
end)
teleports:CreateButton("Moon", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(12.2157698, 37.8075066, 640.166199)
end)

teleports:CreateButton("Wild West", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-726.390381, 38.0575333, -30.6565418)
end)

teleports:CreateButton("Snow", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(731.01123, 37.8075066, -9.78643799)
end)

teleports:CreateButton("Magma", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(41.8644981, 38.0575333, -631.552917)
end)


teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-44.4588203, 25.2575283, 51.5172195)
end)
--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)
    
    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

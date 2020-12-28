--https://www.roblox.com/games/5447655350/Sword-Master-Simulator-BETA#
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Sword-Master-Simulator GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local eggs2 = Library:CreateTab("Auto Buy Hats","things", true)
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


MISC:CreateButton("🎬NO CLIP Press(E)🎬", function() --the (arg) is if the checkbox is toggled or not
    _G.NO2 = true 
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
end)

MISC:CreateButton("‍♀️Inf Jump🤸‍", function() --the (arg) is if the checkbox is toggled or not
game:GetService("UserInputService").JumpRequest:connect(function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
end)
end)
MISC:CreateButton("🕹️Ctrl + Click = TP🕹️", function() --the (arg) is if the checkbox is toggled or not
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Plr.Character:MoveTo(Mouse.Hit.p)
end)
end)
MISC:CreateButton("🪰Fly Press (F)🪰", function() --the (arg) is if the checkbox is toggled or not
     repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Head 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 400 
local speed = 5000 

function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 100
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "f" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()

          
end)
MISC:CreateButton("Infinite Yield", function() --the (arg) is if the checkbox is toggled or not
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MISC:CreateButton("💨Speed Hack 200 PRESS (R)💨", function() --the (arg) is if the checkbox is toggled or not
   
local walkspeedplayer = game:GetService("Players").LocalPlayer
local walkspeedmouse = walkspeedplayer:GetMouse()

local walkspeedenabled = false

function x_walkspeed(key)
if (key == "r") then
if walkspeedenabled == false then
_G.WS = 200;
local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
Humanoid.WalkSpeed = _G.WS;
end)
Humanoid.WalkSpeed = _G.WS;

walkspeedenabled = true
elseif walkspeedenabled == true then
_G.WS = 20;
local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
Humanoid.WalkSpeed = _G.WS;
end)
Humanoid.WalkSpeed = _G.WS;

walkspeedenabled = false
end
end
end

walkspeedmouse.KeyDown:connect(x_walkspeed)

end)






AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
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



AutoTab:CreateToggle("Auto Sell", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.LULU2 = true 
        while wait(0) and _G.LULU2 do
local args = {
    [1] = "Sell",
}

game:GetService("ReplicatedStorage").Remote.SellRemote:FireServer(unpack(args))
end

    else
        _G.LULU2 = false
    end
end)


AutoTab:CreateToggle("Auto Collect", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0) and _G.a do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Main' then
     v.CFrame = root.CFrame
       wait()
   local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart
end
    end
end

    else
        _G.a = false
    end
end)

AutoTab:CreateToggle("Auto Rewards", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
local args = {
    [1] = "1",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.WindowsGui.QuestSystem.ChestRewardRemote:FireServer(unpack(args))
local args = {
    [1] = "2",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.WindowsGui.QuestSystem.ChestRewardRemote:FireServer(unpack(args))
local args = {
    [1] = "3",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.WindowsGui.QuestSystem.ChestRewardRemote:FireServer(unpack(args))
local args = {
    [1] = "4",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.WindowsGui.QuestSystem.ChestRewardRemote:FireServer(unpack(args))
local args = {
    [1] = "5",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.WindowsGui.QuestSystem.ChestRewardRemote:FireServer(unpack(args))
local args = {
    [1] = "6",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.WindowsGui.QuestSystem.ChestRewardRemote:FireServer(unpack(args))
local args = {
    [1] = "1",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.WindowsGui.QuestSystem.PlayTimeRewardRemote:FireServer(unpack(args))
local args = {
    [1] = "2",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.WindowsGui.QuestSystem.PlayTimeRewardRemote:FireServer(unpack(args))
local args = {
    [1] = "3",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.WindowsGui.QuestSystem.PlayTimeRewardRemote:FireServer(unpack(args))
end

    else
        _G.b = false
    end
end)
eggs:CreateToggle("Auto Buy 1K Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
     if arg then
        _G.e = true 
        while wait(0) and _G.e do
local args = {
    [1] = "E",
    [2] = "1",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.PetShopGui.PetShopRemote:FireServer(unpack(args))
end

    else
        _G.e = false
    end
end)
eggs:CreateToggle("Auto Buy 10K Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
local args = {
    [1] = "E",
    [2] = "2",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.PetShopGui.PetShopRemote:FireServer(unpack(args))
end

    else
        _G.e = false
    end
end)
eggs:CreateToggle("Auto Buy 160K Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
local args = {
    [1] = "E",
    [2] = "3",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.PetShopGui.PetShopRemote:FireServer(unpack(args))
end

    else
        _G.f = false
    end
end)
eggs:CreateToggle("Auto Buy 1.9M Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
local args = {
    [1] = "E",
    [2] = "4",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.PetShopGui.PetShopRemote:FireServer(unpack(args))
end

    else
        _G.g = false
    end
end)
eggs:CreateToggle("Auto Buy 18M Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
local args = {
    [1] = "E",
    [2] = "5",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.PetShopGui.PetShopRemote:FireServer(unpack(args))
end

    else
        _G.h = false
    end
end)
eggs:CreateToggle("Auto Buy 70M Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
local args = {
    [1] = "E",
    [2] = "6",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.PetShopGui.PetShopRemote:FireServer(unpack(args))
end

    else
        _G.i = false
    end
end)
eggs:CreateToggle("Auto Buy 550M Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
local args = {
    [1] = "E",
    [2] = "7",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.PetShopGui.PetShopRemote:FireServer(unpack(args))
end

    else
        _G.j = false
    end
end)
eggs:CreateToggle("Auto Buy 20B Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
local args = {
    [1] = "E",
    [2] = "8",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.PetShopGui.PetShopRemote:FireServer(unpack(args))
end

    else
        _G.h = false
    end
end)
eggs:CreateToggle("Auto Buy 180B Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
local args = {
    [1] = "E",
    [2] = "9",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.PetShopGui.PetShopRemote:FireServer(unpack(args))
end

    else
        _G.i = false
    end
end)
eggs:CreateToggle("Auto Buy 1.3T Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do

game:GetService("Players").LocalPlayer.PlayerGui.PetShopGui.PetShopRemote:FireServer("E","10")
end

    else
        _G.i = false
    end
end)
eggs:CreateToggle("Auto Buy 2.2Qa Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do

game:GetService("Players").LocalPlayer.PlayerGui.PetShopGui.PetShopRemote:FireServer("E","11")
end

    else
        _G.i = false
    end
end)
eggs:CreateToggle("Auto Buy 3.9Qa Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do

game:GetService("Players").LocalPlayer.PlayerGui.PetShopGui.PetShopRemote:FireServer("E","12")
end

    else
        _G.i = false
    end
end)
eggs:CreateToggle("Auto Buy 150 Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
local args = {
    [1] = "E",
    [2] = "1",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.PetShopGui.PetShopRemote:FireServer(unpack(args))
end

    else
        _G.d = false
    end
end)
eggs2:CreateToggle("Auto Buy 210 Gems Hats", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
local args = {
    [1] = "E",
    [2] = "1",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.HatShopGui.HatShopRemote:FireServer(unpack(args))
end

    else
        _G.j = false
    end
end)
eggs2:CreateToggle("Auto Buy 563 Gems Hats", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
local args = {
    [1] = "E",
    [2] = "3",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.HatShopGui.HatShopRemote:FireServer(unpack(args))
end

    else
        _G.l = false
    end
end)
eggs2:CreateToggle("Auto Buy 1K Gems Hats", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
local args = {
    [1] = "E",
    [2] = "1",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.HatShopGui.HatShopRemote:FireServer(unpack(args))
end

    else
        _G.k = false
    end
end)
eggs2:CreateToggle("Auto Buy 1,4K Gems Hats", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
local args = {
    [1] = "E",
    [2] = "4",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.HatShopGui.HatShopRemote:FireServer(unpack(args))
end

    else
        _G.m = false
    end
end)
eggs2:CreateToggle("Auto Buy 3,6K Gems Hats", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do
local args = {
    [1] = "E",
    [2] = "5",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.HatShopGui.HatShopRemote:FireServer(unpack(args))
end

    else
        _G.n = false
    end
end)
eggs2:CreateToggle("Auto Buy 9K Gems Hats", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do
local args = {
    [1] = "E",
    [2] = "6",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.HatShopGui.HatShopRemote:FireServer(unpack(args))
end

    else
        _G.o = false
    end
end)
eggs2:CreateToggle("Auto Buy 23,5K Gems Hats", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
        while wait(0) and _G.p do
local args = {
    [1] = "E",
    [2] = "7",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.HatShopGui.HatShopRemote:FireServer(unpack(args))
end

    else
        _G.p = false
    end
end)
eggs2:CreateToggle("Auto Buy 60,2K Gems Hats", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
        while wait(0) and _G.q do
local args = {
    [1] = "E",
    [2] = "8",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.HatShopGui.HatShopRemote:FireServer(unpack(args))
end

    else
        _G.q = false
    end
end)
eggs2:CreateToggle("Auto Buy 154,2K Gems Hats", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
        while wait(0) and _G.r do
local args = {
    [1] = "E",
    [2] = "9",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.HatShopGui.HatShopRemote:FireServer(unpack(args))
end

    else
        _G.r = false
    end
end)
eggs2:CreateToggle("Auto Buy 394,7K Gems Hats", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s = true 
        while wait(0) and _G.s do
local args = {
    [1] = "E",
    [2] = "10",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.HatShopGui.HatShopRemote:FireServer(unpack(args))
end

    else
        _G.s = false
    end
end)
eggs2:CreateToggle("Auto Buy 394,7K Gems Hats(other)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s2 = true 
        while wait(0) and _G.s2 do
local args = {
    [1] = "E",
    [2] = "11",
}

game:GetService("Players")["LocalPlayer"].PlayerGui.HatShopGui.HatShopRemote:FireServer(unpack(args))
end

    else
        _G.s2 = false
    end
end)
AutoTab:CreateButton("Disable POP Ups", function() --the (arg) is if the checkbox is toggled or not
game:GetService("ReplicatedStorage").HeartTemplate.Visible = false
game:GetService("ReplicatedStorage").ManaTemplate.Visible = false
game:GetService("ReplicatedStorage").GoldTemplate.Visible = false
game:GetService("ReplicatedStorage").GemTemplate.Visible = false
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1.42289257, -3.45246887, -69.1642227)
end)

teleports:CreateButton("Island 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-28.6498985, 466.442719, -19.1608257)
end)

teleports:CreateButton("Island 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(55.7326012, 2015.94214, 8.42726803)
end)
teleports:CreateButton("Island 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(91.1738815, 3985.87207, 109.788895)
end)
teleports:CreateButton("Island 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(52.4297562, 6435.06104, -68.940773)
end)
teleports:CreateButton("Island 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(150.262787, 14734.9004, 96.4903259)
end)
teleports:CreateButton("Island 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(21.9193058, 20036.2383, 30.9613304)
end)
teleports:CreateButton("Island 7", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16.7487984, 25245.5586, 57.9925842)
end)
teleports:CreateButton("Island 8", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(28.551075, 31772.7988, -14.377902)
end)
teleports:CreateButton("Island 9", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-3.69108534, 38124.3359, 20.3873672)
end)
teleports:CreateButton("Zone 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-379.741241, -2.34246922, -12.6514053)
end)
teleports:CreateButton("Zone 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-603.959656, -2.49246907, -17.9326)
end)
teleports:CreateButton("Zone 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-770.2995, -2.49354863, 28.8829021)
end)
teleports:CreateButton("Zone 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1026.29578, -2.49246883, 37.8840752)
end)
teleports:CreateButton("Zone 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1219.38208, -2.49246907, 29.0519485)
end)
teleports:CreateButton("Zone 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1477.94897, -2.46246457, 2.33076143)
end)
teleports:CreateButton("Zone 7", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1650.38855, -2.46246457, 16.3162117)
end)
teleports:CreateButton("Zone 8", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1853.96729, -2.46246457, 20.6461182)
end)
teleports:CreateButton("Zone 9", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2076.93506, -2.46246457, 3.21100521)
end)
teleports:CreateButton("Zone 10", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2301.5769, -2.46246433, -16.8842258)
end)
teleports:CreateButton("Zone 11", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2786.12036, -2.124825, 59.9925842)
end)
teleports:CreateButton("Zone 12", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-3165.96362, -2.124825, 86.8748322)
end)
teleports:CreateButton("Zone 13", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-3597.50977, -5.74269485, 101.846436)
end)
teleports:CreateButton("Zone 14", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-3920.97803, -2.124825, 105.4384)
end)
--| Anti KICK |
local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function

if not protect then
protect = function(f) return f end
end

setreadonly(mt, false)
mt.__namecall = protect(function(self, ...)
local method = getnamecallmethod()
if method == "Kick" then
wait(9e9)
return
end
return old(self, ...)
end)
hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() wait(9e9)
 end))

--| Anti AFK |
   local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

--| Anti Ban |
setfflag("DFStringCrashPadUploadToBacktraceToBacktraceBaseUrl", "")
setfflag("DFIntCrashUploadToBacktracePercentage", "0")
setfflag("DFStringCrashUploadToBacktraceBlackholeToken", "")
setfflag("DFStringCrashUploadToBacktraceWindowsPlayerToken", "")

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

--| Anti Chat Logs |
local CloneFunction = clonefunction
local CheckCaller = CloneFunction(checkcaller)
local HookFunction = CloneFunction(hookfunction)
local LocalPlayer = game.Players.PlayerAdded:wait()

local PostMessage = require(LocalPlayer:WaitForChild("PlayerScripts", 1/0):WaitForChild("ChatScript", 1/0):WaitForChild("ChatMain", 1/0)).MessagePosted
getgenv().MessageEvent = Instance.new("BindableEvent")

local OldFunctionHook
local PostMessageHook = function(self, msg)
   if not CheckCaller() and self == PostMessage then
       MessageEvent:Fire(msg)
       return
   end
   return OldFunctionHook(self, msg)
end
OldFunctionHook = HookFunction(PostMessage.fire, PostMessageHook)

--https://www.roblox.com/games/5306101736/BEACH-Pet-Hatching-Simulator-5?refPageId=a4b1ed7b-d056-4a3a-a060-76c6bc9070a5#
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Pet-Hatching-Simulator-5 GUI","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local eggs2 = Library:CreateTab("Auto Buy Eggs 2","things", true)
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







AutoTab:CreateToggle("Auto Lock Legendary,Secrets Pets", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.aU = true 
        while wait(0) and _G.aU do

game:GetService("ReplicatedStorage").RemoteEvents.PetActionRequest:InvokeServer("LockAllRarity")
end

    else
        _G.aU = false
    end
end)
AutoTab:CreateToggle("Auto Collect Coins", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.LULU2 = true 
        while wait(0) and _G.LULU2 do
         local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Coin' then
     v.CFrame = root.CFrame
       wait()
   
  
        end
    end
end

    else
        _G.LULU2 = false
    end
end)
AutoTab:CreateToggle("Auto Collect Gifts", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.LULU22 = true 
        while wait(0) and _G.LULU22 do
         local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Collect' then
     v.CFrame = root.CFrame
       wait()
   
  
        end
    end
end

    else
        _G.LULU22 = false
    end
end)
eggs:CreateToggle("Auto Buy Common Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0) and _G.a do

local args = {
    [1] = "Common",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-53.9137993, 6.30052948, 41.7058716)
end

    else
        _G.a = false
    end
end)
eggs:CreateToggle("Auto Buy Unommon Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do

local args = {
    [1] = "Unommon",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-54.6837311, 6.30052948, 29.3793755)
end

    else
        _G.b = false
    end
end)
eggs:CreateToggle("Auto Buy Rare Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
local args = {
    [1] = "Rare",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-55.7048645, 6.30052805, 17.0113792)
end

    else
        _G.c = false
    end
end)
eggs:CreateToggle("Auto Buy Epic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
local args = {
    [1] = "Epic",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-54.1631851, 6.30052948, 8.3283987)
end

    else
        _G.d = false
    end
end)
eggs:CreateToggle("Auto Buy Legendary Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
local args = {
    [1] = "Legendary",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-54.412159, 6.30052948, -2.81975484)
end

    else
        _G.e = false
    end
end)
eggs:CreateToggle("Auto Buy Fall(EVENT OCTOBER) Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
local args = {
    [1] = "Fall",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(88.7347336, 6.30052948, 33.1336823)
end

    else
        _G.f = false
    end
end)
eggs:CreateToggle("Auto Buy Neon(LIMITED) Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
local args = {
    [1] = "Neon",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(85.0285187, 6.30052948, -9.38870716)
end

    else
        _G.g = false
    end
end)
eggs:CreateToggle("Auto Buy Ore Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
local args = {
    [1] = "Ore",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1007.58612, 4.36098957, -390.817078)
end

    else
        _G.h = false
    end
end)
eggs:CreateToggle("Auto Buy Gem Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Gem","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1007.58612, 4.36098957, -390.817078)
end

    else
        _G.i = false
    end
end)
eggs:CreateToggle("Auto Buy Beach Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
local args = {
    [1] = "Beach",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1780.94507, 15.4509888, 1226.30298)
end

    else
        _G.j = false
    end
end)
eggs:CreateToggle("Auto Buy Sea Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
local args = {
    [1] = "Sea",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1809.89661, 15.4509907, 1223.58508)
end

    else
        _G.k = false
    end
end)
eggs:CreateToggle("Auto Buy 200k Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Gold","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(90.6623688, 6.30052948, 12.8416052)
end

    else
        _G.l = false
    end
end)
eggs:CreateToggle("Auto Buy Candycorn Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m2 = true 
        while wait(0) and _G.m2 do

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Candycorn","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1223.76355, 4.95983601, -46.9303665)
end

    else
        _G.m2 = false
    end
end)
eggs:CreateToggle("Auto Buy Pumpkin Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Pumpkin","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1237.83142, 4.36098957, -44.6364059)
end

    else
        _G.m = false
    end
end)
eggs:CreateToggle("Auto Buy Zombie Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Zombie","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1252.74353, 4.36098957, -45.4724159)
end

    else
        _G.n = false
    end
end)
eggs:CreateToggle("Auto Buy Cauldron Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do


game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Zombie","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1271.81982, 4.36098957, -45.015255)
end

    else
        _G.o = false
    end
end)
eggs:CreateToggle("Auto Buy Spooky Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
        while wait(0) and _G.p do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Spooky","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1289.87585, 4.36098957, -44.2626648)
end

    else
        _G.p = false
    end
end)
eggs:CreateToggle("Auto Buy Frost Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
        while wait(0) and _G.q do



game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Frost","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1288.90857, 4.52121544, -834.233582)
end

    else
        _G.q = false
    end
end)
eggs:CreateToggle("Auto Buy Light Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
        while wait(0) and _G.r do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Light","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1286.953, 4.36094189, -808.776489)
end

    else
        _G.r = false
    end
end)
eggs:CreateToggle("Auto Buy Gold Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s = true 
        while wait(0) and _G.s do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Gold","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-6370.46533, -36.5174255, -13138.8184)
end

    else
        _G.s = false
    end
end)
eggs:CreateToggle("Auto Buy Fall Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t222 = true 
        while wait(0) and _G.t222 do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Fall","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-6374.30811, -35.3394699, -13123.4746)
end

    else
        _G.t222 = false
    end
end)
eggs:CreateToggle("Auto Buy Coconut Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t22 = true 
        while wait(0) and _G.t22 do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Coconut","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1853.81946, 34.2818222, -314.787231)
end

    else
        _G.t22 = false
    end
end)
eggs:CreateToggle("Auto Buy Tropical Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t2 = true 
        while wait(0) and _G.t2 do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Tropical","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1846.14392, 34.2884216, -302.1698)
end

    else
        _G.t2 = false
    end
end)
eggs:CreateToggle("Auto Buy Pixel Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Pixel = true 
        while wait(0) and _G.Pixel do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Pixel","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(159.551056, 6.41051102, 219.31427)
end

    else
        _G.Pixel = false
    end
end)
eggs:CreateToggle("Auto Buy Rainbow Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Rainbow = true 
        while wait(0) and _G.Rainbow do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Rainbow","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1610.74353, -450.489441, 26.0076294)
end

    else
        _G.Rainbow = false
    end
end)
eggs:CreateToggle("Auto Buy Beach Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Beach = true 
        while wait(0) and _G.Beach do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Beach","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1781.82861, 16.3709908, 1225.60925)
end

    else
        _G.Beach = false
    end
end)
eggs:CreateToggle("Auto Buy Devil Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Devil = true 
        while wait(0) and _G.Devil do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Devil","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1188.68774, 4.64098978, 211.926483)
end

    else
        _G.Devil = false
    end
end)
eggs:CreateToggle("Auto Buy Molten Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Molten = true 
        while wait(0) and _G.Molten do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Molten","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1331.38965, 68.3006439, 226.79628)
end

    else
        _G.Molten = false
    end
end)
eggs:CreateToggle("Auto Buy Frost Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Frost= true 
        while wait(0) and _G.Frost do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Frost","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1286.99304, 4.36098957, -834.886169)
end

    else
        _G.Frost = false
    end
end)
eggs:CreateToggle("Auto Buy Obsidian Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Obsidian = true 
        while wait(0) and _G.Obsidian do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Obsidian","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1085.64966, 4.64098978, 80.3744354)
end

    else
        _G.Obsidian = false
    end
end)
eggs:CreateToggle("Auto Buy Dominus Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Dominus = true 
        while wait(0) and _G.Dominus do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Dominus","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-51.1653252, 6.37053013, -33.8241272)
end

    else
        _G.Dominus = false
    end
end)
eggs:CreateToggle("Auto Buy 2020 Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t2020 = true 
        while wait(0) and _G.t2020 do




game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("2020","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1574.07764, -285.189484, -68.4293823)
end

    else
        _G.t2020 = false
    end
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(31.7384644, 6.22448683, 35.9957504)
end)

teleports:CreateButton("Crystal Forest", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(981.026001, 4.50790787, -378.924866)
end)

teleports:CreateButton("Beach", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1791.63, 15.29743, 1232.42188)
end)
teleports:CreateButton("Halloween Event", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1199.64294, 4.17068434, 59.9018288)
end)
teleports:CreateButton("Frost", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1269.32312, 4.17094135, -831.520935)
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

--https://www.roblox.com/games/5461749397/Update-Key-Champions
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()
local AutoTab = Library:CreateTab("Key-Champions GUI","things", true)
local boxes = Library:CreateTab("Auto Destroy Boxes 1","things", true)
local boxes2 = Library:CreateTab("Auto Destroy Boxes 2","things", true)
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






AutoTab:CreateToggle("Auto Upgrades Keys", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.LULU = true 
        while wait(0) and _G.LULU do

game:GetService("ReplicatedStorage").Key:FireServer()
end

    else
        _G.LULU = false
    end
end)


AutoTab:CreateToggle("Auto Upgrades Backpacks", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.LULU2 = true 
        while wait(0) and _G.LULU2 do


game:GetService("ReplicatedStorage").Backpack:FireServer()
end

    else
        _G.LULU2 = false
    end
end)

AutoTab:CreateToggle("Auto Sell x250", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0) and _G.a do

game:GetService("ReplicatedStorage").Area:FireServer(10)
game:GetService("ReplicatedStorage").Sell:FireServer(10)

end

    else
        _G.a = false
    end
end)
AutoTab:CreateToggle("Auto Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.ab = true 
        while wait(0) and _G.ab do

game:GetService("ReplicatedStorage").Rebirths:FireServer()
end

    else
        _G.ab = false
    end
end)
AutoTab:CreateToggle("Auto Buy Area", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.abcc = true 
        while wait(0) and _G.abcc do


local args = {
    [1] = 2,
}

game:GetService("ReplicatedStorage").Area:FireServer(unpack(args))
local args = {
    [1] = 3,
}

game:GetService("ReplicatedStorage").Area:FireServer(unpack(args))
local args = {
    [1] = 4,
}

game:GetService("ReplicatedStorage").Area:FireServer(unpack(args))
local args = {
    [1] = 5,
}

game:GetService("ReplicatedStorage").Area:FireServer(unpack(args))
local args = {
    [1] = 6,
}

game:GetService("ReplicatedStorage").Area:FireServer(unpack(args))
local args = {
    [1] = 7,
}

game:GetService("ReplicatedStorage").Area:FireServer(unpack(args))
local args = {
    [1] = 8,
}

game:GetService("ReplicatedStorage").Area:FireServer(unpack(args))
local args = {
    [1] = 9,
}

game:GetService("ReplicatedStorage").Area:FireServer(unpack(args))
local args = {
    [1] = 10,
}

game:GetService("ReplicatedStorage").Area:FireServer(unpack(args))
end

    else
        _G.abcc = false
    end
end)

eggs:CreateToggle("Auto Buy 100 Money Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    
    if arg then
        _G.d105 = true 
        while wait(0) and _G.d105 do   
local args = {
    [1] = "Basic Egg",
}

game:GetService("ReplicatedStorage").Egg:FireServer(unpack(args))
end
    else
        _G.d105 = false
    end
end)
eggs:CreateToggle("Auto Buy 1K Money Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
  
    if arg then
        _G.d104 = true 
        while wait(0) and _G.d104 do   
local args = {
    [1] = "Earth Egg",
}

game:GetService("ReplicatedStorage").Egg:FireServer(unpack(args))
end
    else
        _G.d104 = false
    end
end)
eggs:CreateToggle("Auto Buy 50K Money Eggs", function(arg) --the (arg) is if the checkbox is toggled or not

    if arg then
        _G.d103 = true 
        while wait(0) and _G.d103 do   
local args = {
    [1] = "Fire Egg",
}

game:GetService("ReplicatedStorage").Egg:FireServer(unpack(args))
end
    else
        _G.d103 = false
    end
end)
eggs:CreateToggle("Auto Buy 1M Money Eggs",function(arg) --the (arg) is if the checkbox is toggled or not
     if arg then
        _G.d102 = true 
        while wait(0) and _G.d102 do
local args = {
    [1] = "Shadow Egg",
}

game:GetService("ReplicatedStorage").Egg:FireServer(unpack(args))
end
    else
        _G.d102 = false
    end
end)
eggs:CreateToggle("Auto Buy 5M Money Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
     if arg then
        _G.d101 = true 
        while wait(0) and _G.d101 do
local args = {
    [1] = "Mixed Egg",
}

game:GetService("ReplicatedStorage").Egg:FireServer(unpack(args))
end
    else
        _G.d101 = false
    end
end)
eggs:CreateToggle("Auto Buy 50M Money Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
     if arg then
        _G.d100 = true 
        while wait(0) and _G.d100 do
local args = {
    [1] = "Forest Egg",
}

game:GetService("ReplicatedStorage").Egg:FireServer(unpack(args))
end
    else
        _G.d100 = false
    end
end)
boxes:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(5900.74756, 1912.06738, 6215.93359)
end)
boxes2:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(5900.74756, 1912.06738, 6215.93359)
end)
boxes:CreateButton("Area 1", function() --the (arg) is if the checkbox is toggled or not
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(5673.18652, 1925.54688, 6368.1875)
end)
boxes:CreateToggle("Auto Tp To Small Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d1 = true 
        while wait(0) and _G.d1 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area1.Boxs2["Small Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+3, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area1"]["Boxs2"]["Small Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d1 = false
    end
end)
boxes:CreateToggle("Auto Tp To Medium Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d2 = true 
        while wait(0) and _G.d2 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area1.Boxs2["Medium Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+5, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area1"]["Boxs2"]["Medium Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d2 = false
    end
end)
boxes:CreateToggle("Auto Tp To Large Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d3 = true 
        while wait(0) and _G.d3 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area1.Boxs2["Large Chest"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+7, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area1"]["Boxs2"]["Large Chest"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d3 = false
    end
end)
boxes:CreateButton("Area 2", function() --the (arg) is if the checkbox is toggled or not
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(5365.14307, 1925.07886, 6501.23486)
end)
boxes:CreateToggle("Auto Tp To Small Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d4 = true 
        while wait(0) and _G.d4 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area2.Boxs2["Small Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+3, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area2"]["Boxs2"]["Small Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d4 = false
    end
end)
boxes:CreateToggle("Auto Tp To Medium Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d5 = true 
        while wait(0) and _G.d5 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area2.Boxs2["Medium Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+5, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area2"]["Boxs2"]["Medium Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d5 = false
    end
end)
boxes:CreateToggle("Auto Tp To Large Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d6 = true 
        while wait(0) and _G.d6 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area2.Boxs2["Large Chest"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+7, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area2"]["Boxs2"]["Large Chest"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d6 = false
    end
end)
boxes:CreateButton("Area 3", function() --the (arg) is if the checkbox is toggled or not
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(5394.42627, 1942.44263, 7394.79785)
end)
boxes:CreateToggle("Auto Tp To Small Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d7 = true 
        while wait(0) and _G.d7 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area3.Boxs2["Small Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+3, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area3"]["Boxs2"]["Small Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d7 = false
    end
end)
boxes:CreateToggle("Auto Tp To Medium Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d8 = true 
        while wait(0) and _G.d8 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area3.Boxs2["Medium Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+5, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area3"]["Boxs2"]["Medium Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d8 = false
    end
end)
boxes:CreateToggle("Auto Tp To Large Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d9 = true 
        while wait(0) and _G.d9 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area3.Boxs2["Large Chest"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+7, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area3"]["Boxs2"]["Large Chest"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d9 = false
    end
end)
boxes:CreateButton("Area 4", function() --the (arg) is if the checkbox is toggled or not
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(4817.58838, 1942.46021, 7631.14697)
end)
boxes:CreateToggle("Auto Tp To Small Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d10 = true 
        while wait(0) and _G.d10 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area4.Boxs2["Small Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+3, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area4"]["Boxs2"]["Small Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d10 = false
    end
end)
boxes:CreateToggle("Auto Tp To Medium Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d11 = true 
        while wait(0) and _G.d11 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area4.Boxs2["Medium Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+5, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area4"]["Boxs2"]["Medium Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d11 = false
    end
end)
boxes:CreateToggle("Auto Tp To Large Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d12 = true 
        while wait(0) and _G.d12 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area4.Boxs2["Large Chest"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+7, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area4"]["Boxs2"]["Large Chest"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d12 = false
    end
end)
boxes:CreateButton("Area 5", function() --the (arg) is if the checkbox is toggled or not
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(4287.09229, 1930.5144, 6737.36133)
end)
boxes:CreateToggle("Auto Tp To Small Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d13 = true 
        while wait(0) and _G.d13 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area5.Boxs2["Small Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+3, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area5"]["Boxs2"]["Small Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d13 = false
    end
end)
boxes:CreateToggle("Auto Tp To Medium Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d14 = true 
        while wait(0) and _G.d14 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area5.Boxs2["Medium Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+5, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area5"]["Boxs2"]["Medium Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d14 = false
    end
end)
boxes:CreateToggle("Auto Tp To Large Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d15 = true 
        while wait(0) and _G.d15 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area5.Boxs2["Large Chest"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+7, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area5"]["Boxs2"]["Large Chest"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d15 = false
    end
end)
boxes2:CreateButton("Area 6", function() --the (arg) is if the checkbox is toggled or not
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(4244.39941, 1925.07581, 6071.43799)
end)
boxes2:CreateToggle("Auto Tp To Small Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d16 = true 
        while wait(0) and _G.d16 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area6.Boxs2["Small Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+3, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area6"]["Boxs2"]["Small Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d16 = false
    end
end)
boxes2:CreateToggle("Auto Tp To Medium Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d17 = true 
        while wait(0) and _G.d17 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area6.Boxs2["Medium Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+5, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area6"]["Boxs2"]["Medium Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d17 = false
    end
end)
boxes2:CreateToggle("Auto Tp To Large Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d18 = true 
        while wait(0) and _G.d18 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area6.Boxs2["Large Chest"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+7, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area6"]["Boxs2"]["Large Chest"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d18 = false
    end
end)
boxes2:CreateButton("Area 7", function() --the (arg) is if the checkbox is toggled or not
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(4219.86719, 1925.0752, 6020.83105)
end)
boxes2:CreateToggle("Auto Tp To Small Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d19 = true 
        while wait(0) and _G.d19 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area7.Boxs2["Small Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+3, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area7"]["Boxs2"]["Small Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d19 = false
    end
end)
boxes2:CreateToggle("Auto Tp To Medium Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d20 = true 
        while wait(0) and _G.d20 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area7.Boxs2["Medium Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+5, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area7"]["Boxs2"]["Medium Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d20 = false
    end
end)
boxes2:CreateToggle("Auto Tp To Large Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d21 = true 
        while wait(0) and _G.d21 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area7.Boxs2["Large Chest"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+7, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area7"]["Boxs2"]["Large Chest"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d21 = false
    end
end)
boxes2:CreateButton("Area 8", function() --the (arg) is if the checkbox is toggled or not
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(3048.74609, 1925.08179, 4994.86768)
end)
boxes2:CreateToggle("Auto Tp To Small Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d22 = true 
        while wait(0) and _G.d22 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area8.Boxs2["Small Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+3, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area8"]["Boxs2"]["Small Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d22 = false
    end
end)
boxes2:CreateToggle("Auto Tp To Medium Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d23 = true 
        while wait(0) and _G.d23 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area8.Boxs2["Medium Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+5, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area8"]["Boxs2"]["Medium Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d23 = false
    end
end)
boxes2:CreateToggle("Auto Tp To Large Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d24 = true 
        while wait(0) and _G.d24 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area8.Boxs2["Large Chest"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+7, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area8"]["Boxs2"]["Large Chest"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d24 = false
    end
end)
boxes2:CreateButton("Area 9", function() --the (arg) is if the checkbox is toggled or not
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2357.13892, 1925.11304, 5699.2207)
end)
boxes2:CreateToggle("Auto Tp To Small Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d25 = true 
        while wait(0) and _G.d25 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area9.Boxs2["Small Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+3, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area9"]["Boxs2"]["Small Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d25 = false
    end
end)
boxes2:CreateToggle("Auto Tp To Medium Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d26 = true 
        while wait(0) and _G.d26 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area9.Boxs2["Medium Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+5, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area9"]["Boxs2"]["Medium Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d26 = false
    end
end)
boxes2:CreateToggle("Auto Tp To Large Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d27 = true 
        while wait(0) and _G.d27 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area9.Boxs2["Large Chest"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+7, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area9"]["Boxs2"]["Large Chest"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d27 = false
    end
end)
boxes2:CreateButton("Area 10", function() --the (arg) is if the checkbox is toggled or not
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2539.3584, 1925.10327, 6576.21387)
end)
boxes2:CreateToggle("Auto Tp To Small Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d28 = true 
        while wait(0) and _G.d28 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area10.Boxs2["Small Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+3, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area10"]["Boxs2"]["Small Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d28 = false
    end
end)
boxes2:CreateToggle("Auto Tp To Medium Boxes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d29 = true 
        while wait(0) and _G.d29 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area10.Boxs2["Medium Box"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+5, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area10"]["Boxs2"]["Medium Box"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d29 = false
    end
end)
boxes2:CreateToggle("Auto Tp To Large Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d30 = true 
        while wait(0) and _G.d30 do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Box Spawns"].Area10.Boxs2["Large Chest"].Union

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+7, pbosd.Position.Z+0)
local args = {
    [1] = workspace["Box Spawns"]["Area10"]["Boxs2"]["Large Chest"].Box,
    [2] = "1",
}

game:GetService("ReplicatedStorage").BoxSelect:FireServer(unpack(args))
end
    else
        _G.d30 = false
    end
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

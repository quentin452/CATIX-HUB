--https://www.roblox.com/games/5351136799/UPDATE-4-Coffee-Simulator

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Coffee-Simulator GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs X3","things", true)
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

MISC:CreateButton("🤸‍♀️Inf Jump🤸‍♀️", function() --the (arg) is if the checkbox is toggled or not
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




AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

AutoTab:CreateToggle("Auto Equip Coffees", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
         local toolname = "Diamond Coffee" -- replace with the name of the tool
local Plr = game:GetService("Players").LocalPlayer
while wait() do
    pcall(function()
        if Plr.Backpack:FindFirstChild(toolname) and Plr.Character:FindFirstChild(toolname) == nil then
            local tool = Plr.Backpack:FindFirstChild(toolname)
            Plr.Character.Humanoid:EquipTool(tool)
        end
    end)
end	
        end
    else
        _G.b = false
    end
end)
AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0) and _G.a do
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
end

    else
        _G.a = false
    end
end)
AutoTab:CreateToggle("Not WorkAuto Equip Coffee", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do
         local toolname = "Coffee Plastic" -- replace with the name of the tool
local Plr = game:GetService("Players").LocalPlayer
while wait() do
    pcall(function()
        if Plr.Backpack:FindFirstChild(toolname) and Plr.Character:FindFirstChild(toolname) == nil then
            local tool = Plr.Backpack:FindFirstChild(toolname)
            Plr.Character.Humanoid:EquipTool(tool)
        end
    end)
end	
        end
    else
        _G.b2 = false
    end
end)

AutoTab:CreateToggle("Auto Buy Coffes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0.5) and _G.b do


local args = {
    [1] = "Swords",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.ShopBuyAll:FireServer(unpack(args))
end

    else
        _G.b = false
    end
end)
AutoTab:CreateToggle("Auto Buy Cafeines", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0.5) and _G.c do


local args = {
    [1] = "Backpacks",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.ShopBuyAll:FireServer(unpack(args))
end

    else
        _G.c = false
    end
end)
AutoTab:CreateToggle("Auto Buy Skills", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0.5) and _G.d do


local args = {
    [1] = "Skills",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.ShopBuyAll:FireServer(unpack(args))
end

    else
        _G.d = false
    end
end)
AutoTab:CreateToggle("Auto Buy Auras", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0.5) and _G.e do


local args = {
    [1] = "Auras",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.ShopBuyAll:FireServer(unpack(args))
end

    else
        _G.e = false
    end
end)
AutoTab:CreateToggle("Auto Delete Pet Unequiped", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e2 = true 
        while wait(1) and _G.e2 do

game:GetService("ReplicatedStorage").Resources.RemoteEvents.PetDeleteAll:FireServer()

end

    else
        _G.e2 = false
    end
end)

eggs:CreateToggle("Auto Buy Common Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do


local args = {
    [1] = "COMMON",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(79.2577209, 21.3038902, -149.345459)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame  = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.f = false
    end
end)
eggs:CreateToggle("Auto Buy Uncommon Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do

local args = {
    [1] = "UNCOMMON",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(48.1290207, 21.3043137, -144.513138)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.g = false
    end
end)
eggs:CreateToggle("Auto Buy RARE Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do

local args = {
    [1] = "RARE",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-29.3938465, 685.694702, -632.950195)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.h = false
    end
end)
eggs:CreateToggle("Auto Buy Epic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do

local args = {
    [1] = "EPIC",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(244.267242, 3039.92358, -597.244812)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.i = false
    end
end)
eggs:CreateToggle("Auto Buy Legendary Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do

local args = {
    [1] = "LEGENDARY",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(352.199249, 5790.30859, -1006.61163)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.j = false
    end
end)
eggs:CreateToggle("Auto Buy Impossible Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do

local args = {
    [1] = "IMPOSSIBLE",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(346.401703, 10270.2861, -940.604919)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.k = false
    end
end)
eggs:CreateToggle("Auto Buy Immortal Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do

local args = {
    [1] = "IMMORTAL",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(545.997925, 17397.9258, -820.934082)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.l = false
    end
end)
eggs:CreateToggle("Auto Buy lightning Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do

local args = {
    [1] = "LIGHTNING",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(577.447144, 21959.9355, -947.44043)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.m = false
    end
end)
eggs:CreateToggle("Auto Buy Godness Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do

local args = {
    [1] = "GODNESS",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1119.81506, 30157.6211, -907.059204)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.n = false
    end
end)
eggs:CreateToggle("Auto Buy Cybernetic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do

local args = {
    [1] = "CYBERNETIC",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-607.368225, 60728.457, -58.5984077)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.o = false
    end
end)
eggs:CreateToggle("Auto Buy Powerful Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
        while wait(0) and _G.p do

local args = {
    [1] = "POWERFUL",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-64.1758575, 48000.1367, -226.724442)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.p = false
    end
end)
eggs:CreateToggle("Auto Buy Corrupted Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
        while wait(0) and _G.q do

local args = {
    [1] = "CORRUPTED",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-226.741714, 83700.6328, 520.610962)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.q = false
    end
end)
eggs:CreateToggle("Auto Buy Blaster Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
        while wait(0) and _G.r do

local args = {
    [1] = "BLASTER",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(128.557281, 117149.133, 147.247681)
wait(2)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
wait(2)
end

    else
        _G.r = false
    end
end)
teleports:CreateButton("Tp To All Islands", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(215.231522, 14.4342747, -336.547668)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(70.3246002, 685.608582, -594.333191)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(295.68515, 3040.58447, -610.816528)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(347.187927, 5790.11865, -956.081482)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(383.351166, 10270.4688, -960.55249)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(594.774475, 17399.5859, -821.366516)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(560.994873, 21961.623, -993.799316)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1191.9386, 30158.6387, -854.797485)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-20.6797028, 48001.1445, -194.61673)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-662.16626, 60728.8398, -5.32310438)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-193.540451, 83700.6563, 455.014008)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(106.173271, 117148.063, 188.798737)
end)




teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(4.84454107, 15.6248083, -348.172485)
end)

teleports:CreateButton("Sell X150", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(40.3062363, 117150.063, 241.201065)
end)
teleports:CreateButton("Tp To All Chests", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-59.1323357, 83739.8047, 337.636261)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(579.425232, 21987.7539, -857.838501)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(401.082184, 17425.1953, -695.239685)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(209.626785, 10322.9736, -1175.66797)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(171.637039, 5322.79541, -575.656006)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(154.004303, 3056.23706, -613.550293)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(256.080292, 709.707947, -690.82135)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(61.3877754, 15.6293669, -269.655396)
wait(1)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(256.597351, 410.670868, -358.479156)
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

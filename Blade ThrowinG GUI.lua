--https://www.roblox.com/games/4704006941/5000X-Blade-Throwing-Simulator

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Blade-Throwing GUI","things", true)
local teleports = Library:CreateTab("Teleports 1","things", true)
local teleports2 = Library:CreateTab("Teleports 2","things", true)
local HIT = Library:CreateTab("Auto KIll Boss","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local eggs2 = Library:CreateTab("Auto Buy Eggs 2","things", true)
local MISC = Library:CreateTab("MISC","things", true)
local credits = Library:CreateTab("Credits","things", true)


credits:CreateButton("Our Discords", function() 
	setclipboard("AHAHAHAHAH")
end)

credits:CreateButton("https://discord.gg/KmHZUpXEmQ", function() 
	setclipboard("https://discord.gg/KmHZUpXEmQ")
end)

credits:CreateButton("by Altix#3395", function() 
	setclipboard("Altix#3395")
end)

credits:CreateButton("by I'm A Cat#7202", function() 
	setclipboard("I'm A Cat#7202")
end)

AutoTab:CreateButton("Destroy Gui :D", function() 
game:GetService("CoreGui").uiui:Destroy()
end)


MISC:CreateButton("💨Speed Hack 200 PRESS (R)💨", function() 
   
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





AutoTab:CreateToggle("Destroy Prompt Purchase", function(arg) 
    if arg then
        _G.Purchase = true 
        while wait(0) and _G.Purchase do
			while true do
				-- Remove Purchase Prompt UI
				local WaitForCOre = game:FindFirstChild("CoreGui")
				if WaitForCOre then
				local checkforprAPP = WaitForCOre:FindFirstChild("PurchasePromptApp")
				if checkforprAPP then
				checkforprAPP:Destroy()
				end
				end
				-- Remove Robux Store UI
				local checkforstore = game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui:FindFirstChild("Store")
				if checkforstore then
				checkforstore:Destroy()
				end
				-- Remove Error message / You do not have enough.....
				local stramlook = game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Feedback:FindFirstChild("Stream")
				if stramlook then
				stramlook:Destroy()
				end
				-- Remove BLUR bug from removed shop UI
				local checkforblur = game:GetService("Lighting"):FindFirstChild("InterfaceBlur")
				if checkforblur then
				checkforblur:Destroy()
				end
				wait(5)
				end

        end
    else
        _G.Purchase= false
    end
end)

AutoTab:CreateToggle("Auto Click", function(arg) 
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
local args = {
    [1] = "Throw",
    [2] = Vector3.new(135.661987, -91.4622192, -669.306519),
    [3] = true,
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))

        end
    else
        _G.b= false
    end
end)

AutoTab:CreateToggle("Auto Buy Blade", function(arg) 
    if arg then
        _G.c = true 
    while wait(0) and _G.c do

local args = {
    [1] = "BuyBlade",
    [2] = true,
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))

        end
    else
        _G.c= false
    end
end)
AutoTab:CreateToggle("Auto Buy Energy", function(arg) 
    if arg then
        _G.d = true 
        while wait(0) and _G.d do

local args = {
    [1] = "BuyEnergy",
    [2] = true,
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))


        end
    else
        _G.d= false
    end
end)
AutoTab:CreateToggle("Auto Buy Ranks", function(arg) 
    if arg then
        _G.ran = true 
        while wait(0) and _G.ran do

local args = {
    [1] = "BuyRank",
    [2] = true,
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))

        end
    else
        _G.ran= false
    end
end)
AutoTab:CreateToggle("Auto Buy Auras", function(arg) 
    if arg then
        _G.au = true 
        while wait(0) and _G.au do
local args = {
    [1] = "BuyAura",
    [2] = true,
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))

        end
    else
        _G.au= false
    end
end)
AutoTab:CreateToggle("Auto Buy Jump", function(arg) 
    if arg then
        _G.ju = true 
        while wait(0) and _G.ju do

local args = {
    [1] = "BuyJump",
    [2] = true,
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))

        end
    else
        _G.ju= false
    end
end)
AutoTab:CreateToggle("Auto Buy Perk1", function(arg) 
    if arg then
        _G.p21 = true 
        while wait(0) and _G.p21 do

local args = {
    [1] = "BuyPerk",
    [2] = "1",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
        end
    else
        _G.p21= false
    end
end)
AutoTab:CreateToggle("Auto Buy Perk2", function(arg) 
    if arg then
        _G.p22 = true 
        while wait(0) and _G.p22 do

local args = {
    [1] = "BuyPerk",
    [2] = "2",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))

        end
    else
        _G.p22= false
    end
end)
AutoTab:CreateToggle("Auto Buy Perk3", function(arg) 
    if arg then
        _G.p23 = true 
        while wait(0) and _G.p23 do

local args = {
    [1] = "BuyPerk",
    [2] = "3",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))

        end
    else
        _G.p23= false
    end
end)
AutoTab:CreateToggle("Auto SellX100", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(243.394882, 70450.4766, -518.697388)
    if arg then
        _G.se = true 
        while wait(1.5) and _G.se do
local string_1 = "SellPower";
local userdata_1 = game:GetService("Workspace").Ignore.Rings["27Sell"].Collider;
local Target = game:GetService("ReplicatedStorage").RF;
Target:InvokeServer(string_1, userdata_1);

        end
    else
        _G.se = false
    end
end)
AutoTab:CreateToggle("Auto Equip Best Pets", function(arg) 
    if arg then
        _G.e = true 
        while wait(0) and _G.e do

local args = {
    [1] = "EquipBest",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))
        end
    else
        _G.e= false
    end
end)
AutoTab:CreateToggle("Auto Evolve Pets", function(arg) 
    if arg then
        _G.f = true 
        while wait(0) and _G.f do

local args = {
    [1] = "EvolveAll",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))


        end
    else
        _G.f = false
    end
end)
AutoTab:CreateToggle("Auto Wheel Spin", function(arg) 
    if arg then
        _G.fgf = true 
        while wait(0) and _G.fgf do

local args = {
    [1] = "Wheel",
    [2] = "Wheel1",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))


        end
    else
        _G.fgf = false
    end
end)
AutoTab:CreateButton("Destroy Gui :D", function() 
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

MISC:CreateButton("🛡️Infinite Yield🛡️", function() --the (arg) is if the checkbox is toggled or not
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




HIT:CreateToggle("Auto Hit Evil Fox", function(arg) 
    if arg then
        _G.g = true 
        while wait(0) and _G.g do

local args = {
    [1] = "HitBoss",
    [2] = workspace.Boss["Evil Fox"],
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))


        end
    else
        _G.g = false
    end
end)

HIT:CreateToggle("Auto Hit Rhino King", function(arg) 
    if arg then
        _G.h8 = true 
        while wait(0) and _G.h8 do

local args = {
    [1] = "HitBoss",
    [2] = workspace.Boss["Rhino King"],
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))


        end
    else
        _G.h8 = false
    end
end)
HIT:CreateToggle("Auto Hit Leprechaun", function(arg) 
    if arg then
        _G.h8 = true 
        while wait(0) and _G.h8 do
local args = {
    [1] = "HitBoss",
    [2] = workspace.Boss["Leprechaun"],
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))

        end
    else
        _G.h8 = false
    end
end)
HIT:CreateToggle("Auto Hit Evil Bunny", function(arg) 
    if arg then
        _G.h8 = true 
        while wait(0) and _G.h8 do

local args = {
    [1] = "HitBoss",
    [2] = workspace.Boss["Evil Bunny"],
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))

        end
    else
        _G.h8 = false
    end
end)

HIT:CreateToggle("Auto Hit Lava Golem", function(arg) 
    if arg then
        _G.h = true 
        while wait(0) and _G.h do

local args = {
    [1] = "HitBoss",
    [2] = workspace.Boss["Lava Golem"],
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))

        end
    else
        _G.h = false
    end
end)

HIT:CreateButton("Tp To Boss Spawn", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(220.213577, -45.8314438, -772.90802)
end)
HIT:CreateButton("Tp To Boss 2", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(248.239883, 70446.1094, -790.245178)
end)
eggs:CreateToggle("Auto Buy Basic Eggs", function(arg) 	game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(152.85643, -98.194046, -635.704041)
    if arg then
        _G.z = true 
        while wait(0) and _G.z do

local args = {
    [1] = "BuyEgg",
    [2] = "BasicEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))


        end
    else
        _G.z = false
    end
end)
eggs:CreateToggle("Auto Buy Moon Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(191.122055, 607.349121, -603.616821)
    if arg then
        _G.j = true 
        while wait(0) and _G.j do

local args = {
    [1] = "BuyEgg",
    [2] = "MoonEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))


        end
    else
        _G.j = false
    end
end)
eggs:CreateToggle("Auto Buy Tree Eggs", function(arg)game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(156.397232, 1819.45044, -656.470215) 
    if arg then
        _G.k = true 
        while wait(0) and _G.k do

local args = {
    [1] = "BuyEgg",
    [2] = "TreeEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.k = false
    end
end)
eggs:CreateToggle("Auto Buy Aqua Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(132.377808, 3378.43066, -529.078979)
    if arg then
        _G.l = true 
        while wait(0) and _G.l do

local args = {
    [1] = "BuyEgg",
    [2] = "AquaEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.l = false
    end
end)
eggs:CreateToggle("Auto Buy Blossom Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(208.788971, 5348.6792, -531.224609)
    if arg then
        _G.m = true 
        while wait(0) and _G.m do

local args = {
    [1] = "BuyEgg",
    [2] = "BlossomEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))


        end
    else
        _G.m = false
    end
end)
eggs:CreateToggle("Auto Buy Lava Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(124.152832, 8548.24805, -476.911469)
    if arg then
        _G.n = true 
        while wait(0) and _G.n do

local args = {
    [1] = "BuyEgg",
    [2] = "LavaEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))


        end
    else
        _G.n = false
    end
end)
eggs:CreateToggle("Auto Buy Frozen Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(135.015594, 11485.1094, -448.33905)
    if arg then
        _G.o = true 
        while wait(0) and _G.o do

local args = {
    [1] = "BuyEgg",
    [2] = "FrozenEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.o = false
    end
end)
eggs:CreateToggle("Auto Buy Cyber Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(137.719406, 13537.25, -427.41864)
    if arg then
        _G.p = true 
        while wait(0) and _G.p do

local args = {
    [1] = "BuyEgg",
    [2] = "CyberEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.p = false
    end
end)
eggs:CreateToggle("Auto Buy Candy Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(158.562897, 15556.8984, -446.668579)
    if arg then
        _G.q = true 
        while wait(0) and _G.q do

local args = {
    [1] = "BuyEgg",
    [2] = "CandyEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.q = false
    end
end)
eggs:CreateToggle("Auto Buy Electric Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(127.950157, 16758.3281, -440.292023)
    if arg then
        _G.r = true 
        while wait(0) and _G.r do

local args = {
    [1] = "BuyEgg",
    [2] = "ElectricEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))


        end
    else
        _G.r = false
    end
end)
eggs:CreateToggle("Auto Buy Radioactive Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(168.077271, 20587.0273, -448.394073)
    if arg then
        _G.s = true 
        while wait(0) and _G.s do

local args = {
    [1] = "BuyEgg",
    [2] = "RadioactiveEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.s = false
    end
end)
eggs:CreateToggle("Auto Buy Plasma Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(177.480301, 24546.3184, -441.331024)
    if arg then
        _G.t = true 
        while wait(0) and _G.t do

local args = {
    [1] = "BuyEgg",
    [2] = "PlasmaEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.t = false
    end
end)
eggs:CreateToggle("Auto Buy Demon Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(238.740265, 27711.4902, -487.803528)
    if arg then
        _G.u = true 
        while wait(0) and _G.u do

local args = {
    [1] = "BuyEgg",
    [2] = "DemonEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.u = false
    end
end)
eggs:CreateToggle("Auto Buy Monochrome Eggs", function(arg)game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(203.959961, 31406.5898, -488.469849) 
    if arg then
        _G.v = true 
        while wait(0) and _G.v do

local args = {
    [1] = "BuyEgg",
    [2] = "MonochromeEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.v = false
    end
end)
eggs:CreateToggle("Auto Buy Angelic Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(244.463364, 35145.6523, -473.203705)
    if arg then
        _G.w = true 
        while wait(0) and _G.w do

local args = {
    [1] = "BuyEgg",
    [2] = "AngelicEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.w = false
    end
end)
eggs:CreateToggle("Auto Buy Crystal Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(204.25473, 39185.25, -526.006775)
    if arg then
        _G.x = true 
        while wait(0) and _G.x do

local args = {
    [1] = "BuyEgg",
    [2] = "CrystalEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.x = false
    end
end)
eggs:CreateToggle("Auto Buy Sharp Eggs", function(arg) 
    if arg then
        _G.y = true 
        while wait(0) and _G.y do

local args = {
    [1] = "BuyEgg",
    [2] = "SharpEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.y = false
    end
end)
eggs2:CreateToggle("Auto Buy Ancient Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(211.028992, 43095.4063, -483.383148)
    if arg then
        _G.za = true 
        while wait(0) and _G.za do

local args = {
    [1] = "BuyEgg",
    [2] = "AncientEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.za = false
    end
end)
eggs2:CreateToggle("Auto Buy Glitch Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(171.247665, 46942.0664, -468.310547)
    if arg then
        _G.zb = true 
        while wait(0) and _G.zb do

local args = {
    [1] = "BuyEgg",
    [2] = "GlitchEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.zb = false
    end
end)
eggs2:CreateToggle("Auto Buy Steampunk Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(253.501984, 49805.8359, -454.51004)
    if arg then
        _G.zc = true 
        while wait(0) and _G.zc do

local args = {
    [1] = "BuyEgg",
    [2] = "SteampunkEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))




        end
    else
        _G.zc = false
    end
end)
eggs2:CreateToggle("Auto Buy ToxicPotion Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(235.714417, 53023.3359, -436.52359)
    if arg then
        _G.zd = true 
        while wait(0) and _G.zd do

local args = {
    [1] = "BuyEgg",
    [2] = "ToxicPotion",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.zd = false
    end
end)
eggs2:CreateToggle("Auto Buy Super Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(240.64003, 55745.9648, -453.965179)
    if arg then
        _G.ze = true 
        while wait(0) and _G.ze do

local args = {
    [1] = "BuyEgg",
    [2] = "SuperEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.ze = false
    end
end)
eggs2:CreateToggle("Auto Buy Spooky Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(290.379517, 58505.0664, -461.26358)
    if arg then
        _G.zf = true 
        while wait(0) and _G.zf do

local args = {
    [1] = "BuyEgg",
    [2] = "SpookyEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.zf = false
    end
end)
eggs2:CreateToggle("Auto Buy Abstract Eggs", function(arg) 
    if arg then
        _G.zg = true 
        while wait(0) and _G.zg do

local args = {
    [1] = "BuyEgg",
    [2] = "AbstractEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.zg = false
    end
end)
eggs2:CreateToggle("Auto Buy Future Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(228.572693, 60905.6406, -441.599518)
    if arg then
        _G.zh = true 
        while wait(0) and _G.zh do

local args = {
    [1] = "BuyEgg",
    [2] = "FutureEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.zh = false
    end
end)
eggs2:CreateToggle("Auto Buy Space Eggs", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(169.715515, 63698.0273, -443.743317)
    if arg then
        _G.zi = true 
        while wait(0) and _G.zi do

local args = {
    [1] = "BuyEgg",
    [2] = "SpaceEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.zi = false
    end
end)

eggs2:CreateToggle("Auto Buy Money Egg", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(270.572357, 65978.3672, -470.686066)
    if arg then
        _G.zio = true 
        while wait(0) and _G.zio do

local args = {
    [1] = "BuyEgg",
    [2] = "MoneyBageeEgg",
}

game:GetService("ReplicatedStorage").RF:InvokeServer(unpack(args))



        end
    else
        _G.zio = false
    end
end)
eggs2:CreateToggle("Auto Buy Tree Egg", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(211.957443, 68385.25, -479.738037)
    if arg then
        _G.zip = true 
        while wait(0) and _G.zip do

game:GetService("ReplicatedStorage").RF:InvokeServer("BuyEgg","TreeEgg")



        end
    else
        _G.zip = false
    end
end)
eggs2:CreateToggle("Auto Buy Ice Egg", function(arg) game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(161.133774, 70455.8828, -552.661621)
    if arg then
        _G.zip2 = true 
        while wait(0) and _G.zip2 do		
game:GetService("ReplicatedStorage").RF:InvokeServer("BuyEgg","IceEgg")
        end
    else
        _G.zip2 = false
    end
end)
teleports2:CreateButton("Zone 26", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(161.133774, 70455.8828, -552.661621)
end)
teleports2:CreateButton("Zone 25", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(211.957443, 68385.25, -479.738037)
end)
teleports2:CreateButton("Zone 24", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(270.572357, 65978.3672, -470.686066)
end)
teleports2:CreateButton("Zone 23", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(169.715515, 63698.0273, -443.743317)
end)
teleports2:CreateButton("Zone 22", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(228.572693, 60905.6406, -441.599518)
end)
teleports2:CreateButton("Zone 21", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(290.379517, 58505.0664, -461.26358)
end)
teleports2:CreateButton("Zone 20", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(240.64003, 55745.9648, -453.965179)
end)
teleports:CreateButton("Zone 19", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(235.714417, 53023.3359, -436.52359)
end)
teleports:CreateButton("Zone 18", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(253.501984, 49805.8359, -454.51004)
end)
teleports:CreateButton("Zone 17", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(171.247665, 46942.0664, -468.310547)
end)
teleports:CreateButton("Zone 16", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(211.028992, 43095.4063, -483.383148)
end)
teleports:CreateButton("Zone 15", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(204.25473, 39185.25, -526.006775)
end)
teleports:CreateButton("Zone 14", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(244.463364, 35145.6523, -473.203705)
end)
teleports:CreateButton("Zone 13", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(203.959961, 31406.5898, -488.469849)
end)
teleports:CreateButton("Zone 12", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(238.740265, 27711.4902, -487.803528)
end)
teleports:CreateButton("Zone 11", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(177.480301, 24546.3184, -441.331024)
end)
teleports:CreateButton("Zone 10", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(168.077271, 20587.0273, -448.394073)
end)
teleports:CreateButton("Zone 9", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(127.950157, 16758.3281, -440.292023)
end)
teleports:CreateButton("Zone 8", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(158.562897, 15556.8984, -446.668579)
end)
teleports:CreateButton("Zone 7", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(137.719406, 13537.25, -427.41864)
end)
teleports:CreateButton("Zone 6", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(135.015594, 11485.1094, -448.33905)
end)
teleports:CreateButton("Zone 5", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(124.152832, 8548.24805, -476.911469)
end)
teleports:CreateButton("Zone 4", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(208.788971, 5348.6792, -531.224609)
end)
teleports:CreateButton("Zone 3", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(132.377808, 3378.43066, -529.078979)
end)
teleports:CreateButton("Zone 2", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(156.397232, 1819.45044, -656.470215)
end)
teleports:CreateButton("Zone 1", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(191.122055, 607.349121, -603.616821)
end)
teleports:CreateButton("Spawn", function() 
	game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(152.85643, -98.194046, -635.704041)
end)
LocalPlayer.Idled:connect(function()
  VirtualUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  wait(1)
  VirtualUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
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

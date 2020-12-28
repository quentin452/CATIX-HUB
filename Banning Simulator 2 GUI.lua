--https://www.roblox.com/games/4221615296/

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Banning-Simulator-2 GUI","things", true)
local KILL1 = Library:CreateTab("Auto Tp To Mobs 1","things", true)
local KILL2 = Library:CreateTab("Auto Tp To Mobs 2","things", true)
local KILL3 = Library:CreateTab("Auto Tp To Mobs 3","things", true)
local KILL4 = Library:CreateTab("Auto Tp To Mobs 4","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs 1","things", true)
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




MISC:CreateButton("NO CLIP Press(E)", function() --the (arg) is if the checkbox is toggled or not
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

MISC:CreateButton("Inf Jump", function() --the (arg) is if the checkbox is toggled or not
game:GetService("UserInputService").JumpRequest:connect(function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
end)
end)
MISC:CreateButton("Ctrl + Click = TP", function() --the (arg) is if the checkbox is toggled or not
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Plr.Character:MoveTo(Mouse.Hit.p)
end)
end)
MISC:CreateButton("Fly Press (F)", function() --the (arg) is if the checkbox is toggled or not
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
MISC:CreateButton("Speed Hack 200 press(R)", function() --the (arg) is if the checkbox is toggled or not



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

AutoTab:CreateToggle("Auto Buy Swords", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
      local args = {
    [1] = "Katana",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Sun Blaze Rod",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Wizard Scythe",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "UFO Scythe",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Death Blade",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Winter Blade",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Omega Tri Blade",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Crystalized Banner",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Bubble Katana",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Bubble Scythe",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Fusion Banner",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Inferno Slammer",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Inferno Crusher",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Oceanic Slammer",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Coral Crusher",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Red Death",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Sword of Satan",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Demonic Shard",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Fiery Great Sword",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Enchanted Hell Sword",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Enchanted Battleaxe",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Technic Longsword",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Templars Holy Blade",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Kings Fall",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Divine Retribution",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Brutus",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Titantruous",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "ItsOver",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "VulcansPrize",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "MagmaMasher",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "RidgeBreaker",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Dragon Champion",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Burning Champion",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Neonic Slythe",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Rocket Rammer",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Japhatus",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "God Slayer",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Pepper Sword",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Technic",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "BangBoom",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Justice!",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Interdimentional",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "StraightFromDepths",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "TitansGrip",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "StarBreaker",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Infurial Titantuous",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Osiris`Weave",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))
   local args = {
    [1] = "Patriotic Staff",
}

game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer(unpack(args))

end

    else
        _G.c = false
    end
end)
AutoTab:CreateToggle("Auto Buy Auras", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
          local args = {
    [1] = "Cloudy",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Electric",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Spiral",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Sparkles",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Sparkles 2.0",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "SmoothFire",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Cursed",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Chillfire",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "FireSaiyan",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "PoisonCloud",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Techno",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "VoidSaiyan",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "FireGodSlayer",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "VoidGuardian",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Radioactive",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "KingCandidate",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "KingCandidate",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Glorious",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Chilled",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Allseeing Advisor",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Godly Elemental",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Hyper Smoke",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Distorsion",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "ScarySparks",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "SmallSparkles",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "MixedConcoction",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Powerful Saiku",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Soothing Snow",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Universal Saiku God",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Lightning",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Unbendable Will",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Peace",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "ScorchingBrilliance",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "ChillingBrilliance",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "DeathlyBrilliance",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "No Chance",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
wait(0.1)
        local args = {
    [1] = "Untouchable",
}

game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer(unpack(args))  
end

    else
        _G.d = false
    end
end)
eggs:CreateToggle("Auto Buy Commons Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
local args = {
    [1] = "Egg1",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
    
end

    else
        _G.e = false
    end
end)
eggs:CreateToggle("Auto Buy Cyne Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
local args = {
    [1] = "Egg2",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.f = false
    end
end)
eggs:CreateToggle("Auto Buy Golem Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
local args = {
    [1] = "Egg3",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.g = false
    end
end)
eggs:CreateToggle("Auto Buy Altar Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
local args = {
    [1] = "Egg4",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.h = false
    end
end)
eggs:CreateToggle("Auto Buy Sky Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
local args = {
    [1] = "Egg5",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.i = false
    end
end)
eggs:CreateToggle("Auto Buy Toy Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
local args = {
    [1] = "Egg6",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.j = false
    end
end)
eggs:CreateToggle("Auto Buy Inferno Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
local args = {
    [1] = "Egg8",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.k = false
    end
end)
eggs:CreateToggle("Auto Buy Crystal Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
local args = {
    [1] = "Egg9",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.l = false
    end
end)



eggs:CreateToggle("Auto Buy Atlantis Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
local args = {
    [1] = "Egg10",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.m = false
    end
end)
eggs:CreateToggle("Auto Buy Radioactive Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do
local args = {
    [1] = "Egg11",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.n = false
    end
end)
eggs:CreateToggle("Auto Buy Common Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do
local args = {
    [1] = "Egg12",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.o = false
    end
end)
eggs:CreateToggle("Auto Buy Uncommon Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
        while wait(0) and _G.p do
local args = {
    [1] = "Egg13",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.p = false
    end
end)
eggs:CreateToggle("Auto Buy Exiqusite Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
        while wait(0) and _G.q do
local args = {
    [1] = "Egg14",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.q = false
    end
end)
eggs:CreateToggle("Auto Buy Hellfire Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
        while wait(0) and _G.r do
local args = {
    [1] = "Egg15",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.r = false
    end
end)
eggs:CreateToggle("Auto Buy Abyssal Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s = true 
        while wait(0) and _G.s do
local args = {
    [1] = "Egg16",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.s = false
    end
end)
eggs:CreateToggle("Auto Buy Godly Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t = true 
        while wait(0) and _G.t do
local args = {
    [1] = "Egg17",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.t = false
    end
end)
eggs2:CreateToggle("Auto Buy Ascendant Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.u = true 
        while wait(0) and _G.u do
local args = {
    [1] = "Egg18",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.u = false
    end
end)
eggs2:CreateToggle("Auto Buy Galactic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.v = true 
        while wait(0) and _G.v do
local args = {
    [1] = "Egg19",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.v = false
    end
end)
eggs2:CreateToggle("Auto Buy Underworld Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.w = true 
        while wait(0) and _G.w do
local args = {
    [1] = "Egg20",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.w = false
    end
end)
eggs2:CreateToggle("Auto Buy Winter Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.x = true 
        while wait(0) and _G.x do
local args = {
    [1] = "Egg21",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.x = false
    end
end)
eggs2:CreateToggle("Auto Buy Lava Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.y = true 
        while wait(0) and _G.y do
local args = {
    [1] = "Egg22",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.y = false
    end
end)
eggs2:CreateToggle("Auto Buy Forest Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.z = true 
        while wait(0) and _G.z do
local args = {
    [1] = "Egg23",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.z = false
    end
end)
eggs2:CreateToggle("Auto Buy Forest Eggs 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.za = true 
        while wait(0) and _G.za do
local args = {
    [1] = "Egg24",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.za = false
    end
end)
eggs2:CreateToggle("Auto Buy Neon Eggs ", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zb = true 
        while wait(0) and _G.zb do
local args = {
    [1] = "Egg25",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.zb = false
    end
end)
eggs2:CreateToggle("Auto Buy Fungus Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zc = true 
        while wait(0) and _G.zc do
local args = {
    [1] = "Egg26",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.zc = false
    end
end)
eggs2:CreateToggle("Auto Buy 15K Crystal Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zd = true 
        while wait(0) and _G.zd do
local args = {
    [1] = "Egg27",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.zd = false
    end
end)
eggs2:CreateToggle("Auto Buy 65K Crystal Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.ze = true 
        while wait(0) and _G.ze do
local args = {
    [1] = "Egg28",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.ze = false
    end
end)
eggs2:CreateToggle("Auto Buy Valk Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zf = true 
        while wait(0) and _G.zf do
local args = {
    [1] = "Egg29",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.zf = false
    end
end)
eggs2:CreateToggle("Auto Buy Patriotic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zg = true 
        while wait(0) and _G.zg do
local args = {
    [1] = "Egg30",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.zg = false
    end
end)
eggs2:CreateToggle("Auto Buy 1B Coins (event) Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zh = true 
        while wait(0) and _G.zh do
local args = {
    [1] = "Egg31",
}

game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer(unpack(args))
   
end

    else
        _G.zh = false
    end
end)

KILL1:CreateButton("go to the right area to be", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(938.70874, -84.2339706, -30471.7207)
end)
KILL1:CreateButton("able to auto kill", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(938.70874, -84.2339706, -30471.7207)
end)
KILL1:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(74.4510193, 37.1974258, -50.9291992)
end)
KILL1:CreateToggle("Kill New_Item Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zi = true 
        while wait(0) and _G.zi do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn["New_Item"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zi = false
    end
end)
KILL1:CreateToggle("Kill DrTrayBlox Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zj = true 
        while wait(0) and _G.zj do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.DrTrayBlox.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zj = false
    end
end)
KILL1:CreateToggle("Kill RealYouTube_AlphaGG Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zk = true 
        while wait(0) and _G.zk do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn["RealYouTube_AlphaGG"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zk = false
    end
end)
KILL1:CreateToggle("Kill DevRolve Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zl = true 
        while wait(0) and _G.zl do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.DevRolve.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zl = false
    end
end)
KILL1:CreateToggle("Kill HenryDev Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zm = true 
        while wait(0) and _G.zm do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.HenryDev.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zm = false
    end
end)
KILL1:CreateToggle("Kill RussoTalks Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zn = true 
        while wait(0) and _G.zn do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.RussoTalks.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zn = false
    end
end)
KILL1:CreateToggle("Kill OverHash Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zo = true 
        while wait(0) and _G.zo do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.OverHash.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zo = false
    end
end)
KILL1:CreateToggle("Kill asimo3089 Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zp = true 
        while wait(0) and _G.zp do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.asimo3089.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zp = false
    end
end)
KILL1:CreateToggle("Kill Kelogish Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zq = true 
        while wait(0) and _G.zq do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Kelogish.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zq = false
    end
end)
KILL1:CreateToggle("Kill ObscureEntity Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zr = true 
        while wait(0) and _G.zr do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.ObscureEntity.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zr = false
    end
end)
KILL1:CreateToggle("Kill Not_Nert Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zs = true 
        while wait(0) and _G.zs do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn["Not_Nert"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zs = false
    end
end)
KILL1:CreateToggle("Kill Tenrous Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zt = true 
        while wait(0) and _G.zt do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Tenrous.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zt = false
    end
end)
KILL1:CreateToggle("Kill DJMonopoli Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zu = true 
        while wait(0) and _G.zu do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.DJMonopoli.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zu = false
    end
end)
KILL1:CreateButton("Atlantis", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(43189.8828, 46.2013664, 13112.6943)
end)
KILL1:CreateToggle("Kill Proxus Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zv = true 
        while wait(0) and _G.zv do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Proxus.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zv = false
    end
end)
KILL1:CreateToggle("Kill taymaster Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zw = true 
        while wait(0) and _G.zw do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.taymaster.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zw = false
    end
end)
KILL1:CreateToggle("Kill SabrinaBrite Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zx = true 
        while wait(0) and _G.zx do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.SabrinaBrite.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zx = false
    end
end)
KILL1:CreateToggle("Kill Nikilis Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zy = true 
        while wait(0) and _G.zy do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Nikilis.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zy = false
    end
end)
KILL1:CreateToggle("Kill sircfenner Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zz = true 
        while wait(0) and _G.zz do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.sircfenner.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zz = false
    end
end)
KILL1:CreateToggle("Kill mayrushart Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zza = true 
        while wait(0) and _G.zza do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.mayrushart.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zza = false
    end
end)
KILL1:CreateToggle("Kill coolbulls Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzb = true 
        while wait(0) and _G.zzb do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.coolbulls.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzb = false
    end
end)
KILL2:CreateButton("Nostalgic", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-929.631531, -133.740082, 16053.6855)
end)
KILL2:CreateToggle("Kill AzireBlox Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzc = true 
        while wait(0) and _G.zzc do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.AzireBlox.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzc = false
    end
end)
KILL2:CreateToggle("Kill Defaultio Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzd = true 
        while wait(0) and _G.zzd do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Defaultio.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzd = false
    end
end)
KILL2:CreateToggle("Kill Dued1 Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zze = true 
        while wait(0) and _G.zze do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Dued1.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zze = false
    end
end)
KILL2:CreateToggle("Kill Emulsifies Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzf = true 
        while wait(0) and _G.zzf do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Emulsifies.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzf = false
    end
end)
KILL2:CreateToggle("Kill Emulsifies Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzg = true 
        while wait(0) and _G.zzg do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Emulsifies.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzg = false
    end
end)
KILL2:CreateToggle("Kill Firebrand1 Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzh = true 
        while wait(0) and _G.zzh do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Firebrand1.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzh = false
    end
end)
KILL2:CreateToggle("Kill Nosniy Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzi = true 
        while wait(0) and _G.zzi do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Nosniy.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzi = false
    end
end)
KILL2:CreateToggle("Kill MakeItRainBows Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzj = true 
        while wait(0) and _G.zzj do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.MakeItRainBows.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzj = false
    end
end)
KILL2:CreateToggle("Kill TwentyTwoPilots Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzk = true 
        while wait(0) and _G.zzk do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.TwentyTwoPilots.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzk = false
    end
end)
KILL2:CreateToggle("Kill Ultraw Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzl = true 
        while wait(0) and _G.zzl do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Ultraw.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzl = false
    end
end)
KILL2:CreateToggle("Kill liteImpulse Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzm = true 
        while wait(0) and _G.zzm do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.liteImpulse.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzm = false
    end
end)
KILL2:CreateToggle("Kill litozinnamon Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzn = true 
        while wait(0) and _G.zzn do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.litozinnamon.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzn = false
    end
end)
KILL2:CreateToggle("Kill KecsPlays_YT Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzo = true 
        while wait(0) and _G.zzo do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn["KecsPlays_YT"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzo = false
    end
end)
KILL2:CreateToggle("Kill Dreadcruiser Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzp = true 
        while wait(0) and _G.zzp do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Dreadcruiser.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzp = false
    end
end)
KILL2:CreateToggle("Kill YT_ItsMatty Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzq = true 
        while wait(0) and _G.zzq do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn["YT_ItsMatty"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzq = false
    end
end)
KILL2:CreateToggle("Kill YT_SnugLife Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzr = true 
        while wait(0) and _G.zzr do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn["YT_SnugLife"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzr = false
    end
end)
KILL2:CreateButton("Winter Tundra", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(23627.4004, -447.186157, -131.947144)
end)
KILL2:CreateToggle("Kill Stickmasterluke Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzs = true 
        while wait(0) and _G.zzs do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Stickmasterluke.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzs = false
    end
end)
KILL2:CreateToggle("Kill Ragoozer Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzt = true 
        while wait(0) and _G.zzt do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Ragoozer.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzt = false
    end
end)
KILL3:CreateButton("Mush Kingdom", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(52707.0039, 174.622406, -11468.4316)
end)
KILL3:CreateToggle("Kill ZephsyJ Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzu = true 
        while wait(0) and _G.zzu do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.ZephsyJ.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzu = false
    end
end)
KILL3:CreateToggle("Kill gixin Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzv = true 
        while wait(0) and _G.zzv do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.gixin.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzv = false
    end
end)
KILL3:CreateToggle("Kill solter Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzw = true 
        while wait(0) and _G.zzw do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.solter.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzw = false
    end
end)
KILL3:CreateToggle("Kill Q_Q Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzx = true 
        while wait(0) and _G.zzx do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn["Q_Q"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzx = false
    end
end)
KILL3:CreateToggle("Kill TypicalType Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzy = true 
        while wait(0) and _G.zzy do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.TypicalType.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzy = false
    end
end)
KILL3:CreateToggle("Kill SnakeWorl Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzz = true 
        while wait(0) and _G.zzz do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.SnakeWorl.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzz = false
    end
end)
KILL3:CreateToggle("Kill DrMeser Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzza = true 
        while wait(0) and _G.zzza do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.DrMeser.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzza = false
    end
end)
KILL3:CreateToggle("Kill Merely Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzb = true 
        while wait(0) and _G.zzzb do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Merely.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzb = false
    end
end)
KILL3:CreateToggle("Kill OrionPlaysRBX Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzc = true 
        while wait(0) and _G.zzzc do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.OrionPlaysRBX.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzc = false
    end
end)
KILL3:CreateButton("Vulkarian Heaven", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-604.873901, 131.681351, -830.78064)
end)
KILL3:CreateToggle("Kill ProboyNINJA123 Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzd = true 
        while wait(0) and _G.zzzd do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.ProboyNINJA123.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzd = false
    end
end)
KILL3:CreateToggle("Kill Zillxionaire Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzze = true 
        while wait(0) and _G.zzze do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Zillxionaire.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzze = false
    end
end)
KILL3:CreateToggle("Kill NirobiGames Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzf = true 
        while wait(0) and _G.zzzf do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.NirobiGames.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzf = false
    end
end)
KILL4:CreateButton("Bests Zones", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(938.70874, -84.2339706, -30471.7207)
end)
KILL4:CreateToggle("Kill Shedletsky Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzg = true 
        while wait(0) and _G.zzzg do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Shedletsky.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzg = false
    end
end)
KILL4:CreateToggle("Kill Linkmon99 Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzh = true 
        while wait(0) and _G.zzzh do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Linkmon99.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzh = false
    end
end)
KILL4:CreateToggle("Kill DeeterPlays Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzi = true 
        while wait(0) and _G.zzzi do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.DeeterPlays.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzi = false
    end
end)
KILL4:CreateToggle("Kill Alvin_Blox Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzj = true 
        while wait(0) and _G.zzzj do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn["Alvin_Blox"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzj = false
    end
end)
KILL4:CreateToggle("Kill coefficients Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzk = true 
        while wait(0) and _G.zzzk do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.coefficients.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzk = false
    end
end)
KILL4:CreateToggle("Kill JamiyJamie Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzl = true 
        while wait(0) and _G.zzzl do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.JamiyJamie.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzl = false
    end
end)
KILL4:CreateToggle("Kill Builder_Boy Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzm = true 
        while wait(0) and _G.zzzm do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn["Builder_Boy"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzm = false
    end
end)
KILL4:CreateToggle("Kill Beeism Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzn = true 
        while wait(0) and _G.zzzn do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Beeism.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzn = false
    end
end)
KILL4:CreateToggle("Kill Sylently Mobs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzzo = true 
        while wait(0) and _G.zzzo do

   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Sylently.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end

    else
        _G.zzzo = false
    end
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(74.4510193, 37.1974258, -50.9291992)
end)

teleports:CreateButton("Atlantis", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(43189.8828, 46.2013664, 13112.6943)
end)

teleports:CreateButton("Nostalgic", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-929.631531, -133.740082, 16053.6855)
end)
teleports:CreateButton("Mush Kingdom", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(52707.0039, 174.622406, -11468.4316)
end)
teleports:CreateButton("Vulkarian Heaven", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-604.873901, 131.681351, -830.78064)
end)

teleports:CreateButton("Winter Tundra", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(23627.4004, -447.186157, -131.947144)
end)
teleports:CreateButton("Bests Zones", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(938.70874, -84.2339706, -30471.7207)
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

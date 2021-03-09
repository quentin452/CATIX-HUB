local me = game.Players.LocalPlayer.Character
local X = wait(0.1)
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




MISC:CreateButton("NO CLIP Press(E)", function() 
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

MISC:CreateButton("Inf Jump", function() 
game:GetService("UserInputService").JumpRequest:connect(function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
end)
end)
MISC:CreateButton("Ctrl + Click = TP", function() 
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Plr.Character:MoveTo(Mouse.Hit.p)
end)
end)
MISC:CreateButton("Fly Press (F)", function() 
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
MISC:CreateButton("Infinite Yield", function() 
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
MISC:CreateButton("Speed Hack 200 press(R)", function() 



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




AutoTab:CreateToggle("Auto Click", function(bool) 
    
        _G.LULU = bool 
        while wait(0) and _G.LULU do
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
end

    else
        _G.LULU = false
    end
end)

AutoTab:CreateToggle("Auto Buy Swords", function(bool)   
        _G.c = bool 
        while wait(0) and _G.c do
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Katana")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Sun Blaze Rod")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Wizard Scythe")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("UFO Scythe")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Death Blade")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Winter Blade")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Omega Tri Blade")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Crystalized Banner")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Bubble Katana")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Bubble Scythe")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Fusion Banner")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Inferno Slammer")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Inferno Crusher")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Oceanic Slammer")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Coral Crusher")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Red Death")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Sword of Satan")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Demonic Shard")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Fiery Great Sword")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Enchanted Hell Sword")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Enchanted Battleaxe")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Technic Longsword")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Templars Holy Blade")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Kings Fall")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Divine Retribution")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Brutus")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Titantruous")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("ItsOver")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("VulcansPrize")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("MagmaMasher")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("RidgeBreaker")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Dragon Champion)
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Burning Champion")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Neonic Slythe")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Rocket Rammer")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Japhatus")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("God Slayer")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Pepper Sword")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Technic")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("BangBoom")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Justice")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Interdimentional")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("StraightFromDepths")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("TitansGrip")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("StarBreaker")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Infurial Titantuous")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Osiris`Weave")
game:GetService("ReplicatedStorage").RemoteEvents.Weapons.Purchase:FireServer("Patriotic Staff")
end
    end
end)
AutoTab:CreateToggle("Auto Buy Auras", function(bool)   
        _G.d = bool 
        while wait(0) and _G.d do
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Cloudy")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Electric")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Spiral")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Sparkles")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Sparkles 2.0")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("SmoothFire")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Cursed")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Chillfire")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("FireSaiyan")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("PoisonCloud")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Techno")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("VoidSaiyan")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("FireGodSlayer")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("VoidGuardian")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Radioactive")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("KingCandidate")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Glorious")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Chilled")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Allseeing Advisor")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Godly Elemental")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Hyper Smoke")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Distorsion")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("ScarySparks")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("SmallSparkles")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("MixedConcoction") wait(X) 
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Powerful Saiku")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Soothing Snow")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Universal Saiku God")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Lightning")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Unbendable Will") wait(X) 
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Peace")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("ScorchingBrilliance")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("ChillingBrilliance")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("DeathlyBrilliance")  wait(X)
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("No Chance") wait(X) 
game:GetService("ReplicatedStorage").RemoteEvents.Auras.Purchase:FireServer("Untouchable")  wait(X)
    end
end)
eggs:CreateToggle("Auto Buy Commons Eggs", function(bool)   
        _G.e = bool 
        while wait(0) and _G.e do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg1")
    end
end)
eggs:CreateToggle("Auto Buy Cyne Eggs", function(bool) 
        _G.f = bool 
        while wait(0) and _G.f do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg2")
    end
end)
eggs:CreateToggle("Auto Buy Golem Eggs", function(bool) 
        _G.g = bool 
        while wait(0) and _G.g do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg3")

    end
end)
eggs:CreateToggle("Auto Buy Altar Eggs", function(bool) 
        _G.h = bool 
        while wait(0) and _G.h do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg4")
    end
end)
eggs:CreateToggle("Auto Buy Sky Eggs", function(bool)   
        _G.i = bool 
        while wait(0) and _G.i do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg5")
    end
end)
eggs:CreateToggle("Auto Buy Toy Eggs", function(bool) 
        _G.j = bool 
        while wait(0) and _G.j do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg6")  
    end
end)
eggs:CreateToggle("Auto Buy Inferno Eggs", function(bool) 
        _G.k = bool 
        while wait(0) and _G.k do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg8")
    end
end)
eggs:CreateToggle("Auto Buy Crystal Eggs", function(bool) 
        _G.l = bool 
        while wait(0) and _G.l do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg9")
    end
end)
eggs:CreateToggle("Auto Buy Atlantis Eggs", function(bool) 
        _G.m = bool 
        while wait(0) and _G.m do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg10")
    end
end)
eggs:CreateToggle("Auto Buy Radioactive Eggs", function(bool)   
        _G.n = bool 
        while wait(0) and _G.n do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg11")
    end
end)
eggs:CreateToggle("Auto Buy Common Eggs", function(bool) 
        _G.o = bool 
        while wait(0) and _G.o do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg12")
    end
end)
eggs:CreateToggle("Auto Buy Uncommon Eggs", function(bool) 
        _G.p = bool 
        while wait(0) and _G.p do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg13")
    end
end)
eggs:CreateToggle("Auto Buy Exiqusite Eggs", function(bool) 
        _G.q = bool 
        while wait(0) and _G.q do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg14")
    end
end)
eggs:CreateToggle("Auto Buy Hellfire Eggs", function(bool) 
        _G.r = bool 
        while wait(0) and _G.r do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg15")
    end
end)
eggs:CreateToggle("Auto Buy Abyssal Eggs", function(bool) 
        _G.s = bool 
        while wait(0) and _G.s do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg16")
    end
end)
eggs:CreateToggle("Auto Buy Godly Eggs", function(bool) 
        _G.t = bool 
        while wait(0) and _G.t do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg17")
    end
end)
eggs2:CreateToggle("Auto Buy Ascendant Eggs", function(bool)   
        _G.u = bool 
        while wait(0) and _G.u do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg18")
    end
end)
eggs2:CreateToggle("Auto Buy Galactic Eggs", function(bool)  
        _G.v = bool 
        while wait(0) and _G.v do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg19")
    end
end)
eggs2:CreateToggle("Auto Buy Underworld Eggs", function(bool) 
        _G.w = bool 
        while wait(0) and _G.w do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg20")
    end
end)
eggs2:CreateToggle("Auto Buy Winter Eggs", function(bool) 
        _G.x = bool 
        while wait(0) and _G.x do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg21")
    end
end)
eggs2:CreateToggle("Auto Buy Lava Eggs", function(bool) 
        _G.y = bool 
        while wait(0) and _G.y do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg22")
    end
end)
eggs2:CreateToggle("Auto Buy Forest Eggs", function(bool)  
        _G.z = bool 
        while wait(0) and _G.z do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg23")
    end
end)
eggs2:CreateToggle("Auto Buy Forest Eggs 2", function(bool) 
        _G.za = bool 
        while wait(0) and _G.za do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg24")
    end
end)
eggs2:CreateToggle("Auto Buy Neon Eggs ", function(bool)  
        _G.zb = bool 
        while wait(0) and _G.zb do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg25")
    end
end)
eggs2:CreateToggle("Auto Buy Fungus Eggs", function(bool) 
         _G.zc = bool 
        while wait(0) and _G.zc do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg26")
    end
end)
eggs2:CreateToggle("Auto Buy 15K Crystal Eggs", function(bool)  
        _G.zd = bool 
        while wait(0) and _G.zd do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg27")
    end
end)
eggs2:CreateToggle("Auto Buy 65K Crystal Eggs", function(bool)  
        _G.ze = bool 
        while wait(0) and _G.ze do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg28")
    end
end)
eggs2:CreateToggle("Auto Buy Valk Eggs", function(bool)    
        _G.zf = bool 
        while wait(0) and _G.zf do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg29")
    end
end)
eggs2:CreateToggle("Auto Buy Patriotic Eggs", function(bool) 
        _G.zg = bool 
        while wait(0) and _G.zg do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg30")
    end
end)
eggs2:CreateToggle("Auto Buy 1B Coins (event) Eggs", function(bool)    
        _G.zh = bool 
        while wait(0) and _G.zh do
game:GetService("ReplicatedStorage").RemoteFunctions.Pets.CheckStats:InvokeServer("Egg31")
    end
end)
KILL1:CreateButton("go to the right area to be", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(938.70874, -84.2339706, -30471.7207)
end)
KILL1:CreateButton("able to auto kill", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(938.70874, -84.2339706, -30471.7207)
end)
KILL1:CreateButton("Spawn", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(74.4510193, 37.1974258, -50.9291992)
end)
KILL1:CreateToggle("Kill New_Item Mobs", function(bool) 
        _G.zi = bool 
        while wait(0) and _G.zi do
local pbosd = game:GetService("Workspace").Zones.npcSpawn["New_Item"].RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill DrTrayBlox Mobs", function(bool)    
        _G.zj = bool 
        while wait(0) and _G.zj do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.DrTrayBlox.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill RealYouTube_AlphaGG Mobs", function(bool)    
        _G.zk = bool 
        while wait(0) and _G.zk do
local pbosd = game:GetService("Workspace").Zones.npcSpawn["RealYouTube_AlphaGG"].RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill DevRolve Mobs", function(bool) 
        _G.zl = bool 
        while wait(0) and _G.zl do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.DevRolve.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill HenryDev Mobs", function(bool)  
        _G.zm = bool 
        while wait(0) and _G.zm do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.HenryDev.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill RussoTalks Mobs", function(bool) 
        _G.zn = bool 
        while wait(0) and _G.zn do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.RussoTalks.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill OverHash Mobs", function(bool)  
        _G.zo = bool 
        while wait(0) and _G.zo do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.OverHash.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill asimo3089 Mobs", function(bool) 
        _G.zp = bool 
        while wait(0) and _G.zp do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.asimo3089.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill Kelogish Mobs", function(bool)   
        _G.zq = bool 
        while wait(0) and _G.zq do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Kelogish.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill ObscureEntity Mobs", function(bool)  
        _G.zr = bool 
        while wait(0) and _G.zr do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.ObscureEntity.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill Not_Nert Mobs", function(bool) 
        _G.zs = bool 
        while wait(0) and _G.zs do
local pbosd = game:GetService("Workspace").Zones.npcSpawn["Not_Nert"].RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill Tenrous Mobs", function(bool)  
        _G.zt = bool 
        while wait(0) and _G.zt do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Tenrous.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill DJMonopoli Mobs", function(bool)  
        _G.zu = bool 
        while wait(0) and _G.zu do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.DJMonopoli.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateButton("Atlantis", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(43189.8828, 46.2013664, 13112.6943)
end)
KILL1:CreateToggle("Kill Proxus Mobs", function(bool)   
        _G.zv = bool 
        while wait(0) and _G.zv do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Proxus.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill taymaster Mobs", function(bool) 
        _G.zw = bool 
        while wait(0) and _G.zw do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.taymaster.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill SabrinaBrite Mobs", function(bool) 
        _G.zx = bool 
        while wait(0) and _G.zx do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.SabrinaBrite.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill Nikilis Mobs", function(bool) 
        _G.zy = bool 
        while wait(0) and _G.zy do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Nikilis.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill sircfenner Mobs", function(bool) 
        _G.zz = bool 
        while wait(0) and _G.zz do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.sircfenner.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill mayrushart Mobs", function(bool)    
        _G.zza = bool 
        while wait(0) and _G.zza do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.mayrushart.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL1:CreateToggle("Kill coolbulls Mobs", function(bool) 
        _G.zzb = bool 
        while wait(0) and _G.zzb do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.coolbulls.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateButton("Nostalgic", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-929.631531, -133.740082, 16053.6855)
end)
KILL2:CreateToggle("Kill AzireBlox Mobs", function(bool)  
        _G.zzc = bool 
        while wait(0) and _G.zzc do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.AzireBlox.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill Defaultio Mobs", function(bool) 
        _G.zzd = bool 
        while wait(0) and _G.zzd do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Defaultio.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill Dued1 Mobs", function(bool) 
        _G.zze = bool 
        while wait(0) and _G.zze do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Dued1.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill Emulsifies Mobs", function(bool) 
        _G.zzf = bool 
        while wait(0) and _G.zzf do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Emulsifies.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill Emulsifies Mobs", function(bool) 
        _G.zzg = bool 
        while wait(0) and _G.zzg do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Emulsifies.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill Firebrand1 Mobs", function(bool)  
        _G.zzh = bool 
        while wait(0) and _G.zzh do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Firebrand1.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill Nosniy Mobs", function(bool) 
        _G.zzi = bool 
        while wait(0) and _G.zzi do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Nosniy.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill MakeItRainBows Mobs", function(bool)  
        _G.zzj = bool 
        while wait(0) and _G.zzj do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.MakeItRainBows.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill TwentyTwoPilots Mobs", function(bool)  
        _G.zzk = bool 
        while wait(0) and _G.zzk do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.TwentyTwoPilots.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill Ultraw Mobs", function(bool) 
        _G.zzl = bool 
        while wait(0) and _G.zzl do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Ultraw.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill liteImpulse Mobs", function(bool) 
        _G.zzm = bool 
        while wait(0) and _G.zzm do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.liteImpulse.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill litozinnamon Mobs", function(bool)   
        _G.zzn = bool 
        while wait(0) and _G.zzn do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.litozinnamon.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill KecsPlays_YT Mobs", function(bool) 
        _G.zzo = bool 
        while wait(0) and _G.zzo do
local pbosd = game:GetService("Workspace").Zones.npcSpawn["KecsPlays_YT"].RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill Dreadcruiser Mobs", function(bool)  
        _G.zzp = bool 
        while wait(0) and _G.zzp do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Dreadcruiser.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill YT_ItsMatty Mobs", function(bool) 
        _G.zzq = bool 
        while wait(0) and _G.zzq do
local pbosd = game:GetService("Workspace").Zones.npcSpawn["YT_ItsMatty"].RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill YT_SnugLife Mobs", function(bool)    
        _G.zzr = bool 
        while wait(0) and _G.zzr do
local pbosd = game:GetService("Workspace").Zones.npcSpawn["YT_SnugLife"].RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateButton("Winter Tundra", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(23627.4004, -447.186157, -131.947144)
end)
KILL2:CreateToggle("Kill Stickmasterluke Mobs", function(bool)  
        _G.zzs = bool 
        while wait(0) and _G.zzs do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Stickmasterluke.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL2:CreateToggle("Kill Ragoozer Mobs", function(bool)  
        _G.zzt = bool 
        while wait(0) and _G.zzt do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Ragoozer.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL3:CreateButton("Mush Kingdom", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(52707.0039, 174.622406, -11468.4316)
end)
KILL3:CreateToggle("Kill ZephsyJ Mobs", function(bool)   
        _G.zzu = bool 
        while wait(0) and _G.zzu do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.ZephsyJ.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL3:CreateToggle("Kill gixin Mobs", function(bool)   
        _G.zzv = bool 
        while wait(0) and _G.zzv do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.gixin.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL3:CreateToggle("Kill solter Mobs", function(bool)    
        _G.zzw = bool 
        while wait(0) and _G.zzw do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.solter.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL3:CreateToggle("Kill Q_Q Mobs", function(bool) 
        _G.zzx = bool 
        while wait(0) and _G.zzx do
local pbosd = game:GetService("Workspace").Zones.npcSpawn["Q_Q"].RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL3:CreateToggle("Kill TypicalType Mobs", function(bool) 
        _G.zzy = bool 
        while wait(0) and _G.zzy do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.TypicalType.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL3:CreateToggle("Kill SnakeWorl Mobs", function(bool)    
        _G.zzz = bool 
        while wait(0) and _G.zzz do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.SnakeWorl.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL3:CreateToggle("Kill DrMeser Mobs", function(bool)  
        _G.zzza = bool 
        while wait(0) and _G.zzza do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.DrMeser.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL3:CreateToggle("Kill Merely Mobs", function(bool) 
        _G.zzzb = bool 
        while wait(0) and _G.zzzb do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Merely.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL3:CreateToggle("Kill OrionPlaysRBX Mobs", function(bool)  
        _G.zzzc = bool 
        while wait(0) and _G.zzzc do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.OrionPlaysRBX.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL3:CreateButton("Vulkarian Heaven", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-604.873901, 131.681351, -830.78064)
end)
KILL3:CreateToggle("Kill ProboyNINJA123 Mobs", function(bool) 
        _G.zzzd = bool 
        while wait(0) and _G.zzzd do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.ProboyNINJA123.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL3:CreateToggle("Kill Zillxionaire Mobs", function(bool) 
        _G.zzze = bool 
        while wait(0) and _G.zzze do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Zillxionaire.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL3:CreateToggle("Kill NirobiGames Mobs", function(bool) 
        _G.zzzf = bool 
        while wait(0) and _G.zzzf do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.NirobiGames.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL4:CreateButton("Bests Zones", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(938.70874, -84.2339706, -30471.7207)
end)
KILL4:CreateToggle("Kill Shedletsky Mobs", function(bool) 
        _G.zzzg = bool 
        while wait(0) and _G.zzzg do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Shedletsky.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL4:CreateToggle("Kill Linkmon99 Mobs", function(bool) 
        _G.zzzh = bool 
        while wait(0) and _G.zzzh do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Linkmon99.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL4:CreateToggle("Kill DeeterPlays Mobs", function(bool)  
        _G.zzzi = bool 
        while wait(0) and _G.zzzi do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.DeeterPlays.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL4:CreateToggle("Kill Alvin_Blox Mobs", function(bool)    
        _G.zzzj = bool 
        while wait(0) and _G.zzzj do
local pbosd = game:GetService("Workspace").Zones.npcSpawn["Alvin_Blox"].RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL4:CreateToggle("Kill coefficients Mobs", function(bool)    
        _G.zzzk = bool 
        while wait(0) and _G.zzzk do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.coefficients.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL4:CreateToggle("Kill JamiyJamie Mobs", function(bool) 
        _G.zzzl = bool 
        while wait(0) and _G.zzzl do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.JamiyJamie.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL4:CreateToggle("Kill Builder_Boy Mobs", function(bool)  
        _G.zzzm = bool 
        while wait(0) and _G.zzzm do
local pbosd = game:GetService("Workspace").Zones.npcSpawn["Builder_Boy"].RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL4:CreateToggle("Kill Beeism Mobs", function(bool)  
        _G.zzzn = bool 
        while wait(0) and _G.zzzn do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Beeism.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
KILL4:CreateToggle("Kill Sylently Mobs", function(bool) 
        _G.zzzo = bool 
        while wait(0) and _G.zzzo do
local pbosd = game:GetService("Workspace").Zones.npcSpawn.Sylently.RightUpperArm
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
teleports:CreateButton("Spawn", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(74.4510193, 37.1974258, -50.9291992)
end)
teleports:CreateButton("Atlantis", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(43189.8828, 46.2013664, 13112.6943)
end)
teleports:CreateButton("Nostalgic", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-929.631531, -133.740082, 16053.6855)
end)
teleports:CreateButton("Mush Kingdom", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(52707.0039, 174.622406, -11468.4316)
end)
teleports:CreateButton("Vulkarian Heaven", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-604.873901, 131.681351, -830.78064)
end)
teleports:CreateButton("Winter Tundra", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(23627.4004, -447.186157, -131.947144)
end)
teleports:CreateButton("Bests Zones", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(938.70874, -84.2339706, -30471.7207)
end)
--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

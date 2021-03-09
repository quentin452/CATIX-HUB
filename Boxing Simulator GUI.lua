--https://www.roblox.com/games/4058282580/X1000-STATS-Boxing-Simulator

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Boxing-Simulator GUI","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local mobs = Library:CreateTab("Auto Tp To Mobs","things", true)
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

AutoTab:CreateButton("Destroy Gui :D", function() 
game:GetService("CoreGui").uiui:Destroy()
end)
MISC:CreateButton("🎬NO CLIP Press(E)🎬", function()
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

MISC:CreateButton("🤸‍♀️Inf Jump🤸‍♀️", function() 
game:GetService("UserInputService").JumpRequest:connect(function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
end)
end)
MISC:CreateButton("🕹️Ctrl + Click = TP🕹️", function() 
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Plr.Character:MoveTo(Mouse.Hit.p)
end)
end)

MISC:CreateButton("🪰Fly Press (F)🪰", function() 
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

MISC:CreateButton("🛡️Infinite Yield🛡️", function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
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

AutoTab:CreateToggle("Auto Click", function(bool) 
        _G.b = bool 
        while wait(0) and _G.b do
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
        end
    end
end)
AutoTab:CreateToggle("Auto Sell", function(bool) 
        _G.c = bool 
        while wait(0) and _G.c do
        game:GetService("ReplicatedStorage").Events.SellRequest:FireServer()
        end
end)
AutoTab:CreateToggle("Auto Tp To Coins", function(bool) 
        _G.c2 = bool 
        while wait(0) and _G.c2 do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Coins.Coin.HumanoidRootPart
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
     end
end)
AutoTab:CreateToggle("Auto Tp To AmericanFlags", function(bool) 
        _G.c3 =  bool  
        while wait(0) and _G.c3 do  
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Canes.CandyCane.Decoration
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end
end)
AutoTab:CreateToggle("Auto Tp To Boxes", function(bool) 
_G.c21 =  bool  
        while wait(0) and _G.c21 do    
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Boxes.Box1.Root
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+4)
    end
end)
mobs:CreateToggle("Auto Tp To Pirate Boss", function(bool) 
        _G.c3 =  bool  
        while wait(0) and _G.c3 do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Boss.Pirate.UpperTorso
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
end)
mobs:CreateToggle("Auto Tp To Skeletons", function(bool) 
        _G.c4 =  bool  
        while wait(0) and _G.c4 do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Dungeon.Rooms.Room1.Monsters.Skeleton.UpperTorso
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
end)
mobs:CreateToggle("Auto Tp To Armored ", function(bool) 
        _G.c5 =  bool  
        while wait(0) and _G.c5 do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Dungeon.Rooms.Room2.Monsters.Armored.UpperTorso
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
end)
mobs:CreateToggle("Auto Tp To Boss ", function(bool) 
        _G.c6 =  bool  
        while wait(0) and _G.c6 do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Dungeon.Rooms.Room3.Monsters.Boss.UpperTorso
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
end)
AutoTab:CreateToggle("Auto Upgrade Jumps", function(bool) 
        _G.d =  bool  
        while wait(0) and _G.d do
        game:GetService("ReplicatedStorage").Events.UpgradeEnergy:FireServer()
        end
end)
AutoTab:CreateToggle("Auto Buy Gloves", function(bool) 
        _G.e =  bool  
        while wait(0) and _G.e do
      game:GetService("ReplicatedStorage").Events.BuyAllGlove:FireServer()
        end
end)
AutoTab:CreateToggle("Auto Buy Dna", function(bool) 
        _G.f =  bool  
        while wait(0) and _G.f do
wait(1)
    for i = 1,360 do
    game:GetService("ReplicatedStorage").Events.EquipDNA:FireServer("test"..i)
end
game:GetService("ReplicatedStorage").Events.BuyAllDNA:FireServer()
        end
end)
AutoTab:CreateToggle("Auto Buy Ranks", function(bool) 
        _G.g = bool 
        while wait(0.5) and _G.g do
        for i = 1,50 do
game:GetService("ReplicatedStorage").Events.BuyClass:FireServer(i)
        end
    end
end)
AutoTab:CreateToggle("Auto Buy Auras", function(bool) 
        _G.h = bool 
        while wait(0.5) and _G.h do
for i= 1,50 do
game:GetService("ReplicatedStorage").Events.BuyAura:FireServer(i)
end
    end
end)
AutoTab:CreateToggle("Auto Collect Candy", function(bool) 
        _G.f = bool 
        while wait(0) and _G.f do
for i,v in pairs(game:GetService("Workspace").Canes:GetChildren()) do
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
    local Me = game.Players.LocalPlayer.Character.HumanoidRootPart
    local To = v
    To.CFrame = Me.CFrame
    rs:wait()
    v.CFrame = CFrame.new(0,0,0)
   end
end
end
end)
AutoTab:CreateToggle("Auto Tp To Flags", function(bool) 
        _G.h22 = bool 
        while wait(0) and _G.h22 do
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16592.4922, 856.384277, -35246.2578)wait(8)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16582.7676, 1635.49744, -35272.9727)wait(8)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16433.5859, 3068.29565, -35392.6758)wait(8)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16660.6504, 2093.39795, -35011.707)wait(8)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16286.1934, 855.118164, -35090.2695)wait(8)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16594.5918, 855.139099, -35240.7031)wait(8)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16369.2998, 855.118103, -35477.2695)wait(8)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16114.2422, 856.023132, -35352.5508)wait(8)
    end
end)
eggs:CreateToggle("Auto Buy Basic Eggs", function(bool) 
        _G.i = bool 
        while wait(0) and _G.i do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("basic",false)
    end
end)
eggs:CreateToggle("Auto Buy Uncommon Eggs", function(bool) 
        _G.i2 = bool 
        while wait(0) and _G.i2 do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("uncommon",false)
    end
end)
eggs:CreateToggle("Auto Buy Rare Eggs", function(bool) 
        _G.j = bool 
        while wait(0) and _G.j do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("rare",false)
    end
end)
eggs:CreateToggle("Auto Buy Epic Eggs", function(bool) 
        _G.k = bool 
        while wait(0) and _G.k do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("epic",false)
    end
end)
eggs:CreateToggle("Auto Buy Legendary Eggs", function(bool) 
        _G.l = bool 
        while wait(0) and _G.l do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("legendary",false)
    end
end)
eggs:CreateToggle("Auto Buy Mythical Eggs", function(bool) 
        _G.m = bool 
        while wait(0) and _G.m do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("mythical",false)
    end
end)
eggs:CreateToggle("Auto Buy Godly Eggs", function(bool) 
        _G.n= bool 
        while wait(0) and _G.n do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("godly",false)
    end
end)
eggs:CreateToggle("Auto Buy Divine Eggs", function(bool) 
        _G.o= bool 
        while wait(0) and _G.o do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("divine",false)
    end
end)
eggs:CreateToggle("Auto Buy Arcane Eggs", function(bool) 
        _G.p= bool 
        while wait(0) and _G.p do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("arcana",false)
    end
end)
eggs:CreateToggle("Auto Buy Mystic Eggs", function(bool) 
        _G.q= bool 
        while wait(0) and _G.q do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("mystic",false)
    end
end)
eggs:CreateToggle("Auto Buy Celestial Eggs", function(bool) 
        _G.r= bool 
        while wait(0) and _G.r do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("celestial",false)
    end
end)
eggs:CreateToggle("Auto Buy Pre Eggs", function(bool) 
_G.s= bool 
        while wait(0) and _G.s do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("pre",false)
    end
end)
eggs:CreateToggle("Auto Buy Supreme Eggs", function(bool) 
        _G.t= bool 
        while wait(0) and _G.t do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("supreme",false)
    end
end)
eggs:CreateToggle("Auto Buy Event Eggs", function(bool) 
        _G.u= bool 
        while wait(0) and _G.u do
game:GetService("ReplicatedStorage").Events.BuyEgg:FireServer("event",false)
    end
end)
teleports:CreateButton("Spawn", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16224.8154, 855.254211, -35269.6367)
end)
teleports:CreateButton("Zone 1", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16461.9316, 1887.34338, -35282.4531)
end)
teleports:CreateButton("Zone 2", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16428.7285, 3410.21558, -35275.8672)
end)
teleports:CreateButton("Zone 3", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16528.7266, 6339.72656, -35282.3359)
end)
teleports:CreateButton("Zone 4", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16261.4102, 10798.043, -35266.1641)
end)
teleports:CreateButton("Zone 5", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16313.6865, 18313.7734, -35174.8633)
end)
teleports:CreateButton("Zone 6", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16694.041, 24500.9375, -35202.1953)
end)
teleports:CreateButton("Zone 7", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16517.3477, 34102.7969, -35224.5469)
end)
teleports:CreateButton("Zone 8", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(16517.3477, 50545.9844, -35224.5469)
end)
--| Anti AFK |
   local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

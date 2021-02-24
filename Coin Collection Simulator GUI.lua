--https://www.roblox.com/games/5093293793/HUGE-UPDATE-Coin-Collection-Simulator
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()
local AutoTab = Library:CreateTab("Coin Collection Simulator GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local eggs = Library:CreateTab("Auto By Cages SLOW","things", true)
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
eggs:CreateToggle("Auto Buy Cages 1", function(bool) 
        _G.a = bool 
        while wait(0) and _G.a do
           local args = {
    [1] = "StarterCage",
}

workspace.petInfo:InvokeServer(unpack(args))
    end
end)
eggs:CreateToggle("Auto Buy Cages 2", function(bool) 
        _G.b = bool 
        while wait(0) and _G.b do
workspace.petInfo:InvokeServer("DesertCage")
        end
end)
eggs:CreateToggle("Auto Buy Cages 3", function(bool) 
        _G.c = bool 
        while wait(0) and _G.c do
         local args = {
    [1] = "SnowCage",
}

workspace.petInfo:InvokeServer(unpack(args))
    end
end)

eggs:CreateToggle("Auto Buy Cages 4", function(bool) 
        _G.d = bool 
        while wait(0) and _G.d do
         local args = {
    [1] = "CityCage",
}

workspace.petInfo:InvokeServer(unpack(args))
    end
end)

eggs:CreateToggle("Auto Buy Cages 5", function(bool) 
        _G.e = bool 
        while wait(0) and _G.e do
         local args = {
    [1] = "LavaCage",
}

workspace.petInfo:InvokeServer(unpack(args))
    end
end)

eggs:CreateToggle("Auto Buy Cages 6", function(bool) 
        _G.f = bool 
        while wait(0) and _G.f do
         local args = {
    [1] = "OceanCage",
}

workspace.petInfo:InvokeServer(unpack(args))
    end
end)

eggs:CreateToggle("Auto Buy Cages 7", function(bool) 
        _G.g = bool 
        while wait(0) and _G.g do
         local args = {
    [1] = "CandyCage",
}

workspace.petInfo:InvokeServer(unpack(args))
        end
end)

eggs:CreateToggle("Auto Buy Cages 8", function(bool) 
        _G.h = bool 
        while wait(0) and _G.h do
         local args = {
    [1] = "JungleCage",
}

workspace.petInfo:InvokeServer(unpack(args))
    end
end)

eggs:CreateToggle("Auto Buy Cages 9", function(bool) 
        _G.i = bool 
        while wait(0) and _G.i do
      local args = {
    [1] = "SpaceCage",
}

workspace.petInfo:InvokeServer(unpack(args))
        end
end)

AutoTab:CreateToggle("Auto Click", function(bool) 
        _G.j = bool 
        while wait(0) and _G.j do
             local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
    end
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




AutoTab:CreateToggle("Disable all pop ups", function(bool) 
        _G.l = bool 
        while wait(0) and _G.l do
          game:GetService("ReplicatedStorage").CoinFrame:Destroy()
          game:GetService("ReplicatedStorage").XpFrame:Destroy()  
        end
end)

AutoTab:CreateButton("Tp to Last Zone", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2883.66211, 6.05753565, -504.741577)
end)

AutoTab:CreateButton("And Execute Auto Coins", function() 
end)

AutoTab:CreateToggle("Auto Coins FAST", function(bool) 
        _G.m = bool 
        while wait(0) and _G.m do
             for i,v in pairs (game:GetService("Workspace").AllCoins.SpaceCoin:GetChildren()) do
        v.Coin.CFrame = Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                wait(1)
    v.CFrame = CFrame.new(0,0,0)
end
    end
end)

AutoTab:CreateToggle("Auto Sacrifices", function(bool) 
        _G.n = bool 
        while wait(0) and _G.n do
game:GetService("ReplicatedStorage").SacrificeMoney:FireServer(0)
    end
end)
teleports:CreateButton("Shop", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-319.3284, 6.41753483, -571.995544)
end)
teleports:CreateButton("Zone 1", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-11.0445356, 6.05753565, -546.400757)
end)
teleports:CreateButton("Zone 2", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(316.360413, 6.05753565, -570.571411)
end)
teleports:CreateButton("Zone 3", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(694.087219, 6.05384827, -561.044739)
end)
teleports:CreateButton("Zone 4", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1087.39343, 5.5575366, -553.410522)
end)
teleports:CreateButton("Zone 5", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1423.27222, 6.0542655, -549.605042)
end)
teleports:CreateButton("Zone 6", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1779.07678, 6.05753422, -555.153259)
end)
teleports:CreateButton("Zone 7", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2144.20239, 6.05753565, -501.873474)
end)
teleports:CreateButton("Zone 8", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2513.57397, 6.05426502, -511.89859)
end)
teleports:CreateButton("Zone 9", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2883.66211, 6.05753565, -504.741577)
end)
AutoTab:CreateButton("Destroy Gui :D", function() 
game:GetService("CoreGui").uiui:Destroy()
end)
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

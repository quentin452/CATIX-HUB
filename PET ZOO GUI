--https://www.roblox.com/games/4902872857/Pet-Zoo?refPageId=78f10c67-8706-4ff0-805a-f25e9d7dc1d5

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Pet-Zoo GUI","things", true)
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

local args = {
    [1] = false,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.IncomeButtonService.OnClick:InvokeServer(unpack(args))
local args = {
    [1] = false,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.IncomeButtonService.OnClick:InvokeServer(unpack(args))
local args = {
    [1] = false,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.IncomeButtonService.OnClick:InvokeServer(unpack(args))
local args = {
    [1] = false,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.IncomeButtonService.OnClick:InvokeServer(unpack(args))
end

    else
        _G.LULU = false
    end
end)




AutoTab:CreateToggle("Auto Upgrades ATLANTIS", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0) and _G.a do
local args = {
    [1] = "ATLANTIS",
    [2] = 1,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "ATLANTIS",
    [2] = 2,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "ATLANTIS",
    [2] = 3,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
end

    else
        _G.a = false
    end
end)
AutoTab:CreateToggle("Auto Upgrades AETHER", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a2 = true 
        while wait(0) and _G.a2 do
local args = {
    [1] = "AETHER",
    [2] = 1,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "AETHER",
    [2] = 2,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "AETHER",
    [2] = 3,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
end

    else
        _G.a2 = false
    end
end)
AutoTab:CreateToggle("Auto Upgrades VOLCANO", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a3 = true 
        while wait(0) and _G.a3 do
local args = {
    [1] = "VOLCANO",
    [2] = 1,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "VOLCANO",
    [2] = 2,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "VOLCANO",
    [2] = 3,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
end

    else
        _G.a3 = false
    end
end)
AutoTab:CreateToggle("Auto Upgrades POWER PLANT", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a4 = true 
        while wait(0) and _G.a4 do
local args = {
    [1] = "POWER PLANT",
    [2] = 1,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "POWER PLANT",
    [2] = 2,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "POWER PLANT",
    [2] = 3,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
end

    else
        _G.a4 = false
    end
end)
AutoTab:CreateToggle("Auto Upgrades GRAVEYARD", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a5 = true 
        while wait(0) and _G.a5 do
local args = {
    [1] = "GRAVEYARD",
    [2] = 1,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "GRAVEYARD",
    [2] = 2,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "GRAVEYARD",
    [2] = 3,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
end

    else
        _G.a5 = false
    end
end)
AutoTab:CreateToggle("Auto Upgrades FOREST", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a6 = true 
        while wait(0) and _G.a6 do
local args = {
    [1] = "FOREST",
    [2] = 1,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "FOREST",
    [2] = 2,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "FOREST",
    [2] = 3,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
end

    else
        _G.a6 = false
    end
end)
AutoTab:CreateToggle("Auto Upgrades ICELAND", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a7 = true 
        while wait(0) and _G.a7 do
local args = {
    [1] = "ICELAND",
    [2] = 1,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "ICELAND",
    [2] = 2,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "ICELAND",
    [2] = 3,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
end

    else
        _G.a7 = false
    end
end)
AutoTab:CreateToggle("Auto Upgrades PALACE", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a7 = true 
        while wait(0) and _G.a7 do
local args = {
    [1] = "PALACE",
    [2] = 1,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "PALACE",
    [2] = 2,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
local args = {
    [1] = "PALACE",
    [2] = 3,
}

game:GetService("ReplicatedStorage").AeroRemoteServices.ZooService.UpgradeBiome:InvokeServer(unpack(args))
end

    else
        _G.a7 = false
    end
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(239.129196, 116.41774, -357.642151)
end)

teleports:CreateButton("Atlantis", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(172.117676, 196.533661, -1311.62903)
end)

teleports:CreateButton("AETHER", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-368.96167, 223.054123, 235.364304)
end)
teleports:CreateButton("VOLCANO", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-14.2621422, 248.473831, 476.422119)
end)
teleports:CreateButton("POWER PLANT", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(803.944153, 166.400192, -1223.48132)
end)
teleports:CreateButton("GRAVEYARD", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1210.31116, 171.434082, -552.448486)
end)
teleports:CreateButton("FOREST", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1194.96387, 186.436371, 259.236969)
end)
teleports:CreateButton("ICELAND", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(657.901062, 141.465164, 621.574585)
end)
teleports:CreateButton("PALACE", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-554.311279, 191.527344, -1020.09222)
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

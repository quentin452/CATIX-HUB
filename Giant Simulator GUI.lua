--https://www.roblox.com/games/2986677229/Daily-Rewards-Giant-Simulator


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Giant-Simulator GUI","things", true)
local crates = Library:CreateTab("Auto Buy Crates","things", true)
local chests = Library:CreateTab("Auto Oppens Chests","things", true)
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




AutoTab:CreateToggle("Auto Click(tappe Bosses)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
         
game.ReplicatedStorage.Aero.AeroRemoteServices.GameService.WeaponAttackStart:FireServer()
game.ReplicatedStorage.Aero.AeroRemoteServices.GameService.WeaponAnimComplete:FireServer()

        end
    else
        _G.b= false
    end
end)
AutoTab:CreateToggle("Auto Tp To Demon king", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
         while wait(0) and _G.c do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").NPC.DemonKing.DemonKing.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
    else
        _G.c= false
    end
end)
AutoTab:CreateToggle("Auto Tp To Borok", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
         while wait(0) and _G.d do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").NPC.Boss.Borock.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
    else
        _G.d= false
    end
end)
crates:CreateToggle("Auto Buy Crate 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
         while wait(0) and _G.e do
local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(315.595276, 69.9918976, -1081.15271)
        end
    else
        _G.e= false
    end
end)
crates:CreateToggle("Auto Buy Crate 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
         while wait(0) and _G.f do
local args = {
    [1] = 2,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(344.705109, 69.9919205, -1092.23376)
        end
    else
        _G.f= false
    end
end)
crates:CreateToggle("Auto Buy Crate 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
         while wait(0) and _G.g do
local args = {
    [1] = 3,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(373.348419, 69.9918976, -1085.3606)
        end
    else
        _G.g= false
    end
end)
crates:CreateToggle("Auto Buy Crate 4", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
         while wait(0) and _G.h do
local args = {
    [1] = 4,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(405.137512, 69.9918976, -1078.3468)
        end
    else
        _G.h= false
    end
end)
crates:CreateToggle("Auto Buy Crate 5", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
         while wait(0) and _G.i do
local args = {
    [1] = 5,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenPetCrate:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2815.13013, 256.429688, -1262.29126)
        end
    else
        _G.i= false
    end
end)
crates:CreateToggle("Auto Buy Weapons Crate", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
         while wait(0) and _G.j do
local args = {
    [1] = "weapon",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenLegendaryCrate:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(276.679413, 69.9919205, -1024.86902)
        end
    else
        _G.j= false
    end
end)
crates:CreateToggle("Auto Buy Weapons Crate", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
         while wait(0) and _G.k do
local args = {
    [1] = "skin",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenLegendaryCrate:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(281.009003, 69.9919205, -1033.24756)
        end
    else
        _G.k= false
    end
end)
crates:CreateToggle("Auto Buy Crystal Crate 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
         while wait(0) and _G.l do
local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenArtifactCrate:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2235.14526, 226.464828, -1306.60913)
        end
    else
        _G.l= false
    end
end)
crates:CreateToggle("Auto Buy Crystal Crate 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
         while wait(0) and _G.m do
local args = {
    [1] = 2,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenArtifactCrate:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2221.07861, 226.464828, -1329.84387)
        end
    else
        _G.m= false
    end
end)
crates:CreateToggle("Auto Buy Crystal Crate 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
         while wait(0) and _G.n do
local args = {
    [1] = 3,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenArtifactCrate:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2215.46167, 226.464828, -1360.11157)
        end
    else
        _G.n= false
    end
end)
chests:CreateToggle("Auto Oppen Crate 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
         while wait(0) and _G.o do
local args = {
    [1] = "t1_wpn_crate",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenCrate:InvokeServer(unpack(args))

        end
    else
        _G.o= false
    end
end)
chests:CreateToggle("Auto Oppen Crate 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
         while wait(0) and _G.p do
local args = {
    [1] = "t1_skin_crate",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenCrate:InvokeServer(unpack(args))

        end
    else
        _G.p= false
    end
end)
chests:CreateToggle("Auto Oppen Crate 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
         while wait(0) and _G.q do
local args = {
    [1] = "t2_wpn_crate",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenCrate:InvokeServer(unpack(args))

        end
    else
        _G.q= false
    end
end)
chests:CreateToggle("Auto Oppen Crate 4", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
         while wait(0) and _G.r do
local args = {
    [1] = "t2_skin_crate",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenCrate:InvokeServer(unpack(args))

        end
    else
        _G.r= false
    end
end)
chests:CreateToggle("Auto Oppen Crate 5", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s = true 
         while wait(0) and _G.s do
local args = {
    [1] = "t1_wpn_crate",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenCrate:InvokeServer(unpack(args))

        end
    else
        _G.s = false
    end
end)
chests:CreateToggle("Auto Oppen Crate 6", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t = true 
         while wait(0) and _G.t do
local args = {
    [1] = "t3_skin_crate",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.OpenCrate:InvokeServer(unpack(args))

        end
    else
        _G.t= false
    end
end)
chests:CreateToggle("Auto Buy Crate 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o2 = true 
         while wait(0) and _G.o2 do
local args = {
    [1] = "t1_wpn_crate",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.BuyCrate:InvokeServer(unpack(args))

        end
    else
        _G.o2= false
    end
end)
chests:CreateToggle("Auto Buy Crate 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p2 = true 
         while wait(0) and _G.p2 do
local args = {
    [1] = "t1_skin_crate",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.BuyCrate:InvokeServer(unpack(args))

        end
    else
        _G.p2= false
    end
end)
chests:CreateToggle("Auto Buy Crate 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q2 = true 
         while wait(0) and _G.q2 do
local args = {
    [1] = "t2_wpn_crate",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.BuyCrate:InvokeServer(unpack(args))

        end
    else
        _G.q2= false
    end
end)
chests:CreateToggle("Auto Buy Crate 4", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r2 = true 
         while wait(0) and _G.r2 do
local args = {
    [1] = "t2_skin_crate",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.BuyCrate:InvokeServer(unpack(args))

        end
    else
        _G.r2= false
    end
end)
chests:CreateToggle("Auto Buy Crate 5", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s2 = true 
         while wait(0) and _G.s2 do
local args = {
    [1] = "t1_wpn_crate",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.BuyCrate:InvokeServer(unpack(args))

        end
    else
        _G.s2 = false
    end
end)
chests:CreateToggle("Auto Buy Crate 6", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t2 = true 
         while wait(0) and _G.t2 do
local args = {
    [1] = "t3_skin_crate",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.GameService.BuyCrate:InvokeServer(unpack(args))

        end
    else
        _G.t2= false
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

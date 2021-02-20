--https://www.roblox.com/games/5293755937/Speed-Run-Simulator
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()
local AutoTab = Library:CreateTab("Speedrun Simulator GUI","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
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
MISC:CreateButton("🛡️Inf Yiel️d", function() 
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




AutoTab:CreateToggle("Speed Hack 100", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.Speed = true 
        while wait() and _G.Speed do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        end
    else
        _G.Speed = false
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
         end
end)



AutoTab:CreateToggle("Auto Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
      for i=1,50 do
 game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()

 end
 

        end
    else
        _G.b = false
    end
end)

AutoTab:CreateToggle("Inf Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.lel3 = true 
        while wait(0) and _G.lel3 do
    game.ReplicatedStorage.Remotes:WaitForChild("AddRebirth"):FireServer("999999999999999999");

end
else
_G.lel3 = false
end
end)

AutoTab:CreateToggle("Inf Speed", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.lel2 = true 
        while wait(0) and _G.lel2 do
    game.ReplicatedStorage.Remotes:WaitForChild("AddSpeed"):FireServer("999999999999999999")

end
else
_G.lel2 = false
end
end)

AutoTab:CreateToggle("Inf Pets Eqsuiped", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.lel = true 
        while wait(0) and _G.lel do
      for i=1,50 do
game:GetService("Players").LocalPlayer.PetSlot.Value = 9e18

 end
 

        end
    else
        _G.lel = false
    end
end)

AutoTab:CreateToggle("Inf Pets Storage", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Od = true 
        while wait(0) and _G.Od do
      for i=1,50 do
game:GetService("Players").LocalPlayer.InvSpace.Value = 9e18


 end
 

        end
    else
        _G.Od = false
    end
end)
AutoTab:CreateToggle("Auto Collect Candy", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Od22 = true 
        while wait(0) and _G.Od22 do
     local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Candy' then
     v.CFrame = root.CFrame
       wait()
   
  
        end
    end
 

        end
    else
        _G.Od22 = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

eggs:CreateToggle("Eggs 0 Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
  
local args = {
    [1] = "EggOne"
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))

        end
    else
        _G.c = false
    end
end)

eggs:CreateToggle("Eggs 1 Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
          -- Script generated by SimpleSpy - credits to exxtremewa#9394


local args = {
    [1] = "EggTwo",
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
        end
    else
        _G.d = false
    end
end)

eggs:CreateToggle("Eggs 2 Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
    local args = {
    [1] = "EggThree",
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
        end
    else
        _G.e = false
    end
end)

eggs:CreateToggle("Eggs 3 Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
    local args = {
    [1] = "EggFour",
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
        end
    else
        _G.f = false
    end
end)

eggs:CreateToggle("Eggs 5 Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
    local args = {
    [1] = "EggFive",
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Eggs 7 Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
local args = {
    [1] = "EggSix",
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Eggs 11 Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
local args = {
    [1] = "EggSeven",
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
        end
    else
        _G.i = false
    end
end)

eggs:CreateToggle("Eggs 13 Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
local args = {
    [1] = "EggEight",
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
        end
    else
        _G.j = false
    end
end)

eggs:CreateToggle("Eggs 17 Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
local args = {
    [1] = "EggNine",
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
        end
    else
        _G.k = false
    end
end)

eggs:CreateToggle("Eggs 20 Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
local args = {
    [1] = "EggTen",
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
        end
    else
        _G.l = false
    end
end)

eggs:CreateToggle("Eggs 25 Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
local args = {
    [1] = "EggEleven",
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
        end
    else
        _G.m = false
    end
end)

eggs:CreateToggle("Eggs 30 Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do
local args = {
    [1] = "EggTwelve",
}

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
        end
    else
        _G.n = false
    end
end)
eggs:CreateToggle("Haloween Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n22 = true 
        while wait(0) and _G.n22 do

game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer("CandyEgg")
        end
    else
        _G.n22 = false
    end
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1382.5249, 197.269852, -562.271484)
end)

teleports:CreateButton("Zone 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2233.02441, 197.269821, -532.687927)
end)

teleports:CreateButton("Zone 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(3151.03564, 197.269821, -545.781921)
end)

teleports:CreateButton("Zone 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(4384.26318, 197.269821, -540.284729)
end)

teleports:CreateButton("Zone 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(5513.98438, 197.39119, -543.212402)
end)

teleports:CreateButton("Zone 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(6552.01904, 197.414993, -540.391968)
end)

teleports:CreateButton("Zone 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(7519.91357, 197.269821, -642.987244)
end)

teleports:CreateButton("Zone 7", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(8774.20313, 197.269836, -667.307495)
end)

teleports:CreateButton("Zone 8", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(9981.62402, 197.415009, -650.484192)
end)
teleports:CreateButton("Zone 9", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(11130.7314, 204.47435, -678.232971)
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

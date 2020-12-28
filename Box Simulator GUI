--https://www.roblox.com/games/4367831274/x50-Boxes-Box-Simulator


--https://www.roblox.com/games/4221615296/x1000-STATS-Banning-Simulator-2?refPageId=c32b1bd9-c401-44c8-b41c-4fbdf02fbf48

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Box-Simulator GUI","things", true)
local crates = Library:CreateTab("Auto buy Crates","things", true)
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



AutoTab:CreateToggle("Auto Click FAST", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.LULU = true 
        while wait(0) and _G.LULU do
game:GetService("ReplicatedStorage").ButtonClick:FireServer()
game:GetService("ReplicatedStorage").ButtonClick:FireServer()
game:GetService("ReplicatedStorage").ButtonClick:FireServer()
game:GetService("ReplicatedStorage").ButtonClick:FireServer()
game:GetService("ReplicatedStorage").ButtonClick:FireServer()
game:GetService("ReplicatedStorage").ButtonClick:FireServer()
game:GetService("ReplicatedStorage").ButtonClick:FireServer()
game:GetService("ReplicatedStorage").ButtonClick:FireServer()
game:GetService("ReplicatedStorage").ButtonClick:FireServer()
    end


    else
        _G.LULU = false
    end
end)

AutoTab:CreateToggle("Auto Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0) and _G.a do
local args = {
    [1] = game:GetService("Players")["LocalPlayer"].leaderstats.Rebirths,
}

game:GetService("ReplicatedStorage").RebirthClick:FireServer(unpack(args))
    end


    else
        _G.a = false
    end
end)

AutoTab:CreateToggle("Auto Sell", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Sell.Teleport

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-10, pbosd.Position.Y+0, pbosd.Position.Z+1)
wait(0)
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Sell.Teleport

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
    end


    else
        _G.b = false
    end
end)

crates:CreateButton("Auto Buy Not Work", function() --the (arg) is if the checkbox is toggled or not

end)
crates:CreateButton("Just Restart Game", function() --the (arg) is if the checkbox is toggled or not
 
end)
crates:CreateToggle("Auto Buy Crates 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0.5) and _G.c do
local args = {
    [1] = game:GetService("Players")["LocalPlayer"].leaderstats.Coins,
}

game:GetService("ReplicatedStorage").Boxes["CrateClick"]:FireServer(unpack(args))
    end


    else
        _G.c = false
    end
end)
crates:CreateToggle("Auto Buy Crates 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0.5) and _G.d do
local args = {
    [1] = game:GetService("Players")["LocalPlayer"].leaderstats.Coins,
}

game:GetService("ReplicatedStorage").Boxes["CrateClick2"]:FireServer(unpack(args))
    end


    else
        _G.d = false
    end
end)
crates:CreateToggle("Auto Buy Crates 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0.5) and _G.f do
local args = {
    [1] = game:GetService("Players")["LocalPlayer"].leaderstats.Coins,
}

game:GetService("ReplicatedStorage").Boxes["CrateClick3"]:FireServer(unpack(args))
    end


    else
        _G.f = false
    end
end)
crates:CreateToggle("Auto Buy Crates 4", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0.5) and _G.g do
local args = {
    [1] = game:GetService("Players")["LocalPlayer"].leaderstats.Coins,
}

game:GetService("ReplicatedStorage").Boxes["CrateClick4"]:FireServer(unpack(args))
    end


    else
        _G.g = false
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

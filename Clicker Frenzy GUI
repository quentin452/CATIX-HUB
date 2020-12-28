--https://www.roblox.com/games/5490351219/BETA-Clicker-Frenzy


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Clicker-Madness GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local rebirths = Library:CreateTab("Auto Rebirth","things", true)
local rebirths2 = Library:CreateTab("Auto Sr Rebirth","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs X1","things", true)
local eggs2 = Library:CreateTab("Auto Buy Eggs X3","things", true)
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





AutoTab:CreateButton("Disable pop ups", function() --the (arg) is if the checkbox is toggled or not
   
          game:GetService("ReplicatedStorage").Storage.PopupTemplate.Visible = false
    
end)

AutoTab:CreateToggle("Auto Jump", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
       
    else
        _G.b2= false
    end
end)
AutoTab:CreateToggle("Auto Collect Gems,Gold Gems,Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b3 = true 
        while wait(0) and _G.b3 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'HumanoidRootPart' then
     v.CFrame = root.CFrame
       wait()
   
  
        end
    end
end
       
    else
        _G.b3= false
    end
end)
AutoTab:CreateToggle("Auto Tp To Gems,Gold Gems,Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b4 = true 
        while wait(0) and _G.b4 do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").ScriptObjects.BasePickup.HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)



end
       
    else
        _G.b4= false
    end
end)
AutoTab:CreateButton("All Gamepasses certain not work", function() --the (arg) is if the checkbox is toggled or not
  
game:GetService("Players").LocalPlayer.Gamepasses.Sprint.Value = true
game:GetService("Players").LocalPlayer.Gamepasses.ExplosiveCursors.Value = true
game:GetService("Players").LocalPlayer.Gamepasses.VIP.Value = true
game:GetService("Players").LocalPlayer.Gamepasses.DoubleGems.Value = true
game:GetService("Players").LocalPlayer.Gamepasses.TripleHatch.Value = true
game:GetService("Players").LocalPlayer.Gamepasses.AutoRebirth.Value = true
game:GetService("Players").LocalPlayer.Gamepasses.Luck.Value = true
game:GetService("Players").LocalPlayer.Gamepasses.DoubleClicks.Value = true
game:GetService("Players").LocalPlayer.Gamepasses.UnlimitedPets.Value = true


end)
AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do


game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999)  

 end
    
    else
        _G.b= false
    end
end)
AutoTab:CreateToggle("Auto Buy Upgrades", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bd = true 
        while wait(0) and _G.bd do
     local args = {
    [1] = "JumpPower",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
local args = {
    [1] = "Health",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
local args = {
    [1] = "CursorDamage",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
local args = {
    [1] = "ClickMultiply",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
local args = {
    [1] = "PetStorage",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
local args = {
    [1] = "RebirthTokens",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
local args = {
    [1] = "WalkSpeed",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.UpgradeService.BuyUpgrade:FireServer(unpack(args))
        end
    else
        _G.bd= false
    end
end)
AutoTab:CreateToggle("Auto Kill Boss", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bdc = true 
        while wait(0) and _G.bdc do

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Karen Keyboard")
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Karen Keyboard")
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Karen Keyboard")
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Karen Keyboard")
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Karen Keyboard")
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Karen Keyboard")
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Karen Keyboard")
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Karen Keyboard")
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Karen Keyboard")
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Karen Keyboard")
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Karen Keyboard")
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Karen Keyboard")

        end
    else
        _G.bdc= false
    end
end)
rebirths:CreateToggle("Auto Rebirths x1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
     local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
        end
    else
        _G.c= false
    end
end)
rebirths:CreateToggle("Auto Rebirths x10", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
     local args = {
    [1] = 10,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
        end
    else
        _G.d= false
    end
end)
rebirths:CreateToggle("Auto Rebirths x100", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
     local args = {
    [1] = 100,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
        end
    else
        _G.e= false
    end
end)
rebirths:CreateToggle("Auto Rebirths x1k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
     local args = {
    [1] = 1000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
        end
    else
        _G.f= false
    end
end)
rebirths:CreateToggle("Auto Rebirths x10k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
     local args = {
    [1] = 10000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
        end
    else
        _G.g= false
    end
end)
rebirths:CreateToggle("Auto Rebirths x100k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
     local args = {
    [1] = 100000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
        end
    else
        _G.h= false
    end
end)
rebirths:CreateToggle("Auto Rebirths x1M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
     local args = {
    [1] = 1000000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
        end
    else
        _G.i= false
    end
end)
rebirths:CreateToggle("Auto Rebirths x10M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
     local args = {
    [1] = 10000000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
        end
    else
        _G.j= false
    end
end)
rebirths2:CreateToggle("Auto Sr Rebirths x1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j2 = true 
        while wait(0) and _G.j2 do
local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuySuperRebirths:FireServer(unpack(args))
        end
    else
        _G.j2= false
    end
end)
rebirths2:CreateToggle("Auto Sr Rebirths x10", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j3 = true 
        while wait(0) and _G.j3 do
local args = {
    [1] = 10,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuySuperRebirths:FireServer(unpack(args))
        end
    else
        _G.j3= false
    end
end)
rebirths2:CreateToggle("Auto Sr Rebirths x100", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j4 = true 
        while wait(0) and _G.j4 do
local args = {
    [1] = 100,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuySuperRebirths:FireServer(unpack(args))
        end
    else
        _G.j4= false
    end
end)
rebirths2:CreateToggle("Auto Sr Rebirths x1K", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j5 = true 
        while wait(0) and _G.j5 do
local args = {
    [1] = 1000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuySuperRebirths:FireServer(unpack(args))
        end
    else
        _G.j5= false
    end
end)
rebirths2:CreateToggle("Auto Sr Rebirths x10K", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j6 = true 
        while wait(0) and _G.j6 do
local args = {
    [1] = 10000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuySuperRebirths:FireServer(unpack(args))
        end
    else
        _G.j6= false
    end
end)
rebirths2:CreateToggle("Auto Sr Rebirths x100K", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j7 = true 
        while wait(0) and _G.j7 do
local args = {
    [1] = 100000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuySuperRebirths:FireServer(unpack(args))
        end
    else
        _G.j7= false
    end
end)
rebirths2:CreateToggle("Auto Sr Rebirths x1M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j8 = true 
        while wait(0) and _G.j8 do
local args = {
    [1] = 1000000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuySuperRebirths:FireServer(unpack(args))
        end
    else
        _G.j8= false
    end
end)
rebirths2:CreateToggle("Auto Sr Rebirths x10M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j9 = true 
        while wait(0) and _G.j9 do
local args = {
    [1] = 10000000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuySuperRebirths:FireServer(unpack(args))
        end
    else
        _G.j9= false
    end
end)
rebirths2:CreateToggle("Auto Sr Rebirths x100M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j10 = true 
        while wait(0) and _G.j10 do
local args = {
    [1] = 100000000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuySuperRebirths:FireServer(unpack(args))
        end
    else
        _G.j10= false
    end
end)
rebirths2:CreateToggle("Auto Sr Rebirths x1B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j11 = true 
        while wait(0) and _G.j11 do
local args = {
    [1] = 1000000000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuySuperRebirths:FireServer(unpack(args))
        end
    else
        _G.j11= false
    end
end)
rebirths2:CreateToggle("Auto Sr Rebirths x10B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j12 = true 
        while wait(0) and _G.j12 do
local args = {
    [1] = 10000000000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuySuperRebirths:FireServer(unpack(args))
        end
    else
        _G.j12= false
    end
end)
rebirths:CreateToggle("Auto Rebirths x100M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
     local args = {
    [1] = 100000000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
        end
    else
        _G.k= false
    end
end)
rebirths:CreateToggle("Auto Rebirths x1B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
     local args = {
    [1] = 1000000000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
        end
    else
        _G.l= false
    end
end)
rebirths:CreateToggle("Auto Rebirths x10B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
     local args = {
    [1] = 1000000000,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(unpack(args))
        end
    else
        _G.m= false
    end
end)
eggs:CreateToggle("Auto Buy Basic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e1 = true 
        while wait(0) and _G.e1 do
 local args = {
    [1] = "basic",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e1= false
    end
end)
eggs:CreateToggle("Auto Buy Lava Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e2 = true 
        while wait(0) and _G.e2 do
local args = {
    [1] = "lava",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e2= false
    end
end)
eggs:CreateToggle("Auto Buy Desert Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e3 = true 
        while wait(0) and _G.e3 do
local args = {
    [1] = "desert",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e3= false
    end
end)
eggs:CreateToggle("Auto Buy Ocean Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e4 = true 
        while wait(0) and _G.e4 do
local args = {
    [1] = "ocean",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e4= false
    end
end)
eggs:CreateToggle("Auto Buy Winter Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e5 = true 
        while wait(0) and _G.e5 do
local args = {
    [1] = "winter",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e5= false
    end
end)
eggs:CreateToggle("Auto Buy Toxic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e6 = true 
        while wait(0) and _G.e6 do
local args = {
    [1] = "toxic",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e6= false
    end
end)
eggs:CreateToggle("Auto Buy Candy Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e7 = true 
        while wait(0) and _G.e7 do
local args = {
    [1] = "candy",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e7= false
    end
end)
eggs:CreateToggle("Auto Buy Forest Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e8 = true 
        while wait(0) and _G.e8 do
local args = {
    [1] = "forest",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e8= false
    end
end)
eggs:CreateToggle("Auto Buy Storm Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e9 = true 
        while wait(0) and _G.e9 do
local args = {
    [1] = "storm",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e9= false
    end
end)
eggs:CreateToggle("Auto Buy Blocks Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e10 = true 
        while wait(0) and _G.e10 do
local args = {
    [1] = "blocks",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e10= false
    end
end)
eggs:CreateToggle("Auto Buy Space Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e11 = true 
        while wait(0) and _G.e11 do
local args = {
    [1] = "space",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e11= false
    end
end)
eggs:CreateToggle("Auto Buy Dominus Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e12 = true 
        while wait(0) and _G.e12 do
local args = {
    [1] = "dominus",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e12= false
    end
end)
eggs:CreateToggle("Auto Buy Infinity Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e24 = true 
        while wait(0) and _G.e24 do
local args = {
    [1] = "infinity",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e24= false
    end
end)
eggs:CreateToggle("Auto Buy Future Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e25 = true 
        while wait(0) and _G.e25 do
local args = {
    [1] = "future",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e25= false
    end
end)
eggs:CreateToggle("Auto Buy Haloween Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e25 = true 
        while wait(0) and _G.e25 do
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer("halloween")
        end
    else
        _G.e25= false
    end
end)
eggs2:CreateToggle("Auto Buy Basic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e12 = true 
        while wait(0) and _G.e12 do
 local args = {
    [1] = "basic",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e12= false
    end
end)
eggs2:CreateToggle("Auto Buy Lava Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e13 = true 
        while wait(0) and _G.e13 do
local args = {
    [1] = "lava",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e13= false
    end
end)
eggs2:CreateToggle("Auto Buy Desert Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e14 = true 
        while wait(0) and _G.e14 do
local args = {
    [1] = "desert",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e14= false
    end
end)
eggs2:CreateToggle("Auto Buy Ocean Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e15 = true 
        while wait(0) and _G.e15 do
local args = {
    [1] = "ocean",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e15= false
    end
end)
eggs2:CreateToggle("Auto Buy Winter Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e16 = true 
        while wait(0) and _G.e16 do
local args = {
    [1] = "winter",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e16= false
    end
end)
eggs2:CreateToggle("Auto Buy Toxic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e17 = true 
        while wait(0) and _G.e17 do
local args = {
    [1] = "toxic",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e17= false
    end
end)
eggs2:CreateToggle("Auto Buy Candy Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e18 = true 
        while wait(0) and _G.e18 do
local args = {
    [1] = "candy",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e18= false
    end
end)
eggs2:CreateToggle("Auto Buy Forest Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e19 = true 
        while wait(0) and _G.e19 do
local args = {
    [1] = "forest",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e19= false
    end
end)
eggs2:CreateToggle("Auto Buy Storm Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e20 = true 
        while wait(0) and _G.e20 do
local args = {
    [1] = "storm",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e20= false
    end
end)
eggs2:CreateToggle("Auto Buy Blocks Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e21 = true 
        while wait(0) and _G.e21 do

local args = {
    [1] = "blocky",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(unpack(args))
        end
    else
        _G.e21= false
    end
end)
eggs2:CreateToggle("Auto Buy Space Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e22 = true 
        while wait(0) and _G.e22 do
local args = {
    [1] = "space",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e22= false
    end
end)
eggs2:CreateToggle("Auto Buy Dominus Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e23 = true 
        while wait(0) and _G.e23 do
local args = {
    [1] = "dominus",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e23= false
    end
end)
eggs2:CreateToggle("Auto Buy Infinity Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e24 = true 
        while wait(0) and _G.e24 do
local args = {
    [1] = "infinity",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e24= false
    end
end)
eggs2:CreateToggle("Auto Buy Future Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e25 = true 
        while wait(0) and _G.e25 do
local args = {
    [1] = "future",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer(unpack(args))
        end
    else
        _G.e25= false
    end
end)
eggs2:CreateToggle("Auto Buy Haloween Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e25 = true 
        while wait(0) and _G.e25 do
game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer("halloween")
        end
    else
        _G.e25= false
    end
end)
eggs2:CreateToggle("Auto Buy City Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e25 = true 
        while wait(0) and _G.e25 do

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer("city")
        end
    else
        _G.e25= false
    end
end)
eggs:CreateToggle("Auto Buy City Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e25 = true 
        while wait(0) and _G.e25 do

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer("city")
        end
    else
        _G.e25= false
    end
end)
eggs:CreateToggle("Auto Buy Moon Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e25 = true 
        while wait(0) and _G.e25 do

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer("moon")
        end
    else
        _G.e25= false
    end
end)
eggs2:CreateToggle("Auto Buy Moon Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e25 = true 
        while wait(0) and _G.e25 do

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.PurchaseTriple:FireServer("moon")
        end
    else
        _G.e25= false
    end
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(620.58606, 8.32451057, -332.265503)
end)

teleports:CreateButton("Lava", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1690.38525, 5.8908062, -734.648865)
end)

teleports:CreateButton("Desert", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2270.08838, 5.87775421, 1089.28369)
end)
teleports:CreateButton("Ocean", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-256.202271, 8.64087296, 2112.47168)
end)
teleports:CreateButton("Winter", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2258.11475, 5.68095112, 417.679688)
end)
teleports:CreateButton("Toxic", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1761.69824, 6.88934517, -1974.85535)
end)
teleports:CreateButton("Candy", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1343.92896, 5.56475258, -2245.98535)
end)
teleports:CreateButton("Forest", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1779.8855, 8.59431648, 3235.16626)
end)
teleports:CreateButton("Storm", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-354.06073, 6.24753475, -2728.17334)
end)
teleports:CreateButton("Blocks", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2926.38696, 7.93753624, -793.677612)
end)
teleports:CreateButton("Space", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2448.99121, 5.32753468, 2872.22144)
end)
teleports:CreateButton("Dominus", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1023.47998, 6.72286177, 2254.02856)
end)
teleports:CreateButton("Infinity", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2274.23096, 7.05264902, -1765.9126)
end)
teleports:CreateButton("Future", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1055.64624, 6.59449387, 519.587219)
end)
teleports:CreateButton("Moon", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1055.64624, 6.59449387, 519.587219)
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

--https://www.roblox.com/games/3135436676/Legend-Hunt
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Combo Clickers GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local Kill = Library:CreateTab("Auto Kill Mobs","things", true)
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

AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.LULU = true 
        while wait(0) and _G.LULU do
            local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
end

    else
        _G.LULU = false
    end
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

AutoTab:CreateToggle("Auto Rebirth", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
         local Event = game:GetService("ReplicatedStorage").Events.rebirth
Event:InvokeServer()
   
        end
    else
        _G.b = false
    end
end)

eggs:CreateToggle("Auto Buy Common Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
            local A_1 = "Open"
            local A_2 = "Common"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.c = false
    end
end)

eggs:CreateToggle("Auto Buy Uncommon Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
            local A_1 = "Open"
            local A_2 = "Uncommon"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.d = false
    end
end)

eggs:CreateToggle("Auto Buy Royal Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
            local A_1 = "Open"
            local A_2 = "Royal"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.e = false
    end
end)

eggs:CreateToggle("Auto Buy Angelic Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
            local A_1 = "Open"
            local A_2 = "Angelic"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.f = false
    end
end)

eggs:CreateToggle("Auto Buy Demonic Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
            local A_1 = "Open"
            local A_2 = "Demonic"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Auto Buy Exotic Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
            local A_1 = "Open"
            local A_2 = "exotic"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Auto Buy Emathyest Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
            local A_1 = "Open"
            local A_2 = "Emathyest"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.i = false
    end
end)

Kill:CreateButton("USE PLS 🎬NO CLIP Press(E)🎬", function() --the (arg) is if the checkbox is toggled or not
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

Kill:CreateToggle("Auto Kill Bandit", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Bandit = true 
        while wait(0) and _G.Bandit do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"].Bandit.NPCFolder.Bandit.HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Bandit = false
    end
end)
Kill:CreateToggle("Auto Kill Bandit Girl", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.BanditGirl = true 
        while wait(0) and _G.BanditGirl do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Bandi-girl"].NPCFolder["Bandi-girl"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.BanditGirl = false
    end
end)
Kill:CreateToggle("Auto Kill Boss Bandit", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Banditb = true 
        while wait(0) and _G.Banditb do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Bandit Boss"].NPCFolder["Boss Bandit"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Banditb = false
    end
end)
Kill:CreateToggle("Auto Kill Mean Orc", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Mean = true 
        while wait(0) and _G.Mean do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Mean Orc"].NPCFolder["Mean Orc"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Mean = false
    end
end)
Kill:CreateToggle("Auto Kill Boss Ogre", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Ogr = true 
        while wait(0) and _G.Ogr do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Boss Ogre"].NPCFolder["Boss Ogre"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Ogr = false
    end
end)
Kill:CreateToggle("Auto Kill Evil Ninja", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Ogr1 = true 
        while wait(0) and _G.Ogr1 do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Evil Ninja"].NPCFolder["Evil Ninja"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Ogr1 = false
    end
end)
Kill:CreateToggle("Auto Kill Flame Ninja", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Ogr2 = true 
        while wait(0) and _G.Ogr2 do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Flame Ninja"].NPCFolder["Flame Ninja"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Ogr2 = false
    end
end)
Kill:CreateToggle("Auto Kill Ice Beast", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Ice = true 
        while wait(0) and _G.Ice do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Ice Beast"].NPCFolder["Ice Beast"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Ice = false
    end
end)
Kill:CreateToggle("Auto Kill Ice Golem", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Ice2 = true 
        while wait(0) and _G.Ice2 do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Ice Golem"].NPCFolder["Ice Golem"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Ice2 = false
    end
end)
Kill:CreateToggle("Auto Kill Lava Goblin", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Lava = true 
        while wait(0) and _G.Lava do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Lava Goblin"].NPCFolder["Lava Goblin"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Lava = false
    end
end)
Kill:CreateToggle("Auto Kill Speed Lava Goblin", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Lava2 = true 
        while wait(0) and _G.Lava2 do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Speed Lava Goblin"].NPCFolder["Speed Lava Goblin"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Lava2 = false
    end
end)
Kill:CreateToggle("Auto Kill Lava Boss", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Lava22 = true 
        while wait(0) and _G.Lava22 do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Lava Boss"].NPCFolder["Lava Boss"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Lava22 = false
    end
end)
Kill:CreateToggle("Auto Kill Doge", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Doge = true 
        while wait(0) and _G.Doge do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"].Doge.NPCFolder.Doge.HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Doge = false
    end
end)
Kill:CreateToggle("Auto Kill Baby Bighead", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Baby = true 
        while wait(0) and _G.Baby do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Baby Bighead"].NPCFolder["Baby Bighead"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-5, pbosd.Position.Z+0)

        end
    else
        _G.Baby = false
    end
end)
Kill:CreateToggle("Auto Kill Boss Bighead", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Boss = true 
        while wait(0) and _G.Boss do
          local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["_NPCs"]["Boss Bighead"].NPCFolder["Boss Bighead"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-7, pbosd.Position.Z+0)

        end
    else
        _G.Boss = false
    end
end)
AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-269.874481, 3.09750366, -77.7202377)
end)

teleports:CreateButton("Zone 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-417.210754, 3.00753164, -213.892853)
end)

teleports:CreateButton("Zone 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-411.76297, 3.00753164, -366.507477)
end)

teleports:CreateButton("Zone 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-394.080505, 3.08753157, 161.521072)
end)

teleports:CreateButton("Zone 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-665.92804, 3.08753157, -79.182373)
end)

teleports:CreateButton("Zone 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-856.589539, 3.08753157, -79.7124634)
end)

teleports:CreateButton("Zone 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1047.54639, 3.18262768, -82.7457809)
end)

teleports:CreateButton("Sell", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-288.937866, 3.0974977, -103.371521)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

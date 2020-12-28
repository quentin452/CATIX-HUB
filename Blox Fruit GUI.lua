--https://www.roblox.com/games/2753915549/UPDATE-11-Blox-Fruits#
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Blox-Fruits GUI","things", true)
local Kill1 = Library:CreateTab("Auto Tp To Mobs 1","things", true)
local Kill2 = Library:CreateTab("Auto Tp To Mobs 2","things", true)
local Kill3 = Library:CreateTab("Auto Tp To Mobs 3","things", true)
local quest = Library:CreateTab("Auto Quests 1","things", true)
local quest2 = Library:CreateTab("Auto Quests 2","things", true)
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




AutoTab:CreateButton("Use Auto Click", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(n)
end)
AutoTab:CreateToggle("🧰TP to Chest🧰", function(arg)
if arg then
_G.cc = true
 while wait(0) and _G.cc do
local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
for i , v in pairs (workspace:GetDescendants()) do
  local obj = v
  if string.find(obj.Name, "Chest") then
      hrp.CFrame = obj.CFrame + Vector3.new(0,4,0)
      wait(0.5)
  end
end


end
else
_G.cc = false
end
end)

AutoTab:CreateToggle("Add Melee Points 📈", function(arg)
if arg then
_G.b = true
 while wait() and _G.b do
local args = {
    [1] = "AddPoint",
    [2] = "Melee",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end
else
_G.b = false
end
end)
AutoTab:CreateToggle("Add Defense Points 📈", function(arg)
if arg then
_G.c = true
 while wait() and _G.c do

local args = {
    [1] = "AddPoint",
    [2] = "Defense",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end
else
_G.c = false
end
end)
AutoTab:CreateToggle("Add Sword Points 📈", function(arg)
if arg then
_G.d= true
 while wait() and _G.d do

local args = {
    [1] = "AddPoint",
    [2] = "Sword",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end
else
_G.d = false
end
end)

AutoTab:CreateToggle("Add Blox Fruits Points 📈", function(arg)
if arg then
_G.f = true
 while wait() and _G.f do
local args = {
    [1] = "AddPoint",
    [2] = "Demon Fruit",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end
else
_G.f = false
end
end)
AutoTab:CreateButton("🤔IDK WORK🤔", function()--you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(m)
end)
AutoTab:CreateButton("🍇Tp To Demon Fruit🍇", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1027.58875, 19.3245106, 1367.28564, -0.987686276, 0, -0.156449571, 0, 1, 0, 0.156449571, 0, -0.987686276)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-582.941345, 6.70024586, 1713.93726, 0.965929627, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, 0.965929627)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1094.14587, 5.28642607, 4192.88721, -0.499959469, 0, -0.866048813, 0, 1, 0, 0.866048813, 0, -0.499959469)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(3905.573, 12.0511103, -1941.39319, -0.731321454, 0, 0.682033002, 0, 1, 0, -0.682033002, 0, -0.731321454)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1120.14856, 4.60001373, 3855.31763, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1255.14795, 11.7000084, 349.906677, -0.173624277, 0, 0.984811902, 0, 1, 0, -0.984811902, 0, -0.173624277)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-4967.83691, 718.535278, -2623.84326, 0.499959469, -0, -0.866048813, 0, 1, -0, 0.866048813, 0, 0.499959469)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-7946.89844, 5546.35449, -318.856445, 0.998631775, -0, -0.0522932447, 0, 1, -0, 0.0522932447, 0, 0.998631775)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-5193.35498, 5.43863821, 8569.56348, 0.951068401, 0, 0.308980465, 0, 1, 0, -0.308980465, 0, 0.951068401)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268, -0.954083323, -1.9546686e-08, 0.299541265, -6.63746391e-09, 1, 4.41140955e-08, -0.299541265, 4.01003284e-08, -0.954083323)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1332.94006, 6.35386896, -2896.56055, -0.66911006, 0, 0.743163466, 0, 1, 0, -0.743163466, 0, -0.66911006)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-4828.9751, 20.6520367, 4374.35791, -0.921316385, 5.66178571e-09, 0.388813794, -1.90244229e-08, 1, -5.96411383e-08, -0.388813794, -6.23453147e-08, -0.921316385)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(5136.59277, 3.53421545, 785.520813, 0.392495215, 1.79353155e-08, -0.919754028, 5.72389602e-09, 1, 2.19427321e-08, 0.919754028, -1.38769947e-08, 0.392495215)
wait()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2573.3374, 6.88881826, 2046.99817, 0.0315897427, -3.02629779e-08, 0.99950093, -1.61048472e-08, 1, 3.0787092e-08, -0.99950093, -1.70693664e-08, 0.0315897427)
for _,v in pairs (game:GetService("Workspace"):GetChildren()) do
if v.Name:match('Fruit') and not v:IsA('Folder') and (v:IsA("Model") or v:IsA("Part")) then
local stri = game:GetService("Players").LocalPlayer.Name
        game:GetService("Workspace").Characters[stri].HumanoidRootPart.CFrame = v.Handle.CFrame
    end
end
end)
Kill1:CreateToggle("Hit Box Extender 100", function(arg)
if arg then
_G.bo = true
 while wait() and _G.bo do
 
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
    v.HumanoidRootPart.Transparency = 0.5
end
end
else
_G.bo = false
end
end)
Kill2:CreateToggle("Hit Box Extender 100", function(arg)
if arg then
_G.bo2 = true
 while wait() and _G.bo2 do
 
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
    v.HumanoidRootPart.Transparency = 0.5
end
end
else
_G.bo2 = false
end
end)
Kill3:CreateToggle("Hit Box Extender 100", function(arg)
if arg then
_G.bo3 = true
 while wait() and _G.bo3 do
 
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
    v.HumanoidRootPart.Size = Vector3.new(35, 35, 35)
    v.HumanoidRootPart.Transparency = 0.5
end
end
else
_G.bo3 = false
end
end)
Kill1:CreateToggle("Kill Military Soldier [Lv. 300]", function(arg)
if arg then
_G.bossc22 = true
 while wait() and _G.bossc22 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Military Soldier [Lv. 300]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc22 = false
end
end)
Kill1:CreateButton("Magma Village", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-5237.16943, 8.62531281, 8472.05957)
end)
Kill1:CreateToggle("Kill Military Soldier [Lv. 300]", function(arg)
if arg then
_G.bossc22 = true
 while wait() and _G.bossc22 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Military Soldier [Lv. 300]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc22 = false
end
end)
Kill1:CreateToggle("Kill Military Spy [Lv. 330]", function(arg)
if arg then
_G.bossc23 = true
 while wait() and _G.bossc23 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Military Spy [Lv. 330]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc23 = false
end
end)
Kill1:CreateToggle("Kill Magma Admiral [Lv. 350] ", function(arg)
if arg then
_G.bossc24 = true
 while wait() and _G.bossc24 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Magma Admiral [Lv. 350] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc24 = false
end
end)

Kill1:CreateButton("Prison", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(4852.48779, 5.68654585, 719.716919)
end)
Kill1:CreateToggle("Kill Chief Warden [Lv. 200]", function(arg)
if arg then
_G.bossc25 = true
 while wait() and _G.bossc25 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Chief Warden [Lv. 200] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc25 = false
end
end)
Kill1:CreateToggle("Kill Warden[Lv. 175]", function(arg)
if arg then
_G.bossc26 = true
 while wait() and _G.bossc26 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Warden [Lv. 175] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc26 = false
end
end)
Kill1:CreateToggle("Kill Swan [Lv. 250]", function(arg)
if arg then
_G.bossc27 = true
 while wait() and _G.bossc27 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Swan [Lv. 250] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc27 = false
end
end)
Kill1:CreateButton("Windmill", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(974.048828, 16.3085976, 1411.89954)
end)
Kill1:CreateToggle("Kill Bandit [Lv. 5]", function(arg)
if arg then
_G.bossc28 = true
 while wait() and _G.bossc28 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Bandit [Lv. 5]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+10, pbosd.Position.Z+15)
end
else
_G.bossc28 = false
end
end)
Kill1:CreateButton("Sea", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2614.55322, 6.92385769, 2040.5354)
end)
Kill1:CreateToggle("Kill Trainee [Lv. 5]", function(arg)
if arg then
_G.bossc29 = true
 while wait() and _G.bossc29 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Trainee [Lv. 5]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc29 = false
end
end)
Kill1:CreateButton("Jungle", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1337.63599, 11.8878908, 496.964142)
end)
Kill1:CreateToggle("Kill Monkey [Lv. 14]", function(arg)
if arg then
_G.bossc30 = true
 while wait() and _G.bossc30 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Monkey [Lv. 14]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc30 = false
end
end)

Kill1:CreateToggle("Kill Gorrilas [Lv. 20]", function(arg)
if arg then
_G.bossc32 = true
 while wait() and _G.bossc32 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Gorilla [Lv. 20]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc32 = false
end
end)
Kill1:CreateToggle("Kill Gorrila King [Lv. 25]", function(arg)
if arg then
_G.bossc31 = true
 while wait() and _G.bossc31 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["The Gorilla King [Lv. 25] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc31 = false
end
end)
Kill1:CreateButton("Frozen Village", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1106.32483, 7.33856344, -1170.64136)
end)
Kill1:CreateToggle("Kill Snow Bandit [Lv. 90]", function(arg)
if arg then
_G.bossc32 = true
 while wait() and _G.bossc32 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Snow Bandit [Lv. 90]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc32 = false
end
end)
Kill1:CreateToggle("Kill Snowman [Lv. 100]", function(arg)
if arg then
_G.bossc33 = true
 while wait() and _G.bossc33 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Snowman [Lv. 100]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc33 = false
end
end)
Kill1:CreateToggle("Kill Ice Admiral [Lv. 700]", function(arg)
if arg then
_G.bossc34 = true
 while wait() and _G.bossc34 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Ice Admiral [Lv. 700] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc34 = false
end
end)
Kill1:CreateToggle("Kill Gorrila Yeti [Lv. 110]", function(arg)
if arg then
_G.bossc35 = true
 while wait() and _G.bossc35 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Yeti [Lv. 110] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc35 = false
end
end)
Kill2:CreateButton("Skylands", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-4920.31201, 717.706238, -2638.7002)
end)
Kill2:CreateToggle("Kill Dark Master [Lv. 175]", function(arg)
if arg then
_G.bossc36 = true
 while wait() and _G.bossc36 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Dark Master [Lv. 175]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc36 = false
end
end)
Kill2:CreateToggle("Kill Sky Bandit [Lv. 150]", function(arg)
if arg then
_G.bossc37 = true
 while wait() and _G.bossc37 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Sky Bandit [Lv. 150]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc37 = false
end
end)
Kill2:CreateToggle("Kill Thunder God [Lv. 575]", function(arg)
if arg then
_G.bossc38 = true
 while wait() and _G.bossc38 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Thunder God [Lv. 575] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc38 = false
end
end)
Kill2:CreateButton("Skylands Zone 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-7909.51807, 5648.7832, -1361.01123)
end)
Kill2:CreateToggle("Kill Royal Squad [Lv. 525]", function(arg)
if arg then
_G.bossc39 = true
 while wait() and _G.bossc39 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Royal Squad [Lv. 525]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc39 = false
end
end)

Kill2:CreateToggle("Kill Royal Soldier [Lv. 550]", function(arg)
if arg then
_G.bossc40 = true
 while wait() and _G.bossc40 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Royal Soldier [Lv. 550]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc40 = false
end
end)
Kill2:CreateToggle("Kill Thunder God [Lv. 450]", function(arg)
if arg then
_G.bossc41 = true
 while wait() and _G.bossc41 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Thunder God [Lv. 450]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc41 = false
end
end)
Kill2:CreateButton("Fontain", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(5191.5542, 38.5011406, 4146.34082)
end)
Kill2:CreateToggle("Kill Galley Pirate [Lv. 625]", function(arg)
if arg then
_G.bossc42 = true
 while wait() and _G.bossc42 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Galley Pirate [Lv. 625]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc42 = false
end
end)
Kill2:CreateToggle("Kill Cyborg [Lv. 675]", function(arg)
if arg then
_G.bossc43 = true
 while wait() and _G.bossc43 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Cyborg [Lv. 675] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc43 = false
end
end)
Kill2:CreateToggle("Kill Galley Captain [Lv. 650]", function(arg)
if arg then
_G.bossc44 = true
 while wait() and _G.bossc44 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Galley Captain [Lv. 650]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc44 = false
end
end)
Kill2:CreateButton("Pirate Village", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1188.1532, 4.75155973, 3815.63574)
end)
Kill2:CreateToggle("Kill Pirate [Lv. 35]", function(arg)
if arg then
_G.bossc46 = true
 while wait() and _G.bossc46 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Pirate [Lv. 35]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc46 = false
end
end)
Kill2:CreateToggle("Kill Galley Brute [Lv. 45]", function(arg)
if arg then
_G.bossc45 = true
 while wait() and _G.bossc45 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Brute [Lv. 45]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc45 = false
end
end)
Kill2:CreateToggle("Kill Bobby [Lv. 55]", function(arg)
if arg then
_G.bossc47 = true
 while wait() and _G.bossc47 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Bobby [Lv. 55] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc47 = false
end
end)
Kill2:CreateButton("MobBoss", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2912.36865, 52.3454781, 5415.4126)
end)
Kill2:CreateToggle("Kill Mob Leader [Lv. 120]", function(arg)
if arg then
_G.bossc48 = true
 while wait() and _G.bossc48 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Mob Leader [Lv. 120] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc48 = false
end
end)
Kill3:CreateButton("Marine Fortress", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-4926.86475, 41.2520409, 4426.45166)
end)
Kill3:CreateToggle("Kill Chief Petty Officer [Lv. 120]", function(arg)
if arg then
_G.bossc49 = true
 while wait() and _G.bossc49 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Chief Petty Officer [Lv. 120]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc49 = false
end
end)
Kill3:CreateToggle("Kill Vice Admiral [Lv. 130]", function(arg)
if arg then
_G.bossc50 = true
 while wait() and _G.bossc50 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Vice Admiral [Lv. 130] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc50 = false
end
end)
Kill3:CreateButton("UnderWater City", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(61881.8359, 18.4716396, 1449.68555)
end)
Kill3:CreateToggle("Kill Fishman Lord [Lv. 425]", function(arg)
if arg then
_G.bossc51 = true
 while wait() and _G.bossc51 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Fishman Lord [Lv. 425] [Boss]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc51 = false
end
end)
Kill3:CreateToggle("Kill Fishman Warrior [Lv. 375]", function(arg)
if arg then
_G.bossc52 = true
 while wait() and _G.bossc52 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Fishman Warrior [Lv. 375]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc52 = false
end
end)
Kill3:CreateToggle("Kill Fishman Commando [Lv. 400]", function(arg)
if arg then
_G.bossc53 = true
 while wait() and _G.bossc53 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Fishman Commando [Lv. 400]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc53 = false
end
end)
Kill3:CreateButton("Desert City", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(911.504333, 3.37921715, 4112.37207)
end)
Kill3:CreateToggle("Kill Desert Officer [Lv. 70]", function(arg)
if arg then
_G.bossc54 = true
 while wait() and _G.bossc54 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Desert Officer [Lv. 70]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc54 = false
end
end)
Kill3:CreateToggle("Kill Desert Bandit [Lv. 60]", function(arg)
if arg then
_G.bossc55 = true
 while wait() and _G.bossc55 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Desert Bandit [Lv. 60]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc55 = false
end
end)
Kill3:CreateButton("Colosseum", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1392.67188, 7.2893939, -2838.57471)
end)
Kill3:CreateToggle("Kill Gladiator [Lv. 275]", function(arg)
if arg then
_G.bossc56 = true
 while wait() and _G.bossc56 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Gladiator [Lv. 275]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc56 = false
end
end)
Kill3:CreateToggle("Kill Toga Warrior [Lv. 225]", function(arg)
if arg then
_G.bossc57 = true
 while wait() and _G.bossc57 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Toga Warrior [Lv. 225]"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y-15, pbosd.Position.Z+1)
end
else
_G.bossc57 = false
end
end)
quest:CreateButton(" Warden Quests", function()
local args = {
    [1] = "StartQuest",
    [2] = "ImpelQuest",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))
end)
quest:CreateButton(" Chief Warden Quests", function()
local args = {
    [1] = "StartQuest",
    [2] = "ImpelQuest",
    [3] = 2,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))
end)
quest:CreateButton(" Swan Quests", function()


local args = {
    [1] = "StartQuest",
    [2] = "ImpelQuest",
    [3] = 3,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Military Soldier Quests", function()

 

local args = {
    [1] = "StartQuest",
    [2] = "MagmaQuest",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Military Spy Quests", function()

 

local args = {
    [1] = "StartQuest",
    [2] = "MagmaQuest",
    [3] = 2,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))


end)
quest:CreateButton(" Magma Admiral Quests", function()


local args = {
    [1] = "StartQuest",
    [2] = "MagmaQuest",
    [3] = 3,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Trainee Quests", function()

 


local args = {
    [1] = "StartQuest",
    [2] = "MarineQuest",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Bandit Quests", function()

 


local args = {
    [1] = "StartQuest",
    [2] = "BanditQuest1",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Monkeys Quests", function()

 

local args = {
    [1] = "StartQuest",
    [2] = "JungleQuest",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))
end)
quest:CreateButton(" Gorrilas Quests", function()

 



local args = {
    [1] = "StartQuest",
    [2] = "JungleQuest",
    [3] = 2,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Gorrila King Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "JungleQuest",
    [3] = 3,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Snow Bandit Quests", function()

 


local args = {
    [1] = "StartQuest",
    [2] = "SnowQuest",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Snowman Quests", function()



local args = {
    [1] = "StartQuest",
    [2] = "SnowQuest",
    [3] = 2,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Yeti Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "SnowQuest",
    [3] = 3,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Sky Bandit Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "SkyQuest",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Dark Master Quests", function()



local args = {
    [1] = "StartQuest",
    [2] = "SkyQuest",
    [3] = 2,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Royal Squad Quests", function()





local args = {
    [1] = "StartQuest",
    [2] = "SkyExp2Quest",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Royal Soldier Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "SkyExp2Quest",
    [3] = 2,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest:CreateButton(" Thunder God Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "SkyExp2Quest",
    [3] = 3,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Galley Pirate Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "FountainQuest",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Galley Captain Quests", function()

 



local args = {
    [1] = "StartQuest",
    [2] = "FountainQuest",
    [3] = 2,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Cyborg Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "FountainQuest",
    [3] = 3,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Pirates Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "BuggyQuest1",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Brutes Quests", function()

 



local args = {
    [1] = "StartQuest",
    [2] = "BuggyQuest1",
    [3] = 2,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Bobby Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "BuggyQuest1",
    [3] = 3,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Chief Petty Officer Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "MarineQuest2",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Vice Admiral Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "MarineQuest2",
    [3] = 2,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Fishman Warrior Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "FishmanQuest",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Fishman Commando Quests", function()



local args = {
    [1] = "StartQuest",
    [2] = "FishmanQuest",
    [3] = 2,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Fishman Lord Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "FishmanQuest",
    [3] = 3,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Desert Bandit Quests", function()




local args = {
    [1] = "StartQuest",
    [2] = "DesertQuest",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))

end)
quest2:CreateButton(" Desert Officer Quest", function()
local args = {
    [1] = "StartQuest",
    [2] = "DesertQuest",
    [3] = 2,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))
end)
quest2:CreateButton(" Toga Warrior Quest", function()
local args = {
    [1] = "StartQuest",
    [2] = "ColosseumQuest",
    [3] = 1,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))
end)
quest2:CreateButton(" Gladiator Quest", function()
local args = {
    [1] = "StartQuest",
    [2] = "ColosseumQuest",
    [3] = 2,
}

game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer(unpack(args))
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

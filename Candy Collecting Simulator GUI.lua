--https://www.roblox.com/games/3963432370/Candy-Collecting-Simulator




local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Candy Collecting GUI","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local chest = Library:CreateTab("Auto Buy Chests","things", true)
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




AutoTab:CreateButton( "Inf Coin multiplier", function() --the (arg) is if the checkbox is toggled or not

      game.Players.LocalPlayer.CollectMulti.Value = 9999999999999


end)

AutoTab:CreateButton("Inf Range", function() --the (arg) is if the checkbox is toggled or not
   
      game.Players.LocalPlayer.Range.Value = 1000000

 
end)
AutoTab:CreateToggle("Auto Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.reb = true 
        while wait(0) and _G.reb do
       local args = {
    [1] = "Rebirth",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.reb = false
    end
end)
AutoTab:CreateButton("IDK Why But Before", function() --the (arg) is if the checkbox is toggled or not
 
end)
AutoTab:CreateButton("I can Use Auto Buy Eggs", function() --the (arg) is if the checkbox is toggled or not

end)
AutoTab:CreateButton("Without Kick", function() --the (arg) is if the checkbox is toggled or not

end)
eggs:CreateToggle("Auto Buy Clown Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e1 = true 
        while wait(0) and _G.e1 do

         local args = {
    [1] = "OpenEgg",
    [2] = "ClownEgg",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.e1 = false
    end
end)

eggs:CreateToggle("Auto Buy Circus Animals Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e2 = true 
        while wait(0) and _G.e2 do

         local args = {
    [1] = "OpenEgg",
    [2] = "CircusAnimals",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.e2 = false
    end
end)
eggs:CreateToggle("Auto Buy Angels Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e3 = true 
        while wait(0) and _G.e3 do

         local args = {
    [1] = "OpenEgg",
    [2] = "AngelEgg",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.e3 = false
    end
end)
eggs:CreateToggle("Auto Buy Lion Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e4 = true 
        while wait(0) and _G.e4 do

         local args = {
    [1] = "OpenEgg",
    [2] = "LionEgg",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.e4 = false
    end
end)
eggs:CreateToggle("Auto Buy Cracked Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e5 = true 
        while wait(0) and _G.e5 do

         local args = {
    [1] = "OpenEgg",
    [2] = "CrackedEgg",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.e5 = false
    end
end)
eggs:CreateToggle("Auto Buy Eye Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e6 = true 
        while wait(0) and _G.e6 do
      local args = {
    [1] = "OpenEgg",
    [2] = "Eye",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))

        end
    else
        _G.e6 = false
    end
end)
eggs:CreateToggle("Auto Buy Lava Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e7 = true 
        while wait(0) and _G.e7 do

local args = {
    [1] = "OpenEgg",
    [2] = "Lava",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.e7 = false
    end
end)
eggs:CreateToggle("Auto Buy Devil Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.De = true 
        while wait(0) and _G.De do

local args = {
    [1] = "OpenEgg",
    [2] = "Devil",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))


        end
    else
        _G.De = false
    end
end)
eggs:CreateToggle("Auto Buy Pumpkin Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Pum = true 
        while wait(0) and _G.Pum do

local args = {
    [1] = "OpenEgg",
    [2] = "Pumpkin",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))

        end
    else
        _G.Pum = false
    end
end)
eggs:CreateToggle("Auto Buy Angry Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.An = true 
        while wait(0) and _G.An do
local args = {
    [1] = "OpenEgg",
    [2] = "Angry",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))


        end
    else
        _G.An = false
    end
end)
eggs:CreateToggle("Auto Buy Moon Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Mo = true 
        while wait(0) and _G.Mo do
local args = {
    [1] = "OpenEgg",
    [2] = "Moon",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))


        end
    else
        _G.Mo = false
    end
end)
eggs:CreateToggle("Auto Buy Basic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.ba = true 
        while wait(0) and _G.ba do
local args = {
    [1] = "OpenEgg",
    [2] = "Basic",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))


        end
    else
        _G.ba = false
    end
end)
chest:CreateToggle("Auto Shiny Costumes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.ShinyA = true 
        while wait(1) and _G.ShinyA do
local args = {
    [1] = "MakeShinyCostume",
    [2] = "PaulBlartTheCircusCop",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Conductor",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "SmileyTheClown",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CircusK9",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "NickBass",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CircusTender",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CircusOwner",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Owner'sSon",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CircusElephant",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Mr.Fox",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Skeleton",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Zombie",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Anubis",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "TRex",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CaptainSquid",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Frankenstein",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "PumpkinReaper",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CircuitBreaker",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Overlord",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Knight",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "SpaceMan",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "FredTheZombie",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "MagmaFiend",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Thickhoof",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Mr.Robot",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "DrFiaTyfoid",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Snowman",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "LagoonLieutenant",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "BeeSoldier",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "DragonflyStriker",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Croczilla",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "FredTheZombie",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Agrynoth",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Mushiro",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Werewolf",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Gargoyle",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CratusTheWarlord",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CloudWarrior",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CloudProtector",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Thrasher",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "MechWasp",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "TechnoWizard",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "TripleHeadedTrouble",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Wyldfire",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "SunSlayer",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Birdcaller",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Icicle",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Equinox",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Starmist",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Erisyphia",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Guardian",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "AxeAngel",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "DJDataBaze",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.ShinyA = false
    end
end)
chest:CreateToggle("Auto Rainbow Costumes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.RainbowA = true 
        while wait(1) and _G.RainbowA do
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "PaulBlartTheCircusCop",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Conductor",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "SmileyTheClown",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CircusK9",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "NickBass",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CircusTender",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CircusOwner",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Owner'sSon",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CircusElephant",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Mr.Fox",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Skeleton",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Zombie",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Anubis",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "TRex",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CaptainSquid",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Frankenstein",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "PumpkinReaper",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CircuitBreaker",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Overlord",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Knight",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "SpaceMan",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "FredTheZombie",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "MagmaFiend",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Thickhoof",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Mr.Robot",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "DrFiaTyfoid",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Snowman",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "LagoonLieutenant",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "BeeSoldier",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "DragonflyStriker",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Croczilla",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "FredTheZombie",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Agrynoth",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Mushiro",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Werewolf",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Gargoyle",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CratusTheWarlord",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CloudWarrior",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CloudProtector",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Thrasher",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "MechWasp",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "TechnoWizard",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "TripleHeadedTrouble",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Wyldfire",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "SunSlayer",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Birdcaller",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Icicle",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Equinox",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Starmist",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Erisyphia",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Guardian",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "AxeAngel",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "DJDataBaze",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.RainbowA = false
    end
end)
chest:CreateToggle("Auto Buy Green Circus Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c1 = true 
        while wait(0) and _G.c1 do
local args = {
    [1] = "OpenCostume",
    [2] = "GreenChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))


        end
    else
        _G.c1 = false
    end
end)
chest:CreateToggle("Auto Buy Pink Circus Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c2 = true 
        while wait(0) and _G.c2 do

local args = {
    [1] = "OpenCostume",
    [2] = "PinkChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c2 = false
    end
end)
chest:CreateToggle("Auto Buy Epic Angel Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c3 = true 
        while wait(0) and _G.c3 do

local args = {
    [1] = "OpenCostume",
    [2] = "EpicAngelChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c3 = false
    end
end)
chest:CreateToggle("Auto Buy Gold Angel Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c4 = true 
        while wait(0) and _G.c4 do

local args = {
    [1] = "OpenCostume",
    [2] = "GoldAngelChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c4 = false
    end
end)
chest:CreateToggle("Auto Buy Angel Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c5 = true 
        while wait(0) and _G.c5 do

local args = {
    [1] = "OpenCostume",
    [2] = "AngelChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c5 = false
    end
end)
chest:CreateToggle("Auto Buy Green Lava Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c6 = true 
        while wait(0) and _G.c6 do

local args = {
    [1] = "OpenCostume",
    [2] = "GreenLavaChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c6 = false
    end
end)
chest:CreateToggle("Auto Buy Blue Lava Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c7 = true 
        while wait(0) and _G.c7 do

local args = {
    [1] = "OpenCostume",
    [2] = "BlueLavaChest",
}


game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c7 = false
    end
end)
chest:CreateToggle("Auto Buy Lava Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c8 = true 
        while wait(0) and _G.c8 do

local args = {
    [1] = "OpenCostume",
    [2] = "LavaChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c8 = false
    end
end)
chest:CreateToggle("Auto Buy Basic Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c9 = true 
        while wait(0) and _G.c9 do

local args = {
    [1] = "OpenCostume",
    [2] = "BasicChest",
}


game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c9 = false
    end
end)
chest:CreateToggle("Auto Buy Gold Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c10 = true 
        while wait(0) and _G.c10 do

local args = {
    [1] = "OpenCostume",
    [2] = "GoldChest",
}


game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c10 = false
    end
end)
chest:CreateToggle("Auto Buy Black Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c11 = true 
        while wait(0) and _G.c11 do

local args = {
    [1] = "OpenCostume",
    [2] = "BlackChest",
}


game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c11 = false
    end
end)
AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-152.445496, 12.130024, -47.4170074)
end)

teleports:CreateButton("Lava Zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2277.12622, 36.8300209, 310.421234)
end)

teleports:CreateButton("Circus Zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1620.35205, 64.9958725, -1481.45996)
end)


teleports:CreateButton("Rebirth", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2610.4165, 66.6250305, 163.634918)
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
OldFunctionHook = HookFunction(PostMessage.fire, PostMessageHook)true notify('RespectFilteringEnabled','RespectFilteringEnabled is set to true (the command will still work but may only be clientsided)') end
	local players = getPlayer(args[1], speaker)
	if players ~= nil then
		for i,v in pairs(players) do
			spawn(function()
				for i, x in next, Players[v].Character:GetDescendants() do
					if x:IsA("Sound") and x.Playing == false then
						x.Playing = true
					end
				end
			end)
		end
	end
end)

addcmd('reset',{},
function(args, speaker)
	speaker.Character:BreakJoints()
end)

addcmd('respawn',{},
function(args, speaker)
	respawn(speaker)
end)

addcmd('refresh',{'re'},
function(args, speaker)
	refresh(speaker)
end)

invisRunning = false
addcmd('invisible',{'invis'},
function(args, speaker)
	if invisRunning then return end
	invisRunning = true
	-- Full credit to AmokahFox @V3rmillion
	local Player = speaker
	repeat wait(.1) until Player.Character
	local Character = Player.Character
	Character.Archivable = true
	local IsInvis = false
	local IsRunning = true
	local InvisibleCharacter = Character:Clone()
	InvisibleCharacter.Parent = game:GetService'Lighting'
	local Void = workspace.FallenPartsDestroyHeight
	InvisibleCharacter.Name = ""
	local CF
	
	local invisFix = game:GetService("RunService").Stepped:Connect(function()
		pcall(function()
			local IsInteger
			if tostring(Void):find'-' then
				IsInteger = true
			else
				IsInteger = false
			end
			local Pos = Player.Character.HumanoidRootPart.Position
			local Pos_String = tostring(Pos)
			local Pos_Seperate = Pos_String:split(', ')
			local X = tonumber(Pos_Seperate[1])
			local Y = tonumber(Pos_Seperate[2])
			local Z = tonumber(Pos_Seperate[3])
			if IsInteger == true then
				if Y <= Void then
					Respawn()
				end
			elseif IsInteger == false then
				if Y >= Void then
					Respawn()
				end
			end
		end)
	end)
	
	for i,v in pairs(InvisibleCharacter:GetDescendants())do
		if v:IsA("BasePart") then
			if v.Name == "HumanoidRootPart" then
				v.Transparency = 1
			else
				v.Transparency = .5
			end
		end
	end
	
	function Respawn()
		IsRunning = false
		if IsInvis == true then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				IsInvis = false
				InvisibleCharacter.Parent = nil
				invisRunning = false
			end)
		elseif IsInvis == false then
			pcall(function()
				Player.Character = Character
				wait()
				Character.Parent = workspace
				Character:FindFirstChildWhichIsA'Humanoid':Destroy()
				TurnVisible()
			end)
		end
	end
	
	local invisDied
	invisDied = InvisibleCharacter:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
		Respawn()
		invisDied:Disconnect()
	end)
	
	if IsInvis == true then return end
	IsInvis = true
	CF = workspace.CurrentCamera.CFrame
	local CF_1 = Player.Character.HumanoidRootPart.CFrame
	Character:MoveTo(Vector3.new(0,math.pi*1000000,0))
	workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
	wait(.2)
	workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	InvisibleCharacter = InvisibleCharacter
	Character.Parent = game:GetService'Lighting'
	InvisibleCharacter.Parent = workspace
	InvisibleCharacter.HumanoidRootPart.CFrame = CF_1
	Player.Character = InvisibleCharacter
	execCmd('fixcam')
	Player.Character.Animate.Disabled = true
	Player.Character.Animate.Disabled = false
	
	function TurnVisible()
		if IsInvis == false then return end
		invisFix:Disconnect()
		invisDied:Disconnect()
		CF = workspace.CurrentCamera.CFrame
		Character = Character
		local CF_1 = Player.Character.HumanoidRootPart.CFrame
		Character.HumanoidRootPart.CFrame = CF_1
		InvisibleCharacter:Destroy()
		Player.Character = Character
		Character.Parent = workspace
		IsInvis = false
		Player.Character.Animate.Disabled = true
		Player.Character.Animate.Disabled = false
		invisDied = Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
			Respawn()
			invisDied:Disconnect()
		end)
		invisRunning = false
	end
	notify('Invisible','You now appear invisible to other players')
end)

addcmd('visible',{'vis'},
function(args, speaker)
	TurnVisible()
end)

addcmd('toggleinvis',{},
function(args, speaker)
	if invisRunning then
		execCmd('visible')
	else
		execCmd('invisible')
	end
end)

addcmd('strengthen',{},
function(args, speaker)
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			if args[1] then
				child.CustomPhysicalProperties = PhysicalProperties.new(args[1], 0.3, 0.5)
			else
				child.CustomPhysicalProperties = PhysicalProperties.new(100, 0.3, 0.5)
			end
		end
	end
end)

addcmd('weaken',{},
function(args, speaker)
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			if args[1] then
				child.CustomPhysicalProperties = PhysicalProperties.new(-args[1], 0.3, 0.5)
			else
				child.CustomPhysicalProperties = PhysicalProperties.new(0, 0.3, 0.5)
			end
		end
	end
end)

addcmd('unweaken',{'unstrengthen'},
function(args, speaker)
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
end)

addcmd('breakvelocity',{},
function(args, speaker)
	local BeenASecond = false
	spawn(function()
		repeat wait()
			for i,v in pairs(speaker:GetDescendants()) do
				if v:IsA("BasePart") then
					v.Velocity = Vector3.new(0, 0, 0)
				end
			end
		until BeenASecond
	end)
	spawn(function()
		wait(1)
		BeenASecond = true
	end)
end)

addcmd('jpower',{'jumppower','jp'},
function(args, speaker)
	local jpower = args[1] or 50
	if isNumber(jpower) then
		speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower = jpower
	end
end)

addcmd('maxslopeangle',{'msa'},
function(args, speaker)
	local sangle = args[1] or 89
	if isNumber(sangle) then
		speaker.Character:FindFirstChildOfClass('Humanoid').MaxSlopeAngle = sangle
	end
end)

addcmd('gravity',{'grav'},
function(args, speaker)
	local grav = args[1] or 196.2
	if isNumber(grav) then
		workspace.Gravity = grav
	end
end)

addcmd('hipheight',{'hheight'},
function(args, speaker)
	local height
	if r15(speaker) then
		height = args[1] or 2.1
	else
		height = args[1] or 0
	end
	speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = height
end)
--2.1
addcmd('dance',{},
function(args, speaker)
	if not r15(speaker) then
		local pchar=speaker.Character
		local anim = nil		
		local dance1 = math.random(1,7)
		if dance1 == 1 then
			anim = '27789359'
		end
		if dance1 == 2 then
			anim = '30196114'
		end
		if dance1 == 3 then
			anim = '248263260'
		end
		if dance1 == 4 then
			anim = '45834924'
		end
		if dance1 == 5 then
			anim = '33796059'
		end
		if dance1 == 6 then
			anim = '28488254'
		end
		if dance1 == 7 then
			anim = '52155728'
		end
		local animation = Instance.new("Animation")
		animation.AnimationId = "rbxassetid://"..anim
		animTrack = pchar.Humanoid:LoadAnimation(animation)
		animTrack:Play()
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('undance',{'nodance'},
function(args, speaker)
	animTrack:Stop()
	animTrack:Destroy()
end)

addcmd('nolimbs',{'rlimbs'},
function(args, speaker)
	if r15(speaker) then
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperLeg" or
				v.Name == "LeftUpperLeg" or
				v.Name == "RightUpperArm" or
				v.Name == "LeftUpperArm" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Leg" or
				v.Name == "Left Leg" or
				v.Name == "Right Arm" or
				v.Name == "Left Arm" then
				v:Destroy()
			end
		end
	end
end)

addcmd('noarms',{'rarms'},
function(args, speaker)
	if r15(speaker) then
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperArm" or
				v.Name == "LeftUpperArm" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Arm" or
				v.Name == "Left Arm" then
				v:Destroy()
			end
		end
	end
end)

addcmd('nolegs',{'rlegs'},
function(args, speaker)
	if r15(speaker) then
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperLeg" or
				v.Name == "LeftUpperLeg" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Leg" or
				v.Name == "Left Leg" then
				v:Destroy()
			end
		end
	end
end)

addcmd('sit',{},
function(args, speaker)
	speaker.Character:FindFirstChildOfClass("Humanoid").Sit = true
end)

addcmd('sitwalk',{},
function(args, speaker)
	local anims = speaker.Character.Animate
	local sit = anims.sit:FindFirstChildOfClass("Animation").AnimationId
	anims.idle:FindFirstChildOfClass("Animation").AnimationId = sit
	anims.walk:FindFirstChildOfClass("Animation").AnimationId = sit
	anims.run:FindFirstChildOfClass("Animation").AnimationId = sit
	anims.jump:FindFirstChildOfClass("Animation").AnimationId = sit
	if r15(speaker) then
		speaker.Character.Humanoid.HipHeight = 0.5
	else
		speaker.Character.Humanoid.HipHeight = -1.5
	end
end)

function noSitFunc()
	wait()
	if Players.LocalPlayer.Character.Humanoid.Sit then
		Players.LocalPlayer.Character.Humanoid.Sit = false
	end
end
addcmd('nosit',{},
function(args, speaker)
	if noSit then noSit:Disconnect() nositDied:Disconnect() end
	noSit = Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Sit"):connect(noSitFunc)
	local function nositDiedFunc()
		repeat wait() until speaker.Character ~= nil and speaker.Character:FindFirstChild('Humanoid')
		noSit:Disconnect()
		noSit = Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Sit"):connect(noSitFunc)
	end
	nositDied = speaker.CharacterAdded:connect(nositDiedFunc)
end)

addcmd('unnosit',{},
function(args, speaker)
	if noSit then noSit:Disconnect() nositDied:Disconnect() end
end)

addcmd('jump',{},
function(args, speaker)
	speaker.Character:FindFirstChildOfClass("Humanoid").Jump = true
end)

local infjump
addcmd('infjump',{'infinitejump'},
function(args, speaker)
	if infJump then infJump:Disconnect() end
	infJump = game:GetService("UserInputService").JumpRequest:connect(function(Jump)
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end)
end)

addcmd('uninfjump',{'uninfinitejump','noinfjump','noinfinitejump'},
function(args, speaker)
	if infJump then infJump:Disconnect() end
end)

addcmd('team',{},
function(args, speaker)
	local teamname = nil
	for a,b in pairs(game:GetService("Teams"):GetChildren()) do
		local L_name = b.Name:lower()
		local F = L_name:find(getstring(1))
		if F == 1 then
			teamname = b 
		end
	end
	speaker.Team = teamname
end)

addcmd('nobgui',{'unbgui','nobillboardgui','unbillboardgui','noname','rohg'},
function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants())do
		if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
			v:Destroy()
		end
	end
end)

addcmd('loopnobgui',{'loopunbgui','loopnobillboardgui','loopunbillboardgui','loopnoname','looprohg'},
function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants())do
		if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
			v:Destroy()
		end
	end
	local function charPartAdded(part)
		if part:IsA("BillboardGui") or part:IsA("SurfaceGui") then
			wait()
			part:Destroy()
		end
	end
	charPartTrigger = speaker.Character.DescendantAdded:Connect(charPartAdded)
end)

addcmd('unloopnobgui',{'unloopunbgui','unloopnobillboardgui','unloopunbillboardgui','unloopnoname','unlooprohg'},
function(args, speaker)
	if charPartTrigger then
		charPartTrigger:Disconnect()
	end
end)

addcmd('spasm',{},
function(args, speaker)
	if not r15(speaker) then
		local pchar=speaker.Character
		local AnimationId = "33796059"
		SpasmAnim = Instance.new("Animation")
		SpasmAnim.AnimationId = "rbxassetid://"..AnimationId
		Spasm = pchar.Humanoid:LoadAnimation(SpasmAnim)
		Spasm:Play()
		Spasm:AdjustSpeed(99)
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('unspasm',{'nospasm'},
function(args, speaker)
	Spasm:Stop()
	SpasmAnim:Destroy()
end)

addcmd('headthrow',{},
function(args, speaker)
	if not r15(speaker) then
		local AnimationId = "35154961"
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"..AnimationId
		local k = speaker.Character.Humanoid:LoadAnimation(Anim)
		k:Play(0)
		k:AdjustSpeed(1)
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('animation',{'anim'},
function(args, speaker)
	if not r15(speaker) then
		local pchar=speaker.Character
		local AnimationId = tostring(args[1])
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://"..AnimationId
		local k = pchar.Humanoid:LoadAnimation(Anim)
		k:Play()
		if args[2] then
			k:AdjustSpeed(tostring(args[2]))
		end
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('noanim',{},
function(args, speaker)
	speaker.Character.Animate.Disabled = true
end)

addcmd('reanim',{},
function(args, speaker)
	speaker.Character.Animate.Disabled = false
end)

addcmd('animspeed', {},
function(args, speaker)
	local Char = speaker.Character
	local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
	
	for i,v in next, Hum:GetPlayingAnimationTracks() do
		v:AdjustSpeed(tonumber(args[1] or 1))
	end
end)

addcmd('stopanimations', {'stopanims','stopanim'},
function(args, speaker)
	local Char = speaker.Character
	local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
	
	for i,v in next, Hum:GetPlayingAnimationTracks() do
		v:Stop()
	end
end)

addcmd('tpposition',{'tppos'},
function(args, speaker)
	if #args < 3 then return end
	local tpX,tpY,tpZ = tonumber(args[1]),tonumber(args[2]),tonumber(args[3])
	local char = speaker.Character
	if char and getRoot(char) then
		getRoot(char).CFrame = CFrame.new(tpX,tpY,tpZ)
	end
end)

addcmd('tweentpposition',{'ttppos'},
function(args, speaker)
	if #args < 3 then return end
	local tpX,tpY,tpZ = tonumber(args[1]),tonumber(args[2]),tonumber(args[3])
	local char = speaker.Character
	if char and getRoot(char) then
		game:GetService("TweenService"):Create(getRoot(speaker.Character), TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = CFrame.new(tpX,tpY,tpZ)}):Play()
	end
end)

addcmd('offset',{},
function(args, speaker)
	if #args < 3 then return end
	local tpX,tpY,tpZ = tonumber(args[1]),tonumber(args[2]),tonumber(args[3])
	local char = speaker.Character
	if char and getRoot(char) then
		getRoot(char).CFrame = getRoot(char).CFrame + Vector3.new(tpX,tpY,tpZ)
	end
end)

addcmd('tweenoffset',{'toffset'},
function(args, speaker)
	if #args < 3 then return end
	local tpX,tpY,tpZ = tonumber(args[1]),tonumber(args[2]),tonumber(args[3])
	local char = speaker.Character
	if char and getRoot(char) then
		game:GetService("TweenService"):Create(getRoot(speaker.Character), TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = CFrame.new(tpX,tpY,tpZ)}):Play()
	end
end)

addcmd('clickteleport',{},
function(args, speaker)
	if speaker == Players.LocalPlayer then
		notify('Click TP','Go to Settings>Keybinds>Add to set up click tp')
	end
end)

addcmd('clickdelete',{},
function(args, speaker)
	if speaker == Players.LocalPlayer then
		notify('Click Delete','Go to Settings>Keybinds>Add to set up click delete')
	end
end)

addcmd('getposition',{'getpos','notifypos','notifyposition'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		local char = Players[v].Character
		if char and getRoot(char) then
			local pos = tostring(getRoot(char).Position)
			notify('Current Position',pos)
		end
	end
end)

addcmd('copyposition',{'copypos'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		local char = Players[v].Character
		if char and getRoot(char) then
			local pos = tostring(getRoot(char).Position)
			toClipboard(pos)
		end
	end
end)

addcmd('walktopos',{'walktoposition'},
function(args, speaker)
	if speaker.Character:FindFirstChild("Humanoid") then
		speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
	end
	wait(0.1)
	speaker.Character:FindFirstChildOfClass('Humanoid').WalkToPoint = Vector3.new(args[1],args[2],args[3])
end)

addcmd('speed',{'ws','walkspeed'},
function(args, speaker)
	if args[2] then
		local speed = args[2] or 16
		if isNumber(speed) then
			speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
		end
	else
		local speed = args[1] or 16
		if isNumber(speed) then
			speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
		end
	end
end)

local speedDied
addcmd('loopspeed',{'loopws'},
function(args, speaker)
	if args[2] then
		local speed = args[2] or 16
		if isNumber(speed) then	
			speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
			local function speedChangedFunc()
				speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
			end
			speedChanged = speaker.Character:FindFirstChildOfClass('Humanoid'):GetPropertyChangedSignal("WalkSpeed"):connect(speedChangedFunc)
			speedDied = speaker.CharacterAdded:connect(function()
				speedChanged:Disconnect()
				repeat wait() until speaker.Character:FindFirstChildOfClass('Humanoid')
				speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
				speedChanged = speaker.Character:FindFirstChildOfClass('Humanoid'):GetPropertyChangedSignal("WalkSpeed"):connect(speedChangedFunc)
			end)
		end
	else
		local speed = args[1] or 16
		if isNumber(speed) then
			speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
			local function speedChangedFunc()
				speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
			end
			speedChanged = speaker.Character:FindFirstChildOfClass('Humanoid'):GetPropertyChangedSignal("WalkSpeed"):connect(speedChangedFunc)
			speedDied = speaker.CharacterAdded:connect(function()
				speedChanged:Disconnect()
				repeat wait() until speaker.Character:FindFirstChildOfClass('Humanoid')
				speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = speed
				speedChanged = speaker.Character:FindFirstChildOfClass('Humanoid'):GetPropertyChangedSignal("WalkSpeed"):connect(speedChangedFunc)
			end)
		end
	end
end)

addcmd('unloopspeed',{'unloopws'},
function(args, speaker)
	speedChanged:Disconnect()
	speedDied:Disconnect()
	speaker.Character:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
end)

addcmd('tools',{'gears'},
function(args, speaker)
	local function copy(instance)
		for i,c in pairs(instance:GetChildren())do
			if c:IsA('Tool') or c:IsA('HopperBin') then
				c:Clone().Parent = speaker:FindFirstChildOfClass("Backpack")
			end
			copy(c)
		end
	end
	copy(game:GetService("Lighting"))
	local function copy(instance)
		for i,c in pairs(instance:GetChildren())do
			if c:IsA('Tool') or c:IsA('HopperBin') then
				c:Clone().Parent = speaker:FindFirstChildOfClass("Backpack")
			end
			copy(c)
		end
	end
	copy(game:GetService("ReplicatedStorage"))
	notify('Tools','Copied tools from ReplicatedStorage and Lighting')
end)

addcmd('notools',{'rtools','clrtools','removetools','deletetools','dtools'},
function(args, speaker)
	for i,v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetDescendants()) do
		if v:IsA('Tool') or v:IsA('HopperBin') then
			v:destroy()
		end
	end
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA('Tool') or v:IsA('HopperBin') then
			v:destroy()
		end
	end
end)

addcmd('deleteselectedtool',{'dst'},
function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA('Tool') or v:IsA('HopperBin') then
			v:destroy()
		end
	end
end)

addcmd('console',{},
function(args, speaker)
	-- Thanks wally!!
	notify("Loading",'Hold on a sec')
	local _, str = pcall(function()
		return game:HttpGet("https://pastebin.com/raw/i35eCznS", true)
	end)
	
	local s, e = loadstring(str)
	if typeof(s) ~= "function" then
		return
	end
	
	local success, message = pcall(s)
	if (not success) then
		if printconsole then
			printconsole(message)
		elseif printoutput then
			printoutput(message)
		end
	end
	wait(1)
	notify('Console','Press F9 to open the console')
end)

addcmd('explorer',{'dex'},
function(args, speaker)
	if PARENT:FindFirstChild'Dex' then
		PARENT.Dex:Destroy();
	end
	notify("Loading",'Hold on a sec')
	local Dex = game:GetObjects("rbxassetid://3567096419")[1]
	Dex.Name = 'Dex'
	Dex.Parent = PARENT
	
	local function Load(Obj, Url)
		local function GiveOwnGlobals(Func, Script)
			local Fenv = {}
			local RealFenv = {script = Script}
			local FenvMt = {}
			FenvMt.__index = function(a,b)
				if RealFenv[b] == nil then
					return getfenv()[b]
				else
					return RealFenv[b]
				end
			end
			FenvMt.__newindex = function(a, b, c)
				if RealFenv[b] == nil then
					getfenv()[b] = c
				else
					RealFenv[b] = c
				end
			end
			setmetatable(Fenv, FenvMt)
			setfenv(Func, Fenv)
			return Func
		end
		local function LoadScripts(Script)
			if Script.ClassName == "Script" or Script.ClassName == "LocalScript" then
				spawn(function()
					GiveOwnGlobals(loadstring(Script.Source, "=" .. Script:GetFullName()), Script)()
				end)
			end
			for i,v in pairs(Script:GetChildren()) do
				LoadScripts(v)
			end
		end
		LoadScripts(Obj)
	end
	
	Load(Dex)
end)

addcmd('remotespy',{'rspy'},
function(args, speaker)
	notify("Loading",'Hold on a sec')
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Nootchtai/FrostHook_Spy/master/Spy.lua"))()
end)

local loopgoto = nil
addcmd('loopgoto',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		loopgoto = nil
		if speaker.Character:FindFirstChild("Humanoid") then
			speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
		end
		wait()
		loopgoto = Players[v]
		local distance = 3
		if args[2] and isNumber(args[2]) then
			distance = args[2]
		end
		local lDelay = 0
		if args[3] and isNumber(args[3]) then
			lDelay = args[3]
		end
		repeat
			if Players[v].Character ~= nil then
				getRoot(speaker.Character).CFrame = getRoot(Players[v].Character).CFrame + Vector3.new(distance,1,0)
			end
			wait(lDelay)
		until loopgoto ~= Players[v]
	end
end)

addcmd('unloopgoto',{'noloopgoto'},
function(args, speaker)
	loopgoto = nil
end)

addcmd('headsit',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		speaker.Character:FindFirstChildOfClass('Humanoid').Sit = true
		headSit = game:GetService("RunService").Heartbeat:Connect(function()
			if Players[v].Character ~= nil and getRoot(Players[v].Character) and getRoot(speaker.Character) then
				if Players:FindFirstChild(Players[v].Name) and speaker.Character:FindFirstChildOfClass('Humanoid').Sit == true then
					getRoot(speaker.Character).CFrame = getRoot(Players[v].Character).CFrame * CFrame.Angles(0,math.rad(0),0)* CFrame.new(0,1.6,0.4)
				else
					headSit:Disconnect()
				end
			end
		end)
	end
end)

addcmd('chat',{'say'},
function(args, speaker)
	local cString = getstring(1)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(cString, "All")
end)

spamming = false
spamspeed = 1
addcmd('spam',{},
function(args, speaker)
	spamming = true
	local spamstring = getstring(1)
	repeat wait(spamspeed)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamstring, "All")
	until spamming == false
end)

addcmd('nospam',{'unspam'},
function(args, speaker)
	spamming = false
end)

pmspamming = {}
addcmd('pmspam',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		spawn(function()
			if FindInTable(pmspamming, Players[v].Name) then return end
			table.insert(pmspamming, Players[v].Name)
			local pmspamstring = getstring(2)
			repeat wait(spamspeed)
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..Players[v].Name.." "..pmspamstring, "All")
			until not FindInTable(pmspamming, Players[v].Name)
		end)
	end
end)

addcmd('nopmspam',{'unpmspam'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		spawn(function()
			for a,b in pairs(pmspamming) do
				if b == Players[v].Name then
					table.remove(pmspamming, a)
				end
			end
		end)
	end
end)

addcmd('spamspeed',{},
function(args, speaker)
	local speed = args[1] or 1
	if isNumber(speed) then
		spamspeed = speed
	end
end)

bubblechatting = false
local getBubblechat
addcmd('bubblechat',{},
function(args, speaker)
	if bubblechatting then return end
	bubblechatting = true
	if getBubblechat then getBubblechat:Disconnect() end
	getBubblechat = Players.PlayerAdded:connect(function(plr)
		local chatfunc
		chatfunc = plr.Chatted:connect(function(chat)
			if bubblechatting == true then
				game:GetService("Chat"):Chat(plr.Character.Head,chat,Enum.ChatColor.White)
			else
				chatfunc:Disconnect()
			end
		end)
	end)
	for i,v in pairs(Players:GetPlayers()) do
		local chatfunc
		chatfunc = v.Chatted:connect(function(chat)
			if bubblechatting == true then
				game:GetService("Chat"):Chat(v.Character.Head,chat,Enum.ChatColor.White)
			else
				chatfunc:Disconnect()
			end
		end)
	end
end)

addcmd('unbubblechat',{'nobubblechat'},
function(args, speaker)
	bubblechatting = false
	if getBubblechat then getBubblechat:Disconnect() end
end)

addcmd('safechat',{},
function(args, speaker)
	speaker.SetSuperSafeChat(true)
end)

addcmd('nosafechat',{'disablesafechat','unsafechat'},
function(args, speaker)
	speaker.SetSuperSafeChat(false)
end)

addcmd('blockhead',{},
function(args, speaker)
	speaker.Character.Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
end)

addcmd('blockhats',{},
function(args, speaker)
	for _,v in pairs(speaker.Character.Humanoid:GetAccessories()) do
		for i,c in pairs(v:GetDescendants()) do
			if c:IsA("SpecialMesh") then
				c:Destroy()
			end
		end
	end
end)

addcmd('blocktool',{},
function(args, speaker)
	for _,v in pairs(speaker.Character:GetChildren()) do
		if v:IsA("Tool") or v:IsA("HopperBin") then
			for i,c in pairs(v:GetDescendants()) do
				if c:IsA("SpecialMesh") then
					c:Destroy()
				end
			end
		end
	end
end)

addcmd('creeper',{},
function(args, speaker)
	if r15(speaker) then
		speaker.Character.Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
		speaker.Character.LeftUpperArm:Destroy()
		speaker.Character.RightUpperArm:Destroy()
		speaker.Character:FindFirstChildOfClass("Humanoid"):RemoveAccessories()
	else
		speaker.Character.Head:FindFirstChildOfClass("SpecialMesh"):Destroy()
		speaker.Character["Left Arm"]:Destroy()
		speaker.Character["Right Arm"]:Destroy()
		speaker.Character:FindFirstChildOfClass("Humanoid"):RemoveAccessories()
	end
end)

addcmd('bang',{'rape'},
function(args, speaker)
	if not r15(speaker) then
		execCmd('unbang')
		wait()
		local players = getPlayer(args[1], speaker)
		for i,v in pairs(players)do
			bangAnim = Instance.new("Animation")
			bangAnim.AnimationId = "rbxassetid://148840371"
			bang = speaker.Character.Humanoid:LoadAnimation(bangAnim)
			bang:Play(.1, 1, 1)
			if args[2] then
				bang:AdjustSpeed(args[2])
			else
				bang:AdjustSpeed(3)
			end
			local bangplr = Players[v].Name
			bangDied = speaker.Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
				bangLoop:Disconnect()
				bang:Stop()
				bangAnim:Destroy()
				bangDied:Disconnect()
			end)
			bangLoop = game:GetService('RunService').Stepped:connect(function()
				pcall(function()
					getRoot(Players.LocalPlayer.Character).CFrame = getRoot(Players[bangplr].Character).CFrame
				end)
			end)
		end
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('unbang',{'unrape'},
function(args, speaker)
	if bangLoop then
		bangLoop:Disconnect()
		bangDied:Disconnect()
		bang:Stop()
		bangAnim:Destroy()
	end
end)

addcmd('carpet',{},
function(args, speaker)
	if not r15(speaker) then
		execCmd('uncarpet')
		wait()
		local players = getPlayer(args[1], speaker)
		for i,v in pairs(players)do
			carpetAnim = Instance.new("Animation")
			carpetAnim.AnimationId = "rbxassetid://282574440"
			carpet = speaker.Character.Humanoid:LoadAnimation(carpetAnim)
			carpet:Play(.1, 1, 1)
			local carpetplr = Players[v].Name
			carpetDied = speaker.Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
				carpetLoop:Disconnect()
				carpet:Stop()
				carpetAnim:Destroy()
				carpetDied:Disconnect()
			end)
			carpetLoop = game:GetService('RunService').Heartbeat:connect(function()
				pcall(function()
					getRoot(Players.LocalPlayer.Character).CFrame = getRoot(Players[carpetplr].Character).CFrame
				end)
			end)
		end
	else
		notify('R6 Required','This command requires the r6 rig type')
	end
end)

addcmd('uncarpet',{'nocarpet'},
function(args, speaker)
	if carpetLoop then
		carpetLoop:Disconnect()
		carpetDied:Disconnect()
		carpet:Stop()
		carpetAnim:Destroy()
	end
end)

addcmd('friend',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		speaker:RequestFriendship(v)
	end
end)

addcmd('unfriend',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		speaker:RevokeFriendship(v)
	end
end)

addcmd('bringpart',{},
function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
			v.CFrame = getRoot(speaker.Character).CFrame
		end
	end
end)

addcmd('bringpartclass',{'bpc'},
function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() and v:IsA("BasePart") then
			v.CFrame = getRoot(speaker.Character).CFrame
		end
	end
end)

gotopartDelay = 0.1
addcmd('gotopart',{},
function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
			if speaker.Character:FindFirstChild("Humanoid") then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
			end
			wait(gotopartDelay)
			getRoot(speaker.Character).CFrame = v.CFrame
		end
	end
end)

addcmd('tweengotopart',{'tgotopart'},
function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == getstring(1):lower() and v:IsA("BasePart") then
			if speaker.Character:FindFirstChild("Humanoid") then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
			end
			wait(gotopartDelay)
			getRoot(speaker.Character).CFrame = v.CFrame
			game:GetService("TweenService"):Create(getRoot(speaker.Character), TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
		end
	end
end)

addcmd('gotopartclass',{'gpc'},
function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() and v:IsA("BasePart") then
			if speaker.Character:FindFirstChild("Humanoid") then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
			end
			wait(gotopartDelay)
			getRoot(speaker.Character).CFrame = v.CFrame
		end
	end
end)

addcmd('tweengotopartclass',{'tgpc'},
function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v.ClassName:lower() == getstring(1):lower() and v:IsA("BasePart") then
			if speaker.Character:FindFirstChild("Humanoid") then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
			end
			wait(gotopartDelay)
			game:GetService("TweenService"):Create(getRoot(speaker.Character), TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
		end
	end
end)

addcmd('gotopartdelay',{},
function(args, speaker)
	local gtpDelay = args[1] or 0.1
	if isNumber(gtpDelay) then
		gotopartDelay = gtpDelay
	end
end)

addcmd('noclickdetectorlimits',{'nocdlimits','removecdlimits'},
function(args, speaker)
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("ClickDetector") then
			v.MaxActivationDistance = math.huge
		end
	end
end)

addcmd('fireclickdetectors',{'firecd','firecds'},
function(args, speaker)
	if fireclickdetector then
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("ClickDetector") then
				fireclickdetector(v)
			end
		end
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing fireclickdetector)')
	end
end)

addcmd('simulationradius',{'simradius'},
function(args, speaker)
	if sethidden then		
		simRadLoop = game:GetService('RunService').Stepped:connect(function()
			sethidden(speaker,"MaximumSimulationRadius",1/0)
			if setsimulation then
				setsimulation(1e308)
			else
				sethidden(speaker,"SimulationRadius", 1e308)
			end
		end)
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('nosimulationradius',{'nosimradius','unsimradius'},
function(args, speaker)
	if sethidden then		
		if simRadLoop then simRadLoop:Disconnect() end
		wait()
		sethidden(speaker,"MaximumSimulationRadius",139)
		if setsimulation then
			setsimulation(139,139)
		else
			sethidden(speaker, "SimulationRadius", 139)
		end
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('grabtools',{},
function(args, speaker)
	for i,v in pairs(workspace:GetChildren()) do
		spawn(function()
			if v:IsA("Tool") or v:IsA("HopperBin") then
				if v:FindFirstChild("Handle") then
					repeat
						wait()
						if getRoot(speaker.Character) then
							v.Handle.CFrame = getRoot(speaker.Character).CFrame
						end
					until v.Parent == speaker.Character
				end
			end
		end)
	end
	grabtoolsFunc = workspace.ChildAdded:connect(function(part)
		if part:IsA("Tool") or part:IsA("HopperBin") then
			if part:FindFirstChild("Handle") then
				repeat
					wait()
					if getRoot(speaker.Character) then
						part.Handle.CFrame = getRoot(speaker.Character).CFrame
					end
				until part.Parent == speaker.Character
			end
		end
	end)
	notify('Grabtools','Picking up any dropped tools')
end)

addcmd('nograbtools',{'ungrabtools'},
function(args, speaker)
	grabtoolsFunc:Disconnect()
	notify('Grabtools','Grabtools has been disabled')
end)

addcmd('light',{},
function(args, speaker)
	local light = Instance.new("PointLight", getRoot(speaker.Character))
	light.Range = 30
	if args[1] then
		light.Brightness = args[1]
		light.Range = args[1]
	else
		light.Brightness = 5
	end
end)

addcmd('unlight',{'nolight'},
function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v.ClassName == "PointLight" then
			v:Destroy()
		end
	end
end)

addcmd('copytools',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players)do
		spawn(function()
			for i,v in pairs(Players[v]:FindFirstChildOfClass("Backpack"):GetChildren()) do
				if v:IsA('Tool') or v:IsA('HopperBin') then
					v:Clone().Parent = speaker:FindFirstChildOfClass("Backpack")
				end
			end
		end)
	end
end)

addcmd('naked',{},
function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Clothing") or v:IsA("ShirtGraphic") then
			v:Destroy()
		end
	end
end)

addcmd('noface',{'removeface'},
function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Decal") and v.Name == 'face' then
			v:Destroy()
		end
	end
end)

addcmd('spawnpoint',{'spawn'},
function(args, speaker)
	spawnpos = getRoot(speaker.Character).CFrame
	spawnpoint = true
	spDelay = tonumber(args[1]) or 0.1
	notify('Spawn Point','Spawn point created at '..tostring(spawnpos))
end)

addcmd('nospawnpoint',{'nospawn','removespawnpoint'},
function(args, speaker)
	spawnpoint = false
	notify('Spawn Point','Removed spawn point')
end)

addcmd('flashback',{'diedtp'},
function(args, speaker)
	if lastDeath ~= nil then
		if speaker.Character:FindFirstChild("Humanoid") then
			speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
		end
		wait()
		getRoot(speaker.Character).CFrame = lastDeath
	end
end)

addcmd('hatspin',{'spinhats'},
function(args, speaker)
	execCmd('unhatspin')
	wait(.5)
	for _,v in pairs(speaker.Character.Humanoid:GetAccessories()) do
		local keep = Instance.new("BodyPosition") keep.Parent = v.Handle keep.Name = "no"
		local spin = Instance.new("BodyAngularVelocity") spin.Parent = v.Handle spin.Name = "ha"
		v.Handle:FindFirstChildOfClass("Weld"):Destroy()
		if args[1] then
			spin.AngularVelocity = Vector3.new(0, args[1], 0)
			spin.MaxTorque = Vector3.new(0, args[1] * 2, 0)
		else
			spin.AngularVelocity = Vector3.new(0, 100, 0)
			spin.MaxTorque = Vector3.new(0, 200, 0)
		end
		keep.P = 30000
		keep.D = 50
		spinhats = game:GetService('RunService').Stepped:connect(function()
			pcall(function()
				keep.Position = Players.LocalPlayer.Character.Head.Position
			end)
		end)
	end
end)

addcmd('unhatspin',{'unspinhats'},
function(args, speaker)
	if spinhats then
		spinhats:Disconnect()
	end
	for _,v in pairs(speaker.Character.Humanoid:GetAccessories()) do
		v.Parent = workspace
		v.Handle.no:Destroy()
		v.Handle.ha:Destroy()
		wait()
		v.Parent = speaker.Character
	end
end)

addcmd('vr',{},
function(args, speaker)
	-- Full credit to Abacaxl @V3rmillion
	-- Free for all thanks to Zinnia
	loadstring(game:HttpGet('https://ghostbin.co/paste/yb288/raw'))()
end)

addcmd('split',{},
function(args, speaker)
	if r15(speaker) then
		speaker.Character.UpperTorso.Waist:Destroy()
	else
		notify('R15 Required','This command requires the r15 rig type')
	end
end)

addcmd('nilchar',{},
function(args, speaker)
	if speaker.Character ~= nil then
		speaker.Character.Parent = nil
	end
end)

addcmd('unnilchar',{'nonilchar'},
function(args, speaker)
	if speaker.Character ~= nil then
		speaker.Character.Parent = workspace
	end
end)

addcmd('noroot',{'removeroot','rroot'},
function(args, speaker)
	if speaker.Character ~= nil then
		local char = Players.LocalPlayer.Character
		char.Parent = nil
		char.HumanoidRootPart:Destroy()
		char.Parent = workspace
	end
end)

addcmd('equiptools',{},
function(args, speaker)
	for i,v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
		if v:IsA("Tool") or v:IsA("HopperBin") then
			v.Parent = speaker.Character
		end
	end
end)

addcmd('dupetools',{'clonetools'},
function(args, speaker)
	local ME = speaker
	local LOOP_NUM = args[1] or 1
	local tools, pos, pos1 = {}, ME.Character.HumanoidRootPart.CFrame, CFrame.new(math.random(-2e5, 2e5), 2e5, math.random(-2e5, 2e5))
	for _ = 1, tonumber(tonumber(LOOP_NUM) or 1) do
		ME.Character.HumanoidRootPart.CFrame = pos1
		wait(.2)
		ME.Character.HumanoidRootPart.Anchored = true
		wait(.2)
		ME.Character.Humanoid:UnequipTools()
		for _, v in pairs(ME:FindFirstChildOfClass("Backpack"):GetChildren()) do
			if v:IsA("Tool") and v:FindFirstChild("Handle") then
				v.Parent = ME.Character
				v.Handle.Anchored = true
				v.Parent = workspace
				table.insert(tools, v)
			end
		end
		ME.Character:FindFirstChildOfClass("Humanoid"):ChangeState(15)
		ME.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = pos
	end
	if type(firetouchinterest) == "function" then
		for _, v in pairs(tools) do
			pcall(coroutine.wrap(function()
				v.Handle.Anchored = false
				firetouchinterest(v.Handle, ME.Character:WaitForChild("HumanoidRootPart"), 0)
				repeat
					wait()
				until v.Parent == ME.Character
				firetouchinterest(v.Handle, ME.Character.HumanoidRootPart, 1)
			end))
		end
	else
		ME.Character.HumanoidRootPart.Anchored = true
		wait(.15)
		for _, v in pairs(tools) do
			spawn(function()
				v.Handle.Anchored = false
				while v.Parent ~= ME.Character and game:GetService("RunService").RenderStepped:Wait() do
					v.Handle.CFrame = ME.Character:WaitForChild("HumanoidRootPart").CFrame
				end
			end)
		end
		wait((function(num)
			local e = 0
			for _ = 1, num do
				e = e + .1
			end
			return e
		end)(#tools))
		ME.Character.HumanoidRootPart.Anchored = false
	end
end)

addcmd('touchinterests',{'touchinterest','firetouchinterests','firetouchinterest'},
function(args, speaker)
	if type(firetouchinterest) == "function" then
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("TouchTransmitter") then
				firetouchinterest(v.Parent, Players.LocalPlayer.Character.HumanoidRootPart.CFrame, 0)
			end
		end
	else
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("TouchTransmitter") then
				v.Parent.CFrame = Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			end
		end
	end
end)

addcmd('fullbright',{'fb','fullbrightness'},
function(args, speaker)
	game:GetService("Lighting").Brightness = 2
	game:GetService("Lighting").ClockTime = 14
	game:GetService("Lighting").FogEnd = 100000
	game:GetService("Lighting").GlobalShadows = false
	game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end)

addcmd('ambient',{},
function(args, speaker)
	game:GetService("Lighting").Ambient = Color3.new(args[1],args[2],args[3])
	game:GetService("Lighting").OutdoorAmbient = Color3.new(args[1],args[2],args[3])
end)

addcmd('day',{},
function(args, speaker)
	game:GetService("Lighting").ClockTime = 14
end)

addcmd('night',{},
function(args, speaker)
	game:GetService("Lighting").ClockTime = 0
end)

addcmd('nofog',{},
function(args, speaker)
	game:GetService("Lighting").FogEnd = 100000
end)

addcmd('brightness',{},
function(args, speaker)
	game:GetService("Lighting").Brightness = args[1]
end)

addcmd('globalshadows',{'gshadows'},
function(args, speaker)
	game:GetService("Lighting").GlobalShadows = true
end)

addcmd('unglobalshadows',{'nogshadows','ungshadows','noglobalshadows'},
function(args, speaker)
	game:GetService("Lighting").GlobalShadows = false
end)

origsettings = {abt = game:GetService("Lighting").Ambient, oabt = game:GetService("Lighting").OutdoorAmbient, brt = game:GetService("Lighting").Brightness, time = game:GetService("Lighting").ClockTime, fe = game:GetService("Lighting").FogEnd, fs = game:GetService("Lighting").FogStart, gs = game:GetService("Lighting").GlobalShadows}

addcmd('restorelighting',{'rlighting'},
function(args, speaker)
	game:GetService("Lighting").Ambient = origsettings.abt
	game:GetService("Lighting").OutdoorAmbient = origsettings.oabt
	game:GetService("Lighting").Brightness = origsettings.brt
	game:GetService("Lighting").ClockTime = origsettings.time
	game:GetService("Lighting").FogEnd = origsettings.fe
	game:GetService("Lighting").FogStart = origsettings.fs
	game:GetService("Lighting").GlobalShadows = origsettings.gs
end)

addcmd('stun',{'platformstand'},
function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
end)

addcmd('unstun',{'nostun','unplatformstand','noplatformstand'},
function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
end)

addcmd('norotate',{'noautorotate'},
function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = false
end)

addcmd('unnorotate',{'autorotate'},
function(args, speaker)
	speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = true
end)

addcmd('drophats',{'drophat'},
function(args, speaker)
	if speaker.Character then
		for _,v in pairs(speaker.Character.Humanoid:GetAccessories()) do
			v.Parent = workspace
		end
	end
end)

addcmd('deletehats',{'nohats','rhats'},
function(args, speaker)
	if speaker.Character then
		speaker.Character:FindFirstChildOfClass("Humanoid"):RemoveAccessories()
	end
end)

addcmd('droptools',{'droptool'},
function(args, speaker)
	if speaker.Character then
		for _,obj in pairs(speaker.Character:GetChildren()) do
			if obj:IsA("Tool") then
				obj.Parent = workspace
			end
		end
	end
	if speaker:FindFirstChildOfClass("Backpack") then
		for _,obj in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
			if obj:IsA("Tool") then
				obj.Parent = workspace
			end
		end
	end
end)

addcmd('droppabletools',{},
function(args, speaker)
	if speaker.Character then
		for _,obj in pairs(speaker.Character:GetChildren()) do
			if obj:IsA("Tool") then
				obj.CanBeDropped = true
			end
		end
	end
	if speaker:FindFirstChildOfClass("Backpack") then
		for _,obj in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
			if obj:IsA("Tool") then
				obj.CanBeDropped = true
			end
		end
	end
end)

local currentToolSize = ""
local currentGripPos = ""
addcmd('reach',{},
function(args, speaker)
	execCmd('unreach')
	wait()
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Tool") then
			if args[1] then
				currentToolSize = v.Handle.Size
				currentGripPos = v.GripPos
				local a = Instance.new("SelectionBox",v.Handle)
				a.Name = "SelectionBoxCreated"
				a.Adornee = v.Handle
				v.Handle.Massless = true
				v.Handle.Size = Vector3.new(0.5,0.5,args[1])
				v.GripPos = Vector3.new(0,0,0)
				speaker.Character.Humanoid:UnequipTools()
			else
				currentToolSize = v.Handle.Size
				currentGripPos = v.GripPos
				local a = Instance.new("SelectionBox",v.Handle)
				a.Name = "SelectionBoxCreated"
				a.Adornee = v.Handle
				v.Handle.Massless = true
				v.Handle.Size = Vector3.new(0.5,0.5,60)
				v.GripPos = Vector3.new(0,0,0)
				speaker.Character.Humanoid:UnequipTools()
			end
		end
	end
end)

addcmd('unreach',{'noreach'},
function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Tool") then
			v.Handle.Size = currentToolSize
			v.GripPos = currentGripPos
			v.Handle.SelectionBoxCreated:Destroy()
		end
	end
end)

addcmd('grippos',{},
function(args, speaker)
	for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Tool") then
			v.Parent = speaker:FindFirstChildOfClass("Backpack")
			v.GripPos = Vector3.new(args[1],args[2],args[3])
			v.Parent = speaker.Character
		end
	end
end)

addcmd('usetools',{},
function(args, speaker)
	for _, v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
		v.Parent = game.Players.LocalPlayer.Character
		v:Activate()
		v.Parent = speaker:FindFirstChildOfClass("Backpack")
	end
end)

addcmd('logs',{},
function(args, speaker)
	logs:TweenPosition(UDim2.new(0, 0, 1, -265), "InOut", "Quart", 0.3, true, nil)
end)

addcmd('chatlogs',{'clogs'},
function(args, speaker)
	join.Visible = false
	chat.Visible = true
	table.remove(shade3,table.find(shade3,selectChat))
	table.remove(shade2,table.find(shade2,selectJoin))
	table.insert(shade2,selectChat)
	table.insert(shade3,selectJoin)
	selectJoin.BackgroundColor3 = currentShade3
	selectChat.BackgroundColor3 = currentShade2
	logs:TweenPosition(UDim2.new(0, 0, 1, -265), "InOut", "Quart", 0.3, true, nil)
end)

addcmd('joinlogs',{'jlogs'},
function(args, speaker)
	chat.Visible = false
	join.Visible = true	
	table.remove(shade3,table.find(shade3,selectJoin))
	table.remove(shade2,table.find(shade2,selectChat))
	table.insert(shade2,selectJoin)
	table.insert(shade3,selectChat)
	selectChat.BackgroundColor3 = currentShade3
	selectJoin.BackgroundColor3 = currentShade2
	logs:TweenPosition(UDim2.new(0, 0, 1, -265), "InOut", "Quart", 0.3, true, nil)
end)

flinging = false
addcmd('fling',{},
function(args, speaker)
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child:IsA("BasePart") then
			child.CustomPhysicalProperties = PhysicalProperties.new(2, 0.3, 0.5)
		end
	end
	execCmd('noclip nonotify')
	wait(.1)
	local bambam = Instance.new("BodyAngularVelocity", getRoot(speaker.Character))
	bambam.Name = randomString()
	bambam.AngularVelocity = Vector3.new(0,311111,0)
	bambam.MaxTorque = Vector3.new(0,311111,0)
	bambam.P = math.huge
	local function PauseFling()
		if speaker.Character:FindFirstChildOfClass("Humanoid") then
			if speaker.Character:FindFirstChildOfClass("Humanoid").FloorMaterial == Enum.Material.Air then
				bambam.AngularVelocity = Vector3.new(0,0,0)
			else
				bambam.AngularVelocity = Vector3.new(0,311111,0)
			end
		end
	end
	if TouchingFloor then
		TouchingFloor:Disconnect()
	end
	if TouchingFloorReset then
		TouchingFloorReset:Disconnect()
	end
	TouchingFloor = speaker.Character:FindFirstChildOfClass("Humanoid"):GetPropertyChangedSignal("FloorMaterial"):connect(PauseFling)
	flinging = true
	local function flingDied()
		execCmd('unfling')
	end
	TouchingFloorReset = speaker.Character:FindFirstChildOfClass('Humanoid').Died:connect(flingDied)
end)

addcmd('unfling',{'nofling'},
function(args, speaker)
	execCmd('clip nonotify')
	if TouchingFloor then
		TouchingFloor:Disconnect()
	end
	if TouchingFloorReset then
		TouchingFloorReset:Disconnect()
	end
	flinging = false
	wait(.1)
	local speakerChar = speaker.Character
	if not speakerChar or not getRoot(speakerChar) then return end
	for i,v in pairs(getRoot(speakerChar):GetChildren()) do
		if v.ClassName == 'BodyAngularVelocity' then
			v:Destroy()
		end
	end
	for _, child in pairs(speakerChar:GetDescendants()) do
		if child.ClassName == "Part" or child.ClassName == "MeshPart" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
end)

addcmd('togglefling',{},
function(args, speaker)
	if flinging then
		execCmd('unfling')
	else
		execCmd('fling')
	end
end)

addcmd('invisfling',{},
function(args, speaker)
	local ch = speaker.Character
	local prt=Instance.new("Model", speaker.Character)
	local z1 = Instance.new("Part")
	z1.Name="Torso"
	z1.CanCollide = false
	z1.Anchored = true
	local z2 = Instance.new("Part", prt)
	z2.Name="Head"
	z2.Anchored = true
	z2.CanCollide = false
	local z3 =Instance.new("Humanoid", prt)
	z3.Name="Humanoid"
	z1.Position = Vector3.new(0,9999,0)
	speaker.Character=prt
	wait(3)
	speaker.Character=ch
	wait(3)
	local Hum = Instance.new("Humanoid")
	z2:Clone()
	Hum.Parent = speaker.Character
	local root =  getRoot(speaker.Character)
	for i,v in pairs(speaker.Character:GetChildren()) do
		if v ~= root and  v.Name ~= "Humanoid" then
			v:Destroy()
		end
	end
	root.Transparency = 0
	root.Color = Color3.new(1, 1, 1)
	local invisflingStepped
	invisflingStepped = game:GetService('RunService').Stepped:connect(function()
		if speaker.Character and getRoot(speaker.Character) then
			getRoot(speaker.Character).CanCollide = false
		else
			invisflingStepped:Disconnect()
		end
	end)
	sFLY()
	workspace.CurrentCamera.CameraSubject = root
	local bambam = Instance.new("BodyThrust")
	bambam.Parent = getRoot(speaker.Character)
	bambam.Force = Vector3.new(99999,99999*10,99999)
	bambam.Location = getRoot(speaker.Character).Position
end)

function attach(speaker,target)
	if tools(speaker) then
		local char = speaker.Character
		local tchar = target.Character
		local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
		local hrp = getRoot(speaker.Character)
		local hrp2 = getRoot(target.Character)
		hum.Name = "1"
		local newHum = hum:Clone()
		newHum.Parent = char
		newHum.Name = "Humanoid"
		wait()
		hum:Destroy()
		workspace.CurrentCamera.CameraSubject = char
		newHum.DisplayDistanceType = "None"
		local tool = speaker:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or speaker.Character:FindFirstChildOfClass("Tool")
		tool.Parent = char
		hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
		local n = 0
		repeat
			wait(.1)
			n = n + 1
			hrp.CFrame = hrp2.CFrame
		until (tool.Parent ~= char or not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
	else
		notify('Tool Required','You need to have an item in your inventory to use this command')
	end
end

addcmd('attach',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		attach(speaker,Players[v])
	end
end)

function kill(speaker,target,fast)
	if tools(speaker) then
		if target ~= nil then
			local NormPos = getRoot(speaker.Character).CFrame
			if not fast then
				refresh(speaker)
				wait()
				repeat wait() until speaker.Character ~= nil and getRoot(speaker.Character)
				wait(0.3)
			end
			local hrp = getRoot(speaker.Character)
			attach(speaker,target)
			repeat
				wait()
				hrp.CFrame = CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5,999999)
			until not getRoot(target.Character) or not getRoot(speaker.Character)
			wait(1)
			speaker.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = NormPos
		end
	else
		notify('Tool Required','You need to have an item in your inventory to use this command')
	end
end

addcmd('kill',{'fekill'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		kill(speaker,Players[v])
	end
end)

addcmd('fastkill',{'fastfekill'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		kill(speaker,Players[v],true)
	end
end)

function bring(speaker,target,fast)
	if tools(speaker) then
		if target ~= nil then
			local NormPos = getRoot(speaker.Character).CFrame
			if not fast then
				refresh(speaker)
				wait()
				repeat wait() until speaker.Character ~= nil and getRoot(speaker.Character)
				wait(0.3)
			end
			local hrp = getRoot(speaker.Character)
			attach(speaker,target)
			repeat
				wait()
				hrp.CFrame = NormPos
			until not getRoot(target.Character) or not getRoot(speaker.Character)
			wait(1)
			speaker.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = NormPos
		end
	else
		notify('Tool Required','You need to have an item in your inventory to use this command')
	end
end

addcmd('bring',{'febring'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		bring(speaker,Players[v])
	end
end)

addcmd('fastbring',{'fastfebring'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		bring(speaker,Players[v],true)
	end
end)

function teleport(speaker,target,target2,fast)
	if tools(speaker) then
		if target ~= nil then
			local NormPos = getRoot(speaker.Character).CFrame
			if not fast then
				refresh(speaker)
				wait()
				repeat wait() until speaker.Character ~= nil and getRoot(speaker.Character)
				wait(0.3)
			end
			local hrp = getRoot(speaker.Character)
			local hrp2 = getRoot(target2.Character)
			attach(speaker,target)
			repeat
				wait()
				hrp.CFrame = hrp2.CFrame
			until not getRoot(target.Character) or not getRoot(speaker.Character)
			wait(1)
			speaker.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = NormPos
		end
	else
		notify('Tool Required','You need to have an item in your inventory to use this command')
	end
end

addcmd('tp',{'teleport'},
function(args, speaker)
	local players1=getPlayer(args[1], speaker)
	local players2=getPlayer(args[2], speaker)
	for i,v in pairs(players1)do
		if getRoot(Players[v].Character) and getRoot(Players[players2[1]].Character) then
			if speaker.Character:FindFirstChild("Humanoid") then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
			end
			wait(0.1)
			teleport(speaker,Players[v],Players[players2[1]])
		end
	end
end)

addcmd('fasttp',{'fastteleport'},
function(args, speaker)
	local players1=getPlayer(args[1], speaker)
	local players2=getPlayer(args[2], speaker)
	for i,v in pairs(players1)do
		if getRoot(Players[v].Character) and getRoot(Players[players2[1]].Character) then
			if speaker.Character:FindFirstChild("Humanoid") then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
			end
			wait(0.1)
			teleport(speaker,Players[v],Players[players2[1]],true)
		end
	end
end)

addcmd('spin',{},
function(args, speaker)
	local spinSpeed = 20
	if args[1] and isNumber(args[1]) then
		spinSpeed = args[1]
	end
	for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
		if v.Name == "Spinning" then
			v:Destroy()
		end
	end
	local Spin = Instance.new("BodyAngularVelocity", getRoot(speaker.Character))
	Spin.Name = "Spinning"
	Spin.MaxTorque = Vector3.new(0, math.huge, 0)
	Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
end)

addcmd('unspin',{},
function(args, speaker)
	for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
		if v.Name == "Spinning" then
			v:Destroy()
		end
	end
end)

local transparent = false
function x(v)
	if v then
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
				i.LocalTransparencyModifier = 0.5
			end
		end
	else
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChild("Humanoid") and not i.Parent.Parent:FindFirstChild("Humanoid") then
				i.LocalTransparencyModifier = 0
			end
		end
	end
end

addcmd('xray',{},
function(args, speaker)
	transparent = true
	x(transparent)
end)

addcmd('unxray',{'noxray'},
function(args, speaker)
	transparent = false
	x(transparent)
end)

addcmd('togglexray',{},
function(args, speaker)
	transparent=not transparent
	x(transparent)
end)

local walltpTouch = nil
addcmd('walltp',{},
function(args, speaker)
	local torso
	if r15(speaker) then
		torso = speaker.Character.UpperTorso
	else
		torso = speaker.Character.Torso
	end
	local function touchedFunc(hit)
		local Root = getRoot(speaker.Character)
		if hit:IsA("BasePart") and hit.Position.Y > Root.Position.Y - speaker.Character.Humanoid.HipHeight then
			local hitP = getRoot(hit.Parent)
			if hitP ~= nil then
				Root.CFrame = hit.CFrame * CFrame.new(Root.CFrame.lookVector.X,hitP.Size.Z/2 + speaker.Character.Humanoid.HipHeight,Root.CFrame.lookVector.Z)
			elseif hitP == nil then
				Root.CFrame = hit.CFrame * CFrame.new(Root.CFrame.lookVector.X,hit.Size.Y/2 + speaker.Character.Humanoid.HipHeight,Root.CFrame.lookVector.Z)
			end
		end
	end
	walltpTouch = torso.Touched:Connect(touchedFunc)
end)

addcmd('unwalltp',{'nowalltp'},
function(args, speaker)
	if walltpTouch then
		walltpTouch:Disconnect()
	end
end)

autoclicking = false
addcmd('autoclick',{},
function(args, speaker)
	if mouse1press and mouse1release then
		execCmd('unautoclick')
		wait()
		local clickDelay = 0.1
		local releaseDelay = 0.1
		if args[1] and isNumber(args[1]) then clickDelay = args[1] end
		if args[2] and isNumber(args[2]) then releaseDelay = args[2] end
		autoclicking = true
		cancelAutoClick = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
			if not gameProcessedEvent then
				if (input.KeyCode == Enum.KeyCode.Backspace and UserInputService:IsKeyDown(Enum.KeyCode.Equals)) or (input.KeyCode == Enum.KeyCode.Equals and UserInputService:IsKeyDown(Enum.KeyCode.Backspace)) then
					autoclicking = false
					cancelAutoClick:Disconnect()
				end
			end
		end)
		notify('Auto Clicker',"Press [backspace] and [=] at the same time to stop")
		repeat wait(clickDelay)
			mouse1press()
			wait(releaseDelay)
			mouse1release()
		until autoclicking == false
	else
		notify('Auto Clicker',"Your exploit doesn't have the ability to use the autoclick")
	end
end)

addcmd('unautoclick',{'noautoclick'},
function(args, speaker)
	autoclicking = false
	if cancelAutoClick then cancelAutoClick:Disconnect() end
end)

addcmd('mousesensitivity',{'ms'},
function(args, speaker)
	UserInputService.MouseDeltaSensitivity = args[1]
end)

local nameBox = nil
local nbSelection = nil
addcmd('hovername',{},
function(args, speaker)
	execCmd('unhovername')
	wait()
	nameBox = Instance.new("TextLabel")
	nameBox.Name = randomString()
	nameBox.Parent = PARENT
	nameBox.BackgroundTransparency = 1
	nameBox.Size = UDim2.new(0,200,0,30)
	nameBox.Font = Enum.Font.Code
	nameBox.TextSize = 16
	nameBox.Text = ""
	nameBox.TextColor3 = Color3.new(1, 1, 1)
	nameBox.TextStrokeTransparency = 0
	nameBox.TextXAlignment = Enum.TextXAlignment.Left
	nameBox.ZIndex = 10
	nbSelection = Instance.new('SelectionBox')
	nbSelection.Name = randomString()
	nbSelection.LineThickness = 0.03
	nbSelection.Color3 = Color3.new(1, 1, 1)
	local function updateNameBox()
		local t
		local target = IYMouse.Target
		
		if target then
			local humanoid = target.Parent:FindFirstChild('Humanoid') or target.Parent.Parent:FindFirstChild('Humanoid')
			if humanoid then
				t = humanoid.Parent
			end
		end
		
		if t ~= nil then
			local x = IYMouse.X
			local y = IYMouse.Y
			local xP
			local yP
			if IYMouse.X > 200 then
				xP = x - 205
				nameBox.TextXAlignment = Enum.TextXAlignment.Right
			else
				xP = x + 25
				nameBox.TextXAlignment = Enum.TextXAlignment.Left
			end
			nameBox.Position = UDim2.new(0, xP, 0, y)
			nameBox.Text = t.Name
			nameBox.Visible = true
			nbSelection.Parent = t
			nbSelection.Adornee = t
		else
			nameBox.Visible = false
			nbSelection.Parent = nil
			nbSelection.Adornee = nil
		end
	end
	nbUpdateFunc = IYMouse.Move:connect(updateNameBox)
end)

addcmd('unhovername',{'nohovername'},
function(args, speaker)
	if nbUpdateFunc then
		nbUpdateFunc:Disconnect()
		nameBox:Destroy()
		nbSelection:Destroy()
	end
end)

addcmd('hitbox',{},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		if Players[v]~= speaker and Players[v].Character:FindFirstChild('Head') then
			local sizeArg = tonumber(args[2])
			local Size = Vector3.new(sizeArg,sizeArg,sizeArg)
			local Head = Players[v].Character:FindFirstChild('Head')
			if Head:IsA("BasePart") then
				if not args[2] or sizeArg == 1 then
					Head.Size = Vector3.new(2,1,1)
				else
					Head.Size = Size
				end
			end
		end
	end
end)

addcmd('stareat',{'stare'},
function(args, speaker)
	local players = getPlayer(args[1], speaker)
	for i,v in pairs(players) do
		if stareLoop then
			stareLoop:Disconnect()
		end
		if not Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Players[v].Character:FindFirstChild("HumanoidRootPart") then return end
		local function stareFunc()
			if Players.LocalPlayer.Character.PrimaryPart and Players:FindFirstChild(v) and Players[v].Character ~= nil and Players[v].Character:FindFirstChild("HumanoidRootPart") then
				local chrPos=Players.LocalPlayer.Character.PrimaryPart.Position
				local tPos=Players[v].Character:FindFirstChild("HumanoidRootPart").Position
				local modTPos=Vector3.new(tPos.X,chrPos.Y,tPos.Z)
				local newCF=CFrame.new(chrPos,modTPos)
				Players.LocalPlayer.Character:SetPrimaryPartCFrame(newCF)
			elseif not Players:FindFirstChild(v) then
				stareLoop:Disconnect()
			end
		end
		
		stareLoop = game:GetService("RunService").RenderStepped:Connect(stareFunc)
	end
end)

addcmd('unstareat',{'unstare','nostare','nostareat'},
function(args, speaker)
	if stareLoop then
		stareLoop:Disconnect()
	end
end)

addcmd('removeterrain',{'rterrain','noterrain'},
function(args, speaker)
	workspace:FindFirstChildOfClass('Terrain'):Clear()
end)

addcmd('clearnilinstances',{'nonilinstances','cni'},
function(args, speaker)
	if getnilinstances then
		for i,v in pairs(getnilinstances()) do
			v:Destroy()
		end
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing getnilinstances)')
	end
end)

addcmd('destroyheight',{'dh'},
function(args, speaker)
	local dh = args[1] or -500
	if isNumber(dh) then
		workspace.FallenPartsDestroyHeight = dh
	end
end)

local freezingua = nil
frozenParts = {}
addcmd('freezeunanchored',{'freezeua'},
function(args, speaker)
	if sethidden then
		local badnames = {
			"Head",
			"UpperTorso",
			"LowerTorso",
			"RightUpperArm",
			"LeftUpperArm",
			"RightLowerArm",
			"LeftLowerArm",
			"RightHand",
			"LeftHand",
			"RightUpperLeg",
			"LeftUpperLeg",
			"RightLowerLeg",
			"LeftLowerLeg",
			"RightFoot",
			"LeftFoot",
			"Torso",
			"Right Arm",
			"Left Arm",
			"Right Leg",
			"Left Leg",
			"HumanoidRootPart"
		}
		local function FREEZENOOB(v)
			if v:IsA("BasePart" or "UnionOperation") and v.Anchored == false then
				local BADD = false
				for i = 1,#badnames do
					if v.Name == badnames[i] then
						BADD = true
					end
				end
				if speaker.Character and v:IsDescendantOf(speaker.Character) then
					BADD = true
				end
				if BADD == false then
					for i,c in pairs(v:GetChildren()) do
						if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
							c:Destroy()
						end
					end
					sethidden(speaker,"MaximumSimulationRadius",1/0)
					if setsimulation then
						setsimulation(1e308)
					else
						sethidden(speaker,"SimulationRadius", 1e308)
					end
					local bodypos = Instance.new("BodyPosition",v)
					bodypos.Position = v.Position
					bodypos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
					local bodygyro = Instance.new("BodyGyro",v)
					bodygyro.CFrame = v.CFrame
					bodygyro.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
					if not table.find(frozenParts,v) then
						table.insert(frozenParts,v)
					end
				end
			end
		end
		for i,v in pairs(workspace:GetDescendants()) do
			FREEZENOOB(v)
		end
		freezingua = workspace.DescendantAdded:Connect(FREEZENOOB)
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('thawunanchored',{'thawua','unfreezeunanchored','unfreezeua'},
function(args, speaker)
	if sethidden then
		if freezingua then
			freezingua:Disconnect()
		end
		sethidden(speaker,"MaximumSimulationRadius",1/0)
		if setsimulation then
			setsimulation(1e308)
		else
			sethidden(speaker,"SimulationRadius", 1e308)
		end
		for i,v in pairs(frozenParts) do
			for i,c in pairs(v:GetChildren()) do
				if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
					c:Destroy()
				end
			end
		end
		frozenParts = {}
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

addcmd('tpunanchored',{'tpua'},
function(args, speaker)
	if sethidden then
		local players = getPlayer(args[1], speaker)
		for i,v in pairs(players) do
			local Forces = {}
			for _,part in pairs(workspace:GetDescendants()) do
				if Players[v].Character:FindFirstChild('Head') and part:IsA("BasePart" or "UnionOperation" or "Model") and part.Anchored == false and not part:IsDescendantOf(speaker.Character) and part.Name == "Torso" == false and part.Name == "Head" == false and part.Name == "Right Arm" == false and part.Name == "Left Arm" == false and part.Name == "Right Leg" == false and part.Name == "Left Leg" == false and part.Name == "HumanoidRootPart" == false then
					for i,c in pairs(part:GetChildren()) do
						if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
							c:Destroy()
						end
					end
					local ForceInstance = Instance.new("BodyPosition", part)
					ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
					table.insert(Forces, ForceInstance)
					if not table.find(frozenParts,part) then
						table.insert(frozenParts,part)
					end
				end
			end
			sethidden(speaker,"MaximumSimulationRadius",1/0)
			if setsimulation then
				setsimulation(1e308)
			else
				sethidden(speaker,"SimulationRadius", 1e308)
			end
			for i,c in pairs(Forces) do
				c.Position = Players[v].Character.Head.Position
			end
		end
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end)

keycodeMap = {
	["0"] = 0x30,
	["1"] = 0x31,
	["2"] = 0x32,
	["3"] = 0x33,
	["4"] = 0x34,
	["5"] = 0x35,
	["6"] = 0x36,
	["7"] = 0x37,
	["8"] = 0x38,
	["9"] = 0x39,
	["a"] = 0x41,
	["b"] = 0x42,
	["c"] = 0x43,
	["d"] = 0x44,
	["e"] = 0x45,
	["f"] = 0x46,
	["g"] = 0x47,
	["h"] = 0x48,
	["i"] = 0x49,
	["j"] = 0x4A,
	["k"] = 0x4B,
	["l"] = 0x4C,
	["m"] = 0x4D,
	["n"] = 0x4E,
	["o"] = 0x4F,
	["p"] = 0x50,
	["q"] = 0x51,
	["r"] = 0x52,
	["s"] = 0x53,
	["t"] = 0x54,
	["u"] = 0x55,
	["v"] = 0x56,
	["w"] = 0x57,
	["x"] = 0x58,
	["y"] = 0x59,
	["z"] = 0x5A,
	["enter"] = 0x0D,
	["shift"] = 0x10,
	["ctrl"] = 0x11,
	["alt"] = 0x12,
	["pause"] = 0x13,
	["capslock"] = 0x14,
	["spacebar"] = 0x20,
	["pageup"] = 0x21,
	["pagedown"] = 0x22,
	["end"] = 0x23,
	["home"] = 0x24,
	["left"] = 0x25,
	["up"] = 0x26,
	["right"] = 0x27,
	["down"] = 0x28,
	["insert"] = 0x2D,
	["delete"] = 0x2E,
	["f1"] = 0x70,
	["f2"] = 0x71,
	["f3"] = 0x72,
	["f4"] = 0x73,
	["f5"] = 0x74,
	["f6"] = 0x75,
	["f7"] = 0x76,
	["f8"] = 0x77,
	["f9"] = 0x78,
	["f10"] = 0x79,
	["f11"] = 0x7A,
	["f12"] = 0x7B,
}
autoKeyPressing = false
cancelAutoKeyPress = nil

addcmd('autokeypress',{'keypress'},
function(args, speaker)
	if keypress and keyrelease and args[1] then
		local code = keycodeMap[args[1]:lower()]
		if not code then notify('Auto Key Press',"Invalid key") return end
		execCmd('unautokeypress')
		wait()
		local clickDelay = 0.1
		local releaseDelay = 0.1
		if args[2] and isNumber(args[2]) then clickDelay = args[2] end
		if args[3] and isNumber(args[3]) then releaseDelay = args[3] end
		autoKeyPressing = true
		cancelAutoKeyPress = UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
			if not gameProcessedEvent then
				if (input.KeyCode == Enum.KeyCode.Backspace and UserInputService:IsKeyDown(Enum.KeyCode.Equals)) or (input.KeyCode == Enum.KeyCode.Equals and UserInputService:IsKeyDown(Enum.KeyCode.Backspace)) then
					autoKeyPressing = false
					cancelAutoKeyPress:Disconnect()
				end
			end
		end)
		notify('Auto Key Press',"Press [backspace] and [=] at the same time to stop")
		repeat wait(clickDelay)
			keypress(code)
			wait(releaseDelay)
			keyrelease(code)
		until autoKeyPressing == false
		if cancelAutoKeyPress then cancelAutoKeyPress:Disconnect() keyrelease(code) end
	else
		notify('Auto Key Press',"Your exploit doesn't have the ability to use auto key press")
	end
end)

addcmd('unautokeypress',{'noautokeypress','unkeypress','nokeypress'},
function(args, speaker)
	autoKeyPressing = false
	if cancelAutoKeyPress then cancelAutoKeyPress:Disconnect() end
end)

addcmd('addplugin',{'plugin'},
function(args, speaker)
	addPlugin(getstring(1))
end)

addcmd('removeplugin',{'deleteplugin'},
function(args, speaker)
	deletePlugin(getstring(1))
end)

addcmd('reloadplugin',{},
function(args, speaker)
	local pluginName = getstring(1)
	deletePlugin(pluginName)
	wait(1)
	addPlugin(pluginName)
end)

addcmd('removecmd',{'deletecmd'},
function(args, speaker)
	removecmd(args[1])
end)

updateColors(currentShade1,shade1)
updateColors(currentShade2,shade2)
updateColors(currentShade3,shade3)
updateColors(currentText1,text1)
updateColors(currentText2,text2)
updateColors(currentScroll,scroll)

if PluginsTable ~= nil or PluginsTable ~= {} then
	FindPlugins(PluginsTable)
end

-- Events
eventEditor.RegisterEvent("OnExecute")
eventEditor.RegisterEvent("OnSpawn",{
	{Type="Player",Name="Player Filter ($1)"}
})
eventEditor.RegisterEvent("OnDied",{
	{Type="Player",Name="Player Filter ($1)"}
})
eventEditor.RegisterEvent("OnKilled",{
	{Type="Player",Name="Victim Player ($1)"},
	{Type="Player",Name="Killer Player ($2)",Default = 1}
})
eventEditor.RegisterEvent("OnJoin",{
	{Type="Player",Name="Player Filter ($1)",Default = 1}
})
eventEditor.RegisterEvent("OnChatted",{
	{Type="Player",Name="Player Filter ($1)",Default = 1},
	{Type="String",Name="Message Filter ($2)"}
})

function hookCharEvents(plr,instant)
	local char = plr.Character
	if not char then return end
	
	local humanoid = char:WaitForChild("Humanoid",10)
	if not humanoid then return end
	
	humanoid.Died:Connect(function()
		eventEditor.FireEvent("OnDied",plr.Name)
		
		local killedBy = humanoid:FindFirstChild("creator")
		if killedBy and killedBy.Value and killedBy.Value.Parent then
			eventEditor.FireEvent("OnKilled",plr.Name,killedBy.Name)
		end
	end)
end

game:GetService("Players").PlayerAdded:Connect(function(plr)
	eventEditor.FireEvent("OnJoin",plr.Name)
	plr.Chatted:Connect(function(msg) eventEditor.FireEvent("OnChatted",tostring(plr),msg) end)
	plr.CharacterAdded:Connect(function() eventEditor.FireEvent("OnSpawn",tostring(plr)) hookCharEvents(plr) end)
	JoinLog(plr)
	ChatLog(plr)
	if ESPenabled then
		repeat wait(1) until plr.Character and getRoot(plr.Character)
		ESP(plr)
	end
	if CHMSenabled then
		repeat wait(1) until plr.Character and getRoot(plr.Character)
		CHMS(plr)
	end
end)

for _,plr in pairs(game:GetService("Players"):GetPlayers()) do
	pcall(function()
		plr.Chatted:Connect(function(msg) eventEditor.FireEvent("OnChatted",tostring(plr),msg) end)
		plr.CharacterAdded:Connect(function() eventEditor.FireEvent("OnSpawn",tostring(plr)) hookCharEvents(plr) end)
		hookCharEvents(plr)
	end)
end

if spawnCmds and #spawnCmds > 0 then
	for i,v in pairs(spawnCmds) do
		eventEditor.AddCmd("OnSpawn",{v.COMMAND or "",{0},v.DELAY or 0})
	end
	updatesaves()
end

if loadedEventData then eventEditor.LoadData(loadedEventData) end
eventEditor.Refresh()

eventEditor.FireEvent("OnExecute")

if aliases and #aliases > 0 then
	local cmdMap = {}
	for i,v in pairs(cmds) do
		cmdMap[v.NAME:lower()] = v
		for _,alias in pairs(v.ALIAS) do
			cmdMap[alias:lower()] = v
		end
	end
	for i = 1, #aliases do
		local cmd = string.lower(aliases[i].CMD)
		local alias = string.lower(aliases[i].ALIAS)
		if cmdMap[cmd] then
			customAlias[alias] = cmdMap[cmd]
		end
	end
	refreshaliases()
end

IYMouse.Move:connect(checkTT)

if pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/version'))() end) then
	if ver ~= Version then
		notify('Outdated','Get the new version at infyield.yolasite.com')
	end
	if Announcement and Announcement ~= '' then
		local AnnGUI = Instance.new("Frame")
		local background = Instance.new("Frame")
		local TextBox = Instance.new("TextLabel")
		local shadow = Instance.new("Frame")
		local PopupText = Instance.new("TextLabel")
		local Exit = Instance.new("TextButton")
		local ExitImage = Instance.new("ImageLabel")
		
		AnnGUI.Name = randomString()
		AnnGUI.Parent = PARENT
		AnnGUI.Active = true
		AnnGUI.BackgroundTransparency = 1
		AnnGUI.Position = UDim2.new(0.5, -180, 0, -500)
		AnnGUI.Size = UDim2.new(0, 360, 0, 20)
		AnnGUI.ZIndex = 10
		
		background.Name = "background"
		background.Parent = AnnGUI
		background.Active = true
		background.BackgroundColor3 = currentShade1
		background.BorderSizePixel = 0
		background.Position = UDim2.new(0, 0, 0, 20)
		background.Size = UDim2.new(0, 360, 0, 150)
		background.ZIndex = 10
		
		TextBox.Parent = background
		TextBox.BackgroundTransparency = 1
		TextBox.Position = UDim2.new(0, 5, 0, 5)
		TextBox.Size = UDim2.new(0, 350, 0, 140)
		TextBox.Font = Enum.Font.SourceSans
		TextBox.TextSize = 18
		TextBox.TextWrapped = true
		TextBox.Text = Announcement
		TextBox.TextColor3 = currentText1
		TextBox.TextXAlignment = Enum.TextXAlignment.Left
		TextBox.TextYAlignment = Enum.TextYAlignment.Top
		TextBox.ZIndex = 10
		
		shadow.Name = "shadow"
		shadow.Parent = AnnGUI
		shadow.BackgroundColor3 = currentShade2
		shadow.BorderSizePixel = 0
		shadow.Size = UDim2.new(0, 360, 0, 20)
		shadow.ZIndex = 10
		
		PopupText.Name = "PopupText"
		PopupText.Parent = shadow
		PopupText.BackgroundTransparency = 1
		PopupText.Size = UDim2.new(1, 0, 0.95, 0)
		PopupText.ZIndex = 10
		PopupText.Font = Enum.Font.SourceSans
		PopupText.TextSize = 14
		PopupText.Text = "Server Announcement"
		PopupText.TextColor3 = currentText1
		PopupText.TextWrapped = true
		
		Exit.Name = "Exit"
		Exit.Parent = shadow
		Exit.BackgroundTransparency = 1
		Exit.Position = UDim2.new(1, -20, 0, 0)
		Exit.Size = UDim2.new(0, 20, 0, 20)
		Exit.Text = ""
		Exit.ZIndex = 10
		
		ExitImage.Parent = Exit
		ExitImage.BackgroundColor3 = Color3.new(1, 1, 1)
		ExitImage.BackgroundTransparency = 1
		ExitImage.Position = UDim2.new(0, 5, 0, 5)
		ExitImage.Size = UDim2.new(0, 10, 0, 10)
		ExitImage.Image = "rbxassetid://5054663650"
		ExitImage.ZIndex = 10
		
		wait(1)
		AnnGUI:TweenPosition(UDim2.new(0.5, -180, 0, 150), "InOut", "Quart", 0.5, true, nil)
		
		Exit.MouseButton1Click:Connect(function()
			AnnGUI:TweenPosition(UDim2.new(0.5, -180, 0, -500), "InOut", "Quart", 0.5, true, nil)
			wait(0.6)
			AnnGUI:Destroy()
		end)
	end
end

wait()
Credits:TweenPosition(UDim2.new(0,0,0.9,0), "Out", "Quart", 0.2)
Logo:TweenSizeAndPosition(UDim2.new(0,175,0,175),UDim2.new(0,37,0,45), "Out", "Quart", 0.3)
wait(1)
for i=0,1,0.1 do
	Logo.ImageTransparency = i
	IntroBackground.BackgroundTransparency = i
	wait()
end
Credits:TweenPosition(UDim2.new(0,0,0.9,30), "Out", "Quart", 0.2)
wait(0.2)
Logo:Destroy()
Credits:Destroy()
IntroBackground:Destroy()
minimizeHolder()
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




AutoTab:CreateButton( "Inf Coin multiplier", function() --the (arg) is if the checkbox is toggled or not

      game.Players.LocalPlayer.CollectMulti.Value = 9999999999999


end)

AutoTab:CreateButton("Inf Range", function() --the (arg) is if the checkbox is toggled or not
   
      game.Players.LocalPlayer.Range.Value = 1000000

 
end)
AutoTab:CreateToggle("Auto Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.reb = true 
        while wait(0) and _G.reb do
       local args = {
    [1] = "Rebirth",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.reb = false
    end
end)
AutoTab:CreateButton("IDK Why But Before", function() --the (arg) is if the checkbox is toggled or not
 
end)
AutoTab:CreateButton("I can Use Auto Buy Eggs", function() --the (arg) is if the checkbox is toggled or not

end)
AutoTab:CreateButton("Without Kick", function() --the (arg) is if the checkbox is toggled or not

end)
eggs:CreateToggle("Auto Buy Clown Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e1 = true 
        while wait(0) and _G.e1 do

         local args = {
    [1] = "OpenEgg",
    [2] = "ClownEgg",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.e1 = false
    end
end)

eggs:CreateToggle("Auto Buy Circus Animals Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e2 = true 
        while wait(0) and _G.e2 do

         local args = {
    [1] = "OpenEgg",
    [2] = "CircusAnimals",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.e2 = false
    end
end)
eggs:CreateToggle("Auto Buy Angels Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e3 = true 
        while wait(0) and _G.e3 do

         local args = {
    [1] = "OpenEgg",
    [2] = "AngelEgg",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.e3 = false
    end
end)
eggs:CreateToggle("Auto Buy Lion Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e4 = true 
        while wait(0) and _G.e4 do

         local args = {
    [1] = "OpenEgg",
    [2] = "LionEgg",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.e4 = false
    end
end)
eggs:CreateToggle("Auto Buy Cracked Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e5 = true 
        while wait(0) and _G.e5 do

         local args = {
    [1] = "OpenEgg",
    [2] = "CrackedEgg",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.e5 = false
    end
end)
eggs:CreateToggle("Auto Buy Eye Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e6 = true 
        while wait(0) and _G.e6 do
      local args = {
    [1] = "OpenEgg",
    [2] = "Eye",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))

        end
    else
        _G.e6 = false
    end
end)
eggs:CreateToggle("Auto Buy Lava Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e7 = true 
        while wait(0) and _G.e7 do

local args = {
    [1] = "OpenEgg",
    [2] = "Lava",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.e7 = false
    end
end)
eggs:CreateToggle("Auto Buy Devil Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.De = true 
        while wait(0) and _G.De do

local args = {
    [1] = "OpenEgg",
    [2] = "Devil",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))


        end
    else
        _G.De = false
    end
end)
eggs:CreateToggle("Auto Buy Pumpkin Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Pum = true 
        while wait(0) and _G.Pum do

local args = {
    [1] = "OpenEgg",
    [2] = "Pumpkin",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))

        end
    else
        _G.Pum = false
    end
end)
eggs:CreateToggle("Auto Buy Angry Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.An = true 
        while wait(0) and _G.An do
local args = {
    [1] = "OpenEgg",
    [2] = "Angry",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))


        end
    else
        _G.An = false
    end
end)
eggs:CreateToggle("Auto Buy Moon Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Mo = true 
        while wait(0) and _G.Mo do
local args = {
    [1] = "OpenEgg",
    [2] = "Moon",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))


        end
    else
        _G.Mo = false
    end
end)
eggs:CreateToggle("Auto Buy Basic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.ba = true 
        while wait(0) and _G.ba do
local args = {
    [1] = "OpenEgg",
    [2] = "Basic",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))


        end
    else
        _G.ba = false
    end
end)
chest:CreateToggle("Auto Shiny Costumes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.ShinyA = true 
        while wait(1) and _G.ShinyA do
local args = {
    [1] = "MakeShinyCostume",
    [2] = "PaulBlartTheCircusCop",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Conductor",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "SmileyTheClown",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CircusK9",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "NickBass",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CircusTender",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CircusOwner",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Owner'sSon",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CircusElephant",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Mr.Fox",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Skeleton",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Zombie",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Anubis",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "TRex",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CaptainSquid",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Frankenstein",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "PumpkinReaper",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CircuitBreaker",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Overlord",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Knight",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "SpaceMan",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "FredTheZombie",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "MagmaFiend",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Thickhoof",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Mr.Robot",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "DrFiaTyfoid",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Snowman",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "LagoonLieutenant",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "BeeSoldier",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "DragonflyStriker",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Croczilla",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "FredTheZombie",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Agrynoth",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Mushiro",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Werewolf",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Gargoyle",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CratusTheWarlord",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CloudWarrior",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "CloudProtector",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Thrasher",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "MechWasp",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "TechnoWizard",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "TripleHeadedTrouble",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Wyldfire",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "SunSlayer",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Birdcaller",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Icicle",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Equinox",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Starmist",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Erisyphia",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "Guardian",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "AxeAngel",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeShinyCostume",
    [2] = "DJDataBaze",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.ShinyA = false
    end
end)
chest:CreateToggle("Auto Rainbow Costumes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.RainbowA = true 
        while wait(1) and _G.RainbowA do
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "PaulBlartTheCircusCop",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Conductor",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "SmileyTheClown",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CircusK9",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "NickBass",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CircusTender",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CircusOwner",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Owner'sSon",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CircusElephant",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Mr.Fox",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Skeleton",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Zombie",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Anubis",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "TRex",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CaptainSquid",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Frankenstein",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "PumpkinReaper",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CircuitBreaker",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Overlord",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Knight",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "SpaceMan",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "FredTheZombie",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "MagmaFiend",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Thickhoof",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Mr.Robot",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "DrFiaTyfoid",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Snowman",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "LagoonLieutenant",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "BeeSoldier",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "DragonflyStriker",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Croczilla",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "FredTheZombie",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Agrynoth",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Mushiro",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Werewolf",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Gargoyle",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CratusTheWarlord",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CloudWarrior",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "CloudProtector",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Thrasher",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "MechWasp",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "TechnoWizard",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "TripleHeadedTrouble",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Wyldfire",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "SunSlayer",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Birdcaller",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Icicle",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Equinox",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Starmist",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Erisyphia",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "Guardian",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "AxeAngel",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
local args = {
    [1] = "MakeRainbowCostume",
    [2] = "DJDataBaze",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))
        end
    else
        _G.RainbowA = false
    end
end)
chest:CreateToggle("Auto Buy Green Circus Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c1 = true 
        while wait(0) and _G.c1 do
local args = {
    [1] = "OpenCostume",
    [2] = "GreenChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:FireServer(unpack(args))


        end
    else
        _G.c1 = false
    end
end)
chest:CreateToggle("Auto Buy Pink Circus Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c2 = true 
        while wait(0) and _G.c2 do

local args = {
    [1] = "OpenCostume",
    [2] = "PinkChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c2 = false
    end
end)
chest:CreateToggle("Auto Buy Epic Angel Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c3 = true 
        while wait(0) and _G.c3 do

local args = {
    [1] = "OpenCostume",
    [2] = "EpicAngelChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c3 = false
    end
end)
chest:CreateToggle("Auto Buy Gold Angel Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c4 = true 
        while wait(0) and _G.c4 do

local args = {
    [1] = "OpenCostume",
    [2] = "GoldAngelChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c4 = false
    end
end)
chest:CreateToggle("Auto Buy Angel Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c5 = true 
        while wait(0) and _G.c5 do

local args = {
    [1] = "OpenCostume",
    [2] = "AngelChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c5 = false
    end
end)
chest:CreateToggle("Auto Buy Green Lava Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c6 = true 
        while wait(0) and _G.c6 do

local args = {
    [1] = "OpenCostume",
    [2] = "GreenLavaChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c6 = false
    end
end)
chest:CreateToggle("Auto Buy Blue Lava Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c7 = true 
        while wait(0) and _G.c7 do

local args = {
    [1] = "OpenCostume",
    [2] = "BlueLavaChest",
}


game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c7 = false
    end
end)
chest:CreateToggle("Auto Buy Lava Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c8 = true 
        while wait(0) and _G.c8 do

local args = {
    [1] = "OpenCostume",
    [2] = "LavaChest",
}

game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c8 = false
    end
end)
chest:CreateToggle("Auto Buy Basic Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c9 = true 
        while wait(0) and _G.c9 do

local args = {
    [1] = "OpenCostume",
    [2] = "BasicChest",
}


game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c9 = false
    end
end)
chest:CreateToggle("Auto Buy Gold Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c10 = true 
        while wait(0) and _G.c10 do

local args = {
    [1] = "OpenCostume",
    [2] = "GoldChest",
}


game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c10 = false
    end
end)
chest:CreateToggle("Auto Buy Black Chest", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c11 = true 
        while wait(0) and _G.c11 do

local args = {
    [1] = "OpenCostume",
    [2] = "BlackChest",
}


game:GetService("ReplicatedStorage")["\n\t"]:InvokeServer(unpack(args))

        end
    else
        _G.c11 = false
    end
end)
AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-152.445496, 12.130024, -47.4170074)
end)

teleports:CreateButton("Lava Zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2277.12622, 36.8300209, 310.421234)
end)

teleports:CreateButton("Circus Zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1620.35205, 64.9958725, -1481.45996)
end)


teleports:CreateButton("Rebirth", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2610.4165, 66.6250305, 163.634918)
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

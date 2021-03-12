
--https://www.roblox.com/games/3486025575/HUGE-X2-EVENT-Magnet-Simulator

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Magnet-Simulator GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs 1","things", true)
local eggs2 = Library:CreateTab("Auto Buy Eggs 2","things", true)
local rebirths = Library:CreateTab("Auto Rebirth","things", true)
local MISC = Library:CreateTab("MISC","things", true)
local credits = Library:CreateTab("Credits","things", true)

local rs = game:GetService("RunService").RenderStepped
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





AutoTab:CreateButton("Free Best Magnet", function() 
  



local E = game:GetService("ReplicatedStorage").Tools["Festive Magnets"]:Clone()
E.Parent = game.Players.LocalPlayer.Backpack


   
end)

AutoTab:CreateButton("Collect Best Cubes", function() 
  


  local requestGrab = game:GetService("ReplicatedStorage").Events.MagnetEvents.requestGrab
local Backpack = game:GetService("Players").LocalPlayer.Backpack

while true do
   for i,v in pairs(Backpack:GetChildren()) do
       for i = 1, 600 do
           wait(0.1)
           requestGrab:FireServer(
       "6080000000",
       game:GetService("Players").LocalPlayer.Backpack[v.Name]
       )
       end
   end
end
  local requestGrab = game:GetService("ReplicatedStorage").Events.MagnetEvents.requestGrab
local Backpack = game:GetService("Players").LocalPlayer.Backpack

while true do
   for i,v in pairs(Backpack:GetChildren()) do
       for i = 1, 99999 do
           wait(0)
           requestGrab:FireServer(
       "4160000000",
       game:GetService("Players").LocalPlayer.Backpack[v.Name]
       )
       end
   end
end

 
end)
AutoTab:CreateButton("Collect Clover Cubes ⚠️RaisE ping", function() 
    local requestGrab = game:GetService("ReplicatedStorage").Events.MagnetEvents.requestGrab
local Backpack = game:GetService("Players").LocalPlayer.Backpack
game.RunService.RenderStepped:Connect(function()

while true do
   for i,v in pairs(Backpack:GetChildren()) do
     
       for i = 1, 50 do
           rs:wait(0)
           requestGrab:FireServer(
       "Clover1",
       game:GetService("Players").LocalPlayer.Backpack[v.Name]
       )
           end
   end
end

  local requestGrab = game:GetService("ReplicatedStorage").Events.MagnetEvents.requestGrab
local Backpack = game:GetService("Players").LocalPlayer.Backpack

while true do
   for i,v in pairs(Backpack:GetChildren()) do
       for i = 1, 99999 do
           wait(0)
           requestGrab:FireServer(
       "Clover1",
       game:GetService("Players").LocalPlayer.Backpack[v.Name]
       )
           end
   end
end

  local requestGrab = game:GetService("ReplicatedStorage").Events.MagnetEvents.requestGrab
local Backpack = game:GetService("Players").LocalPlayer.Backpack

while true do
   for i,v in pairs(Backpack:GetChildren()) do
       for i = 1, 99999 do
           wait(0)
           requestGrab:FireServer(
       "Clover1",
       game:GetService("Players").LocalPlayer.Backpack[v.Name]
       )
           
   
 end
end
end

end)
AutoTab:CreateButton("Collect Clover Cubes ", function() 
   


   local requestGrab = game:GetService("ReplicatedStorage").Events.MagnetEvents.requestGrab
local Backpack = game:GetService("Players").LocalPlayer.Backpack

while true do
   for i,v in pairs(Backpack:GetChildren()) do
       for i = 1, 600 do
           wait(0.1)
           requestGrab:FireServer(
       "Clover1",
       game:GetService("Players").LocalPlayer.Backpack[v.Name]
       )
      
   
end
end
end
end)
end)
AutoTab:CreateToggle("Tp To Hidens Clovers", function(arg) 
     if arg then
        _G.Clovers = true 
        while wait(0) and _G.Clovers do


local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").PumpkinSpawns.Pumpkins.Clover

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
        end
    else
        _G.Clovers= false
    end
end)
AutoTab:CreateToggle("Auto Sell", function(arg) 
   if arg then
        _G.ODD = true 
        while wait(0.5) and _G.ODD do
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-417.997406, 15.8179636, -851.465942)
   end
    else
        _G.ODD= false
    end
end)



AutoTab:CreateToggle("Shiny All Santa Pets", function(arg) 
    if arg then
        _G.b4 = true 
        while wait(0) and _G.b4 do
local args = {
    [1] = "Santa Doge",
}

game:GetService("ReplicatedStorage").ShinyEvents.requestMakeShiny:FireServer(unpack(args))
wait(0.0001)
local args = {
    [1] = "Reindeer",
}

game:GetService("ReplicatedStorage").ShinyEvents.requestMakeShiny:FireServer(unpack(args))
wait(0.0001)
local args = {
    [1] = "Meowy Christmas",
}

game:GetService("ReplicatedStorage").ShinyEvents.requestMakeShiny:FireServer(unpack(args))
wait(0.0001)
local args = {
    [1] = "Elf on the Shelf",
}

game:GetService("ReplicatedStorage").ShinyEvents.requestMakeShiny:FireServer(unpack(args))
wait(0.0001)
local args = {
    [1] = "Reese the Elf",
}

game:GetService("ReplicatedStorage").ShinyEvents.requestMakeShiny:FireServer(unpack(args))
wait(0.0001)
local args = {
    [1] = "Curly the Elf",
}

game:GetService("ReplicatedStorage").ShinyEvents.requestMakeShiny:FireServer(unpack(args))

        end
    else
        _G.b4= false
    end
end)
AutoTab:CreateToggle("Omega All Santa Pets", function(arg) 
    if arg then
        _G.b5 = true 
        while wait(0) and _G.b5 do
local args = {
    [1] = "Santa Doge",
}

game:GetService("ReplicatedStorage").ShinyEvents.requestMakeOmega:FireServer(unpack(args))
wait(0.0001)
local args = {
    [1] = "Reindeer",
}

game:GetService("ReplicatedStorage").ShinyEvents.requestMakeOmega:FireServer(unpack(args))
wait(0.0001)
local args = {
    [1] = "Meowy Christmas",
}

game:GetService("ReplicatedStorage").ShinyEvents.requestMakeOmega:FireServer(unpack(args))
wait(0.0001)
local args = {
    [1] = "Elf on the Shelf",
}

game:GetService("ReplicatedStorage").ShinyEvents.requestMakeOmega:FireServer(unpack(args))
wait(0.0001)
local args = {
    [1] = "Reese the Elf",
}

game:GetService("ReplicatedStorage").ShinyEvents.requestMakeOmega:FireServer(unpack(args))
wait(0.0001)
local args = {
    [1] = "Curly the Elf",
}

game:GetService("ReplicatedStorage").ShinyEvents.requestMakeOmega:FireServer(unpack(args))

        end
    else
        _G.b5= false
    end
end)
rebirths:CreateToggle("Rebirth x1", function(arg) 
    if arg then
        _G.s = true 
        while wait(0) and _G.s do

local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.s= false
    end
end)
rebirths:CreateToggle("Rebirth x5", function(arg) 
    if arg then
        _G.r = true 
        while wait(0) and _G.r do

local args = {
    [1] = 5,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.r= false
    end
end)
rebirths:CreateToggle("Rebirth x25", function(arg) 
    if arg then
        _G.q = true 
        while wait(0) and _G.q do

local args = {
    [1] = 25,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.q= false
    end
end)
rebirths:CreateToggle("Rebirth x50", function(arg) 
    if arg then
        _G.p = true 
        while wait(0) and _G.p do

local args = {
    [1] = 50,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.p= false
    end
end)
rebirths:CreateToggle("Rebirth x100", function(arg) 
    if arg then
        _G.o = true 
        while wait(0) and _G.o do

local args = {
    [1] = 100,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.o= false
    end
end)
rebirths:CreateToggle("Rebirth x250", function(arg) 
    if arg then
        _G.n = true 
        while wait(0) and _G.n do

local args = {
    [1] = 250,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.n= false
    end
end)
rebirths:CreateToggle("Rebirth x500", function(arg) 
    if arg then
        _G.m = true 
        while wait(0) and _G.m do

local args = {
    [1] = 500,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.m= false
    end
end)
rebirths:CreateToggle("Rebirth x1K", function(arg) 
    if arg then
        _G.l = true 
        while wait(0) and _G.l do

local args = {
    [1] = 1000,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.l= false
    end
end)
rebirths:CreateToggle("Rebirth x2,5K", function(arg) 
    if arg then
        _G.k = true 
        while wait(0) and _G.k do

local args = {
    [1] = 2500,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.k= false
    end
end)
rebirths:CreateToggle("Rebirth x5K", function(arg) 
    if arg then
        _G.j = true 
        while wait(0) and _G.j do

local args = {
    [1] = 5000,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.j= false
    end
end)
rebirths:CreateToggle("Rebirth x10K", function(arg) 
    if arg then
        _G.i = true 
        while wait(0) and _G.i do

local args = {
    [1] = 10000,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.i= false
    end
end)
rebirths:CreateToggle("Rebirth x25K", function(arg) 
    if arg then
        _G.h = true 
        while wait(0) and _G.h do

local args = {
    [1] = 25000,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.h= false
    end
end)
rebirths:CreateToggle("Rebirth x50K", function(arg) 
    if arg then
        _G.g = true 
        while wait(0) and _G.g do

local args = {
    [1] = 50000,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.g= false
    end
end)
rebirths:CreateToggle("Rebirth x75K", function(arg) 
    if arg then
        _G.f = true 
        while wait(0) and _G.f do

local args = {
    [1] = 75000,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.f= false
    end
end)
rebirths:CreateToggle("Rebirth x100K", function(arg) 
    if arg then
        _G.e = true 
        while wait(0) and _G.e do

local args = {
    [1] = 100000,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.e= false
    end
end)
rebirths:CreateToggle("Rebirth x125K", function(arg) 
    if arg then
        _G.d = true 
        while wait(0) and _G.d do

local args = {
    [1] = 125000,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.d= false
    end
end)
rebirths:CreateToggle("Rebirth x200K", function(arg) 
    if arg then
        _G.b = true 
        while wait(0) and _G.b do

local args = {
    [1] = 200000,
}

game:GetService("ReplicatedStorage").RebirthEvents.requestRebirth:InvokeServer(unpack(args))
        end
    else
        _G.b= false
    end
end)

rebirths:CreateToggle("Super Rebirths", function(arg) 
    if arg then
        _G.b44 = true 
        while wait(0) and _G.b44 do

game:GetService("ReplicatedStorage").SuperEvents.requestSuperRebirth:FireServer()
        end
    else
        _G.b44= false
    end
end)
rebirths:CreateToggle("Auto Spend Sr Tokens", function(arg) 
    if arg then
        _G.b45 = true 
        while wait(0) and _G.b45 do
local args = {
    [1] = "TokenBoost",
}

game:GetService("ReplicatedStorage").SuperEvents.requestUpgrade:FireServer(unpack(args))
local args = {
    [1] = "CoinRespawn",
}

game:GetService("ReplicatedStorage").SuperEvents.requestUpgrade:FireServer(unpack(args))
local args = {
    [1] = "PetCapacity",
}

game:GetService("ReplicatedStorage").SuperEvents.requestUpgrade:FireServer(unpack(args))
        end
    else
        _G.b45= false
    end
end)

eggs2:CreateToggle("Auto Buy Event Eggs", function(arg) 
    if arg then
        _G.b18 = true 
        while wait(0) and _G.b18 do
local args = {
    [1] = "Lucky Leprechaun Egg",
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b18= false
    end
end)
eggs2:CreateToggle("Auto Buy Santa Workshop Eggs", function(arg) 
    if arg then
        _G.b3 = true 
        while wait(0) and _G.b3 do
local args = {
    [1] = "Santa\'s Workshop Egg",
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b3= false
    end
end)

eggs2:CreateToggle("Auto Buy Snowman Egg", function(arg) 
    if arg then
        _G.b46 = true 
   while wait(0) and _G.b46 do
local args = {
    [1] = "Snowman Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))



        end
    else
        _G.b46= false
    end
end)
eggs2:CreateToggle("Auto Buy Infernal Egg", function(arg) 
    if arg then
        _G.b45 = true 
   while wait(0) and _G.b45 do
local args = {
    [1] = "Infernal Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))



        end
    else
        _G.b45= false
    end
end)
eggs2:CreateToggle("Auto Buy Sinister Egg", function(arg) 
    if arg then
        _G.b43 = true 
   while wait(0) and _G.b43 do
local args = {
    [1] = "Sinister Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))



        end
    else
        _G.b43= false
    end
end)
eggs2:CreateToggle("Auto Buy Eye Egg", function(arg) 
    if arg then
        _G.b44 = true 
   while wait(0) and _G.b44 do
local args = {
    [1] = "Eye Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))


        end
    else
        _G.b44= false
    end
end)

eggs2:CreateToggle("Auto Buy Ghost Egg", function(arg) 
    if arg then
        _G.b42 = true 
   while wait(0) and _G.b42 do
local args = {
    [1] = "Ghost Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))


        end
    else
        _G.b42= false
    end
end)
eggs2:CreateToggle("Auto Buy Skeleton Egg", function(arg) 
    if arg then
        _G.b41 = true 
   while wait(0) and _G.b41 do
local args = {
    [1] = "Skeleton Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))


        end
    else
        _G.b41= false
    end
end)
eggs2:CreateToggle("Auto Buy Mystical Egg", function(arg) 
    if arg then
        _G.b40 = true 
   while wait(0) and _G.b40 do
local args = {
    [1] = "Mystical Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))


        end
    else
        _G.b40= false
    end
end)
eggs2:CreateToggle("Auto Buy Knight Egg", function(arg) 
    if arg then
        _G.b39 = true 
   while wait(0) and _G.b39 do
local args = {
    [1] = "Knight Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))


        end
    else
        _G.b39= false
    end
end)
eggs:CreateToggle("Auto Buy Korblox Egg", function(arg) 
    if arg then
        _G.b38 = true 
   while wait(0) and _G.b38 do
local args = {
    [1] = "Korblox Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))


        end
    else
        _G.b38= false
    end
end)
eggs:CreateToggle("Auto Buy Ninja Egg", function(arg) 
    if arg then
        _G.b37 = true 
   while wait(0) and _G.b37 do
local args = {
    [1] = "Ninja Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b37= false
    end
end)
eggs:CreateToggle("Auto Buy Aquatic Egg", function(arg) 
    if arg then
        _G.b36 = true 
   while wait(0) and _G.b36 do
local args = {
    [1] = "Aquatic Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b36= false
    end
end)
eggs:CreateToggle("Auto Buy Dragon Egg", function(arg) 
    if arg then
        _G.b35 = true 
   while wait(0) and _G.b35 do
local args = {
    [1] = "Dragon Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b35= false
    end
end)
eggs:CreateToggle("Auto Buy Robot Egg", function(arg) 
    if arg then
        _G.b34 = true 
   while wait(0) and _G.b34 do
local args = {
    [1] = "Robot Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b34= false
    end
end)
eggs:CreateToggle("Auto Buy Tycoonist Egg", function(arg) 
    if arg then
        _G.b33 = true 
   while wait(0) and _G.b33 do
local args = {
    [1] = "Tycoonist Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))



        end
    else
        _G.b33= false
    end
end)
eggs:CreateToggle("Auto Buy Magma Egg", function(arg) 
    if arg then
        _G.b32 = true 
   while wait(0) and _G.b32 do
local args = {
    [1] = "Magma Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))


        end
    else
        _G.b32= false
    end
end)
eggs:CreateToggle("Auto Buy Overseer Egg", function(arg) 
    if arg then
        _G.b31 = true 
   while wait(0) and _G.b31 do
local args = {
    [1] = "Overseer Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))

        end
    else
        _G.b31= false
    end
end)
eggs:CreateToggle("Auto Buy Demonic Egg", function(arg) 
    if arg then
        _G.b30 = true 
   while wait(0) and _G.b30 do
local args = {
    [1] = "Demonic Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b30= false
    end
end)
eggs:CreateToggle("Auto Buy Dominus Egg", function(arg) 
    if arg then
        _G.b29 = true 
   while wait(0) and _G.b29 do
local args = {
    [1] = "Dominus Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b29= false
    end
end)
eggs:CreateToggle("Auto Buy Super Egg", function(arg) 
    if arg then
        _G.b28 = true 
   while wait(0) and _G.b28 do
local args = {
    [1] = "Super Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))




        end
    else
        _G.b28= false
    end
end)
eggs:CreateToggle("Auto Buy Catacylsmic Egg", function(arg) 
    if arg then
        _G.b27 = true 
        while wait(0) and _G.b27 do
local args = {
    [1] = "Rebirth Egg 2"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))



        end
    else
        _G.b27= false
    end
end)
eggs:CreateToggle("Auto Buy Psychadelic Rebirth Eggs", function(arg) 
    if arg then
        _G.b26 = true 
        while wait(0) and _G.b26 do
local args = {
    [1] = "Psychadelic Rebirth Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))


        end
    else
        _G.b26= false
    end
end)
eggs:CreateToggle("Auto Buy Meme Eggs", function(arg) 
    if arg then
        _G.b25 = true 
        while wait(0) and _G.b25 do
local args = {
    [1] = "Meme Egg"
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))

        end
    else
        _G.b25= false
    end
end)
eggs:CreateToggle("Auto Buy Mythical Eggs", function(arg) 
    if arg then
        _G.b24 = true 
        while wait(0) and _G.b24 do
local args = {
    [1] = "Mythical Egg",
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b24= false
    end
end)
eggs:CreateToggle("Auto Buy Epic Eggs", function(arg) 
    if arg then
        _G.b23 = true 
        while wait(0) and _G.b23 do
local args = {
    [1] = "Epic Egg",
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b23= false
    end
end)
eggs:CreateToggle("Auto Buy Legendary Eggs", function(arg) 
    if arg then
        _G.b22 = true 
        while wait(0) and _G.b22 do
local args = {
    [1] = "Legendary Egg",
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b22= false
    end
end)
eggs:CreateToggle("Auto Buy Rare Eggs", function(arg) 
    if arg then
        _G.b21 = true 
        while wait(0) and _G.b21 do
local args = {
    [1] = "Rare Egg",
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b21= false
    end
end)
eggs:CreateToggle("Auto Buy Uncommon Eggs", function(arg) 
    if arg then
        _G.b20 = true 
        while wait(0) and _G.b20 do
local args = {
    [1] = "Uncommon Egg",
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b20= false
    end
end)
eggs:CreateToggle("Auto Buy Common Eggs", function(arg) 
    if arg then
        _G.b19 = true 
        while wait(0) and _G.b19 do
local args = {
    [1] = "Common Egg",
}

game:GetService("ReplicatedStorage").PetEvents.requesthatch:FireServer(unpack(args))
        end
    else
        _G.b19= false
    end
end)
chests:CreateToggle("Auti Buy Santa Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do
local args = {
    [1] = "Santa Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Christmas Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Christmas Chest",
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))
        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Fire Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Fire Chest",
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))
        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Haunted Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Haunted Chest",
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))
        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Halloween Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Halloween Chest",
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))
        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Scary Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Scary Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Creepy Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do
local args = {
    [1] = "Creepy Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Spooky Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Spooky Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Bighead Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do
local args = {
    [1] = "Bighead Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Headphone Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Headphone Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Viridian Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Viridian Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Antler Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do
local args = {
    [1] = "Antler Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Chrono Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do
local args = {
    [1] = "Chrono Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Domino Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Domino Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Pumpkin Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Pumpkin Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Rich Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Rich Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Valkyrie Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do
local args = {
    [1] = "Valkyrie Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Fortunate Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Fortunate Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))


        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Sparkle Chests", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Sparkle Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
chests:CreateToggle("Auti Buy Wooden Chest", function(arg) 
    if arg then
        _G.b2 = true 
        while wait(0) and _G.b2 do

local args = {
    [1] = "Wooden Chest"
}

game:GetService("ReplicatedStorage").hatEvents.openChest:FireServer(unpack(args))

        end
    else
        _G.b2= false
    end
end)
teleports:CreateButton("Spawn", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(207.455093, 14.6904888, -227.890091)
end)

teleports:CreateButton("Rebirths Zones", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-466.177399, 5.20792055, -896.386353)
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

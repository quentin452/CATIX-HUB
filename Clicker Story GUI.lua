--https://www.roblox.com/games/4859936288/4M-Clicker-Story

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("(outdated)","things", true)  --Clicker-Story
local eggs1 = Library:CreateTab("Auto Buy Eggs x1 2","things", true)
local eggs2 = Library:CreateTab("Auto Buy Eggs x3 ","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs x1","things", true)
local eggs22 = Library:CreateTab("Auto Buy Eggs x3 2","things", true)
local Rebirth = Library:CreateTab("Auto Rebirth","things", true)
local Rebirth2 = Library:CreateTab("Auto Rebirth 2","things", true)
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




AutoTab:CreateToggle("Auto Clicker", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do
            game:GetService("ReplicatedStorage").Remotes.Click:FireServer()
        end
    else
        _G.o = false
    end
end)

AutoTab:CreateToggle("Auto Walk", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o2 = true 
        while wait(0) and _G.o2 do
         local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
 
local localPlayer = Players.LocalPlayer
 
RunService:BindToRenderStep("move",
    -- run after the character
    Enum.RenderPriority.Character.Value + 1,
    function()
        if localPlayer.Character then
            local humanoid = localPlayer.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid:Move(Vector3.new(0, 0, -1), true)
            end
        end
    end
)

        end
    else
        _G.o2 = false
    end
end)

AutoTab:CreateToggle("Auto Boss Lord Mardus", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzc = true 
        while wait(0) and _G.zzc do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Boss["Lord Mardus"].UpperTorso

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
    else
        _G.zzc = false
    end
end)
AutoTab:CreateToggle("Auto Boss General Bovus", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzc2 = true 
        while wait(0) and _G.zzc2 do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Boss["General Bovus"].UpperTorso

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
    else
        _G.zzc2 = false
    end
end)
AutoTab:CreateToggle("Auto Boss Ragnus the Fire Demon", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zzc3 = true 
        while wait(0) and _G.zzc3 do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Boss["Ragnus the Fire Demon"].UpperTorso

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
    else
        _G.zzc3 = false
    end
end)
AutoTab:CreateToggle("Auto Evolve All pets", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0) and _G.a do
            local args = {
    [1] = "All",
}

game:GetService("ReplicatedStorage").Remotes.Pets.EvolvePet:FireServer(unpack(args))
        end
    else
        _G.a = false
    end
end)

eggs:CreateToggle("Auto Buy 50K Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
            local args = {
    [1] = "Uncommon Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.c = false
    end
end)

eggs:CreateToggle("Auto Buy 200K Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
            local args = {
    [1] = "200K Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.d = false
    end
end)

eggs:CreateToggle("Auto Buy 750K Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
            local args = {
    [1] = "X Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.e = false
    end
end)

eggs:CreateToggle("Auto Buy 5M Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
            local args = {
    [1] = "Beach Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.f = false
    end
end)
eggs:CreateToggle("Auto Buy 8M Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f34 = true 
        while wait(0) and _G.f34 do
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer("Halloween Egg",1)
        end
    else
        _G.f34 = false
    end
end)
eggs:CreateToggle("Auto Buy 50B Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
            local args = {
    [1] = "Frost Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Auto Buy 500T Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
            local args = {
    [1] = "Mystic Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Auto Buy 5Qn Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
            local args = {
    [1] = "Storm Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.i = false
    end
end)

eggs:CreateToggle("Auto Buy 49.5Sx Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
            local args = {
    [1] = "Ancient Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.j = false
    end
end)

eggs:CreateToggle("Auto Buy 500Sp Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
            local args = {
    [1] = "Jungle Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.k = false
    end
end)

eggs:CreateToggle("Auto Buy 5N Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
            local args = {
    [1] = "Sand Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.l = false
    end
end)

eggs:CreateToggle("Auto Buy 49.5D Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
            local args = {
    [1] = "Sakura Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.m = false
    end
end)

eggs:CreateToggle("Auto Buy 500Ud Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do
            local args = {
    [1] = "Cyber Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.n = false
    end
end)

eggs:CreateToggle("Auto Buy 5Td Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do
            local args = {
    [1] = "Chocolate Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.o = false
    end
end)

--Updated by ☣BioHazard☣#9086--
eggs:CreateToggle("Auto Buy 2M [EVENT] Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
        while wait(0) and _G.p do
            local args = {
    [1] = "2M Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.p = false
    end
end)

--Updated by ☣BioHazard☣#9086--
eggs:CreateToggle("Auto Buy 3M [EVENT] Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
        while wait(0) and _G.q do
            local args = {
    [1] = "3M Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.q = false
    end
end)

eggs:CreateToggle("Auto Buy 4M [EVENT] Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
        while wait(0) and _G.r do
            local args = {
    [1] = "Nebula Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.r = false
    end
end)

eggs:CreateToggle("Auto Buy 50Qtd Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s = true 
        while wait(0) and _G.s do
            local args = {
    [1] = "Fate Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.s = false
    end
end)
eggs:CreateToggle("Auto Buy 500Qdc Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m18 = true 
        while wait(0) and _G.m18 do
            local args = {
    [1] = "Volcanic Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.m18 = false
    end
end)
eggs2:CreateToggle("Auto Buy 500 Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b1 = true 
        while wait(0) and _G.b1 do
           local args = {
    [1] = " Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.b1 = false
    end
end)

eggs2:CreateToggle("Auto Buy 50K Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c1 = true 
        while wait(0) and _G.c1 do
            local args = {
    [1] = "Uncommon Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.c1 = false
    end
end)

eggs2:CreateToggle("Auto Buy 200K Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d1 = true 
        while wait(0) and _G.d1 do
            local args = {
    [1] = "200K Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.d1 = false
    end
end)

eggs2:CreateToggle("Auto Buy 750K Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e1 = true 
        while wait(0) and _G.e1 do
            local args = {
    [1] = "X Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.e1 = false
    end
end)

eggs2:CreateToggle("Auto Buy 5M Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f1 = true 
        while wait(0) and _G.f1 do
            local args = {
    [1] = "Beach Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.f1 = false
    end
end)
eggs2:CreateToggle("Auto Buy 8M Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f33 = true 
        while wait(0) and _G.f33 do
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer("Halloween Egg",3)
        end
    else
        _G.f33 = false
    end
end)
eggs2:CreateToggle("Auto Buy 50B Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g1 = true 
        while wait(0) and _G.g1 do
            local args = {
    [1] = "Frost Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.g1 = false
    end
end)

eggs2:CreateToggle("Auto Buy 500T Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h1 = true 
        while wait(0) and _G.h1 do
            local args = {
    [1] = "Mystic Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.h1 = false
    end
end)

eggs2:CreateToggle("Auto Buy 5Qn Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i1 = true 
        while wait(0) and _G.i1 do
            local args = {
    [1] = "Storm Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.i1 = false
    end
end)

eggs2:CreateToggle("Auto Buy 49.5Sx Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j1 = true 
        while wait(0) and _G.j1 do
            local args = {
    [1] = "Ancient Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.j1 = false
    end
end)

eggs2:CreateToggle("Auto Buy 500Sp Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k1 = true 
        while wait(0) and _G.k1 do
            local args = {
    [1] = "Jungle Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.k1 = false
    end
end)

eggs2:CreateToggle("Auto Buy 5N Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l1 = true 
        while wait(0) and _G.l1 do
            local args = {
    [1] = "Sand Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.l1 = false
    end
end)


eggs2:CreateToggle("Auto Buy 49.5D Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m1 = true 
        while wait(0) and _G.m1 do
            local args = {
    [1] = "Sakura Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.m1 = false
    end
end)

--Updated by ☣BioHazard☣#9086--
eggs2:CreateToggle("Auto Buy 500Ud Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n1 = true 
        while wait(0) and _G.n1 do
            local args = {
    [1] = "Cyber Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.n1 = false
    end
end)

--Updated by ☣BioHazard☣#9086--
eggs2:CreateToggle("Auto Buy 5Td Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o1 = true 
        while wait(0) and _G.o1 do
            local args = {
    [1] = "Chocolate Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.o = false
    end
end)

--Updated by ☣BioHazard☣#9086--
eggs2:CreateToggle("Auto Buy 2M [EVENT] Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l1 do
            local args = {
    [1] = "2M Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.l1 = false
    end
end)

--Updated by ☣BioHazard☣#9086--
eggs2:CreateToggle("Auto Buy 3M [EVENT] Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m1 = true 
        while wait(0) and _G.m1 do
            local args = {
    [1] = "3M Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.m1 = false
    end
end)

eggs2:CreateToggle("Auto Buy 4M [EVENT] Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m2 = true 
        while wait(0) and _G.m2 do
            local args = {
    [1] = "Nebula Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.m2 = false
    end
end)

eggs2:CreateToggle("Auto Buy 50Qtd Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m3 = true 
        while wait(0) and _G.m3 do
            local args = {
    [1] = "Fate Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.m3 = false
    end
end)
eggs2:CreateToggle("Auto Buy 500Qdc Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m4 = true 
        while wait(0) and _G.m4 do
            local args = {
    [1] = "Volcanic Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.m4 = false
    end
end)
eggs1:CreateToggle("Auto Buy 500 Gold Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m6 = true 
        while wait(0) and _G.m6 do
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer("Solar Egg",1)
        end
    else
        _G.m6 = false
    end
end)
eggs1:CreateToggle("Auto Buy 50K Gold Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m5 = true 
        while wait(0) and _G.m5 do
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer("Cosmic Egg",1)
        end
    else
        _G.m5 = false
    end
end)
eggs22:CreateToggle("Auto Buy 500 Gold Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m6 = true 
        while wait(0) and _G.m6 do
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer("Solar Egg",3)
        end
    else
        _G.m6 = false
    end
end)

eggs22:CreateToggle("Auto Buy 50K Gold Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m7 = true 
        while wait(0) and _G.m7 do
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer("Cosmic Egg",3)
        end
    else
        _G.m7 = false
    end
end)
eggs22:CreateToggle("Auto Buy Udo Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m5 = true 
        while wait(0) and _G.m5 do
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer("Udo Egg",3)
        end
    else
        _G.m5 = false
    end
end)
eggs22:CreateToggle("Auto Buy Kron Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m5 = true 
        while wait(0) and _G.m5 do
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer("Kron Egg",3)
        end
    else
        _G.m5 = false
    end
end)
eggs1:CreateToggle("Auto Buy Udo Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m5 = true 
        while wait(0) and _G.m5 do
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer("Udo Egg",1)
        end
    else
        _G.m5 = false
    end
end)
eggs1:CreateToggle("Auto Buy Kron Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m5 = true 
        while wait(0) and _G.m5 do
game:GetService("ReplicatedStorage").Remotes.OpenEgg:InvokeServer("Kron Egg",1)
        end
    else
        _G.m5 = false
    end
end)
Rebirth:CreateToggle("Auto Rebirth x1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
        while wait(0) and _G.p do
            local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.p = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x10", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
        while wait(0) and _G.q do
           local args = {
    [1] = 10,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.q = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x50", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
        while wait(0) and _G.r do
          local args = {
    [1] = 50,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.r = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x100", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s = true 
        while wait(0) and _G.s do
       local args = {
    [1] = 100,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.s = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x500", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t = true 
        while wait(0) and _G.t do
       local args = {
    [1] = 500,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.t = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x1k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.u = true 
        while wait(0) and _G.u do
       local args = {
    [1] = 1000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.u = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x10k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.v = true 
        while wait(0) and _G.v do
       local args = {
    [1] = 10000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.v = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x100k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.w = true 
        while wait(0) and _G.w do
       local args = {
    [1] = 100000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.w = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x500k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.x = true 
        while wait(0) and _G.x do
       local args = {
    [1] = 500000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.x = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x1M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.y = true 
        while wait(0) and _G.y do
       local args = {
    [1] = 1000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.y = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x2.25M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.z = true 
        while wait(0) and _G.z do
       local args = {
    [1] = 2250000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.z = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x5M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.za = true 
        while wait(0) and _G.za do
       local args = {
    [1] = 5000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.za = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x20M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zb = true 
        while wait(0) and _G.zb do
       local args = {
    [1] = 20000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zb = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x200M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zc = true 
        while wait(0) and _G.zc do
       local args = {
    [1] = 200000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zc = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x750M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zd = true 
        while wait(0) and _G.zd do
       local args = {
    [1] = 750000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zd = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x1,5B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.ze = true 
        while wait(0) and _G.ze do
       local args = {
    [1] = 1500000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.ze = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x5B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zf = true 
        while wait(0) and _G.zf do
       local args = {
    [1] = 5000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zf = false
    end
end)

Rebirth:CreateToggle("Auto Rebirth x50B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zg = true 
        while wait(0) and _G.zg do
       local args = {
    [1] = 50000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zg = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x1T", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zh = true 
        while wait(0) and _G.zh do
       local args = {
    [1] = 1000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zh = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x5T", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zi = true 
        while wait(0) and _G.zi do
       local args = {
    [1] = 5000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zi = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x50T", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zj = true 
        while wait(0) and _G.zj do
       local args = {
    [1] = 50000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zj = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x500T", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zk = true 
        while wait(0) and _G.zk do
       local args = {
    [1] = 500000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zk = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x1Qd", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zl = true 
        while wait(0) and _G.zl do
       local args = {
    [1] = 1000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zl = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x50Qd", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zm = true 
        while wait(0) and _G.zm do
       local args = {
    [1] = 50000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zm = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x500Qd", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zm = true 
        while wait(0) and _G.zm do
       local args = {
    [1] = 500000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zm = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x1Qn", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zn = true 
        while wait(0) and _G.zn do
       local args = {
    [1] = 1000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zn = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x50Qn", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zo = true 
        while wait(0) and _G.zo do
       local args = {
    [1] = 50000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zo = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x500Qn", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zo = true 
        while wait(0) and _G.zo do
       local args = {
    [1] = 500000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zo = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x1Sx", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zr = true 
        while wait(0) and _G.zr do
       local args = {
    [1] = 1000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zr = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x50Sx", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zs = true 
        while wait(0) and _G.zs do
       local args = {
    [1] = 50000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zs = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x500Sx", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zs = true 
        while wait(0) and _G.zs do
       local args = {
    [1] = 500000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zs = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x1Sp", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zp = true 
        while wait(0) and _G.zp do
       local args = {
    [1] = 1000000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zp = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x50Sp", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zp = true 
        while wait(0) and _G.zp do
       local args = {
    [1] = 50000000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zp = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x500Sp", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zq = true 
        while wait(0) and _G.zq do
       local args = {
    [1] = 500000000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zq = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x1Oc", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zr = true 
        while wait(0) and _G.zr do
       local args = {
    [1] = 1000000000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zr = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x50Oc", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zs = true 
        while wait(0) and _G.zs do
       local args = {
    [1] = 50000000000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zs = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x500Oc", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zt = true 
        while wait(0) and _G.zt do
       local args = {
    [1] = 500000000000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zt = false
    end
end)

Rebirth2:CreateToggle("Auto Rebirth x1N", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zu = true 
        while wait(0) and _G.zu do
       local args = {
    [1] = 1000000000000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
        end
    else
        _G.zu = false
    end
end)

AutoTab:CreateToggle("AutoBuy All Upgrades", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zt = true 
        while wait(0) and _G.zt do
       local args = {
    [1] = 1,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Shop.BuyUpgrade:FireServer(unpack(args))

    local args = {
    [1] = 2,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Shop.BuyUpgrade:FireServer(unpack(args))
    local args = {
    [1] = 3,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Shop.BuyUpgrade:FireServer(unpack(args))
    local args = {
    [1] = 4,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Shop.BuyUpgrade:FireServer(unpack(args))
    local args = {
    [1] = 5,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Shop.BuyUpgrade:FireServer(unpack(args))
    local args = {
    [1] = 6,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Shop.BuyUpgrade:FireServer(unpack(args))
    local args = {
    [1] = 7,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Shop.BuyUpgrade:FireServer(unpack(args))
    local args = {
    [1] = 8,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Shop.BuyUpgrade:FireServer(unpack(args))
    local args = {
    [1] = 9,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Shop.BuyUpgrade:FireServer(unpack(args))
    local args = {
    [1] = 10,
    [2] = true
}

game:GetService("ReplicatedStorage").Remotes.Shop.BuyUpgrade:FireServer(unpack(args))
        end
    else
        _G.zt = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)


teleports:CreateButton("Boss", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-53.6902809, -54.268528, -263.553345)
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(3218.27124, -11.1381435, 473.154449)
end)

teleports:CreateButton("Summer World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-729.158081, -71.643074, 1704.77795)
end)

teleports:CreateButton("Winter World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1072.09729, -71.008194, -798.221069)
end)

teleports:CreateButton("Mystic World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1141.41724, -71.008194, 551.978943)
end)

teleports:CreateButton("Storm World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1156.88757, -71.6431274, -1639.63904)
end)

teleports:CreateButton("Castle World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1150.26843, -55.3753128, -3121.21753)
end)

teleports:CreateButton("Jungle World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1149.30188, -53.5753098, -4374.34814)
end)

teleports:CreateButton("Desert World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1159.29663, -55.3753242, -6332.26025)
end)

teleports:CreateButton("Sakura World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1151.19153, -53.5753365, -7351.24561)
end)

teleports:CreateButton("Cyber World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1131.88574, -55.1182022, -8560.80273)
end)

teleports:CreateButton("Candy World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1125.94641, -55.1701736, -10847.0762)
end)

teleports:CreateButton("Fate World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1343.25354, -54.1499481, -11820.9287)
end)
teleports:CreateButton("Volcanic World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1553.34338, -195.605164, -13214.4844)
end)
teleports:CreateButton("Spawn 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(5018.74512, -11.1381817, -888.084045)
end)
eggs2:CreateToggle("BEST Eggs x200 by sec", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m3 = true 
        while wait(0) and _G.m3 do
       --[[
IronBrew:tm: obfuscation; Version 2.7.2
]]
return(function(lIIllllllIIlIIllllllIll,lIllIlIllIllIIllIIIlIl,lIllIlIllIllIIllIIIlIl)local llllIIIlIIIlIIIl=string.char;local lllllIIllIIlll=string.sub;local IlIIlIIlIIIIlIIlIIIllI=table.concat;local IIlllllllIl=math.ldexp;local lllIllllllIllIlllIlIIIlI=getfenv or function()return _ENV end;local llIllIlI=select;local IllIIlIIlIlIIllIIIlllIlII=unpack or table.unpack;local lllIllIIIIlIllIlIlIIlI=tonumber;local function IIIlIlIIIllIl(lIIllllllIIlIIllllllIll)local IIllIlIlIlIlIlllIlllI,IlllIlIllII,lIlIllIIIllIIlIIlIIlIIlll="","",{}local IlIIIIIlllIIllIIII=256;local IllIIlIIlIlIIllIIIlllIlII={}for lIllIlIllIllIIllIIIlIl=0,IlIIIIIlllIIllIIII-1 do IllIIlIIlIlIIllIIIlllIlII[lIllIlIllIllIIllIIIlIl]=llllIIIlIIIlIIIl(lIllIlIllIllIIllIIIlIl)end;local lIllIlIllIllIIllIIIlIl=1;local function lIIlllIlIII()local IIllIlIlIlIlIlllIlllI=lllIllIIIIlIllIlIlIIlI(lllllIIllIIlll(lIIllllllIIlIIllllllIll,lIllIlIllIllIIllIIIlIl,lIllIlIllIllIIllIIIlIl),36)lIllIlIllIllIIllIIIlIl=lIllIlIllIllIIllIIIlIl+1;local IlllIlIllII=lllIllIIIIlIllIlIlIIlI(lllllIIllIIlll(lIIllllllIIlIIllllllIll,lIllIlIllIllIIllIIIlIl,lIllIlIllIllIIllIIIlIl+IIllIlIlIlIlIlllIlllI-1),36)lIllIlIllIllIIllIIIlIl=lIllIlIllIllIIllIIIlIl+IIllIlIlIlIlIlllIlllI;return IlllIlIllII end;IIllIlIlIlIlIlllIlllI=llllIIIlIIIlIIIl(lIIlllIlIII())lIlIllIIIllIIlIIlIIlIIlll[1]=IIllIlIlIlIlIlllIlllI;while lIllIlIllIllIIllIIIlIl<#lIIllllllIIlIIllllllIll do local lIllIlIllIllIIllIIIlIl=lIIlllIlIII()if IllIIlIIlIlIIllIIIlllIlII[lIllIlIllIllIIllIIIlIl]then IlllIlIllII=IllIIlIIlIlIIllIIIlllIlII[lIllIlIllIllIIllIIIlIl]else IlllIlIllII=IIllIlIlIlIlIlllIlllI..lllllIIllIIlll(IIllIlIlIlIlIlllIlllI,1,1)end;IllIIlIIlIlIIllIIIlllIlII[IlIIIIIlllIIllIIII]=IIllIlIlIlIlIlllIlllI..lllllIIllIIlll(IlllIlIllII,1,1)lIlIllIIIllIIlIIlIIlIIlll[#lIlIllIIIllIIlIIlIIlIIlll+1],IIllIlIlIlIlIlllIlllI,IlIIIIIlllIIllIIII=IlllIlIllII,IlllIlIllII,IlIIIIIlllIIllIIII+1 end;return table.concat(lIlIllIIIllIIlIIlIIlIIlll)end;local lllIllIIIIlIllIlIlIIlI=IIIlIlIIIllIl('26826H27526G26L27526H24E23S23K24D26G26B27925623S23M24C24B23S25L24S23Y23Y27927924P22U24P27727923Y23S23O23W27F27924U23W24D25623W24B24F23K23U28226W27925723W24923P28C23S24D23W23X25624D23Q27M23Y28226M28G23W23O23Q28N24A26G28W27524M24923W23R27P23Y26G26D27924G23R24F23Q23M23W28828A28926Y27926Z29D27627S29426H26G26H26J26H26N27127926K29V2A426L26I2A22A52A727526Z2A426Z27827529Y2AB29S2AA26H2AC29X26H2AF26H25L2AG2AN2A32AM27826N27S2AS27829Y2AR2AN29Y28W2B229Y29Y2692AQ2752A729Y2742A82AY2752AX29W29P26H2A72BI2AO2AK29S26H2732792BJ2BG');local lIllIlIllIllIIllIIIlIl=(bit or bit32);local lIlIllIIIllIIlIIlIIlIIlll=lIllIlIllIllIIllIIIlIl and lIllIlIllIllIIllIIIlIl.bxor or function(lIllIlIllIllIIllIIIlIl,IIllIlIlIlIlIlllIlllI)local IlllIlIllII,lIlIllIIIllIIlIIlIIlIIlll,lllllIIllIIlll=1,0,10 while lIllIlIllIllIIllIIIlIl>0 and IIllIlIlIlIlIlllIlllI>0 do local lllllIIllIIlll,IlIIIIIlllIIllIIII=lIllIlIllIllIIllIIIlIl%2,IIllIlIlIlIlIlllIlllI%2 if lllllIIllIIlll~=IlIIIIIlllIIllIIII then lIlIllIIIllIIlIIlIIlIIlll=lIlIllIIIllIIlIIlIIlIIlll+IlllIlIllII end lIllIlIllIllIIllIIIlIl,IIllIlIlIlIlIlllIlllI,IlllIlIllII=(lIllIlIllIllIIllIIIlIl-lllllIIllIIlll)/2,(IIllIlIlIlIlIlllIlllI-IlIIIIIlllIIllIIII)/2,IlllIlIllII*2 end if lIllIlIllIllIIllIIIlIl<IIllIlIlIlIlIlllIlllI then lIllIlIllIllIIllIIIlIl=IIllIlIlIlIlIlllIlllI end while lIllIlIllIllIIllIIIlIl>0 do local IIllIlIlIlIlIlllIlllI=lIllIlIllIllIIllIIIlIl%2 if IIllIlIlIlIlIlllIlllI>0 then lIlIllIIIllIIlIIlIIlIIlll=lIlIllIIIllIIlIIlIIlIIlll+IlllIlIllII end lIllIlIllIllIIllIIIlIl,IlllIlIllII=(lIllIlIllIllIIllIIIlIl-IIllIlIlIlIlIlllIlllI)/2,IlllIlIllII*2 end return lIlIllIIIllIIlIIlIIlIIlll end local function IlllIlIllII(IIllIlIlIlIlIlllIlllI,lIllIlIllIllIIllIIIlIl,IlllIlIllII)if IlllIlIllII then local lIllIlIllIllIIllIIIlIl=(IIllIlIlIlIlIlllIlllI/2^(lIllIlIllIllIIllIIIlIl-1))%2^((IlllIlIllII-1)-(lIllIlIllIllIIllIIIlIl-1)+1);return lIllIlIllIllIIllIIIlIl-lIllIlIllIllIIllIIIlIl%1;else local lIllIlIllIllIIllIIIlIl=2^(lIllIlIllIllIIllIIIlIl-1);return(IIllIlIlIlIlIlllIlllI%(lIllIlIllIllIIllIIIlIl+lIllIlIllIllIIllIIIlIl)>=lIllIlIllIllIIllIIIlIl)and 1 or 0;end;end;local lIllIlIllIllIIllIIIlIl=1;local function IIllIlIlIlIlIlllIlllI()local IlllIlIllII,lllllIIllIIlll,IlIIIIIlllIIllIIII,IIllIlIlIlIlIlllIlllI=lIIllllllIIlIIllllllIll(lllIllIIIIlIllIlIlIIlI,lIllIlIllIllIIllIIIlIl,lIllIlIllIllIIllIIIlIl+3);IlllIlIllII=lIlIllIIIllIIlIIlIIlIIlll(IlllIlIllII,233)lllllIIllIIlll=lIlIllIIIllIIlIIlIIlIIlll(lllllIIllIIlll,233)IlIIIIIlllIIllIIII=lIlIllIIIllIIlIIlIIlIIlll(IlIIIIIlllIIllIIII,233)IIllIlIlIlIlIlllIlllI=lIlIllIIIllIIlIIlIIlIIlll(IIllIlIlIlIlIlllIlllI,233)lIllIlIllIllIIllIIIlIl=lIllIlIllIllIIllIIIlIl+4;return(IIllIlIlIlIlIlllIlllI*16777216)+(IlIIIIIlllIIllIIII*65536)+(lllllIIllIIlll*256)+IlllIlIllII;end;local function lIIlllIlIII()local IIllIlIlIlIlIlllIlllI=lIlIllIIIllIIlIIlIIlIIlll(lIIllllllIIlIIllllllIll(lllIllIIIIlIllIlIlIIlI,lIllIlIllIllIIllIIIlIl,lIllIlIllIllIIllIIIlIl),233);lIllIlIllIllIIllIIIlIl=lIllIlIllIllIIllIIIlIl+1;return IIllIlIlIlIlIlllIlllI;end;local function IlIIIIIlllIIllIIII()local IIllIlIlIlIlIlllIlllI,IlllIlIllII=lIIllllllIIlIIllllllIll(lllIllIIIIlIllIlIlIIlI,lIllIlIllIllIIllIIIlIl,lIllIlIllIllIIllIIIlIl+2);IIllIlIlIlIlIlllIlllI=lIlIllIIIllIIlIIlIIlIIlll(IIllIlIlIlIlIlllIlllI,233)IlllIlIllII=lIlIllIIIllIIlIIlIIlIIlll(IlllIlIllII,233)lIllIlIllIllIIllIIIlIl=lIllIlIllIllIIllIIIlIl+2;return(IlllIlIllII*256)+IIllIlIlIlIlIlllIlllI;end;local function IIIlIlIIIllIl()local lIllIlIllIllIIllIIIlIl=IIllIlIlIlIlIlllIlllI();local IIllIlIlIlIlIlllIlllI=IIllIlIlIlIlIlllIlllI();local lllllIIllIIlll=1;local lIlIllIIIllIIlIIlIIlIIlll=(IlllIlIllII(IIllIlIlIlIlIlllIlllI,1,20)*(2^32))+lIllIlIllIllIIllIIIlIl;local lIllIlIllIllIIllIIIlIl=IlllIlIllII(IIllIlIlIlIlIlllIlllI,21,31);local IIllIlIlIlIlIlllIlllI=((-1)^IlllIlIllII(IIllIlIlIlIlIlllIlllI,32));if(lIllIlIllIllIIllIIIlIl==0)then if(lIlIllIIIllIIlIIlIIlIIlll==0)then return IIllIlIlIlIlIlllIlllI*0;else lIllIlIllIllIIllIIIlIl=1;lllllIIllIIlll=0;end;elseif(lIllIlIllIllIIllIIIlIl==2047)then return(lIlIllIIIllIIlIIlIIlIIlll==0)and(IIllIlIlIlIlIlllIlllI*(1/0))or(IIllIlIlIlIlIlllIlllI*(0/0));end;return IIlllllllIl(IIllIlIlIlIlIlllIlllI,lIllIlIllIllIIllIIIlIl-1023)*(lllllIIllIIlll+(lIlIllIIIllIIlIIlIIlIIlll/(2^52)));end;local IIlllllllIl=IIllIlIlIlIlIlllIlllI;local function lllIlIIllIII(IIllIlIlIlIlIlllIlllI)local IlllIlIllII;if(not IIllIlIlIlIlIlllIlllI)then IIllIlIlIlIlIlllIlllI=IIlllllllIl();if(IIllIlIlIlIlIlllIlllI==0)then return'';end;end;IlllIlIllII=lllllIIllIIlll(lllIllIIIIlIllIlIlIIlI,lIllIlIllIllIIllIIIlIl,lIllIlIllIllIIllIIIlIl+IIllIlIlIlIlIlllIlllI-1);lIllIlIllIllIIllIIIlIl=lIllIlIllIllIIllIIIlIl+IIllIlIlIlIlIlllIlllI;local IIllIlIlIlIlIlllIlllI={}for lIllIlIllIllIIllIIIlIl=1,#IlllIlIllII do IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl]=llllIIIlIIIlIIIl(lIlIllIIIllIIlIIlIIlIIlll(lIIllllllIIlIIllllllIll(lllllIIllIIlll(IlllIlIllII,lIllIlIllIllIIllIIIlIl,lIllIlIllIllIIllIIIlIl)),233))end return IlIIlIIlIIIIlIIlIIIllI(IIllIlIlIlIlIlllIlllI);end;local lIllIlIllIllIIllIIIlIl=IIllIlIlIlIlIlllIlllI;local function IIlllllllIl(...)return{...},llIllIlI('#',...)end local function lllIllIIIIlIllIlIlIIlI()local lIIllllllIIlIIllllllIll={};local llllIIIlIIIlIIIl={};local lIllIlIllIllIIllIIIlIl={};local llIllIlI={[#{"1 + 1 = 111";"1 + 1 = 111";}]=llllIIIlIIIlIIIl,[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";}]=nil,[#{{912;232;418;303};"1 + 1 = 111";{978;436;147;495};{399;943;686;646};}]=lIllIlIllIllIIllIIIlIl,[#{"1 + 1 = 111";}]=lIIllllllIIlIIllllllIll,};local lIllIlIllIllIIllIIIlIl=IIllIlIlIlIlIlllIlllI()local lIlIllIIIllIIlIIlIIlIIlll={}for IlllIlIllII=1,lIllIlIllIllIIllIIIlIl do local IIllIlIlIlIlIlllIlllI=lIIlllIlIII();local lIllIlIllIllIIllIIIlIl;if(IIllIlIlIlIlIlllIlllI==2)then lIllIlIllIllIIllIIIlIl=(lIIlllIlIII()~=0);elseif(IIllIlIlIlIlIlllIlllI==0)then lIllIlIllIllIIllIIIlIl=IIIlIlIIIllIl();elseif(IIllIlIlIlIlIlllIlllI==1)then lIllIlIllIllIIllIIIlIl=lllIlIIllIII();end;lIlIllIIIllIIlIIlIIlIIlll[IlllIlIllII]=lIllIlIllIllIIllIIIlIl;end;for lllIllIIIIlIllIlIlIIlI=1,IIllIlIlIlIlIlllIlllI()do local lIllIlIllIllIIllIIIlIl=lIIlllIlIII();if(IlllIlIllII(lIllIlIllIllIIllIIIlIl,1,1)==0)then local lllllIIllIIlll=IlllIlIllII(lIllIlIllIllIIllIIIlIl,2,3);local IllIIlIIlIlIIllIIIlllIlII=IlllIlIllII(lIllIlIllIllIIllIIIlIl,4,6);local lIllIlIllIllIIllIIIlIl={IlIIIIIlllIIllIIII(),IlIIIIIlllIIllIIII(),nil,nil};if(lllllIIllIIlll==0)then lIllIlIllIllIIllIIIlIl[#("qeE")]=IlIIIIIlllIIllIIII();lIllIlIllIllIIllIIIlIl[#("9Lhn")]=IlIIIIIlllIIllIIII();elseif(lllllIIllIIlll==1)then lIllIlIllIllIIllIIIlIl[#("dMW")]=IIllIlIlIlIlIlllIlllI();elseif(lllllIIllIIlll==2)then lIllIlIllIllIIllIIIlIl[#("POr")]=IIllIlIlIlIlIlllIlllI()-(2^16)elseif(lllllIIllIIlll==3)then lIllIlIllIllIIllIIIlIl[#("LxK")]=IIllIlIlIlIlIlllIlllI()-(2^16)lIllIlIllIllIIllIIIlIl[#{"1 + 1 = 111";"1 + 1 = 111";"1 + 1 = 111";{860;142;207;371};}]=IlIIIIIlllIIllIIII();end;if(IlllIlIllII(IllIIlIIlIlIIllIIIlllIlII,1,1)==1)then lIllIlIllIllIIllIIIlIl[#("sq")]=lIlIllIIIllIIlIIlIIlIIlll[lIllIlIllIllIIllIIIlIl[#("vl")]]end if(IlllIlIllII(IllIIlIIlIlIIllIIIlllIlII,2,2)==1)then lIllIlIllIllIIllIIIlIl[#("JhH")]=lIlIllIIIllIIlIIlIIlIIlll[lIllIlIllIllIIllIIIlIl[#{{735;140;507;276};{562;638;156;761};{711;974;190;853};}]]end if(IlllIlIllII(IllIIlIIlIlIIllIIIlllIlII,3,3)==1)then lIllIlIllIllIIllIIIlIl[#("NJjZ")]=lIlIllIIIllIIlIIlIIlIIlll[lIllIlIllIllIIllIIIlIl[#("e7sh")]]end lIIllllllIIlIIllllllIll[lllIllIIIIlIllIlIlIIlI]=lIllIlIllIllIIllIIIlIl;end end;llIllIlI[3]=lIIlllIlIII();for lIllIlIllIllIIllIIIlIl=1,IIllIlIlIlIlIlllIlllI()do llllIIIlIIIlIIIl[lIllIlIllIllIIllIIIlIl-1]=lllIllIIIIlIllIlIlIIlI();end;return llIllIlI;end;local function llllIIIlIIIlIIIl(lIllIlIllIllIIllIIIlIl,IIllIlIlIlIlIlllIlllI,lIIllllllIIlIIllllllIll)lIllIlIllIllIIllIIIlIl=(lIllIlIllIllIIllIIIlIl==true and lllIllIIIIlIllIlIlIIlI())or lIllIlIllIllIIllIIIlIl;return(function(...)local lllllIIllIIlll=lIllIlIllIllIIllIIIlIl[1];local lIlIllIIIllIIlIIlIIlIIlll=lIllIlIllIllIIllIIIlIl[3];local lIllIlIllIllIIllIIIlIl=lIllIlIllIllIIllIIIlIl[2];local lIllIlIllIllIIllIIIlIl=IIlllllllIl local IlllIlIllII=1;local lIllIlIllIllIIllIIIlIl=-1;local lllIllIIIIlIllIlIlIIlI={};local IlIIIIIlllIIllIIII={...};local lIIlllIlIII=llIllIlI('#',...)-1;local lIllIlIllIllIIllIIIlIl={};local IIllIlIlIlIlIlllIlllI={};for lIllIlIllIllIIllIIIlIl=0,lIIlllIlIII do if(lIllIlIllIllIIllIIIlIl>=lIlIllIIIllIIlIIlIIlIIlll)then lllIllIIIIlIllIlIlIIlI[lIllIlIllIllIIllIIIlIl-lIlIllIIIllIIlIIlIIlIIlll]=IlIIIIIlllIIllIIII[lIllIlIllIllIIllIIIlIl+1];else IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl]=IlIIIIIlllIIllIIII[lIllIlIllIllIIllIIIlIl+#{"1 + 1 = 111";}];end;end;local lIllIlIllIllIIllIIIlIl=lIIlllIlIII-lIlIllIIIllIIlIIlIIlIIlll+1 local lIllIlIllIllIIllIIIlIl;local lIlIllIIIllIIlIIlIIlIIlll;while true do lIllIlIllIllIIllIIIlIl=lllllIIllIIlll[IlllIlIllII];lIlIllIIIllIIlIIlIIlIIlll=lIllIlIllIllIIllIIIlIl[#("W")];if lIlIllIIIllIIlIIlIIlIIlll<=#("WrlAx8NUL7")then if lIlIllIIIllIIlIIlIIlIIlll<=#("Beyy")then if lIlIllIIIllIIlIIlIIlIIlll<=#("c")then if lIlIllIIIllIIlIIlIIlIIlll>#("")then local lIlIllIIIllIIlIIlIIlIIlll=lIllIlIllIllIIllIIIlIl[#("eJ")];local IlllIlIllII=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("AKj")]];IIllIlIlIlIlIlllIlllI[lIlIllIIIllIIlIIlIIlIIlll+1]=IlllIlIllII;IIllIlIlIlIlIlllIlllI[lIlIllIIIllIIlIIlIIlIIlll]=IlllIlIllII[lIllIlIllIllIIllIIIlIl[#("iAs7")]];else local IlIIIIIlllIIllIIII;local lIlIllIIIllIIlIIlIIlIIlll;IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("rV")]]=lIllIlIllIllIIllIIIlIl[#("apL")];IlllIlIllII=IlllIlIllII+1;lIllIlIllIllIIllIIIlIl=lllllIIllIIlll[IlllIlIllII];IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("nS")]]=lIIllllllIIlIIllllllIll[lIllIlIllIllIIllIIIlIl[#("Yxd")]];IlllIlIllII=IlllIlIllII+1;lIllIlIllIllIIllIIIlIl=lllllIIllIIlll[IlllIlIllII];lIlIllIIIllIIlIIlIIlIIlll=lIllIlIllIllIIllIIIlIl[#("NA")];IlIIIIIlllIIllIIII=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("fuV")]];IIllIlIlIlIlIlllIlllI[lIlIllIIIllIIlIIlIIlIIlll+1]=IlIIIIIlllIIllIIII;IIllIlIlIlIlIlllIlllI[lIlIllIIIllIIlIIlIIlIIlll]=IlIIIIIlllIIllIIII[lIllIlIllIllIIllIIIlIl[#("bZC5")]];IlllIlIllII=IlllIlIllII+1;lIllIlIllIllIIllIIIlIl=lllllIIllIIlll[IlllIlIllII];IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("qZ")]]=lIllIlIllIllIIllIIIlIl[#("ZfO")];IlllIlIllII=IlllIlIllII+1;lIllIlIllIllIIllIIIlIl=lllllIIllIIlll[IlllIlIllII];lIlIllIIIllIIlIIlIIlIIlll=lIllIlIllIllIIllIIIlIl[#("27")]IIllIlIlIlIlIlllIlllI[lIlIllIIIllIIlIIlIIlIIlll]=IIllIlIlIlIlIlllIlllI[lIlIllIIIllIIlIIlIIlIIlll](IllIIlIIlIlIIllIIIlllIlII(IIllIlIlIlIlIlllIlllI,lIlIllIIIllIIlIIlIIlIIlll+1,lIllIlIllIllIIllIIIlIl[#("QMn")]))IlllIlIllII=IlllIlIllII+1;lIllIlIllIllIIllIIIlIl=lllllIIllIIlll[IlllIlIllII];IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("9d")]]=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("pqi")]][lIllIlIllIllIIllIIIlIl[#("ZvaU")]];IlllIlIllII=IlllIlIllII+1;lIllIlIllIllIIllIIIlIl=lllllIIllIIlll[IlllIlIllII];IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("sv")]]=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("3z9")]][lIllIlIllIllIIllIIIlIl[#("PGe5")]];IlllIlIllII=IlllIlIllII+1;lIllIlIllIllIIllIIIlIl=lllllIIllIIlll[IlllIlIllII];lIlIllIIIllIIlIIlIIlIIlll=lIllIlIllIllIIllIIIlIl[#("tI")];IlIIIIIlllIIllIIII=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("yfr")]];IIllIlIlIlIlIlllIlllI[lIlIllIIIllIIlIIlIIlIIlll+1]=IlIIIIIlllIIllIIII;IIllIlIlIlIlIlllIlllI[lIlIllIIIllIIlIIlIIlIIlll]=IlIIIIIlllIIllIIII[lIllIlIllIllIIllIIIlIl[#("PJOV")]];IlllIlIllII=IlllIlIllII+1;lIllIlIllIllIIllIIIlIl=lllllIIllIIlll[IlllIlIllII];IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("az")]]=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("Czy")]];IlllIlIllII=IlllIlIllII+1;lIllIlIllIllIIllIIIlIl=lllllIIllIIlll[IlllIlIllII];IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("R0")]]=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("d8r")]];end;elseif lIlIllIIIllIIlIIlIIlIIlll<=#("yy")then local IlllIlIllII=lIllIlIllIllIIllIIIlIl[#("Dy")]IIllIlIlIlIlIlllIlllI[IlllIlIllII]=IIllIlIlIlIlIlllIlllI[IlllIlIllII](IllIIlIIlIlIIllIIIlllIlII(IIllIlIlIlIlIlllIlllI,IlllIlIllII+1,lIllIlIllIllIIllIIIlIl[#("sSO")]))elseif lIlIllIIIllIIlIIlIIlIIlll==#("lQr")then IlllIlIllII=lIllIlIllIllIIllIIIlIl[#("xSl")];else IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#{"1 + 1 = 111";"1 + 1 = 111";}]]=lIllIlIllIllIIllIIIlIl[#("uzS")];end;elseif lIlIllIIIllIIlIIlIIlIIlll<=#("jUuIkLV")then if lIlIllIIIllIIlIIlIIlIIlll<=#("uj3FT")then local lIllIlIllIllIIllIIIlIl=lIllIlIllIllIIllIIIlIl[#("bt")]IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl]=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl]()elseif lIlIllIIIllIIlIIlIIlIIlll>#("GdrJEm")then local lIllIlIllIllIIllIIIlIl=lIllIlIllIllIIllIIIlIl[#("RG")]IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl]=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl]()else local IlllIlIllII=lIllIlIllIllIIllIIIlIl[#("M6")];local lIlIllIIIllIIlIIlIIlIIlll=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("v5i")]];IIllIlIlIlIlIlllIlllI[IlllIlIllII+1]=lIlIllIIIllIIlIIlIIlIIlll;IIllIlIlIlIlIlllIlllI[IlllIlIllII]=lIlIllIIIllIIlIIlIIlIIlll[lIllIlIllIllIIllIIIlIl[#{"1 + 1 = 111";{439;405;591;714};"1 + 1 = 111";"1 + 1 = 111";}]];end;elseif lIlIllIIIllIIlIIlIIlIIlll<=#("cButCymT")then if not IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("MB")]]then IlllIlIllII=IlllIlIllII+1;else IlllIlIllII=lIllIlIllIllIIllIIIlIl[#("hhz")];end;elseif lIlIllIIIllIIlIIlIIlIIlll>#("gFifZ3zdW")then local IlllIlIllII=lIllIlIllIllIIllIIIlIl[#("Mx")]IIllIlIlIlIlIlllIlllI[IlllIlIllII]=IIllIlIlIlIlIlllIlllI[IlllIlIllII](IllIIlIIlIlIIllIIIlllIlII(IIllIlIlIlIlIlllIlllI,IlllIlIllII+1,lIllIlIllIllIIllIIIlIl[#("yXD")]))else IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("zV")]]=lIIllllllIIlIIllllllIll[lIllIlIllIllIIllIIIlIl[#("dqv")]];end;elseif lIlIllIIIllIIlIIlIIlIIlll<=#("QkcnEIyx1usMmeHg")then if lIlIllIIIllIIlIIlIIlIIlll<=#("9oTnJkidyxNhN")then if lIlIllIIIllIIlIIlIIlIIlll<=#("oXYHIam1Web")then local IlllIlIllII=lIllIlIllIllIIllIIIlIl[#("a8")]IIllIlIlIlIlIlllIlllI[IlllIlIllII](IllIIlIIlIlIIllIIIlllIlII(IIllIlIlIlIlIlllIlllI,IlllIlIllII+1,lIllIlIllIllIIllIIIlIl[#("Soo")]))elseif lIlIllIIIllIIlIIlIIlIIlll==#("y3EsdJSKzYcC")then IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("Tn")]]=lIIllllllIIlIIllllllIll[lIllIlIllIllIIllIIIlIl[#("t95")]];else IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("u6")]]=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("M4g")]];end;elseif lIlIllIIIllIIlIIlIIlIIlll<=#("a3kfkUpoQdZyI9")then IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("cY")]]=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("ng6")]][lIllIlIllIllIIllIIIlIl[#("i13b")]];elseif lIlIllIIIllIIlIIlIIlIIlll==#("giDPmnWpJesdzcp")then IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("LD")]]=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("xEh")]];else IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("58")]]=IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("pNr")]][lIllIlIllIllIIllIIIlIl[#("JrjF")]];end;elseif lIlIllIIIllIIlIIlIIlIIlll<=#("UvAHgbWLtVgSZP5GKME")then if lIlIllIIIllIIlIIlIIlIIlll<=#("vyp3oOLa2R0lBOebh")then IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("ZL")]]=lIllIlIllIllIIllIIIlIl[#("J20")];elseif lIlIllIIIllIIlIIlIIlIIlll>#("aex1vBhdA3jWEXJ8dv")then IlllIlIllII=lIllIlIllIllIIllIIIlIl[#("oOl")];else local IlllIlIllII=lIllIlIllIllIIllIIIlIl[#("aS")]IIllIlIlIlIlIlllIlllI[IlllIlIllII](IllIIlIIlIlIIllIIIlllIlII(IIllIlIlIlIlIlllIlllI,IlllIlIllII+1,lIllIlIllIllIIllIIIlIl[#{"1 + 1 = 111";{579;679;290;733};"1 + 1 = 111";}]))end;elseif lIlIllIIIllIIlIIlIIlIIlll<=#("GsCAVSN54qlK3yiLz4Fc")then if not IIllIlIlIlIlIlllIlllI[lIllIlIllIllIIllIIIlIl[#("Bz")]]then IlllIlIllII=IlllIlIllII+1;else IlllIlIllII=lIllIlIllIllIIllIIIlIl[#{"1 + 1 = 111";{672;627;460;122};"1 + 1 = 111";}];end;elseif lIlIllIIIllIIlIIlIIlIIlll>#("VkoS1fmcNCKS5LiIOLiTF")then do return end;else do return end;end;IlllIlIllII=IlllIlIllII+1;end;end);end;return llllIIIlIIIlIIIl(true,{},lllIllllllIllIlllIlIIIlI())();end)(string.byte,table.insert,setmetatable);
        end
    else
        _G.m3 = false
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


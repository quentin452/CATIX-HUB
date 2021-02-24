local rs = game:GetService("RunService").RenderStepped
--https://www.roblox.com/games/2846607892/Sugar-Simulator
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Sugar-Simulator GUI","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local buy = Library:CreateTab("Auto Buy","things", true)
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
AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
 _G.Click = bool
        while rs:wait() do
            game:GetService("ReplicatedStorage").Events.ScreenClick:FireServer()
end
    else
        end
end)
AutoTab:CreateToggle("Auto Sell", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
         _G.Sell = bool
        while rs:wait() do
       game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2040.47937, 11.9402952, 521.888611)
end
    else
        end
end)
AutoTab:CreateToggle("Auto Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
  _G.b = bool
        while rs:wait()do
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer("Rebirth")
end
    else
      end
end)

AutoTab:CreateToggle("Auto Equip Pets(tell Iam A Cat to change pet)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
  _G.bd = bool
        while rs:wait() do
local args = {
    [1] = "Equip",
    [2] = {
        [1] = "Pets",
        [2] = "Desert Hare",
        [3] = "Desert Hare1",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Equip",
    [2] = {
        [1] = "Pets",
        [2] = "Armadillo",
        [3] = "Armadillo2",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Equip",
    [2] = {
        [1] = "Pets",
        [2] = "Sand Eagle",
        [3] = "Sand Eagle1",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Equip",
    [2] = {
        [1] = "Pets",
        [2] = "Armadillo",
        [3] = "Armadillo1",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)
AutoTab:CreateButton("Do not Use All", function() --you dont need "arg" for a button
end)
AutoTab:CreateButton("At The Same Time", function() --you dont need "arg" for a button
end)
AutoTab:CreateToggle("Auto Candies Starter World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
          _G.c = bool
        while rs:wait() do
     for i,v in pairs(game:GetService("Workspace").Realms.Starter.Candies:GetChildren()) do
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
    local Me = game.Players.LocalPlayer.Character.HumanoidRootPart
    local To = v
    To.CFrame = Me.CFrame
    rs:wait()
    v.CFrame = CFrame.new(0,0,0)
   end
end   
    end
    else
    end
end)
AutoTab:CreateToggle("Auto Candies Candy World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
          _G.c2 = bool
        while rs:wait(0)do
   for i,v in pairs(game:GetService("Workspace").Realms.Candyland.Candies:GetChildren()) do
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
    local Me = game.Players.LocalPlayer.Character.HumanoidRootPart
    local To = v
    To.CFrame = Me.CFrame
    rs:wait()
    v.CFrame = CFrame.new(0,0,0)
    end
   end
end
    else
    end
end)
AutoTab:CreateToggle("Auto Candies Beach World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
          _G.c3 = boolu
        while rs:wait(0)do
 for i,v in pairs(game:GetService("Workspace").Realms.Beach.Candies:GetChildren()) do
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
    local Me = game.Players.LocalPlayer.Character.HumanoidRootPart
    local To = v
    To.CFrame = Me.CFrame
    rs:wait()
    v.CFrame = CFrame.new(0,0,0)
    end
   end
end
    else
    end
end)
AutoTab:CreateToggle("Auto Candies SnowTime World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
          _G.c4 = bool
        while rs:wait(0) do
 for i,v in pairs(game:GetService("Workspace").Realms.Snowtime.Candies:GetChildren()) do
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
    local Me = game.Players.LocalPlayer.Character.HumanoidRootPart
    local To = v
    To.CFrame = Me.CFrame
    rs:wait()
    v.CFrame = CFrame.new(0,0,0)
    end
   end
end
    else
    end
end)
AutoTab:CreateToggle("Auto Candies Forest World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
          _G.c5 = bool
        while rs:wait(0)do
 for i,v in pairs(game:GetService("Workspace").Realms.Forest.Candies:GetChildren()) do
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
    local Me = game.Players.LocalPlayer.Character.HumanoidRootPart
    local To = v
    To.CFrame = Me.CFrame
    rs:wait()
    v.CFrame = CFrame.new(0,0,0)
    end
   end
end
    else
    end
end)
AutoTab:CreateToggle("Auto Candies Desert World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
          _G.c6 = bool
        while rs:wait(0) do
 for i,v in pairs(game:GetService("Workspace").Realms.Desert.Candies:GetChildren()) do
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
    local Me = game.Players.LocalPlayer.Character.HumanoidRootPart
    local To = v
    To.CFrame = Me.CFrame
    rs:wait()
    v.CFrame = CFrame.new(0,0,0)
    end
   end
end
    else
    end
end)

AutoTab:CreateToggle("Auto Candies Cloud World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
          _G.c7 = bool
        while rs:wait(0) do
 for i,v in pairs(game:GetService("Workspace").Realms["Cloudy Sky"].Candies:GetChildren()) do
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
    local Me = game.Players.LocalPlayer.Character.HumanoidRootPart
    local To = v
    To.CFrame = Me.CFrame
    rs:wait()
    v.CFrame = CFrame.new(0,0,0)
    end
   end
end
    else
    end
end)

eggs:CreateToggle("Auto Buy Normal Eggs (1)", function(arg) --the (arg) is if the checkbox is toggled or not)
    if arg then
          _G.f = bool
        while rs:wait() do
    
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Normal",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)

eggs:CreateToggle("Auto Buy Water Eggs(2)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
          _G.g = bool
        while rs:wait() do
    
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Water",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)

eggs:CreateToggle("Auto Buy Safari Eggs(3)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
  _G.h = bool
        while rs:wait() do
    
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Safari",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)

eggs:CreateToggle("Auto Buy Flight Eggs(4)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
  _G.h33333 = bool
        while rs:wait()do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Flight",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else

         end
end)

eggs:CreateToggle("Auto Buy Candy Eggs(5)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
  _G.i = bool
        while rs:wait() do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Candy",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)

eggs:CreateToggle("Auto Buy Space Eggs(6)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
  _G.i2 = bool
        while rs:wait() do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Space",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)

eggs:CreateToggle("Auto Buy Light Eggs(7)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.i = true 
  _G.u55 = bool
        while rs:wait() do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Light",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)

eggs:CreateToggle("Auto Buy Beach Eggs(8)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
    _G.i88i = bool
        while rs:wait()do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Beach",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)

eggs:CreateToggle("Auto Buy Snow Eggs(9)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
     _G.jk = bool
        while rs:wait() do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Snow",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)

eggs:CreateToggle("Auto Buy Dark Eggs(10)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
     _G.jkk = bool
        while rs:wait() do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Dark",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)

eggs:CreateToggle("Auto Buy Forest Eggs(11)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
     _G.l = bool
        while rs:wait() do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Forest",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)
eggs:CreateToggle("Auto Buy Mythicals Eggs(12)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
     _G.m = bool
        while rs:wait()do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Mythical",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)

eggs:CreateToggle("Auto Buy Desert Eggs(13)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
     _G.n = bool
        while rs:wait()do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Desert",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)
eggs:CreateToggle("Auto Buy Sand Eggs(14)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
     _G.o = bool
        while rs:wait()do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Sand",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)

buy:CreateToggle("Auto Buy Bags", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
     _G.b1 = bool
        while rs:wait() do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Skinny-bones",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Super Skinny",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Skinny",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Average",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Heavy",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Chubby",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Super Chubby",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Overweight",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Fat",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Really Fat",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Obese",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Giant",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Frickn\' Huge",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
          end
end)
buy:CreateToggle("Auto Buy Tools", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
     _G.b2 = bool
        while rs:wait() do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Broken",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Rotten",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Cavities",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Sensitive",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Normal",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Clean",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Pearly White",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Perfect",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Iron",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Diamond",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Neon",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Angelic",
    },
}
game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
         end
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(58.9317627, 21.6812668, -766.870239)
end)
teleports:CreateButton("Candy World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(42.0444489, 21.581295, 34.5133057)
end)
teleports:CreateButton("Beach World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(797.114807, 28.4676743, -770.014465)
end)
teleports:CreateButton("Snow World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-417.752838, 21.6036167, -475.155457)
end)
teleports:CreateButton("Forest World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(541.513672, 20.4250393, -131.343826)
end)
teleports:CreateButton("Desert World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-937.704712, 23.1520271, -1280.89917)
end)
teleports:CreateButton("Cloud World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2024.5907, 11.9402943, 514.872437)
end)
teleports:CreateButton("sell x5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-908.823425, 23.1520271, -1262.09644)
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
rs:wait(9e9)
return
end
return old(self, ...)
end)
hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() rs:wait(9e9)
 end))
--| Anti AFK |
   local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   rs:wait(1)
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
        rs:wait(2)
    end)

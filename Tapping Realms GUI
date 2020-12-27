--https://www.roblox.com/games/5940836435/RELEASE-Tapping-Realms
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Tapping Realms GUI")
local w2 = library:CreateWindow("Rebirths")
local w4 = library:CreateWindow("Sr Rebirths")
local w5 = library:CreateWindow("Eggs")


--================== Model =======================--
local w = w3:CreateFolder("Hacks")

w:Label("Things",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

	w:Toggle("Auto Click",function(bool)
		shared.toggle1 = bool
	end)
	
		w:Toggle("Auto Equip Best",function(bool)
		shared.toggle2 = bool
end) 
	w:Toggle("Auto Upgrades",function(bool)
		shared.toggle3 = bool
end) 
	spawn(function()
		while wait() do
		       if shared.toggle1 then
game:GetService("ReplicatedStorage").Events.ClickEvent:FireServer()
end
	if shared.toggle2 then
game:GetService("ReplicatedStorage").Events.HandlePet:InvokeServer("EquipBest",{})
end
	if shared.toggle3 then
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("PlayerSpeed","BuyAll")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("JumpPower","BuyAll")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("RebirthButton","BuyAll")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("PetStorage","BuyAll")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("MoreGems","BuyAll")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("LuckBoost","BuyAll")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("FreeAutoClicker","Buy1")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("FreeAutoRebirth","Buy1")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("FasterEggOpen","Buy1")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("ClicksX2","Buy1")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("ClicksX5","Buy1")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("ClicksX5","Buy1")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("ClicksX25","Buy1")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("ClicksX50","Buy1")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("ClicksX100","Buy1")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("ClicksX150","Buy1")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("MorePetXP","BuyAll")
wait(0.1)
game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("PetEquip","BuyAll")
wait(0.1)
end
end
end)

local w2 = w2:CreateFolder("Rebirths")
	w2:Dropdown("Choose Rebirths",{"X1","X5","X15","X25","X50","X100","X500","X1K","X2,5K","X5K","X10K"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w2:Toggle("Buy Rebirths",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "X1" then
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(1)
					elseif _G.BossSelected == "X5" then
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(5)

						elseif _G.BossSelected == "X15" then
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(15)
			elseif _G.BossSelected == "X25" then
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(25)
		elseif _G.BossSelected == "X50" then
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(50)
			elseif _G.BossSelected == "X100" then
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(100)
		elseif _G.BossSelected == "X500" then
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(500)
		elseif _G.BossSelected == "X1K" then
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(1000)
		elseif _G.BossSelected == "X2,5K" then
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(2500)
		elseif _G.BossSelected == "X5K" then
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(5000)		
elseif _G.BossSelected == "X10K" then
game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(10000)
			end
		end
	end
end)

local w4 = w4:CreateFolder("Super Rebirths")
	w4:Dropdown("Choose Sr Rebirths",{"X1","X5","X10"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BruhSelected = mob
	end)

	w4:Toggle("Buy Sr Rebirths",function(bool)
	    shared.Eggs2 = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs2 then
if _G.BruhSelected == "X1" then
game:GetService("ReplicatedStorage").Events.SuperRebirth:InvokeServer("SuperRebrith1")
elseif _G.BruhSelected == "X5" then
game:GetService("ReplicatedStorage").Events.SuperRebirth:InvokeServer("SuperRebrith5")
elseif _G.BruhSelected == "X10" then
game:GetService("ReplicatedStorage").Events.SuperRebirth:InvokeServer("SuperRebrith10")
			end
		end
	end
end)



local w5 = w5:CreateFolder("Eggs")
	w5:Dropdown("Choose Eggs",{"Common","Rare","Crystal","Fairy","Jungle","Magic","Pirate","Scientific","Winter","Desert"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.Bruh2Selected = mob
	end)

	w5:Toggle("Buy Eggs",function(bool)
	    shared.Eggs23 = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs23 then
if _G.Bruh2Selected == "Common" then
local args = {
    [1] = "Common",
    [2] = "Buy1"
}

game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(470.402679, 114.438881, 17.8767281)
elseif _G.Bruh2Selected == "Rare" then
local args = {
    [1] = "Rare",
    [2] = "Buy1"
}

game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(500.606323, 114.438881, 19.3805962)
elseif _G.Bruh2Selected == "Crystal" then
local args = {
    [1] = "Crystal",
    [2] = "Buy1"
}

game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(501.513763, 114.438881, 51.4191589)
elseif _G.Bruh2Selected == "Fairy" then
local args = {
    [1] = "Fairy",
    [2] = "Buy1"
}

game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(376.937195, 738.619995, 66.8737183)
elseif _G.Bruh2Selected == "Jungle" then
local args = {
    [1] = "Jungle",
    [2] = "Buy1"
}

game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(373.837677, 1642.33728, 64.8525543)
elseif _G.Bruh2Selected == "Magic" then
local args = {
    [1] = "Magic",
    [2] = "Buy1"
}

game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(379.620789, 4759.11475, 22.2804585)
elseif _G.Bruh2Selected == "Pirate" then
local args = {
    [1] = "Pirate",
    [2] = "Buy1"
}

game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(377.253357, 3393.60889, 37.1960487)
elseif _G.Bruh2Selected == "Scientific" then
local args = {
    [1] = "Scientific",
    [2] = "Buy1"
}

game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(375.623779, 2457.35767, 55.5334358)
elseif _G.Bruh2Selected == "Winter" then
local args = {
    [1] = "Winter",
    [2] = "Buy1"
}

game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(381.14212, 5737.65283, 7.22265911)
elseif _G.Bruh2Selected == "Desert" then
local args = {
    [1] = "Desert",
    [2] = "Buy1"
}

game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(382.036591, 6487.73291, -5.47761536)
	end
		end
	end
end)

--================== Player Settings =======================--

--(alot not by me )--
local PLR = w3:CreateFolder("Player")

	
	
	PLR:Slider("Jump Hack",10,250,true,function(value)
	    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	end)
	PLR:Button("Speed Hack (press R)",function(bool)
	    
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
	PLR:Button("No Clip (Press E)",function()
		noclip = false
		game:GetService('RunService').Stepped:connect(function()
			if noclip then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
		local plr = game.Players.LocalPlayer
		local mouse = plr:GetMouse()
		mouse.KeyDown:connect(function(key)
			if key == "e" then
				noclip = not noclip
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
	end)

	PLR:Button("Fly (Press F)",function()
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

	PLR:Button("Inf Jump",function()
	game:GetService("UserInputService").JumpRequest:connect(function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
end)
end)

	PLR:Button("Crl + Click = TP",function()
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Plr.Character:MoveTo(Mouse.Hit.p)
end)
end)
	PLR:Button("Extreme Light",function()
	local s = Instance.new("PointLight", game.Players.LocalPlayer.Character.Head)
s.Brightness = 0.3
s.Range = 100
game.Lighting.Changed:connect(function()
game.Lighting.TimeOfDay = "14:00:00"
game.Lighting.FogEnd = 300
game.Lighting.Brightness = 10
game.Lighting.ColorCorrection.Brightness = 0.1
game.Lighting.ColorCorrection.Saturation = 0.1
game.Lighting.Bloom.Intensity = 0.1
end)
end)
	PLR:Button("Inf Yield",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

	PLR:Button("Btools",function()
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
for index, child in pairs(game:GetService("Workspace"):GetChildren()) do
  if child.ClassName == "Part" then
      child.Locked = false
  end
  if child.ClassName == "MeshPart" then
      child.Locked = false
  end
  if child.ClassName == "UnionOperation" then
      child.Locked = false
  end
  if child.ClassName == "Model" then
      for index, chil in pairs(child:GetChildren()) do
          if chil.ClassName == "Part" then
              chil.Locked = false
          end
          if chil.ClassName == "MeshPart" then
              chil.Locked = false
          end
          if chil.ClassName == "UnionOperation" then
              chil.Locked = false
          end
          if chil.ClassName == "Model" then
              for index, childe in pairs(chil:GetChildren()) do
                  if childe.ClassName == "Part" then
                      childe.Locked = false
                  end
                  if childe.ClassName == "MeshPart" then
                      childe.Locked = false
                  end
                  if childe.ClassName == "UnionOperation" then
                      childe.Locked = false
                  end
                  if childe.ClassName == "Model" then
                      for index, childeo in pairs(childe:GetChildren()) do
                          if childeo.ClassName == "Part" then
                              childeo.Locked = false
                          end
                          if childeo.ClassName == "MeshPart" then
                              childeo.Locked = false
                          end
                          if childeo.ClassName == "UnionOperation" then
                              childeo.Locked = false
                          end
                          if childeo.ClassName == "Model" then
                          end
                      end
                  end
              end
          end
      end
  end
 
end
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Hammer
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Clone
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Grab


end)

	PLR:Button("ESP UNIVERSAL",function()
for i,v in pairs(game.Workspace:GetDescendants()) do
if v.ClassName == "TouchTransmitter" then
-- if v.ClassName == "TouchTransmitter" and v.Parent.Name == "Handle" then
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")

BillboardGui.Parent = v.Parent
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 100, 0, 100)
BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = v.Parent.Parent.Name
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextScaled = true
end
end
end)

	PLR:Button("Dark Dex",function()
loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))()
end)

	PLR:Button("Location Detector",function()
local finder = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local nameofgui = Instance.new("TextLabel")
local random = Instance.new("TextLabel")
local cl = Instance.new("TextLabel")
local border = Instance.new("TextLabel")
local copy = Instance.new("TextButton")

finder.Name = "finder"
finder.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
finder.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
finder.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = finder
Main.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Main.Position = UDim2.new(0.460674137, 0, 0.360557795, 0)
Main.Size = UDim2.new(0, 254, 0, 192)

nameofgui.Name = "nameofgui"
nameofgui.Parent = Main
nameofgui.BackgroundColor3 = Color3.new(1, 1, 1)
nameofgui.BackgroundTransparency = 1
nameofgui.Size = UDim2.new(0, 254, 0, 26)
nameofgui.Font = Enum.Font.SourceSans
nameofgui.Text = "Location Finder"
nameofgui.TextColor3 = Color3.new(1, 1, 1)
nameofgui.TextSize = 20

random.Name = "random"
random.Parent = Main
random.BackgroundColor3 = Color3.new(1, 1, 1)
random.BackgroundTransparency = 1
random.Position = UDim2.new(0.106299214, 0, 0.197916672, 0)
random.Size = UDim2.new(0, 200, 0, 37)
random.Font = Enum.Font.SourceSans
random.Text = "Your current location is "
random.TextColor3 = Color3.new(1, 1, 1)
random.TextSize = 18

cl.Name = "cl"
cl.Parent = Main
cl.BackgroundColor3 = Color3.new(1, 1, 1)
cl.BackgroundTransparency = 1
cl.Position = UDim2.new(0.106299214, 0, 0.39062503, 0)
cl.Size = UDim2.new(0, 200, 0, 36)
cl.Font = Enum.Font.SourceSans
cl.TextColor3 = Color3.new(1, 1, 1)
cl.TextSize = 18



border.Name = "border"
border.Parent = Main
border.BackgroundColor3 = Color3.new(1, 1, 1)
border.Position = UDim2.new(0, 0, 0.114583336, 0)
border.Size = UDim2.new(0, 254, 0, 4)
border.Font = Enum.Font.SourceSans
border.Text = ""
border.TextColor3 = Color3.new(0, 0, 0)
border.TextSize = 14

copy.Name = "copy"
copy.Parent = Main
copy.BackgroundColor3 = Color3.new(1, 1, 1)
copy.Position = UDim2.new(0.106299214, 0, 0.666666687, 0)
copy.Size = UDim2.new(0, 200, 0, 31)
copy.Font = Enum.Font.SourceSans
copy.Text = "Copy to clipboard"
copy.TextColor3 = Color3.new(0, 0, 0)
copy.TextSize = 20
copy.MouseButton1Click:connect(function()
setclipboard(cl.Text)
end)

local isHidden = false
local mause = game.Players.LocalPlayer:GetMouse()

do
local mouse = game:GetService("Players").LocalPlayer:GetMouse();
local inputService = game:GetService('UserInputService');
local heartbeat = game:GetService("RunService").Heartbeat;
function Draggable(frame)
local s, event = pcall(function()
return frame.MouseEnter
end)
if s then
frame.Active = true;
event:connect(function()
local input = frame.InputBegan:connect(function(key)
if key.UserInputType == Enum.UserInputType.MouseButton1 then
local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Quad', 0.1, true);
end
end
end)
local leave;
leave = frame.MouseLeave:connect(function()
input:disconnect();
leave:disconnect();
end)
end)
end
end
end

Draggable(Main)

mause.KeyDown:connect(function(key)
if key == ";" then
if isHidden == false then
Main:TweenPosition(Main.Position - UDim2.new(0,0,1,0),"Out","Quad",0.4,false)
isHidden = true
else
Main:TweenPosition(Main.Position + UDim2.new(0,0,1,0),"Out","Quad",0.4,false)
isHidden = false
end
end
end)


while true do
wait()
cl.Text = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
end
end)

PLR:Label("Work Whit Paid,KRNL AND SONA Exploit",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

	PLR:Button("Remote Spy Universal GAME",function()
loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
end)


--================== Misc =======================--

local MISC = w3:CreateFolder("Misc")

	MISC:Button("Rejoin",function()
		local TeleportService = game:GetService("TeleportService")
		local PlaceId = game.PlaceId
		local player = game.Players.LocalPlayer-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.Upgrade:InvokeServer("RebirthButton","BuyAll")
		if player then
		TeleportService:Teleport(PlaceId, player)
		end
	end)

	MISC:GuiSettings()

--================== Credits =======================--

local CS = w3:CreateFolder("Credits")

	CS:Button("Script by: I'm A Cat#7202",function()
		setclipboard("I'm A Cat#7202")
	end)

	CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",function()
		setclipboard("https://discord.gg/KmHZUpXEmQ")
	end)

CS:Button("Helped by: Altix#3395",function()
		setclipboard("Altix#3395")
end)

	CS:DestroyGUI()

--================== Autres =======================--


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


--| Other Anti AFK |
wait(10)
    game.StarterGui:SetCore(
        "ChatMakeSystemMessage",
        {
            Text = "[ANTI AFK] Started !",
            Font = Enum.Font.SourceSansBold, 
            FontSize = Enum.FontSize.Size24 
        }
    )
while wait(30) do
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
end

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

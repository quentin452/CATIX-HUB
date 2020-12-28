--https://www.roblox.com/games/5856707355/Christmas-Tapping?refPageId=2b5ecc11-dffe-4f42-bea4-5519be70b4af
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Christmas Tapping GUI")
local w2 = library:CreateWindow("Rebirths")
local w4 = library:CreateWindow("Super Rebirths")
local w5 = library:CreateWindow("Eggs")

--================== Model =======================--
local w = w3:CreateFolder("Hacks")

w:Label("Things",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	
		w:Toggle("Auto Upgrades",function(bool)
		shared.toggle1 = bool
end) 
	spawn(function()
		while wait() do
		       if shared.toggle1 then
game:GetService("ReplicatedStorage").Events.BuyUpgrade:FireServer("PetEquip")
wait(0.1)
game:GetService("ReplicatedStorage").Events.BuyUpgrade:FireServer("AutoTap")
wait(0.1)
game:GetService("ReplicatedStorage").Events.BuyUpgrade:FireServer("Storage")
wait(0.1)
game:GetService("ReplicatedStorage").Events.BuyUpgrade:FireServer("CandiesMultiplier")
wait(0.1)
game:GetService("ReplicatedStorage").Events.BuyUpgrade:FireServer("SnowflakesMultiplier")
wait(0.1)
end
end
end)

local w2 = w2:CreateFolder("Rebirths")
	w2:Dropdown("Choose Rebirths",{"X1","X5","X50","X950","X6,5K","X19K","X125K","X12,6M","X150M","X1,6B","X789B","X49T","X9Qd","X1Sx","X25Sx","X350Sx","X7Sp","X350Sp","X7Oc"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w2:Toggle("Buy Rebirths",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "X1" then
wait(0.1)
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth1")
			elseif _G.BossSelected == "X5" then
wait(0.1)
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth2")
			elseif _G.BossSelected == "X50" then
wait(0.1)
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth3")			
			elseif _G.BossSelected == "X950" then
wait(0.1)
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth4")	
			elseif _G.BossSelected == "X6,5K" then
wait(0.1)
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth5")			
			elseif _G.BossSelected == "X19K" then
wait(0.1)
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth6")
			elseif _G.BossSelected == "X125K" then
wait(0.1)
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth7")
			elseif _G.BossSelected == "X950K" then
wait(0.1)
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth8")
			elseif _G.BossSelected == "X12,6M" then
wait(0.1)
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth9")
			elseif _G.BossSelected == "X150M" then
wait(0.1)
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth10")
			elseif _G.BossSelected == "X1,6B" then
wait(0.1)
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth11")
			elseif _G.BossSelected == "X789B" then
wait(0.1)
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth12")
wait(0.1)
			elseif _G.BossSelected == "X49T" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth13")
wait(0.1)
			elseif _G.BossSelected == "X9Qd" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth14")
wait(0.1)
			elseif _G.BossSelected == "X1Sx" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth15")
wait(0.1)
			elseif _G.BossSelected == "X25Sx" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth16")
wait(0.1)
			elseif _G.BossSelected == "X350Sx" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth17")
wait(0.1)
			elseif _G.BossSelected == "X7Sp" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth18")
wait(0.1)
			elseif _G.BossSelected == "X350Sp" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth19")
wait(0.1)
			elseif _G.BossSelected == "X7Oc" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth20")
wait(0.1)
		
			end
		end
	end
end)

local w4 = w4:CreateFolder("Sr Rebirths")
	w4:Dropdown("Choose Sr Rebirths",{"X1","X5","X50","X100","X1000","X2000","X10K","X100K","X1M","X10M","X100M","X1B","X10B","X100B","X1T","X10T","X20T","X50T","X100T"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.LolSelected = mob
	end)

	w4:Toggle("Buy Sr Rebirths",function(bool)
	    shared.Rebirth = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Rebirth then
			if _G.LolSelected == "X1" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(1)
wait(0.1)
			elseif _G.LolSelected == "X5" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(5)
wait(0.1)
			elseif _G.LolSelected == "X50" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(50)
wait(0.1)
			elseif _G.LolSelected == "X100" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(100)
wait(0.1)
			elseif _G.LolSelected == "X1000" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(1000)	
wait(0.1)		
			elseif _G.LolSelected == "X2000" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(2000)
wait(0.1)
			elseif _G.LolSelected == "X10K" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(10000)
wait(0.1)
			elseif _G.LolSelected == "X1000" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(100000)
wait(0.1)
			elseif _G.LolSelected == "X1M" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(1000000)
wait(0.1)
			elseif _G.LolSelected == "X10M" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(10000000)
wait(0.1)
			elseif _G.LolSelected == "X100M" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(100000000)
wait(0.1)
			elseif _G.LolSelected == "X1B" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(1000000000)
wait(0.1)
			elseif _G.LolSelected == "X10B" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(10000000000)
wait(0.1)
				elseif _G.LolSelected == "X100B" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(100000000000)
wait(0.1)
			elseif _G.LolSelected == "X1T" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(1000000000000)
wait(0.1)
			elseif _G.LolSelected == "X10T" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(10000000000000)
wait(0.1)
		elseif _G.LolSelected == "X20T" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(20000000000000)
wait(0.1)
elseif _G.LolSelected == "X50T" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(50000000000000)
wait(0.1)
elseif _G.LolSelected == "X100T" then
game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer(100000000000000)
wait(0.1)
		
			end
		end
	end
end)

local w5 = w5:CreateFolder("Eggs")
	w5:Dropdown("Choose Eggs",{"750 Sugars","3K Sugars(Secret)","5K Sugars","250K Sugars","50M Sugars","90B Sugars","1T Sugars","750T Sugars"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.LoLSelected = mob
	end)

	w5:Toggle("Buy Eggs",function(bool)
	    shared.miaou = bool
	end)

spawn(function()
	while wait(0) do
		if shared.miaou then
			if _G.LoLSelected == "750 Sugars" then
game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg1)
	elseif _G.LoLSelected == "3K Sugars(Secret)" then
game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.EggSecret)
			elseif _G.LoLSelected == "5K Sugars" then
game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg2)
			elseif _G.LoLSelected == "250K Sugars" then
game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg3)		
			elseif _G.LoLSelected == "50M Sugars" then
game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg4)
			elseif _G.LoLSelected == "90B Sugars" then
game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg5)		
			elseif _G.LoLSelected == "1T Sugars" then
game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg6)
			elseif _G.LoLSelected == "750T Sugars" then
game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg7)
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
		local player = game.Players.LocalPlayer
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

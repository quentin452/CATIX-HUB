local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Tapping Legacy")
local w2 = library:CreateWindow("Eggs")
local w4 = library:CreateWindow("Rebirths")

--================== Model =======================--
local w = w3:CreateFolder("Things")

w:Label("Hacks",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor


	w:Toggle("Auto Click",function(bool)
		shared.toggle1 = bool
	end)
	
		w:Toggle("Auto Buy Upgrades",function(bool)
		shared.toggle2 = bool
end) 
	spawn(function()
		while wait() do
		       if shared.toggle1 then
game:GetService("ReplicatedStorage").Remotes.Events.Click:FireServer()
end
	if shared.toggle2 then

game:GetService("ReplicatedStorage").Remotes.Events.Upgrade:FireServer("Tap")
game:GetService("ReplicatedStorage").Remotes.Events.Upgrade:FireServer("Speed")
game:GetService("ReplicatedStorage").Remotes.Events.Upgrade:FireServer("Jump")
end
end
end)

local w2 = w2:CreateFolder("Eggs")
	w2:Dropdown("Choose Eggs",{"VIP","Farm","Terrestrial","Little Animals","Unique","Crewmate","Crabstal","Sunny Crystal","Delicious Sodas","Mythical Avengers","Pac-Man Crystal","Lego Pets","Grumpy Pets","The Ninja Rangers","Robo Crystal","Ice Monsters","Ice Cubes","Cactus","Sandy","Emerald"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w2:Toggle("Buy Eggs",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "Farm" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Farm Crystal",1)
			elseif _G.BossSelected == "Terrestrial" then

game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Terrestrial Crystal",1)

			elseif _G.BossSelected == "Little Animals" then

game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Little Animals",1)
			elseif _G.BossSelected == "Unique" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Unique Crystal",1)
			elseif _G.BossSelected == "Crewmate" then

game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Crewmate Crystal",1)
			elseif _G.BossSelected == "Crabstal" then

game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Crabstal",1)
			elseif _G.BossSelected == "Sunny Crystal" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Sunny Crystal",1)
elseif _G.BossSelected == "Delicious Sodas" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Delicious Sodas",1)
elseif _G.BossSelected == "Mythical Avengers" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Mythical Avengers",1)
elseif _G.BossSelected == "Pac-Man Crystal" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Pac-Man Crystal",1)
elseif _G.BossSelected == "Lego Pets" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Lego Pets",1)
elseif _G.BossSelected == "Grumpy Pets" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Grumpy Pets",1)
elseif _G.BossSelected == "The Ninja Rangers" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("The Ninja Rangers",1)
elseif _G.BossSelected == "Robo Crystal" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Robo Crystal",1)
elseif _G.BossSelected == "VIP" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Mythical Creatures",1)
elseif _G.BossSelected == "Ice Monsters" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Ice Monsters",1)
elseif _G.BossSelected == "Ice Cubes" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Ice Cubes",1)
elseif _G.BossSelected == "Cactus" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Cactus Crystal",1)
elseif _G.BossSelected == "Sandy" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Sandy Crystal",1)
elseif _G.BossSelected == "Emerald" then
game:GetService("ReplicatedStorage").Remotes.Events.BuyCrystal:FireServer("Emerald Crystal",1)
			end
		end
	end
end)

local w22 = w4:CreateFolder("Rebirths")
	w22:Dropdown("Choose Rebirths",{"X1","X5","X25","X50","X150","X500","X1K","X2,5K","X10K","X25K","X50K","X100K","X250K","X500K","X1M","X5M","X10M","X50M","X100M","X250M","X750M","X2B","X5B","X10B","X25B","X50B","X100B","X250B","X1T","X5T"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w22:Toggle("Buy Rebirths",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "X1" then

game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(1)
			elseif _G.BossSelected == "X5" then

game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(2)

			elseif _G.BossSelected == "X25" then

game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(3)
			elseif _G.BossSelected == "X50" then

game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(4)
			elseif _G.BossSelected == "X150" then
			game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(5)
			elseif _G.BossSelected == "X500" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(6)
elseif _G.BossSelected == "X1K" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(7)
elseif _G.BossSelected == "X2,5K" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(8)
elseif _G.BossSelected == "X10K" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(9)
elseif _G.BossSelected == "X25K" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(10)
elseif _G.BossSelected == "X50K" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(11)
elseif _G.BossSelected == "X102K" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(12)
elseif _G.BossSelected == "X250K" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(13)
elseif _G.BossSelected == "X500K" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(14)
elseif _G.BossSelected == "X1M" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(15)
elseif _G.BossSelected == "X5M" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(16)
elseif _G.BossSelected == "X10M" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(17)
elseif _G.BossSelected == "X50M" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(18)
elseif _G.BossSelected == "X100M" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(19)
elseif _G.BossSelected == "X250M" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(20)
elseif _G.BossSelected == "X750M" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(21)
elseif _G.BossSelected == "X2B" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(22)
elseif _G.BossSelected == "X5B" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(23)
elseif _G.BossSelected == "X10B" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(24)
elseif _G.BossSelected == "X25B" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(25)
elseif _G.BossSelected == "X50B" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(26)
elseif _G.BossSelected == "X100B" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(27)
elseif _G.BossSelected == "X250B" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(28)
elseif _G.BossSelected == "X1T" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(29)
elseif _G.BossSelected == "X5T" then
		game:GetService("ReplicatedStorage").Remotes.Events.Rebirth:FireServer(30)
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

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Legend OF Speed")
local w2 = library:CreateWindow("Eggs")


--================== Model =======================--
local w = w3:CreateFolder("Hacks")

w:Label("Things",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor


	w:Toggle("Auto Click",function(bool)
		shared.toggle1 = bool
	end)
		w:Toggle("Auto Buy Ranks",function(bool)
		shared.toggle11 = bool
	end)
		w:Toggle("Auto Collect ORbs",function(bool)
		shared.toggle2 = bool
end) 
	w:Toggle("Auto Daily Rewards",function(bool)
		shared.toggle3 = bool
end) 
	w:Toggle("Auto Buy Areas",function(bool)
		shared.toggle4 = bool
end) 
	w:Toggle("Delete Useless Pets",function(bool)
		shared.toggle5 = bool
end) 
	w:Toggle("Evolve Pets",function(bool)
		shared.toggle6 = bool
end) 

	spawn(function()
		while wait() do
		       if shared.toggle1 then

local args = {
    [1] = "Click"
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))
end
	if shared.toggle11 then
local args = {
    [1] = "Purchase",
    [2] = "Rank"
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))

end
	if shared.toggle2 then
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'CBase' then
     v.CFrame = root.CFrame
       wait()
   
  
        end
    end
end
	if shared.toggle3 then
local args = {
    [1] = "DailyReward"
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))
local args = {
    [1] = "GroupReward"
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))
end
	if shared.toggle4 then
local args = {
    [1] = "Area",
    [2] = workspace.Area2
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))

local args = {
    [1] = "Area",
    [2] = workspace.Area3
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))
end
	if shared.toggle5 then
local args = {
    [1] = "DeleteRarity",
    [2] = "Uncommon"
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))

local args = {
    [1] = "DeleteRarity",
    [2] = "Common"
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))
end
	if shared.toggle6 then
local args = {
    [1] = "Evolve"
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))

end
end
end)

local w2 = w2:CreateFolder("Eggs")
	w2:Dropdown("Choose Eggs",{"Tier1","Tier2","Tier3","Tier4","Tier5","Tier6","Tier7"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w2:Toggle("Buy Eggs",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "Tier1" then
local args = {
    [1] = "PurchaseCrate",
    [2] = "Tier1",
    [3] = 1
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))
	
			elseif _G.BossSelected == "Tier2" then
			
local args = {
    [1] = "PurchaseCrate",
    [2] = "Tier2",
    [3] = 1
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))
			elseif _G.BossSelected == "Tier3" then
			local args = {
    [1] = "PurchaseCrate",
    [2] = "Tier3",
    [3] = 1
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))
			elseif _G.BossSelected == "Tier4" then
			local args = {
    [1] = "PurchaseCrate",
    [2] = "Tier4",
    [3] = 1
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))
			elseif _G.BossSelected == "Tier5" then
			local args = {
    [1] = "PurchaseCrate",
    [2] = "Tier5",
    [3] = 1
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))
			elseif _G.BossSelected == "Tier6" then
local args = {
    [1] = "PurchaseCrate",
    [2] = "Tier6",
    [3] = 1
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))
	elseif _G.BossSelected == "Tier7" then
local args = {
    [1] = "PurchaseCrate",
    [2] = "Tier7",
    [3] = 1
}

game:GetService("ReplicatedStorage").Network.Port1:FireServer(unpack(args))
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

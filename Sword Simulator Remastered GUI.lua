local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Sword Sim Remastered")
local w2 = library:CreateWindow("Mobs")

--================== Model =======================--
local w = w3:CreateFolder("Things")

w:Label("Hacks",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

w:Button("Auto Equip Sword",function()
     local toolname = "sword" -- replace with the name of the tool
local Plr = game:GetService("Players").LocalPlayer
while wait() do
    pcall(function()
        if Plr.Backpack:FindFirstChild(toolname) and Plr.Character:FindFirstChild(toolname) == nil then
            local tool = Plr.Backpack:FindFirstChild(toolname)
            Plr.Character.Humanoid:EquipTool(tool)
        end
    end)
end	
end)

	w:Toggle("Auto CLICK FAST",function(bool)
		shared.toggle11 = bool
	end)
	
	spawn(function()
		while wait() do
		       if shared.toggle11 then
		workspace[game.Players.LocalPlayer.Name].sword.Handle.up.RemoteEvent:FireServer()
	workspace[game.Players.LocalPlayer.Name].sword.Handle.up.RemoteEvent:FireServer()
	workspace[game.Players.LocalPlayer.Name].sword.Handle.up.RemoteEvent:FireServer()
   if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
end
end
end)

local w2 = w2:CreateFolder("Mobs")
	w2:Dropdown("Choose Mobs",{"Slime(100)","Slime(500)","Slime(750)","Slime(1000)","Blue Slime(10000)","Blue Slime(50000)","Blue Slime(75000)","Blue Slime(100000)","Pink Slime(1000000)","Pink Slime(2000000)","Giant Blue Slime(5000000)","Rock Knight(1K)","Rock Knight(5K)","Rock Knight(50K)","Great Rock Knight(10K)","Great Rock Knight(50K)","Great Rock Knight(150K)","Great Rock Knight(200K)","Great Rock Knight(500K)","Great Skeleton Knight(20B)","Skeleton Knight(1B)","Skeleton Knight(2B)","Skeleton Knight(5B)","Skeleton Knight(10B)","BOSS Slime","Skeleton(200M)","Skeleton(500M)","Skeleton(1B)"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w2:Toggle("Tp To Mobs",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "Slime(100)" then
			local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Slime(100)"].Hitbox

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
			elseif _G.BossSelected == "Slime(750)" then
			local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Slime(750)"].Hitbox

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)	
		elseif _G.BossSelected == "Slime(500)" then
			local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Slime(500)"].Hitbox

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)	
		elseif _G.BossSelected == "Slime(1000)" then
			local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Slime(1000)"].Hitbox

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)	
			elseif _G.BossSelected == "Rock Knight(1K)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Rock Knight(1K)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
		elseif _G.BossSelected == "Rock Knight(5K)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Rock Knight(5K)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
	elseif _G.BossSelected == "Rock Knight(50K)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Rock Knight(50K)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
	elseif _G.BossSelected == "Great Rock Knight(10K)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Great Rock Knight(10K)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Great Rock Knight(150K)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Great Rock Knight(150K)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Great Rock Knight(200K)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Great Rock Knight(200K)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Great Rock Knight(500K)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Great Rock Knight(500K)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Blue Slime(10000)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Blue Slime(10000)"].Hitbox

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Blue Slime(100000)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Blue Slime(100000)"].Hitbox

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Blue Slime(500000)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Blue Slime(50000)"].Hitbox

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Blue Slime(750000)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Blue Slime(75000)"].Hitbox

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Pink Slime(1000000)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Pink Slime(1000000)"].Hitbox

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Pink Slime(2000000)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Pink Slime(2000000)"].Hitbox

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Great Skeleton Knight(20B)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Great Skeleton Knight(20B)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Giant Blue Slime(5000000)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Giant Blue Slime(5000000)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Skeleton Knight(10B)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Skeleton Knight(10B)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Skeleton Knight(5B)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Skeleton Knight(5B)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Skeleton Knight(2B)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Skeleton Knight(2B)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Skeleton Knight(1B)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Skeleton Knight(1B)"].Head

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "BOSS Slime" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["BOSS Slime"].Hitbox

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Skeleton(1B)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Skeleton(1B)"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Skeleton(500M)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Skeleton(500M)"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Skeleton(200M)" then
				local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Monsters["Skeleton(500M)"].HumanoidRootPart

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)

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

	PLR:Button("Dark Dex other exploit",function()
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/quentin452/CATIX-HUB/master/DEX%20EXPLORER"))()
end)

	PLR:Button("Dark Dex(synapse)",function()
loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))()
end)

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

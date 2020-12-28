local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Clicker Legacy")
local w2 = library:CreateWindow("Eggs X1")


--================== Model =======================--
local w = w3:CreateFolder("Things")

w:Label("Hacks",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

w:Button("Inf",function()
 game:GetService("ReplicatedStorage").EnterCode:FireServer(999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999, "Lmfao Thx for the remote")
end)

	w:Toggle("Auto Click FAST",function(bool)
		shared.toggle1 = bool
	end)
	
		w:Toggle("Auto Click Very FAST",function(bool)
		shared.toggle2 = bool
end) 
	w:Toggle("Auto Click ",function(bool)
		shared.toggle3 = bool
end) 

	spawn(function()
		while wait() do
		       if shared.toggle1 then
workspace.Events.AddClick:FireServer()
workspace.Events.AddClick:FireServer()
workspace.Events.AddClick:FireServer()
end
	if shared.toggle2 then
workspace.Events.AddClick:FireServer()
workspace.Events.AddClick:FireServer()
workspace.Events.AddClick:FireServer()
workspace.Events.AddClick:FireServer()
workspace.Events.AddClick:FireServer()
workspace.Events.AddClick:FireServer()
workspace.Events.AddClick:FireServer()
workspace.Events.AddClick:FireServer()
workspace.Events.AddClick:FireServer()
end
	if shared.toggle3 then
workspace.Events.AddClick:FireServer()

end
end
end)

local w2 = w2:CreateFolder("Eggs")
	w2:Dropdown("Choose Eggs",{"1 CLICKS","1K CLICKS","1K Gems","25B CLICKS","15T CLICKS","1Qd CLICKS","25Qn CLICKS","100Sx CLICKS","5K Pumpkins","250K Pumpkins","15M Pumpkins"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w2:Toggle("Buy Eggs",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
	if _G.BossSelected == "1 CLICKS" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Nothing","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(709.536499, -173.868271, 708.458923)
			if _G.BossSelected == "1K CLICKS" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Basic","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(38.8338928, 8.77275848, 92.0966721)
		elseif _G.BossSelected == "1K Gems" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("ea","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(7.51059008, 9.83064842, 94.7237701)
			elseif _G.BossSelected == "25B CLICKS" then
			game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("DesertEgg","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-376.194153, 18.8510208, 64.666275)
			elseif _G.BossSelected == "15T CLICKS" then
			game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("IceEgg","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-723.450134, 17.3016663, 74.1005707)
			elseif _G.BossSelected == "1Qd CLICKS" then
			game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("ForestEgg","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1006.91742, 9.04495239, 84.0985031)
	elseif _G.BossSelected == "25Qn CLICKS" then
			game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("HeavenEgg","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1329.17822, 0.0287381709, 107.403397)
elseif _G.BossSelected == "100Sx CLICKS" then
			game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("CandyEgg","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1650.14685, 22.9925842, 78.3286819)
elseif _G.BossSelected == "5K Pumpkins" then
			game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("HalloweenEgg1","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(311.381714, 16.0060425, 103.966599)
elseif _G.BossSelected == "250K Pumpkins" then
			game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("HalloweenEgg2","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(307.66394, 16.0038128, 78.9325867)
elseif _G.BossSelected == "15M Pumpkins" then
			game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("HalloweenEgg3","Single")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(305.76712, 16.1000767, 49.1083412)
			end
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

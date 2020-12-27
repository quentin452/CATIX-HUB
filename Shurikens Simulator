
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Shuriken-Simulator GUI")
local w2 = library:CreateWindow("Eggs")
local w4 = library:CreateWindow("Boss")
local w44 = library:CreateWindow("Teleports")

--================== Model =======================--
local w = w3:CreateFolder("Things")

w:Button("Oppen Shurikens Shop",function()
game:GetService("ReplicatedStorage").OpenShurikenShop4:FireServer("ShurikenShop4")
end)
w:Button("Oppen Runeblade Reinforcement Shop",function()
game:GetService("ReplicatedStorage").OpenShurikenShop4:FireServer("ShurikenShop4")
end)
w:Label("Hacks",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor



	w:Toggle("Auto Click",function(bool)
		shared.toggle1 = bool
	end)
	
		w:Toggle("Auto Sell VIP",function(bool)
		shared.toggle2 = bool
end) 
w:Toggle("Auto Rebirths",function(bool)
		shared.toggle3 = bool
end)
w:Toggle("Ability FREE",function(bool)
		shared.toggle4 = bool
end)
w:Toggle("Blue To Orange Orb",function(bool)
		shared.toggle5 = bool
end) 
w:Toggle("Auto Collect Candy",function(bool)
		shared.toggle66 = bool
end) 
	spawn(function()
		while wait() do
		       if shared.toggle1 then
local args = {
    [1] = CFrame.new(52.0080681, 3.40920258, -95.3801193, -0.99602747, 0.0137935141, 0.0879713595, 0.0121511435, 0.99974227, -0.0191776752, -0.0882132128, -0.0180325396, -0.995938361),
    [2] = Vector3.new(63.1793442, -0.401233673, -80.8065033),
    [3] = Vector3.new(49.1452637, 2.10440636, -92.7246552),
}

game:GetService("ReplicatedStorage").CloneShuri:FireServer(unpack(args))
end
	if shared.toggle2 then
	game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-73.7772217, 46.7321625, -290.477722)
wait(0)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-68.8837357, 32.9820442, -230.32016)
end
	if shared.toggle3 then
game:GetService("ReplicatedStorage").ClientToServer.ConvinienceRebirth:InvokeServer(game:GetService("Players").LocalPlayer)
       end
	if shared.toggle4 then
local args = {
    [1] = 0,
}

game:GetService("Players")["LocalPlayer"].PlayerGui.MainGui.AbilityShop.Interaction:FireServer(unpack(args))
       end
	if shared.toggle5 then
local args = {
    [1] = game:GetService("Players")["LocalPlayer"].PlayerGui.PopUp.exchangeask.ok,
}

game:GetService("ReplicatedStorage").Exchangegogo:FireServer(unpack(args))
       end
	if shared.toggle66 then
wait(1)
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Orange' then
     v.CFrame = root.CFrame
       wait()
   
  
        end
    end
end
end
end)

local w2 = w2:CreateFolder("Eggs")
	w2:Dropdown("Choose Eggs",{"250 Blue Orbs","3K Blue Orbs","17,5K Blue Orbs","50K Blue Orbs","300K Blue Orbs","500K Blue Orbs","650K Blue Orbs","3M Blue Orbs","3,5M Blue Orbs","150 Orange Orbs","1,7K Orange Orbs","30K Orange Orbs","35K Orange Orbs","300K Orange Orbs","400K Orange Orbs","100 Candy","300 Candy","300 Candy (2)"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w2:Toggle("Buy Eggs",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "250 Blue Orbs" then
game:GetService("Players").LocalPlayer.PlayerGui.machine1.ReceivePet:InvokeServer()
			elseif _G.BossSelected == "3K Blue Orbs" then
	game:GetService("Players").LocalPlayer.PlayerGui.machine2.ReceivePet:InvokeServer()		
		elseif _G.BossSelected == "17,5K Blue Orbs" then
	game:GetService("Players").LocalPlayer.PlayerGui.machine8.ReceivePet:InvokeServer()		
	elseif _G.BossSelected == "50K Blue Orbs" then
	game:GetService("Players").LocalPlayer.PlayerGui.machine9.ReceivePet:InvokeServer()
elseif _G.BossSelected == "300K Blue Orbs" then
	game:GetService("Players").LocalPlayer.PlayerGui.machine11.ReceivePet:InvokeServer()
			elseif _G.BossSelected == "500K Blue Orbs" then
			game:GetService("Players").LocalPlayer.PlayerGui.machine4.ReceivePet:InvokeServer()
elseif _G.BossSelected == "650K Blue Orbs" then
	game:GetService("Players").LocalPlayer.PlayerGui.machine12.ReceivePet:InvokeServer()	
elseif _G.BossSelected == "3M Blue Orbs" then
			game:GetService("Players").LocalPlayer.PlayerGui.machine18.ReceivePet:InvokeServer()	
elseif _G.BossSelected == "3,5M Blue Orbs" then
			game:GetService("Players").LocalPlayer.PlayerGui.machine15.ReceivePet:InvokeServer()	
			elseif _G.BossSelected == "150 Orange Orbs" then
			game:GetService("Players").LocalPlayer.PlayerGui.machine3.ReceivePet:InvokeServer()	
elseif _G.BossSelected == "1,7K Orange Orbs" then
			game:GetService("Players").LocalPlayer.PlayerGui.machine10.ReceivePet:InvokeServer()	
			elseif _G.BossSelected == "30K Orange Orbs" then

game:GetService("Players").LocalPlayer.PlayerGui.machine5.ReceivePet:InvokeServer()
elseif _G.BossSelected == "35K Orange Orbs" then

game:GetService("Players").LocalPlayer.PlayerGui.machine13.ReceivePet:InvokeServer()
			elseif _G.BossSelected == "300K Orange Orbs" then

game:GetService("Players").LocalPlayer.PlayerGui.machine19.ReceivePet:InvokeServer()
				elseif _G.BossSelected == "400K Orange Orbs" then

game:GetService("Players").LocalPlayer.PlayerGui.machine16.ReceivePet:InvokeServer()
elseif _G.BossSelected == "100 Candy" then


game:GetService("Players").LocalPlayer.PlayerGui.machine21.ReceivePet:InvokeServer()
elseif _G.BossSelected == "300 Candy" then

game:GetService("Players").LocalPlayer.PlayerGui.machine22.ReceivePet:InvokeServer()
elseif _G.BossSelected == "300 Candy (2)" then

game:GetService("Players").LocalPlayer.PlayerGui.machine23.ReceivePet:InvokeServer()
	
			end
		end
	end
end)





local w4 = w4:CreateFolder("Boss")
w4:Label("Use Auto Click Software To Hit Bosses",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	w4:Dropdown("Choose Boss",{"EggBoss","Gobugi"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w4:Toggle("To.....",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "EggBoss" then
			local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Map6.EggBoss.EggBoss.Torso

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+20, pbosd.Position.Z+0)
			if _G.BossSelected == "Gobugi" then
			local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Gobugi.Torso

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)

			end
			end
	end
		
end
end)

local w44 = w44:CreateFolder("Teleporters")

w44:Button("Vip Zone",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-71.0812836, 32.9625702, -231.912827)
end)
w44:Button("Spawn",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-57.5674667, 4.69048786, -48.7413902)
end)
w44:Button("Island 1",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2151.37817, -9.0841589, -126.001846)
end)
w44:Button("Island 2",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-3548.63599, -82.8490448, 43.8874626)
end)
w44:Button("Island 3",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-3753.69531, 333.118042, -1305.2616)
end)
w44:Button("Island 4",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1805.97144, 936.875916, -877.907898)
end)
w44:Button("Island 5",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-3658.36426, 1382.4386, 443.287567)
end)
w44:Button("Island 6",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-3703.52563, 2537.0332, -3070.90405)
end)
w44:Button("Island 7",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-954.060669, 3395.75464, -2083.98315)
end)
w44:Button("Island 8(Rebirths)",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(270.15387, 4582.83301, -3523.79858)
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

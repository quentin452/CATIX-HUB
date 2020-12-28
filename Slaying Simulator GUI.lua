--https://www.roblox.com/games/2616498302/DRAGONS-Slaying-Simulator

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Slaying Simulator GUI")
local w2 = library:CreateWindow("Eggs")
local w4 = library:CreateWindow("Tp To Mobs")

--================== Model =======================--
local w = w3:CreateFolder("Things")



w:Button("Button",function()
  game:GetService("ReplicatedStorage").Network.Port1:FireServer("Swing",{game:GetService("Workspace").BossFolder.Boss4})
end)

	w:Toggle("Auto Click",function(bool)
		shared.things1 = bool
	
	end)
	
		w:Toggle("Auto Rebirths",function(bool)
		shared.things2 = bool
end) 
	spawn(function()
		while wait() do
		       if shared.things1 then
		 if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
            end
end
	if shared.things2 then
    local Event = game:GetService("ReplicatedStorage").Events.PurchaseRebirth
Event:FireServer()
end
end
end)

local w2 = w2:CreateFolder("Eggs")
	w2:Dropdown("Choose Eggs",{"Common","Leafy","Ancient","Swampy","Crystal","Flaming","Sandy","Space","Evil","Candy","Chocolate","Frostbite","Aqua","Magma","Volcanic","Isotopic","Bionic","Medieval","Royal","Subzero","Power","Robot","Magical","Griffin","Phoenix","Ghostly"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w2:Toggle("Buy Eggs",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "Common" then
local Remote = game.ReplicatedStorage.Events['PurchaseEgg']
				local Arguments = {
       [1] = "Common Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
			elseif _G.BossSelected == "Leafy" then
local Remote = game.ReplicatedStorage.Events['PurchaseEgg']
				local Arguments = {
       [1] = "Leafy Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))

			elseif _G.BossSelected == "Ancient" then
local Remote = game.ReplicatedStorage.Events['PurchaseEgg']
			local Arguments = {
       [1] = "Ancient Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
			elseif _G.BossSelected == "Swampy" then
local Remote = game.ReplicatedStorage.Events['PurchaseEgg']
			local Arguments = {
       [1] = "Swampy Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
			elseif _G.BossSelected == "Crystal" then
local Remote = game.ReplicatedStorage.Events['PurchaseEgg']
		local Arguments = {
       [1] = "Crystal Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
			elseif _G.BossSelected == "Flaming" then
			           local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Flaming Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
			elseif _G.BossSelected == "Sandy" then
				        local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Sandy Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
			elseif _G.BossSelected == "Space" then
				       local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Space Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
			elseif _G.BossSelected == "Evil" then
				          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Evil Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
			elseif _G.BossSelected == "Candy" then
				     local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Candy Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
			elseif _G.BossSelected == "Chocolate" then
  local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Chocolate Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
			
elseif _G.BossSelected == "Frostbite" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Frostbite Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
      
elseif _G.BossSelected == "Aqua" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Aqua Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
      
elseif _G.BossSelected == "Magma" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Magma Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
       
elseif _G.BossSelected == "Volcanic" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Volcanic Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
       
elseif _G.BossSelected == "Isotopic" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Isotopic Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
      
elseif _G.BossSelected == "Bionic" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Bionic Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
       
elseif _G.BossSelected == "Medieval" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Medieval Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
       
elseif _G.BossSelected == "Royal" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Royal Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
       
elseif _G.BossSelected == "Subzero" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Subzero Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
       
elseif _G.BossSelected == "Power" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Power Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
        
elseif _G.BossSelected == "Robot" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Robot Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
     
elseif _G.BossSelected == "Magical" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Magical Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
     
elseif _G.BossSelected == "Griffin" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Griffin Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
      
elseif _G.BossSelected == "Phoenix" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Phoenix Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
        
elseif _G.BossSelected == "Ghostly" then
          local Remote = game.ReplicatedStorage.Events['PurchaseEgg']

local Arguments = {
       [1] = "Ghostly Egg",
       [2] = 1
}

Remote:InvokeServer(unpack(Arguments))
        end
		end
	end
end)

--================== Tp To Mobs =======================--


local w33 = w4:CreateFolder("Tp To Mobs")

w33:Label("Use Auto Click",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

w33:Button("Tp To Overwolf",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies.Overlord[" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Werewolf",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies.Werewolf[" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Cactus King",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Cactus King"][" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Guest",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies.Guest[" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Gingerbread Man",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Gingerbread Man"][" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Frost Guard",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Frost Guard"][" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Flame Guard",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Flame Guard"][" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Deathspeaker",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies.Deathspeaker[" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Redcliff Emperor",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Redcliff Emperor"][" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Yeti",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies.Yeti[" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Crackop",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies.Crackop[" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Mech Golem",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Mech Golem"][" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Dark Wizard",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Dark Wizard"][" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)
w33:Button("Tp To Dragon Lord",function()
   local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Enemies["Dragon Lord"][" "].LeftUpperLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)	
end)

--================== Player Settings =======================--


local PLR = w3:CreateFolder("Player")

	
	
	PLR:Slider("Jump Hack",10,250,true,function(value)
	    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	end)
	PLR:Button("Speed Hack (press R)",function()
	    
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

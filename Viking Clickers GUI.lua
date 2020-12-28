local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Viking Clicker GUI")
local rr = library:CreateWindow("Rebirths")

--================== Things =======================--
local w2 = w:CreateFolder("Things")




	w2:Toggle("Auto Click",function(bool)
		shared.toggle1 = bool
	end)
	
		w2:Toggle("Auto Buy Potions",function(bool)
		shared.toggle2 = bool
end) 
w2:Toggle("Auto Buy Ranks",function(bool)
		shared.toggle3 = bool
end) 
w2:Toggle("Auto Buy Upgrades",function(bool)
		shared.toggle4 = bool
end) 
w2:Toggle("Auto Collect Candys",function(bool)
		shared.toggle5 = bool
end) 
	spawn(function()
		while wait() do
		       if shared.toggle1 then
		game:GetService("ReplicatedStorage").MainEvent:FireServer("ClickedButton")
end
	if shared.toggle2 then
		game:GetService("ReplicatedStorage").Boosts:FireServer("x5Plunder15Minutesgold","Gold",1000)
game:GetService("ReplicatedStorage").Boosts:FireServer("x3Gold1Hourgold","Gold",15000)
game:GetService("ReplicatedStorage").Boosts:FireServer("x3Gold15Minutesgold","Gold",4000)
game:GetService("ReplicatedStorage").Boosts:FireServer("x2Gold1Hourgold","Gold",3000)
game:GetService("ReplicatedStorage").Boosts:FireServer("x2Gold15Minutesgold","Gold",1000)
game:GetService("ReplicatedStorage").Boosts:FireServer("x10Plunder1Hourgold","Gold",12000)
game:GetService("ReplicatedStorage").Boosts:FireServer("x10Plunder15Minutesgold","Gold",4000)
game:GetService("ReplicatedStorage").Boosts:FireServer("x5Plunder1Hourgold","Gold",3000)
end
	if shared.toggle3 then
game:GetService("ReplicatedStorage").MainEvent:FireServer("Ranks")
end
	if shared.toggle4 then
game:GetService("ReplicatedStorage").MainEvent:FireServer("FasterEggOpen")
game:GetService("ReplicatedStorage").MainEvent:FireServer("SkillMultiplier")
game:GetService("ReplicatedStorage").MainEvent:FireServer("Speed")
game:GetService("ReplicatedStorage").MainEvent:FireServer("GoldMultiplier")
game:GetService("ReplicatedStorage").MainEvent:FireServer("AutoClick")
game:GetService("ReplicatedStorage").MainEvent:FireServer("RebirthButton")
end
	if shared.toggle5 then
	    local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'candy' then
     v.CFrame = root.CFrame
       wait()
   
  
        end
    end
end
end
end)
--================== Eggs =======================--

local w3 = w:CreateFolder("Eggs")
	

	w3:Button("Go To Eggs",function(bool)
	    
	end)
    w3:Toggle("Buy All Eggs",function(bool)
		shared.toggle1 = bool
	end)

spawn(function()
		while wait() do
		       if shared.toggle1 then
		game:GetService("ReplicatedStorage").MainEvent:FireServer("Eggff","Spoil")

end
end
end)

--================== Rebirths =======================--
local rr = rr:CreateFolder("Rebirths")
	rr:Dropdown("Choose Rebirths",{"X1","X10","X100","X1K","X10K","X100K","X1M","X10M","X100M","X1B","X10B","X100B","X1T","X10T","X100T","X1q","X10q","X100q","X1Qu","X1Qu"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.RebirthsSelected = mob
	end)

	rr:Toggle("Buy Rebirths",function(bool)
	    shared.Rebirths = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Rebirths then
			if _G.RebirthsSelected == "X1" then
			game:GetService("ReplicatedStorage").Rebirth:FireServer(1)
			elseif _G.RebirthsSelected == "X10" then
			game:GetService("ReplicatedStorage").Rebirth:FireServer(10)

			elseif _G.RebirthsSelected == "X100" then
			game:GetService("ReplicatedStorage").Rebirth:FireServer(100)
			elseif _G.RebirthsSelected == "X1K" then
		game:GetService("ReplicatedStorage").Rebirth:FireServer(1000)
			elseif _G.RebirthsSelected == "X10K" then
			game:GetService("ReplicatedStorage").Rebirth:FireServer(10000)
			elseif _G.RebirthsSelected == "X100K" then
		game:GetService("ReplicatedStorage").Rebirth:FireServer(100000)
			elseif _G.RebirthsSelected == "X1M" then
			game:GetService("ReplicatedStorage").Rebirth:FireServer(1000000)
			elseif _G.RebirthsSelected == "X10M" then
			game:GetService("ReplicatedStorage").Rebirth:FireServer(10000000)
			elseif _G.RebirthsSelected == "X100M" then
			game:GetService("ReplicatedStorage").Rebirth:FireServer(100000000)
			elseif _G.RebirthsSelected == "X1B" then
		game:GetService("ReplicatedStorage").Rebirth:FireServer(1000000000)
			elseif _G.RebirthsSelected == "X10B" then
			    game:GetService("ReplicatedStorage").Rebirth:FireServer(10000000000)
			elseif _G.RebirthsSelected == "X100B" then
			    game:GetService("ReplicatedStorage").Rebirth:FireServer(100000000000)
			elseif _G.RebirthsSelected == "X1T" then
		         game:GetService("ReplicatedStorage").Rebirth:FireServer(1000000000000)
			elseif _G.RebirthsSelected == "X10T" then
	              game:GetService("ReplicatedStorage").Rebirth:FireServer(10000000000000)
			elseif _G.RebirthsSelected == "X100T" then
			    game:GetService("ReplicatedStorage").Rebirth:FireServer(100000000000000)
			elseif _G.RebirthsSelected == "X1q" then
                  game:GetService("ReplicatedStorage").Rebirth:FireServer(1000000000000000)   
			elseif _G.RebirthsSelected == "X10q" then
                        game:GetService("ReplicatedStorage").Rebirth:FireServer(10000000000000000)  
			elseif _G.RebirthsSelected == "X100q" then
			      game:GetService("ReplicatedStorage").Rebirth:FireServer(100000000000000000)  
			elseif _G.RebirthsSelected == "X1Qu" then
		    	  game:GetService("ReplicatedStorage").Rebirth:FireServer(1000000000000000000)    
			elseif _G.RebirthsSelected == "X10Qu" then
	    	    	    
                        game:GetService("ReplicatedStorage").Rebirth:FireServer(10000000000000000000)  
        
		
			end
		end
	end
end)

--================== Player Settings =======================--


local PLR = w:CreateFolder("Player")

	PLR:Slider("Speed Hack",10,250,true,function(value)
	    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	end)
	
	PLR:Slider("Jump Hack",10,250,true,function(value)
	    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
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

local MISC = w:CreateFolder("Misc")

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

local CS = w:CreateFolder("Credits")

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

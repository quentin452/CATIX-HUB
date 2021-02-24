--https://www.roblox.com/games/4924922222/Brookhaven-RP?refPageId=3cddb9e4-9fcc-4cd6-8514-610e58856b77
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Spawn Cars")


--================== Spawn Cars =======================--
local w2 = w3:CreateFolder("Spawn Cars")




w2:Button("Spawn Horse",function() 
       game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Horse") 
end)
w2:Button("Spawn Ambulance",function() 
      
game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Ambulance")
end)
w2:Button("Spawn Bus",function() 
 
game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Bus")
end)
w2:Button("Spawn Van",function() 
      
game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Van")
end)
w2:Button("Spawn FireTruck",function() 
   
game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","FireTruck")
end)
w2:Button("Spawn Cop SUV",function() 
  
game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","CopUnderCoverSUV")
end)
w2:Button("Spawn Quad",function() 

game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","QuadStock")
end)
w2:Button("Spawn Challenger",function() 
game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Challenger")
end)
w2:Button("Spawn CopChallenger",function() 
game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","CopChallenger")
end)
w2:Button("Spawn Jeep",function() 
game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Jeep")
end)
w2:Button("Spawn GolfCart",function() 

game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","GolfCart")
end)
w2:Button("Spawn Cadillac",function()

game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Cadillac")
end)

w2:Label("No VIP CARs",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) 

--================== Auto Spawn Cars =======================--

local w4 = library:CreateWindow("Auto Spawn Cars")
local w4 = w4:CreateFolder("Auto Spawn Cars")


w4:Toggle("Auto Horse",function(bool)
		shared.toggle1 = bool
	end)
		w4:Toggle("Auto Ambulance",function(bool)
		shared.toggle2 = bool
	end)


	w4:Toggle("Auto Bus",function(bool)
		shared.toggle4 = bool
	end)
	w4:Toggle("Auto Van",function(bool)
		shared.toggle5 = bool
	end)
		w4:Toggle("Auto FireTruck",function(bool)
		shared.toggle6 = bool
		end)
	w4:Toggle("Auto COPS SUV",function(bool)
		shared.toggle7 = bool
	end)
		w4:Toggle("Auto Quad",function(bool)
		shared.toggle8 = bool
		end)
		w4:Toggle("Auto Challenger",function(bool)
		shared.toggle9 = bool
		end)
		w4:Toggle("Auto Cop Challenger",function(bool)
		shared.toggle10 = bool
		end)
			w4:Toggle("Auto Jeep",function(bool)
		shared.toggle11 = bool
			end)
			w4:Toggle("Auto GolfCart",function(bool)
		shared.toggle12 = bool
			end)
		w4:Toggle("Auto Cadillac",function(bool)
		shared.toggle13 = bool
		end)
	
		
		
spawn(function()
		while wait() do
		       if shared.toggle1 then
	  game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Horse")

  
        end
     if shared.toggle2 then     
     game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Ambulance")
     
 end
   if shared.toggle4 then   
             game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Bus")



       end
 
      if shared.toggle5 then   
        game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Van")

      end
      if shared.toggle6 then   
        game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","FireTruck")

      end
      if shared.toggle7 then   
         
game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","CopUnderCoverSUV")

      end
      if shared.toggle8 then   

game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","QuadStock")
      end
      if shared.toggle9 then   
       game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Challenger")

      end
      if shared.toggle10 then   
 
      game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","CopChallenger")
      end
      if shared.toggle11 then   
       
game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Jeep")


      end
      if shared.toggle12 then   

game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","GolfCart")
      end
      if shared.toggle13 then   
       

game:GetService("ReplicatedStorage").RemoteEvents.Car:FireServer("PickingCar","Cadillac")
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

	CS:Button("Script: I'm A Cat#7202",function()
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

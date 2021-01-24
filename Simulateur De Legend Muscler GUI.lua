--https://www.roblox.com/games/5709572883/Lift-Legends-Simulator

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w3 = library:CreateWindow("Lift-Legends-Simulator")
--================== Auto Farm =======================--
local b = w3:CreateFolder("Auto Farm")
	b:Toggle("Auto Click",function(bool)
		shared.toggle1 = bool
	end)
	b:Toggle("Auto Sell",function(bool)
		shared.toggle2 = bool
	end)
	b:Toggle("Auto Farm Speed",function(bool)
		shared.toggle4 = bool
	end)
	b:Toggle("Auto Farm Vitality",function(bool)
		shared.toggle6 = bool
	end)
	b:Toggle("Auto Farm Punching",function(bool)
		shared.toggle7 = bool
	end)
	b:Toggle("Auto Collect Reward",function(bool)
		shared.toggle12 = bool
	end)
	b:Button("Get Gamepass",function()
		for i,v in pairs(game:GetService"ReplicatedStorage".Players[game.Players.LocalPlayer.Name].Gamepass:GetChildren()) do
			v.Value = true
		end
	end)
	b:Button("Get All Codes",function()
		for i,v in pairs(game:GetService("ReplicatedStorage").Codes:GetChildren()) do
			game:GetService("ReplicatedStorage").Network.Port1:FireServer("Code",v.Name)
		end
	end)
local e = w3:CreateFolder("Auto Buy")
	e:Toggle("Buy Strenghts",function(bool)
		shared.toggle8 = bool
	end)
	e:Toggle("Buy Endurance",function(bool)
		shared.toggle9 = bool
	end)
	e:Toggle("Buy Ascension",function(bool)
		shared.toggle5 = bool
	end)
	e:Toggle("Buy Ranks",function(bool)
		shared.toggle10 = bool
	end)
	e:Toggle("Buy Areas",function(bool)
		shared.toggle11 = bool
	end)
	spawn(function()
		while wait(2) do
			if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
				if shared.toggle5 then
					game:GetService("ReplicatedStorage").Network.Port1:FireServer("Purchase","Ascension")
				end
			end
		end
	end)   
	spawn(function()
		while wait() do
			if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
				if shared.toggle1 then
					game:GetService("ReplicatedStorage").Network["Port1"]:FireServer("Click")
				end
				if shared.toggle2 then
					game:GetService("ReplicatedStorage").Network["Port1"]:FireServer("SellEnergy")
				end
				if shared.toggle4 then
					game:GetService("ReplicatedStorage").Network["Port1"]:FireServer("Running")
				end
				if shared.toggle6 then
					game:GetService("ReplicatedStorage").Network.Port1:FireServer("Vitality")
				end
				if shared.toggle7 then
					game:GetService("ReplicatedStorage").Network.Port1:FireServer("Punching",workspace.PowerTrainingFolder.Model)
				end
				if shared.toggle12 then	
					game:GetService("ReplicatedStorage").Network["Port1"]:FireServer("GroupReward")
					game:GetService("ReplicatedStorage").Network["Port1"]:FireServer("DailyReward")
				end
			end
		end
	end)
	spawn(function()
		while wait(1) do
			if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
				if shared.toggle8 then
					game:GetService("ReplicatedStorage").Network["Port1"]:FireServer("PurchaseAll","Strength")
				end
				if shared.toggle9 then
					game:GetService("ReplicatedStorage").Network["Port1"]:FireServer("PurchaseAll","Endurance")
				end
				if shared.toggle10 then
					game:GetService("ReplicatedStorage").Network.Port1:FireServer("Purchase","Rank")
				end
				if shared.toggle11 then
					for i, v in pairs(game.Workspace:GetDescendants()) do
						if v.Name == "AreaID" then
							game:GetService("ReplicatedStorage").Network.Port1:FireServer("Area",workspace[v.Parent.Name])
						end
					end
				end
			end
		end
	end)
	spawn(function()
		while wait(5) do
			if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
				if shared.toggle13 then	
					game:GetService("ReplicatedStorage").Network.Port1:FireServer("Purchase","BossVitality")
					game:GetService("ReplicatedStorage").Network.Port1:FireServer("Purchase","BossPower")
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
					_G.WS = 1000;
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
		finder.Parent = game.Players.LocalPlayer:FindFirstChild("PlayerGui")
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

		PLR:Button("Dark Dex",function()
	loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/quentin452/CATIX-HUB/master/!DEX%20EXPLORER"))()  
	end)

		PLR:Button("Remote Spy",function()
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
	
	
--================== Eggs Hatch =======================--

local w2 = library:CreateWindow("Eggs")
	local d = w2:CreateFolder("Eggs")
		d:Toggle("Auto Evolve Pets",function(bool)
			shared.eggs1 = bool
		end)
		d:Toggle("Delete Useless Pets",function(bool)
			shared.eggs2 = bool
		end)
		spawn(function()
			while wait() do
				if shared.eggs1 then
					game:GetService("ReplicatedStorage").Network["Port1"]:FireServer("Evolve")
				end
				if shared.eggs2 then			        
					game:GetService("ReplicatedStorage").Network.Port1:FireServer("DeleteRarity","Common")
					game:GetService("ReplicatedStorage").Network.Port1:FireServer("DeleteRarity","Uncommon")
				end
			end
		end)
		d:Dropdown("Buy Eggs",{"Tier1","Tier2","Tier3","Tier4","Tier5","Tier6","Tier7"},true,function(mob)
			_G.EggSelected = mob
		end)

		d:Toggle("Start",function(bool)
			shared.toggleAutoBuyEgg = bool
		end)
		spawn(function()
			while wait() do
				if shared.toggleAutoBuyEgg then
					if _G.EggSelected ~= nil then
						game:GetService("ReplicatedStorage").Network.Port1:FireServer("PurchaseCrate",_G.EggSelected,1)
					end
				end
			end
		end)


--================== Kill Bosses =======================--

local w4 = library:CreateWindow("Bosses")  
	local c = w4:CreateFolder("Kill Bosses")
		local BossTable = {}
		for i,v in pairs(game:GetService("ReplicatedStorage").BossCache:GetChildren()) do
			table.insert(BossTable, v.Name)
		end
		for i,v in pairs(game:GetService("Workspace").BossFolder:GetChildren()) do
			table.insert(BossTable, v.Name)
		end
		c:Toggle("Auto Tp To Bosses",function(bool)
			shared.Boss2 = bool
		end)

		spawn(function()
			while wait() do
				if shared.Boss2 then
					for i,v in pairs(BossTable) do
						local bos = game:GetService("Workspace").BossFolder:FindFirstChild(v) or game:GetService("ReplicatedStorage").BossCache:FindFirstChild(v)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = bos.HumanoidRootPart.CFrame
						wait(0.5)
						game:GetService("ReplicatedStorage").Network.Port1:FireServer("Swing",{game:GetService("Workspace").BossFolder:FindFirstChild(v)})
					end
				end
			end
		end)
		
		c:Dropdown("Choose Boss",BossTable,true,function(mob)
			_G.BossSelected = mob
		end)

		c:Toggle("Start",function(bool)
			shared.Toggle_Start_Boss = bool
		end)		
		spawn(function()
			while wait() do
				if shared.Toggle_Start_Boss then
					if _G.BossSelected ~= nil then
						if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
							if game:GetService("Workspace").BossFolder:FindFirstChild(_G.BossSelected) or game:GetService("ReplicatedStorage").BossCache:FindFirstChild(_G.BossSelected) then
								local bos = game:GetService("Workspace").BossFolder:FindFirstChild(_G.BossSelected) or game:GetService("ReplicatedStorage").BossCache:FindFirstChild(_G.BossSelected)
								game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = bos:FindFirstChild("HumanoidRootPart").CFrame
								game:GetService("ReplicatedStorage").Network.Port1:FireServer("Swing",{game:GetService("Workspace").BossFolder:FindFirstChild(_G.BossSelected)})
							end
						end
					end
				end
			end
		end)

--================== Autres =======================--
--| Anti AFK | By Altix#3395
	local Virtual = game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		Virtual:CaptureController()
		Virtual:ClickButton2(Vector2.new())
		wait(2)
	end)

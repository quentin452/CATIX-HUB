-- 1656203283
-- https://pastebin.com/raw/qDYm6hKE

-- Anti AFK

	local Virtual = game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		Virtual:CaptureController()
		Virtual:ClickButton2(Vector2.new())
		wait(2)
	end)

-- Old Position Save
	local oldpos = Instance.new("CFrameValue",game.Players.LocalPlayer)
	oldpos.Name = "oldpos"

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Wizard Champions")

local Func = w:CreateFolder("Function")

	Func:Toggle("Auto Staff",function(bool)
	    shared.toggleAStaff = bool
	end)

	Func:Toggle("Auto Sell",function(bool)
	    shared.toggleASell = bool
	end)

	Func:Button("Collect All",function()
		for i,v in pairs (game:GetService("Workspace").Pets.Powerups:GetChildren()) do
		   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
		   wait(.00001)
		end
	end)

local AB = w:CreateFolder("Auto Buy")

	AB:Toggle("Auto Buy Staffs",function(bool)
	    shared.toggleABS = bool
	end)

	AB:Toggle("Auto Buy Books",function(bool)
	    shared.toggleABSB = bool
	end)

	AB:Toggle("Auto Buy Jumps",function(bool)
	    shared.toggleABJ = bool
	end)

local ABE = w:CreateFolder("Auto Buy Egg")

	ABE:Dropdown("Select Egg",{
	"Normal",
	"Epic",
	"Desert",
	"Frosty",
	"Dark",
	"Ancient",
	"Swamp",
	"Infernal",
	"Chaos",
	"Mythical",
	"Oblivion",
	},true,function(mob)
		SelectEgg = mob
		print(SelectEgg)
	end)

	ABE:Toggle("Auto Open",function(bool)
	    shared.toggleAO = bool
	end)

local TP = w:CreateFolder("Teleport")

	TP:Dropdown("Select Island",{
	"Spawn",
	"Desert Island",
	"Frosty Island",
	"Dark Island",
	"Ancient Island",
	"Swamp Island",
	"Infernal Island",
	"Chaos Island",
	"Mythical Island",
	"Oblivion Island"
	},true,function(mob)
		SelectArea = mob
		TpArea()
		print("Telepored to "..mob)
	end)

	TP:Button("Unlock Island",function()
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21.6694, 17.559, -513.238)
			wait(0.5)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-24.4952, 685.72, -148.004)
			wait(0.5)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands.FrostyIsland.Path.Part.CFrame
			wait(0.5)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands.DarkIsland.Path.Path.Part.CFrame
			wait(0.5)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands.AncientIsland.Path.Path.Part.CFrame
			wait(0.5)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands.SwampIsland.Template.Path.Path.Part.CFrame
			wait(0.5)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands.InfernalIsland.Template.Path.Path.Part.CFrame
			wait(0.5)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands["Chaos Island"].Template.Path.Path.Part.CFrame
			wait(0.5)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands["Mythical Island"].Template.Path.Path.Part.CFrame
			wait(0.5)
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands["Oblivion Island"].Template.Path.Path.Part.CFrame
	end)

local PLR = w:CreateFolder("Player")

	PLR:Box("Speed Hack","number",function(value)
	    print(value)
	    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	end)

	PLR:Box("Jump Hack","number",function(value)
	    print(value)
	    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	end)

	PLR:Button("No Clip (Press N)",function()
		noclip = false
		game:GetService('RunService').Stepped:connect(function()
			if noclip then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
		local plr = game.Players.LocalPlayer
		local mouse = plr:GetMouse()
		mouse.KeyDown:connect(function(key)
			if key == "n" then
				noclip = not noclip
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
	end)

	PLR:Button("Fly (Press E)",function()
		loadstring(game:HttpGet("https://pastebin.com/raw/7rXZ9VNc", true))()
	end)

local MSC = w:CreateFolder("Misc")

	MSC:Button("Rejoin",function()
		local TeleportService = game:GetService("TeleportService")
		local PlaceId = game.PlaceId
		local player = game.Players.LocalPlayer
		if player then
		TeleportService:Teleport(PlaceId, player)
		end
	end)

	MSC:GuiSettings()

local CS = w:CreateFolder("Credits")


  CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()

--// Function
	spawn(function()
		while wait() do
			if shared.toggleAStaff then
				game:GetService("ReplicatedStorage").Events.Hit:FireServer()
			end
		end
	end)

	spawn(function()
		while wait(0.5) do
			if shared.toggleASell then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-121.136, 3.52189, 106.753)
			end
		end
	end)

	spawn(function()
		while wait(0.5) do
			if shared.toggleABS then
				game:GetService("ReplicatedStorage").Events["Buy All"]:FireServer("Staffs")
			end
			if shared.toggleABSB then
				game:GetService("ReplicatedStorage").Events["Buy All"]:FireServer("Spellbooks")
			end
			if shared.toggleABJ then
				game:GetService("ReplicatedStorage").Events["Buy All"]:FireServer("Jumps")
			end
			if shared.toggleABBH then
				game:GetService("ReplicatedStorage").Events["Buy All"]:FireServer("Boss")
			end
		end
	end)

	function TpArea()
		if SelectArea == "Spawn" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21.6694, 17.559, -513.238)
		elseif SelectArea == "Desert Island" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-24.4952, 685.72, -148.004)
		elseif SelectArea == "Frosty Island" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands.FrostyIsland.Path.Part.CFrame
		elseif SelectArea == "Dark Island" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands.DarkIsland.Path.Path.Part.CFrame
		elseif SelectArea == "Ancient Island" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands.AncientIsland.Path.Path.Part.CFrame
		elseif SelectArea == "Swamp Island" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands.SwampIsland.Template.Path.Path.Part.CFrame
		elseif SelectArea == "Infernal Island" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands.InfernalIsland.Template.Path.Path.Part.CFrame
		elseif SelectArea == "Chaos Island" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands["Chaos Island"].Template.Path.Path.Part.CFrame
		elseif SelectArea == "Mythical Island" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands["Mythical Island"].Template.Path.Path.Part.CFrame
		elseif SelectArea == "Oblivion Island" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.FloatingIslands["Oblivion Island"].Template.Path.Path.Part.CFrame
		end
	end

	spawn(function()
		while wait(1) do
			if shared.toggleAO then
				if SelectEgg == "Normal" then
					game:GetService("ReplicatedStorage").Events["Buy Pet"]:FireServer(SelectEgg)
				elseif SelectEgg == "Epic" then
					game:GetService("ReplicatedStorage").Events["Buy Pet"]:FireServer(SelectEgg)
				elseif SelectEgg == "Desert" then
					game:GetService("ReplicatedStorage").Events["Buy Pet"]:FireServer(SelectEgg)
				elseif SelectEgg == "Frosty" then
					game:GetService("ReplicatedStorage").Events["Buy Pet"]:FireServer(SelectEgg)
				elseif SelectEgg == "Dark" then
					game:GetService("ReplicatedStorage").Events["Buy Pet"]:FireServer(SelectEgg)
				elseif SelectEgg == "Ancient" then
					game:GetService("ReplicatedStorage").Events["Buy Pet"]:FireServer(SelectEgg)
				elseif SelectEgg == "Swamp" then
					game:GetService("ReplicatedStorage").Events["Buy Pet"]:FireServer(SelectEgg)
				elseif SelectEgg == "Infernal" then
					game:GetService("ReplicatedStorage").Events["Buy Pet"]:FireServer(SelectEgg)
				elseif SelectEgg == "Chaos" then
					game:GetService("ReplicatedStorage").Events["Buy Pet"]:FireServer(SelectEgg)
				elseif SelectEgg == "Mythical" then
					game:GetService("ReplicatedStorage").Events["Buy Pet"]:FireServer(SelectEgg)
				elseif SelectEgg == "Oblivion" then
					game:GetService("ReplicatedStorage").Events["Buy Pet"]:FireServer(SelectEgg)
				end
			end
		end
	end)

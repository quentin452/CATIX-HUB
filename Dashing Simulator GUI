-- Anti AFK

	local Virtual = game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		Virtual:CaptureController()
		Virtual:ClickButton2(Vector2.new())
		wait(2)
	end)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Dashing Simulator")

local b = w:CreateFolder("Functions")

	b:Toggle("Auto Speed",function(bool)
		shared.toggleAS1 = bool
	end)

	b:Toggle("Auto Rebirth",function(bool)
		shared.toggleAR1 = bool
	end)

local TP = w:CreateFolder("Teleport")

	TP:Button("Spawn",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SpawnLocations:WaitForChild("SpawnLocation").CFrame
	end)

	TP:Button("Cloud Land",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Destination["Cloud Land"].CFrame
	end)

	TP:Button("Ice Land",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Destination["Ice Land"].CFrame
	end)

	TP:Button("FarmVille",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Destination.Farmville.CFrame
	end)

	TP:Button("Sand Land",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Destination["Sand Land"].CFrame
	end)

	TP:Button("Elite",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Destination.Elite.CFrame
	end)

	TP:Button("Moon",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Destination.Moon.CFrame
	end)

	TP:Button("Magma",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Destination.Magma.CFrame
	end)

	TP:Button("Fairy",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Destination.Fairy.CFrame
	end)

	TP:Button("Underworld",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Destination.Underworld.CFrame
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

local MISC = w:CreateFolder("Misc")

	MISC:Button("Rejoin",function()
		local TeleportService = game:GetService("TeleportService")
		local PlaceId = game.PlaceId
		local player = game.Players.LocalPlayer
		if player then
		TeleportService:Teleport(PlaceId, player)
		end
	end)

	MISC:Button("Collect Chests",function()
		local chest1 = game:GetService("Workspace").Chests["Golden Chest"].Toucher
		local chest2 = game:GetService("Workspace").Chests["Desert Chest"].Toucher
		local player = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		chest1.CFrame = player.CFrame
		chest2.CFrame = player.CFrame
	end)

	MISC:Button("Collect All Orbs",function()
		orb()
	end)

	MISC:Label("Works great but once after collecting all the orbs, you will be kicked .. why? idk but does not involve any risk of ban;)",Color3.fromRGB(38,38,38),Color3.fromRGB(200,0,0)) --BgColor,TextColor

	MISC:GuiSettings()
	
local CS = w:CreateFolder("Credits")

  CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()


spawn(function()
	while wait() do
		if shared.toggleAS1 then
			game:GetService("ReplicatedStorage").Events.AddSpeed:InvokeServer()
			wait(0.5)
		end
		if shared.toggleAR1 then
			game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer()
			wait(0.5)
		end
	end
end)

function orb()
		for i,v in pairs (game:GetService("Workspace").CollectableOrbs:GetChildren()) do
		    for i,v in pairs (v:GetChildren()) do
		        v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		    end
		end
		
		wait(0.7)
		local TeleportService = game:GetService("TeleportService")
		local PlaceId = game.PlaceId
		local player = game.Players.LocalPlayer
		if player then
		TeleportService:Teleport(PlaceId, player)
		end
end

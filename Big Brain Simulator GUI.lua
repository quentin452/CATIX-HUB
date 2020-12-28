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


local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Big Brain Simulator")

local AF = w:CreateFolder("Function")

	AF:Toggle("Auto Book",function(bool)
		shared.toggleAB = bool
	end)

	AF:Toggle("Auto Buy Book",function(bool)
		shared.toggleABB = bool
	end)

	AF:Toggle("Auto Upgrade Brain",function(bool)
		shared.toggleAUB = bool
	end)

	AF:Button("Teleport to Sell",function()
		oldpos.Value = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Islands["Space Bubble"].SellCircle.CFrame
		wait(0.2)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = oldpos.Value
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

	MISC:Button("Unlock All Portals",function()
		for i,v in pairs (game:GetService("Players").LocalPlayer.Portals:GetChildren()) do
			v.Value = true
		end
	end)

	MISC:Button("Unlock All Gamepass",function()
		for i,v in pairs (game:GetService("Players").LocalPlayer.Gamepasses:GetChildren()) do
			v.Value = true
		end
	end)

	MISC:Button("Collect All IQ Capsule",function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-33.1592, 1020.87, 94.8968)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-30.2856, 3502.58, 93.9123)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-16.9775, 8312.41, 94.5587)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15.6782, 17880.1, 93.2105)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-18.6516, 34715.1, 94.4335)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17.9344, 52666.6, 186.689)
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17.6359, 76665.4, 164.461)
	end)

	MISC:GuiSettings()

local CS = w:CreateFolder("Credits")

	CS:Label("Script: by Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()

spawn(function()
	while wait() do
		if shared.toggleAB then
			game.ReplicatedStorage.Remotes.BookClicked:FireServer(game:GetService("Players").LocalPlayer.Settings.EquippedBook.Value)	
		end
		if shared.toggleAUB then
			game:GetService("ReplicatedStorage").Remotes.UpgradeCapacity:FireServer()
		end
		if shared.toggleABB then
			for i,v in pairs (game:GetService("ReplicatedStorage").Books:GetChildren()) do
			    game:GetService("ReplicatedStorage").Remotes.BuyBook:FireServer(v.Name)
			end
			wait(1)
		end
	end
end)

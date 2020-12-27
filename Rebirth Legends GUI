local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Rebirth Legends")
local b = w:CreateFolder("Auto Buy Egg")
	b:Toggle("Tier 1 - 500",function(bool)
	    shared.toggleT1 = bool
	end)
	b:Toggle("Tier 2 - 25k",function(bool)
	    shared.toggleT2 = bool
	end)
	b:Toggle("Tier 3 - 250k",function(bool)
	    shared.toggleT3 = bool
	end)
	b:Toggle("Tier 4 - 5M",function(bool)
	    shared.toggleT4 = bool
	end)
	b:Toggle("Tier 5 - 30M",function(bool)
	    shared.toggleT5 = bool
	end)
	b:Toggle("Tier 6 - 200M",function(bool)
	    shared.toggleT6 = bool
	end)
	b:Toggle("Tier 7 - 1B",function(bool)
	    shared.toggleT7 = bool
	end)
	b:Toggle("Tier 8 - 40B",function(bool)
	    shared.toggleT8 = bool
	end)
	b:Toggle("Christmas - 100M",function(bool)
	    shared.toggleChristmas = bool
	end)
	b:Toggle("Roksek - 99 R$",function(bool)
	    shared.toggleRoksek = bool
	end)
	b:Label("you have to be near the egg for it to work!",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	spawn(function()
		while wait() do
			if shared.toggleT1 then
				game:GetService("ReplicatedStorage").Remotes.EggOpened:InvokeServer("Tier 1","Single")
			end
			if shared.toggleT2 then
				game:GetService("ReplicatedStorage").Remotes.EggOpened:InvokeServer("Tier 2","Single")
			end
			if shared.toggleT3 then
				game:GetService("ReplicatedStorage").Remotes.EggOpened:InvokeServer("Tier 3","Single")
			end
			if shared.toggleT4 then
				game:GetService("ReplicatedStorage").Remotes.EggOpened:InvokeServer("Tier 4","Single")
			end
			if shared.toggleT5 then
				game:GetService("ReplicatedStorage").Remotes.EggOpened:InvokeServer("Tier 5","Single")
			end
			if shared.toggleT6 then
				game:GetService("ReplicatedStorage").Remotes.EggOpened:InvokeServer("Tier 6","Single")
			end
			if shared.toggleT7 then
				game:GetService("ReplicatedStorage").Remotes.EggOpened:InvokeServer("Tier 7","Single")
			end
			if shared.toggleT8 then
				game:GetService("ReplicatedStorage").Remotes.EggOpened:InvokeServer("Tier 8","Single")
			end
			if shared.toggleChristmas then
				game:GetService("ReplicatedStorage").Remotes.EggOpened:InvokeServer("Christmas","Single")
			end
			if shared.toggleRoksek then
				game:GetService("ReplicatedStorage").Remotes.EggOpened:InvokeServer("Roksek","Single")
			end
		end
	end)

local TP = w:CreateFolder("Teleport")
	TP:Button("Spawn",function()
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133, 21, -27)
	end)
	TP:Button("Desert",function()
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1039, 21, -27)
	end)
	TP:Button("Ice",function()
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1933, 21, -25)
	end)
	TP:Button("Forest",function()
	    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2725, 21, -26)
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
		loadstring(game:HttpGet("https://pastebin.com/raw/G1yWQbeU", true))()
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

	MISC:GuiSettings()

local CS = w:CreateFolder("Credits")

  CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()

-- Anti AFK

	local Virtual = game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		Virtual:CaptureController()
		Virtual:ClickButton2(Vector2.new())
		wait(2)
	end)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Reaper Simulator 2")

local FUN = w:CreateFolder("Function")

	FUN:Toggle("Auto Attack",function(bool)
	    shared.toggleAAT = bool
	    game:GetService("ReplicatedStorage").Remotes.Sheathe:FireServer("Scythe", true)
	end)
	FUN:Toggle("Auto Elixir",function(bool)
	    shared.toggleAE = bool
	    game:GetService("ReplicatedStorage").Remotes.Sheathe:FireServer("Elixir", true)
	end)
	FUN:Toggle("Auto Sell",function(bool)
	    shared.toggleAS = bool
	end)

local AC = w:CreateFolder("Auto Collect")
	AC:Toggle("Coins",function(bool)
	    shared.toggleACC = bool
	end)
	AC:Toggle("Souls",function(bool)
	    shared.toggleACS = bool
	end)
	AC:Toggle("BlueEssence",function(bool)
	    shared.toggleACBE = bool
	end)

local AB = w:CreateFolder("Auto Buy")

	AB:Toggle("Scythes",function(bool)
	    shared.toggleASth = bool
	end)
	AB:Toggle("Soul Satchels",function(bool)
	    shared.toggleASS = bool
	end)
	AB:Toggle("Ranks",function(bool)
	    shared.toggleAR = bool
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
	--// Auto Attack
		spawn(function()
			while wait(0.5) do
				if shared.toggleAAT then
					local args = {
					    [1] = "Attack",
					}
					game:GetService("ReplicatedStorage").Remotes.ItemUsed:FireServer(unpack(args))
				end
			end
		end)
	--// Auto Elixir
		spawn(function()
			while wait(0.5) do
				if shared.toggleAE then
					local args = {
					    [1] = "Elixir",
					}
					game:GetService("ReplicatedStorage").Remotes.ItemUsed:FireServer(unpack(args))
				end
			end
		end)
	--// Auto Sell
		spawn(function()
			while wait(0.5) do
				if shared.toggleAS then
					game:GetService("Workspace").TouchParts.Sell.SellPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					wait()
					game:GetService("Workspace").TouchParts.Sell.SellPart.CFrame = CFrame.new(7.48949, 59.6154, -452.113)
				end
			end
		end)
	--// Auto Collect Coins
		spawn(function()
			while wait(1) do
				if shared.toggleACC then
					for i,v in pairs (game:GetService("Workspace").AllCoin:GetChildren()) do
					    v.Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					end
				end
			end
		end)
	--// Auto Collect Blue Escence
		spawn(function()
			while wait(1) do
				if shared.toggleACBE then
					for i,v in pairs (game:GetService("Workspace").AllBlueEssence:GetChildren()) do
					    v.Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					end
				end
			end
		end)
	--// Auto Collect Souls
		spawn(function()
			while wait(1) do
				if shared.toggleACS then
					for i,v in pairs (game:GetService("Workspace").AllSoul:GetChildren()) do
					    v.Bubble.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					end
				end
			end
		end)
	--// Auto Scythes
		spawn(function()
			while wait(1) do
				if shared.toggleASth then
					for i = 1,180 do
						local args = {
						    [1] = ""..i,
						    [2] = "Scythe",
						}
						game:GetService("ReplicatedStorage").Remotes.Purchase:FireServer(unpack(args))
					end
				end
			end
		end)
	--// Auto Soul Satchels
		spawn(function()
			while wait(1) do
				if shared.toggleASS then
					for i = 1,55 do
						local args = {
						    [1] = ""..i,
						    [2] = "Satchel",
						}
						game:GetService("ReplicatedStorage").Remotes.Purchase:FireServer(unpack(args))
					end
				end
			end
		end)
	--// Auto Ranks
		spawn(function()
			while wait(1) do
				if shared.toggleAR then
					game:GetService("ReplicatedStorage").Remotes.Purchase:FireServer()
				end
			end
		end)

-- Anti AFK

local Virtual = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	Virtual:CaptureController()
	Virtual:ClickButton2(Vector2.new())
	wait(2)
end)


local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Duckie Simulator")

local AF = w:CreateFolder("Auto Farm")

	AF:Toggle("Auto Duck",function(bool)
		shared.toggleAD = bool
	end)

	AF:Toggle("Auto Refill",function(bool)
		shared.toggleAR = bool
	end)

	AF:Toggle("Auto Collect Gems",function(bool)
		shared.toggleACG = bool
	end)

	AF:Toggle("Auto Claim Quest",function(bool)
		shared.toggleACQ = bool
	end)


local AB = w:CreateFolder("Auto Buy")

	AB:Toggle("Auto Buy Ducks",function(bool)
		shared.toggleABD = bool
	end)

	AB:Toggle("Auto Buy Energy",function(bool)
		shared.toggleABE = bool
	end)

local ABE = w:CreateFolder("Auto Buy Egg")

	ABE:Toggle("Basic Egg",function(bool)
		shared.toggleABEGG1 = bool
	end)

	ABE:Toggle("Robotic Egg",function(bool)
		shared.toggleABEGG2 = bool
	end)

	ABE:Toggle("Dragon Egg",function(bool)
		shared.toggleABEGG3 = bool
	end)

	ABE:Toggle("Golden Egg",function(bool)
		shared.toggleABEGG4 = bool
	end)

	ABE:Toggle("Candy Egg",function(bool)
		shared.toggleABEGG5 = bool
	end)

	ABE:Toggle("Devil Egg",function(bool)
		shared.toggleABEGG6 = bool
	end)

	ABE:Toggle("Ice Egg",function(bool)
		shared.toggleABEGG7 = bool
	end)

	ABE:Toggle("Bunny Egg",function(bool)
		shared.toggleABEGG8 = bool
	end)

	ABE:Toggle("Toy Egg",function(bool)
		shared.toggleABEGG9 = bool
	end)

	ABE:Toggle("Lego Egg",function(bool)
		shared.toggleABEGG10 = bool
	end)

	ABE:Toggle("8-Bit Egg",function(bool)
		shared.toggleABEGG11 = bool
	end)

	ABE:Toggle("9-Bit Egg",function(bool)
		shared.toggleABEGG12 = bool
	end)

	ABE:Toggle("Cactus Egg",function(bool)
		shared.toggleABEGG13 = bool
	end)

	ABE:Toggle("Snake Egg",function(bool)
		shared.toggleABEGG14 = bool
	end)

	ABE:Toggle("Shark Egg",function(bool)
		shared.toggleABEGG15 = bool
	end)

	ABE:Toggle("Chill Egg",function(bool)
		shared.toggleABEGG16 = bool
	end)

	ABE:Toggle("Royle Egg",function(bool)
		shared.toggleABEGG17 = bool
	end)

	ABE:Toggle("Royle Dragon Egg",function(bool)
		shared.toggleABEGG18 = bool
	end)

	ABE:Toggle("Whild Egg",function(bool)
		shared.toggleABEGG19 = bool
	end)

	ABE:Toggle("Alien Egg",function(bool)
		shared.toggleABEGG20 = bool
	end)

local TP = w:CreateFolder("Teleport")

	TP:Dropdown("Select Area",{
		"Spawn",
		"Candy Zone",
		"Winter Zone",
		"Toy Zone",
		"Lava Zone",
		"Desert Zone",
		"Ocean Zone",
		"Gold Zone",
		"Moon Zone",
		},true,function(mob)

		SelectArea = mob
		TpArea()
		print("Telepored to "..mob)
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

	MISC:Button("Use All Codes",function()
		local Codes = {
		        "2500likes";
		        "3000likes";
		        "boosts";
		        "rebranding";
		        "3500likes";
		        "4000likes";
		        "1millionvisits";
		        "update5";
		        "quests";
		        "4500likes";
		        "x2event";
		        "5000likes";
		        "5500likes";
		        "update6";
		        "6000likes";
		        "6500likes";
		        "7000likes";
		        "7500likes";
		        "8000likes";
		        "update7";
		        "8500likes";
		        "9500likes";
		        "10000likes";
		}

		-- Detection

		for i, v in next, Codes do
		    game:GetService("ReplicatedStorage").Events["Code Events"].Submit:InvokeServer(v)
		    wait()
		end
	end)

	MISC:Button("Collect All Chest",function()
		local chest1 = game:GetService("Workspace").Worlds.Map.Important.DailyReward.Hitbox
		local chest2 = game:GetService("Workspace").Worlds.Map.Important.GroupReward.Hitbox
		local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		chest1.CFrame = plr.CFrame
		wait(0.5)
		chest2.CFrame = plr.CFrame
		wait(0.5)
	end)

	MISC:GuiSettings()

local CS = w:CreateFolder("Credits")

  CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()

spawn(function()
	while wait(0.01) do
		if shared.toggleAR then -- Auto Refill
			game:GetService("Workspace")["Refill Shop Parts"]["1"].CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			wait()
			game:GetService("Workspace")["Refill Shop Parts"]["1"].CFrame = CFrame.new(28.07, 8.30389, -34.94)
		end
		if shared.toggleABD then -- Auto Buy Ducks
			game:GetService("ReplicatedStorage").Events["Shop Events"].Ducks["Buy All"]:InvokeServer()
			wait(0.5)
		end
		if shared.toggleABE then -- Auto Buy Energy
			game:GetService("ReplicatedStorage").Events["Shop Events"].Energy["Buy All"]:InvokeServer()
			wait(0.5)
		end
		if shared.toggleABEGG1 then -- Auto Buy EGG 1
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Basic Egg")
		end
		if shared.toggleABEGG2 then -- Auto Buy EGG 2
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Robotic Egg")
		end
		if shared.toggleABEGG3 then -- Auto Buy EGG 3
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Dragon Egg")
		end
		if shared.toggleABEGG4 then -- Auto Buy EGG 4
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Golden Egg")
		end
		if shared.toggleABEGG5 then -- Auto Buy EGG 5
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Candy Egg")
		end
		if shared.toggleABEGG6 then -- Auto Buy EGG 6
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Devil Egg")
		end
		if shared.toggleABEGG7 then -- Auto Buy EGG 7
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Ice Egg")
		end
		if shared.toggleABEGG8 then -- Auto Buy EGG 8
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Bunny Egg")
		end
		if shared.toggleABEGG9 then -- Auto Buy EGG 9
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Toy Egg")
		end
		if shared.toggleABEGG10 then -- Auto Buy EGG 10
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Lego Egg")
		end
		if shared.toggleABEGG11 then
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("8-Bit Egg")
		end
		if shared.toggleABEGG12 then
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("9-Bit Egg")
		end
		if shared.toggleABEGG13 then
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Cactus Egg")
		end
		if shared.toggleABEGG14 then
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Snake Egg")
		end
		if shared.toggleABEGG15 then
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Shark Egg")
		end
		if shared.toggleABEGG16 then
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Chill Egg")
		end
		if shared.toggleABEGG17 then
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Royle Egg")
		end
		if shared.toggleABEGG18 then
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Royle Dragon Egg")
		end
		if shared.toggleABEGG19 then
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Whild Egg")
		end
		if shared.toggleABEGG20 then
			game:GetService("ReplicatedStorage").Events["Egg Events"].Open:InvokeServer("Alien Egg")
		end
		if shared.toggleACG then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Spawned Coins"].Moon:WaitForChild("Gem").CFrame
			wait(0.3)
		end
	end
end)

spawn(function()
	while wait() do
		if shared.toggleAD then
			local tool1 = game.Players.LocalPlayer.Backpack:FindFirstChild("Duck")  or game.Players.LocalPlayer.Character:FindFirstChild("Duck")
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool1)
			tool1:Activate()
		end
	end
end)

function TpArea()
	if SelectArea == "Spawn" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(55.1686, 3.29305, -23.5516)
	elseif SelectArea == "Candy Zone" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(438.459, 3.29555, 51.8387)
	elseif SelectArea == "Winter Zone" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-330.867, 3.17055, 59.4328)
	elseif SelectArea == "Toy Zone" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(57.4516, 3.38389, -324.471)
	elseif SelectArea == "Lava Zone" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-48.4001, 3.17056, 347.851)
	elseif SelectArea == "Desert Zone" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-429.01, 3.29556, 332.844)
	elseif SelectArea == "Ocean Zone" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-425.928, 3.17056, -419.251)
	elseif SelectArea == "Gold Zone" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(342.592, 3.22056, -417)
	elseif SelectArea == "Moon Zone" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(342.442, 3.17056, 337.045)
	end
end

spawn(function()
	while wait(0.5) do 
		if shared.toggleACQ then
			game:GetService("ReplicatedStorage").Events.QuestEvents.CompleteQuest:FireServer("SquizzQuest")
			game:GetService("ReplicatedStorage").Events.QuestEvents.CompleteQuest:FireServer("GemQuest")
			game:GetService("ReplicatedStorage").Events.QuestEvents.CompleteQuest:FireServer("TimePlayedQuest")
		end
	end
end)

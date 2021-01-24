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

local w = library:CreateWindow("Minion Simulator")

local AF = w:CreateFolder("Auto Farm")

	AF:Toggle("Auto Farm",function(bool)
		shared.AutoFarm = bool
		AutoFarm()
	end)

	AF:Label("Click on an ingot after                     run 'Auto Farm'",Color3.fromRGB(38,38,38),Color3.fromRGB(200,0,0))

local ABE = w:CreateFolder("Auto Buy Eggs D1")

	ABE:Toggle("Superhero Egg",function(bool)
		shared.toggle0 = bool
	end)

	ABE:Toggle("Common Egg",function(bool)
		shared.toggle1 = bool
	end)

	ABE:Toggle("Uncommon Egg",function(bool)
		shared.toggle2 = bool
	end)

	ABE:Toggle("Rare Egg",function(bool)
		shared.toggle3 = bool
	end)

	ABE:Toggle("Epic Egg",function(bool)
		shared.toggle4 = bool
	end)

	ABE:Toggle("Legendary Egg",function(bool)
		shared.toggle5 = bool
	end)

	ABE:Toggle("Mythical Egg",function(bool)
		shared.toggle6 = bool
	end)

	ABE:Toggle("Exclusive Egg",function(bool)
		shared.toggle8 = bool
	end)

	ABE:Toggle("Godly Egg",function(bool)
		shared.toggle10 = bool
	end)

local ABE2 = w:CreateFolder("Auto Buy Eggs D2")

	ABE2:Toggle("Supervillain Egg",function(bool)
		shared.toggle11 = bool
	end)

	ABE2:Toggle("Supreme Egg",function(bool)
		shared.toggle12 = bool
	end)

	ABE2:Toggle("Unknown Egg",function(bool)
		shared.toggle13 = bool
	end)

	ABE2:Toggle("Ungodly Egg",function(bool)
		shared.toggle14 = bool
	end)

	ABE2:Toggle("Legendary Egg",function(bool)
		shared.toggle15 = bool
	end)

	ABE2:Toggle("Godly Egg",function(bool)
		shared.toggle16 = bool
	end)

	ABE2:Toggle("Toy Egg",function(bool)
		shared.toggle17 = bool
	end)

	ABE2:Toggle("Fairy Egg",function(bool)
		shared.toggle18 = bool
	end)

local ABH = w:CreateFolder("Auto Buy Hats")

	ABH:Toggle("Common Hat",function(bool)
		shared.toggleH1 = bool
	end)

	ABH:Toggle("Uncommon Hat",function(bool)
		shared.toggleH2 = bool
	end)

	ABH:Toggle("Rare Hat",function(bool)
		shared.toggleH3 = bool
	end)

	ABH:Toggle("Epic Hat",function(bool)
		shared.toggleH4 = bool
	end)

	ABH:Toggle("Legendary Hat",function(bool)
		shared.toggleH5 = bool
	end)

	ABH:Toggle("Crystal Hat",function(bool)
		shared.toggleH6 = bool
	end)

	ABH:Toggle("Jaded Hat",function(bool)
		shared.toggleH7 = bool
	end)

local PD = w:CreateFolder("OMG CLICK HERE")

	PD:Button("Combination all pets",function()
		for i,v in pairs (game:GetService("Players").LocalPlayer.PlayerGui.UI.Prompts.Inventory.PetScrollingFrame:GetChildren()) do
		    local args = {
		        [1] = "Combine",
		        [2] = {
		            ["Id"] = v.Name,
		        },
		    }
		    game:GetService("ReplicatedStorage").Events.InventoryEvent:FireServer(unpack(args))
		end
	end)

	PD:Label("Once you have clicked on the ''Combine All pets'' button, your pets will be combined but will not be deleted, it is a kind of duplication",Color3.fromRGB(38,38,38),Color3.fromRGB(200,0,0))
	PD:Button("Enchant all Pickaxe",function()
		for i = 1,math.huge do
			for i,v in pairs (game:GetService("Players").LocalPlayer.PlayerGui.UI.Prompts.Inventory.PickaxeScrollingFrame:GetChildren()) do
					A1 = v.Name
				end
				for i,c in pairs (game:GetService("Players").LocalPlayer.PlayerGui.UI.Prompts.Inventory.PickaxeScrollingFrame:GetChildren()) do
					A2 = c.Name
				end
				for i,vd in pairs (game:GetService("Players").LocalPlayer.PlayerGui.UI.Prompts.Inventory.PickaxeScrollingFrame:GetChildren()) do
					A3 = vd.Name
				end
		
				local args = {
					[1] = {
					["PickaxeIds"] = {
						[1] = A1,
						[2] = A2,
						[3] = A3,
						},
					["RequestType"] = "Enchant",
					},
				}
				game:GetService("ReplicatedStorage").Functions.EnchantFunction:InvokeServer(unpack(args))
			end
	end)

	PD:Label("once after clicking on ''Enchant All Pickaxe'' there is an almost sure chance that the pickaxes are endlessly enchanted",Color3.fromRGB(38,38,38),Color3.fromRGB(200,0,0))
	PD:Label("Click One Time On (Enchant All Pickaxe)",Color3.fromRGB(38,38,38),Color3.fromRGB(200,0,0))
local TP = w:CreateFolder("Teleport")

	TP:Dropdown("Select Area",{
		"Valley",
		"Desert",
		"SnowHills",
		"AutumnFalls",
		"SacredBlossoms",
		"CandyLand",
		"DarkDesert",
		"SunsetKingdom",
		"LavaLand",
		"Heaven",
		"CountrySide",
		"RockyMountains",
		"September",
		"Beach",
		"BuildingBlocks",
		"Windy",
		"RadioActive",
		"Grease",
		"Cove",
		"PurpleIceKingdom",
		"Blocky Space",
		"Toy Land",
		"Crystal Forest",
		"City",
		"Rock Balance",
		"Space Invasion"},true,function(mob)

		SelectArea = mob
		TpArea()
		print("Telepored to "..mob)
		local plr = game.Players.LocalPlayer
		local pos = plr.name.."PetPositions"
		for i,v in pairs (game:GetService("Workspace").Storage.Pets.Garbage[plr.Name]:GetChildren()) do
		    v.Body.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
		end
	end)

	TP:Button("Teleport To Assets",function()
		local Assets = game:GetService("Workspace").Assets.Mineables.ThreeGem.Color
		local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		plr.CFrame = Assets.CFrame
	end)

	TP:Button("Teleport Minion to you",function()
		local plr = game.Players.LocalPlayer
		local pos = plr.name.."PetPositions"
		for i,v in pairs (game:GetService("Workspace").Storage.Pets.Garbage[plr.Name]:GetChildren()) do
		    v.Body.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame
		end
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
		local A1 = "Release"
		local Event = game:GetService("ReplicatedStorage").Functions.CodeFunction
		Event:InvokeServer(A1)
		local A1 = "Gold"
		Event:InvokeServer(A1)
		local A1 = "Cookie"
		Event:InvokeServer(A1)
		local A1 = "Bakon"
		Event:InvokeServer(A1)
		local A1 = "Minions"
		Event:InvokeServer(A1)
		local A1 = "YTSnugLIfe"
		Event:InvokeServer(A1)
		local A1 = "Hats"
		Event:InvokeServer(A1)
		local A1 = "Update3"
		Event:InvokeServer(A1)
	end)

	MISC:Button("Collect All Shards",function()
		local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		for i,v in pairs (game:GetService("Workspace").Shards:GetChildren()) do
		v["Meshes/shard"].CFrame = plr.CFrame
		end
	end)

	MISC:Button("Collect All Chest",function()
		oldpos.Value = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		local chest1 = game:GetService("Workspace").Storage.Interactables.Rewards.Daily.Chest.Base
		local chest2 = game:GetService("Workspace").Storage.Interactables.Rewards.DailySecond.Chest.Base
		local chest3 = game:GetService("Workspace").Storage.Interactables.Rewards.DailyThird.Chest.Base
		local chest4 = game:GetService("Workspace").Storage.Interactables.Rewards.DailyFourth.Chest.Base
		local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		plr.CFrame = chest1.CFrame
		wait(0.5)
		plr.CFrame = chest2.CFrame
		wait(0.5)
		plr.CFrame = chest3.CFrame
		wait(0.5)
		plr.CFrame = chest4.CFrame
		wait(0.5)
		plr.CFrame = oldpos.Value
	end)

	MISC:Button("Open Enchant Gui",function()
		oldpos.Value = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		local Enchant = game:GetService("Workspace").World.Enchant3
		local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		plr.CFrame = Enchant.CFrame
		wait()
		plr.CFrame = oldpos.Value
	end)

	MISC:Button("Camera Zoom Distance",function()
		local plr = game:GetService("Players").LocalPlayer
		plr.CameraMaxZoomDistance = 10000
		plr.CameraMinZoomDistance = 0.5
	end)

	MISC:GuiSettings()

local CS = w:CreateFolder("Credits")

  CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()

spawn(function()
	while wait() do
		if shared.toggle0 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Superhero"; UpdateType = "Open";}
		elseif shared.toggle1 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone1"; UpdateType = "Open";}
		elseif shared.toggle2 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone2"; UpdateType = "Open";}
		elseif shared.toggle3 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone3"; UpdateType = "Open";}
		elseif shared.toggle4 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone4"; UpdateType = "Open";}
		elseif shared.toggle5 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone5"; UpdateType = "Open";}
		elseif shared.toggle6 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone6"; UpdateType = "Open";}
		elseif shared.toggle8 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone8"; UpdateType = "Open";}
		elseif shared.toggle10 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone10"; UpdateType = "Open";}
		elseif shared.toggle11 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Supervillain"; UpdateType = "Open";}
		elseif shared.toggle12 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone12"; UpdateType = "Open";}
		elseif shared.toggle13 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone14"; UpdateType = "Open";}
		elseif shared.toggle14 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone16"; UpdateType = "Open";}
		elseif shared.toggle15 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone18"; UpdateType = "Open";}
		elseif shared.toggle16 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone20"; UpdateType = "Open";}
		elseif shared.toggle17 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone23"; UpdateType = "Open";}
		elseif shared.toggle18 then
			game:GetService("ReplicatedStorage").Functions.EggFunction:InvokeServer{Amount = 1; EggType = "Zone26"; UpdateType = "Open";}

		elseif shared.toggleH1 then
			game:GetService("ReplicatedStorage").Functions.CrateFunction:InvokeServer{Amount = 1; CrateType = "Zone11"; UpdateType = "Open";}
		elseif shared.toggleH2 then
			game:GetService("ReplicatedStorage").Functions.CrateFunction:InvokeServer{Amount = 1; CrateType = "Zone13"; UpdateType = "Open";}
		elseif shared.toggleH3 then
			game:GetService("ReplicatedStorage").Functions.CrateFunction:InvokeServer{Amount = 1; CrateType = "Zone15"; UpdateType = "Open";}
		elseif shared.toggleH4 then
			game:GetService("ReplicatedStorage").Functions.CrateFunction:InvokeServer{Amount = 1; CrateType = "Zone17"; UpdateType = "Open";}
		elseif shared.toggleH5 then
			game:GetService("ReplicatedStorage").Functions.CrateFunction:InvokeServer{Amount = 1; CrateType = "Zone19"; UpdateType = "Open";}
		elseif shared.toggleH6 then
			game:GetService("ReplicatedStorage").Functions.CrateFunction:InvokeServer{Amount = 1; CrateType = "Zone21"; UpdateType = "Open";}
		elseif shared.toggleH7 then
			game:GetService("ReplicatedStorage").Functions.CrateFunction:InvokeServer{Amount = 1; CrateType = "Zone24"; UpdateType = "Open";}
		end
	end
end)

function TpArea()
	if SelectArea == "Valley" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7663.8, 3625.21, -664.29)
	elseif SelectArea == "Desert" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7665.99, 3635.23, -424.606)
	elseif SelectArea == "SnowHills" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7667.53, 3637.06, -11.0042)
	elseif SelectArea == "AutumnFalls" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7658.47, 3637.54, 298.229)
	elseif SelectArea == "SacredBlossoms" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7671.81, 3637.53, 629.921)
	elseif SelectArea == "CandyLand" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7659.08, 3637.36, 930.98)
	elseif SelectArea == "DarkDesert" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7665.99, 3637.81, 1160.04)
	elseif SelectArea == "SunsetKingdom" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7661.37, 3637.86, 1573.72)
	elseif SelectArea == "LavaLand" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7665.99, 3636.81, 1758.54)
	elseif SelectArea == "Heaven" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7673.88, 3637.36, 2184.42)
	elseif SelectArea == "CountrySide" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8158.74, 4464.57, -62768)
	elseif SelectArea == "RockyMountains" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7800.44, 4464.68, -62773.7)
	elseif SelectArea == "September" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7770.56, 4464.9, -62367)
	elseif SelectArea == "Beach" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7283.92, 4464.45, -62277.1)
	elseif SelectArea == "BuildingBlocks" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6758.54, 4465.27, -62288.2)
	elseif SelectArea == "Windy" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6374.93, 4464.77, -62297.6)
	elseif SelectArea == "RadioActive" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5894.83, 4464.77, -62292.1)
	elseif SelectArea == "Grease" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5849.93, 4464.77, -62809.3)
	elseif SelectArea == "Cove" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5866.03, 4464.77, -63278.1)
	elseif SelectArea == "PurpleIceKingdom" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5864.03, 4464.77, -63752)
	elseif SelectArea == "Blocky Space" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5862.07, 4464.25, -64198.4)
	elseif SelectArea == "Toy Land" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5864.03, 4464.25, -64663.1)
	elseif SelectArea == "Crystal Forest" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5864.03, 4464.25, -65116.1)
	elseif SelectArea == "City" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5887.72, 4464.78, -65552.4)
	elseif SelectArea == "Rock Balance" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6301.13, 4464.78, -65616.9)
	elseif SelectArea == "Space Invasion" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6804.67, 4463.82, -65597.4)
	end
end

function AutoFarm()
	if shared.AutoFarm then
		_G.Enable = true
		loadstring(game:HttpGet("https://pastebin.com/raw/vt0LNjCX", true))()
	else
		_G.Enable = false
	end
end

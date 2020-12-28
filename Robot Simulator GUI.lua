-- 1480369826
-- https://pastebin.com/raw/wFKETNUx

-- Anti AFK

	local Virtual = game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		Virtual:CaptureController()
		Virtual:ClickButton2(Vector2.new())
		wait(2)
	end)


local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Robot Simulator")

local Func = w:CreateFolder("Function")

	Func:Toggle("Auto Slashing",function(bool)
	    shared.toggleAS = bool
	end)

	Func:Toggle("Auto Sell",function(bool)
	    shared.toggleASell = bool
	end)

local AB = w:CreateFolder("Auto Buy")

	AB:Toggle("Auto Buy Swords",function(bool)
	    shared.toggleABS = bool
	end)

	AB:Toggle("Auto Buy Backpacks",function(bool)
	    shared.toggleABB = bool
	end)

	AB:Toggle("Auto Buy Skills",function(bool)
	    shared.toggleABSK = bool
	end)

local ABE = w:CreateFolder("Auto Buy Egg")

	ABE:Dropdown("Select Egg",{
	"Basic Egg",
	"Spike Egg",
	"Sparkle Egg",
	"Brick Egg",
	"Crystal Egg",
	"Grass Egg",
	"Frost Egg",
	"Magma Egg",
	"Galaxy Egg",
	"Desert Egg",
	"Premium Egg",
	"Vip Egg"
	},true,function(mob)
		SelectEgg = mob
		print(SelectEgg)
	end)

	ABE:Toggle("Auto Open",function(bool)
	    shared.toggleAO1 = bool
	end)

	ABE:Label("For it to work perfectly, be sure to be next to the egg",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

local TP = w:CreateFolder("Teleport")

	TP:Dropdown("Select Island",{
	"Spawn",
	"Vip Area",
	"Premium Area",
	"Grassland",
	"Winterland",
	"Magmaland",
	"Glaxyland",
	"Desertland"
	},true,function(mob)
		SelectArea = mob
		TpArea()
		print("Telepored to "..mob)
	end)

	TP:Button("Unlock Island",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.VIP.CFrame + Vector3.new(0,5,0)
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.Premium.CFrame + Vector3.new(0,5,0)
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.Zone2.CFrame + Vector3.new(0,5,0)
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.Zone3.CFrame + Vector3.new(0,5,0)
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.Zone4.CFrame + Vector3.new(0,5,0)
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.Zone5.CFrame + Vector3.new(0,5,0)
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.Zone6.CFrame + Vector3.new(0,5,0)
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

	MSC:Button("Use All Codes",function()
		local A1 = "Icey"
		local Event = game:GetService("ReplicatedStorage").Modules.Events.Codes
		Event:InvokeServer(A1)
		local A1 = "Sub2Joseph47"
		Event:InvokeServer(A1)
		local A1 = "Thunder"
		Event:InvokeServer(A1)
		local A1 = "RoboticTweet"
		Event:InvokeServer(A1)
		local A1 = "TelanthricExclusive"
		Event:InvokeServer(A1)
		local A1 = "TelanthricYT"
		Event:InvokeServer(A1)
		local A1 = "Telanthric2"
		Event:InvokeServer(A1)
		local A1 = "BaconPower"
		Event:InvokeServer(A1)
		local A1 = "Hot"
		Event:InvokeServer(A1)
		local A1 = "Phi"
		Event:InvokeServer(A1)
		local A1 = "Welcome"
		Event:InvokeServer(A1)
		local A1 = "KE&H"
		Event:InvokeServer(A1)
		local A1 = "Liu_Alvin"
		Event:InvokeServer(A1)
		local A1 = "Description2"
		Event:InvokeServer(A1)
		local A1 = "Description3"
		Event:InvokeServer(A1)
		local A1 = "Gems"
		Event:InvokeServer(A1)
		local A1 = "Jack"
		Event:InvokeServer(A1)
		local A1 = "Pokemonium"
		Event:InvokeServer(A1)
		local A1 = "Robot"
		Event:InvokeServer(A1)
		local A1 = "ADAM"
		Event:InvokeServer(A1)
		local A1 = "RELEASE"
		Event:InvokeServer(A1)
		local A1 = "Starter"
		Event:InvokeServer(A1)
		local A1 = "Boost"
		Event:InvokeServer(A1)
		local A1 = "Cam"
		Event:InvokeServer(A1)
		local A1 = "Mmistaken"
		Event:InvokeServer(A1)
		local A1 = "Tempest"
		Event:InvokeServer(A1)
		local A1 = "Temtaken"
		Event:InvokeServer(A1)
	end)

	MSC:Button("Collect All Chest",function()
		for i = 1,10 do
		    for i,v in pairs (game:GetService("Workspace").CollectableChests:GetChildren()) do
		        v.Touch.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		    end
		    wait(0.1)
		    for i,v in pairs (game:GetService("Workspace").CollectableChests:GetChildren()) do
		        v.Touch.CFrame = CFrame.new(0,0,0)
		    end
		    wait(0.1)
		end
	end)

	MSC:Button("Collect All",function()
		for i,v in pairs (game:GetService("Workspace").Coins.Locations:GetChildren()) do
		    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
		    wait()
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
		while wait(0.2) do
			if shared.toggleAS then
				local tool = game:GetService("Players").LocalPlayer.PlayerInfo.CurrentSword
				game:GetService("ReplicatedStorage").Modules.Events.Sword:FireServer(tool.Value)
			end
		end
	end)

	spawn(function()
		while wait() do
			if shared.toggleASell then
				local sell = game:GetService("Workspace").Sells["Sell-Spawn"].Touch
				local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
				sell.CFrame = plr.CFrame
				wait(0.1)
				sell.CFrame = CFrame.new(0,0,0)
			end
		end
	end)

	function TpArea()
		if SelectArea == "Spawn" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(721.063, 368.741, -119.279)
		elseif SelectArea == "Vip Area" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.VIP.CFrame + Vector3.new(0,5,0)
		elseif SelectArea == "Premium Area" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.Premium.CFrame + Vector3.new(0,5,0)
		elseif SelectArea == "Grassland" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.Zone2.CFrame + Vector3.new(0,5,0)
		elseif SelectArea == "Winterland" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.Zone3.CFrame + Vector3.new(0,5,0)
		elseif SelectArea == "Magmaland" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.Zone4.CFrame + Vector3.new(0,5,0)
		elseif SelectArea == "Glaxyland" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.Zone5.CFrame + Vector3.new(0,5,0)
		elseif SelectArea == "Desertland" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portals.TeleSpots.Zone6.CFrame + Vector3.new(0,5,0)
		end
	end

	spawn(function()
		while wait(0.5) do
			if shared.toggleABS then
				game:GetService("ReplicatedStorage").Modules.Events.BuyItem:InvokeServer("Sword","Sword","BuyAll")
			end
			if shared.toggleABB then
				game:GetService("ReplicatedStorage").Modules.Events.BuyItem:InvokeServer("Backpack","Backpack","BuyAll")
			end
			if shared.toggleABSK then
				game:GetService("ReplicatedStorage").Modules.Events.BuySkill:InvokeServer("Skill","BuyAll")
			end
		end
	end)

spawn(function()
	while wait(1) do
		if shared.toggleAO1 then
			if SelectEgg == "Basic Egg" then 
				game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(SelectEgg, "Buy1")
			elseif SelectEgg == "Spike Egg" then 
				game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(SelectEgg, "Buy1")
			elseif SelectEgg == "Sparkle Egg" then 
				game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(SelectEgg, "Buy1")
			elseif SelectEgg == "Brick Egg" then 
				game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(SelectEgg, "Buy1")
			elseif SelectEgg == "Crystal Egg" then 
				game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(SelectEgg, "Buy1")
			elseif SelectEgg == "Grass Egg" then 
				game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(SelectEgg, "Buy1")
			elseif SelectEgg == "Frost Egg" then 
				game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(SelectEgg, "Buy1")
			elseif SelectEgg == "Magma Egg" then 
				game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(SelectEgg, "Buy1")
			elseif SelectEgg == "Galaxy Egg" then 
				game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(SelectEgg, "Buy1")
			elseif SelectEgg == "Desert Egg" then 
				game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(SelectEgg, "Buy1")
			elseif SelectEgg == "Premium Egg" then 
				game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(SelectEgg, "Buy1")
			elseif SelectEgg == "Vip Egg" then 
				game:GetService("ReplicatedStorage").Modules.Events.EggBuy:InvokeServer(SelectEgg, "Buy1")
			end
		end
	end
end)

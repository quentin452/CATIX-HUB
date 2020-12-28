-- Anti AFK
 
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)


local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Ramen Simulator")

local AF = w:CreateFolder("Auto Farm")

	AF:Toggle("Auto Combat",function(bool)
	    shared.toggleAC = bool
	end)

	AF:Toggle("Auto Ramen",function(bool)
	    shared.toggleAR = bool
	end)

	AF:Toggle("Auto Sell",function(bool)
	    shared.toggleAS = bool
	end)

	AF:Label("'Auto Sell' and 'Auto Ramen' work but not visually, it works visually on the leaderstats",Color3.fromRGB(38,38,38),Color3.fromRGB(200,0,0))

local ABS = w:CreateFolder("Auto Buy Shop")

	ABS:Toggle("Auto Buy Ramen",function(bool)
	    shared.toggleABR = bool
	end)

	ABS:Toggle("Auto Buy Heats",function(bool)
	    shared.toggleABH = bool
	end)

	ABS:Toggle("Auto Buy Jumps",function(bool)
	    shared.toggleABJ = bool
	end)

	ABS:Toggle("Auto Buy Ranks",function(bool)
	    shared.toggleABRS = bool
	end)

local ABE = w:CreateFolder("Auto Buy Egg")

	ABE:Toggle("Egg 1",function(bool)
	    shared.toggleABE1 = bool
	    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-183.817, -14.8597, 578.735)
	end)

	ABE:Toggle("Egg 2",function(bool)
	    shared.toggleABE2 = bool
	    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-228.359, 1887.2, 569.268)
	end)

	ABE:Toggle("Egg 3",function(bool)
	    shared.toggleABE3 = bool
	    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-285.463, 15715.2, 385.701)
	end)

	ABE:Toggle("Egg 4",function(bool)
	    shared.toggleABE4 = bool
	    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-430.403, 48582.2, 13.2079)
	end)

	ABE:Toggle("Egg 5",function(bool)
	    shared.toggleABE5 = bool
	    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-620.063, 84157.9, -667.021)
	end)

	ABE:Toggle("Egg 6",function(bool)
	    shared.toggleABE6 = bool
	    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-787.701, 93208.3, -641.806)
	end)

	ABE:Label("For 'Auto Buy Egg' to work properly, make sure you are next to the egg you want to open",Color3.fromRGB(38,38,38),Color3.fromRGB(200,0,0))

local TP = w:CreateFolder("Teleport")

	TP:Dropdown("Select Island",{
	"Spawn",
	"Fortune",
	"Lava Lake",
	"Magma pools",
	"Prosperous",
	"Insterstellar",
	"Void",
	"Planetoid",
	"Celestial",
	"Nightmare",
	"Spacebound",
	"Cosmic",
	"Thunder",
	"Divine",
	"Tornado",
	"Glowing",
	"Heavenly",
	"Vortex"
	},true,function(mob)
		SelectArea = mob
		TpArea()
		print("Telepored to "..mob)
	end)

	TP:Dropdown("Flag",{"Money 1","Money 2","Jade 1", "Jade 2", "KOTH"},true,function(mob)
		if mob == "Money 1" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(208.806, -19.0852, 446.117)
		elseif mob == "Money 2" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239.849, -19.0852, 742.041)
		elseif mob == "Jade 1" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.742, -19.0852, 602.176)
		elseif mob == "Jade 2" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(454.889, -19.0689, 581.852)
		elseif mob == "KOTH" then
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(288.663, 33.4866, 587.981)
		end
	end)

	TP:Button("Unlock Island",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.FirstChestIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.FirstIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.SecondIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.SecondChestIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.ThirdIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.FourthIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.ThirdChestIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.FifthIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.SixthIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.FourthChestIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.SeventhIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.EighthIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.NinthIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.TenthIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.EleventhIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.TwelfthIslandUnlockZone.CFrame
		wait(0.5)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.ThirteenthslandUnlockZone.CFrame
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
		local A1 = "Release"
		local Event = game:GetService("ReplicatedStorage").RemoteFunctions.CodeEnteredFunc
		Event:InvokeServer(A1)
		local A1 = "Launch"
		Event:InvokeServer(A1)
		local A1 = "Release"
		Event:InvokeServer(A1)
		local A1 = "50Stones"
		Event:InvokeServer(A1)
		local A1 = "100RockGolems"
		Event:InvokeServer(A1)
		local A1 = "TwitterJade"
		Event:InvokeServer(A1)
		local A1 = "5KLikesParty"
		Event:InvokeServer(A1)
	end)

	MSC:Button("Infinite Jumps",function()
		game:GetService("Players").LocalPlayer.Jumps.Value = 1e+9
	end)

	MSC:Button("Collect All Chest",function()
		local chest0 = game:GetService("Workspace").GroupChest.Zone
		local chest1 = game:GetService("Workspace").MAP.FirstChestZone
		local chest2 = game:GetService("Workspace").MAP.SecondChestZone
		local chest3 = game:GetService("Workspace").MAP.ThirdChestZone
		local chest4 = game:GetService("Workspace").MAP.FourthChestZone
		local plr = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
		chest0.Transparency = 1
		chest1.Transparency = 1
		chest2.Transparency = 1
		chest3.Transparency = 1
		chest4.Transparency = 1
		wait(0.5)
		chest0.CFrame = plr.CFrame
		wait(0.5)
		chest1.CFrame = plr.CFrame
		wait(0.5)
		chest2.CFrame = plr.CFrame
		wait(0.5)
		chest3.CFrame = plr.CFrame
		wait(0.5)
		chest4.CFrame = plr.CFrame
		wait(0.5)
		chest0.CFrame = CFrame.new(-378.779, 62957.4, 60000.9616)
		chest1.CFrame = CFrame.new(-378.779, 62957.4, 60000.9616)
		chest2.CFrame = CFrame.new(-378.779, 62957.4, 60000.9616)
		chest3.CFrame = CFrame.new(-378.779, 62957.4, 60000.9616)
		chest4.CFrame = CFrame.new(-378.779, 62957.4, 60000.9616)
	end)

	MSC:GuiSettings()

local CS = w:CreateFolder("Credits")

	  CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()

spawn(function()
	while wait(0.5) do
		if shared.toggleAC then
			local tool1 = game.Players.LocalPlayer.Backpack:FindFirstChild("PvPTool")  or game.Players.LocalPlayer.Character:FindFirstChild("PvPTool")
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool1)
			tool1:Activate()
		end
		if shared.toggleAR then
			game:GetService("ReplicatedStorage").RemoteFunctions.HeatIncreaseFunc:InvokeServer()
			game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.CurrencyContainer.HeatBG.CurrentLbl.Text = game:GetService("Players").LocalPlayer.leaderstats.Heat.Value
		end
		if shared.toggleAS then
			game:GetService("ReplicatedStorage").RemoteFunctions.SellHeatFunc:InvokeServer()
			game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.CurrencyContainer.MoneyBG.CurrentLbl.Text = game:GetService("Players").LocalPlayer.leaderstats.Gold.Value
		end
		if shared.toggleABE1 then
			local args = {
			    [1] = "egg1",
			}
			game:GetService("ReplicatedStorage").RemoteFunctions.UnboxEggFunc:InvokeServer(unpack(args))
		end
		if shared.toggleABE2 then
			local args = {
			    [1] = "egg2",
			}
			game:GetService("ReplicatedStorage").RemoteFunctions.UnboxEggFunc:InvokeServer(unpack(args))
		end
		if shared.toggleABE3 then
			local args = {
			    [1] = "egg3",
			}
			game:GetService("ReplicatedStorage").RemoteFunctions.UnboxEggFunc:InvokeServer(unpack(args))
		end
		if shared.toggleABE4 then
			local args = {
			    [1] = "egg4",
			}
			game:GetService("ReplicatedStorage").RemoteFunctions.UnboxEggFunc:InvokeServer(unpack(args))
		end
		if shared.toggleABE5 then
			local args = {
			    [1] = "egg5",
			}
			game:GetService("ReplicatedStorage").RemoteFunctions.UnboxEggFunc:InvokeServer(unpack(args))
		end
		if shared.toggleABE6 then
			local args = {
			    [1] = "egg6",
			}
			game:GetService("ReplicatedStorage").RemoteFunctions.UnboxEggFunc:InvokeServer(unpack(args))
		end
	end
end)

function TpArea()
	if SelectArea == "Spawn" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SpawnLocation.CFrame
	elseif SelectArea == "Fortune" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.FirstChestIslandUnlockZone.CFrame
	elseif SelectArea == "Lava Lake" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.FirstIslandUnlockZone.CFrame
	elseif SelectArea == "Magma pools" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.SecondIslandUnlockZone.CFrame
	elseif SelectArea == "Prosperous" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.SecondChestIslandUnlockZone.CFrame
	elseif SelectArea == "Insterstellar" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.ThirdIslandUnlockZone.CFrame
	elseif SelectArea == "Void" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.FourthIslandUnlockZone.CFrame
	elseif SelectArea == "Planetoid" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.ThirdChestIslandUnlockZone.CFrame
	elseif SelectArea == "Celestial" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.FifthIslandUnlockZone.CFrame
	elseif SelectArea == "Nightmare" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.SixthIslandUnlockZone.CFrame
	elseif SelectArea == "Spacebound" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.FourthChestIslandUnlockZone.CFrame
	elseif SelectArea == "Cosmic" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.SeventhIslandUnlockZone.CFrame
	elseif SelectArea == "Thunder" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.EighthIslandUnlockZone.CFrame
	elseif SelectArea == "Divine" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.NinthIslandUnlockZone.CFrame
	elseif SelectArea == "Tornado" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.TenthIslandUnlockZone.CFrame
	elseif SelectArea == "Glowing" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.EleventhIslandUnlockZone.CFrame
	elseif SelectArea == "Heavenly" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.TwelfthIslandUnlockZone.CFrame
	elseif SelectArea == "Vortex" then
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MAP.ThirteenthslandUnlockZone.CFrame
	end
end

spawn(function()
	while wait(0.2) do
		if shared.toggleABR then
			game:GetService("ReplicatedStorage").RemoteEvents.ShopItemBuyAllEvent:FireServer("Tool")
		end
		if shared.toggleABH then
			game:GetService("ReplicatedStorage").RemoteEvents.ShopItemBuyAllEvent:FireServer("Upgrade")
		end
		if shared.toggleABJ then
			game:GetService("ReplicatedStorage").RemoteEvents.ShopItemBuyAllEvent:FireServer("JumpUpgrade")
		end
		if shared.toggleABRS then
			for i = 1,30 do
			    local args = {
			        [1] = game:GetService("ReplicatedStorage").RanksImg[i].ItemIdName.Value,
			        [2] = "Rank",
			    }
			    game:GetService("ReplicatedStorage").RemoteEvents.ShopItemBuyEvent:FireServer(unpack(args))
			end
		end
	end
end)

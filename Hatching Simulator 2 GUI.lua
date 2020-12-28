-- Anti AFK
 
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Hatching Simulator 2")

local b = w:CreateFolder("Function")

	b:Toggle("Auto Farm Coins",function(bool)
		shared.toggleAFC = bool
	end)

local ABE = w:CreateFolder("Auto Buy Eggs")

	ABE:Toggle("Common Egg (250)",function(bool)
		shared.toggleABE1 = bool
	end)

	ABE:Toggle("Rare Egg (25k)",function(bool)
		shared.toggleABE2 = bool
	end)

	ABE:Toggle("Epic Egg (100k)",function(bool)
		shared.toggleABE3 = bool
	end)

	ABE:Toggle("Devil Of Natural (100M)",function(bool)
		shared.toggleABE4 = bool
	end)

	ABE:Toggle("Sky Egg (1B)",function(bool)
		shared.toggleABE5 = bool
	end)

	ABE:Toggle("150k Egg (10B)",function(bool)
		shared.toggleABE6 = bool
	end)

	ABE:Toggle("Sun Egg (10B)",function(bool)
		shared.toggleABE7 = bool
	end)

	ABE:Toggle("Diamond Egg (50B)",function(bool)
		shared.toggleABE8 = bool
	end)

	ABE:Toggle("50k Visit Egg (500B)",function(bool)
		shared.toggleABE9 = bool
	end)

	ABE:Toggle("Rainbow Diamond (25T)",function(bool)
		shared.toggleABE10 = bool
	end)

	ABE:Toggle("Rainbow God Stone (100T)",function(bool)
		shared.toggleABE11 = bool
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

	MISC:GuiSettings()

local CS = w:CreateFolder("Credits")

	  CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
    end)
	CS:DestroyGUI()

spawn(function()
	while wait() do
		if shared.toggleAFC then
			local tool1 = game.Players.LocalPlayer.Backpack:FindFirstChild("Coin")  or game.Players.LocalPlayer.Character:FindFirstChild("Coin")
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool1)
			tool1:Activate()
		end
	end
end)

spawn(function()
	while wait(1) do
		if shared.toggleABE1 then
			game:GetService("ReplicatedStorage").KeyBind:InvokeServer(game:GetService("Players").LocalPlayer,"Common", false)
		elseif shared.toggleABE2 then
			game:GetService("ReplicatedStorage").KeyBind:InvokeServer(game:GetService("Players").LocalPlayer,"Rare", false)
		elseif shared.toggleABE3 then
			game:GetService("ReplicatedStorage").KeyBind:InvokeServer(game:GetService("Players").LocalPlayer,"Epic", false)
		elseif shared.toggleABE4 then
			game:GetService("ReplicatedStorage").KeyBind:InvokeServer(game:GetService("Players").LocalPlayer,"DevilOfNatural", false)
		elseif shared.toggleABE5 then
			game:GetService("ReplicatedStorage").KeyBind:InvokeServer(game:GetService("Players").LocalPlayer,"Sky", false)
		elseif shared.toggleABE6 then
			game:GetService("ReplicatedStorage").KeyBind:InvokeServer(game:GetService("Players").LocalPlayer,"150K", false)
		elseif shared.toggleABE7 then
			game:GetService("ReplicatedStorage").KeyBind:InvokeServer(game:GetService("Players").LocalPlayer,"Sun", false)
		elseif shared.toggleABE8 then
			game:GetService("ReplicatedStorage").KeyBind:InvokeServer(game:GetService("Players").LocalPlayer,"Diamond", false)
		elseif shared.toggleABE9 then
			game:GetService("ReplicatedStorage").KeyBind:InvokeServer(game:GetService("Players").LocalPlayer,"50KVisit", false)
		elseif shared.toggleABE10 then
			game:GetService("ReplicatedStorage").KeyBind:InvokeServer(game:GetService("Players").LocalPlayer,"RainbowDiamond", false)
		elseif shared.toggleABE11 then
			game:GetService("ReplicatedStorage").KeyBind:InvokeServer(game:GetService("Players").LocalPlayer,"RainbowGodStone", false)
		end
	end
end)

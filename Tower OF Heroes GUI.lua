-- 1531130248
-- https://pastebin.com/raw/CgWwPnMZ

-- Anti AFK

	local Virtual = game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		Virtual:CaptureController()
		Virtual:ClickButton2(Vector2.new())
		wait(2)
	end)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Tower Heroes")

local FUN = w:CreateFolder("Function")

	FUN:Toggle("Auto SkipWave",function(bool)
		shared.toggleASW = bool		
	end)

	FUN:Toggle("Auto Upgrade",function(bool)
		shared.toggleAU = bool		
	end)

	FUN:Toggle("Auto Placement",function(bool)
		shared.toggleAP = bool		
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

	CS:Label("Script: Altix#5997",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	CS:Label("Script: BABYHAMSTA#0173",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()

spawn(function()
	while wait(1) do
		if shared.toggleASW then
			game:GetService("ReplicatedStorage").Events.SkipWave:FireServer()
		end
	end
end)

spawn(function()
	while wait(1) do
		if shared.toggleAU then
		    local children = game:GetService("Workspace").Troop:GetChildren()
		    for i = 1, #children do
		        game:GetService("ReplicatedStorage").Events.TroopEvent:FireServer("Upgrade", children[i])
		    end
		end
	end
end)

spawn(function()
	while wait(5) do
		if shared.toggleAP then
		   -- Placed Troops (All of them)
		   local placedtroops = game.Workspace.Troop:GetChildren()
		   
		   -- See what player has to select from
		   local menu = game.Players.LocalPlayer.PlayerGui.Menu.Inventory
		   local mitem1 = menu["1"].TroopFrame.TroopModule.Value
		   local mitem2 = menu["2"].TroopFrame.TroopModule.Value
		   local mitem3 = menu["3"].TroopFrame.TroopModule.Value
		   local mitem4 = menu["4"].TroopFrame.TroopModule.Value
		   
		   -- Put menu items into table to random select.
		   local menutable = {mitem1, mitem2, mitem3, mitem4}
		   local value = math.random(1, #menutable) -- Random Select.
		   
		   -- Select randomly and place em for us
		   local otroopselect =  math.random(1, #placedtroops)
		   local otroop = placedtroops[otroopselect]
		   
		    if otroop.Stats.Owner.Value ~= game.Players.LocalPlayer.Name then
		        if otroop.Name ~= "Lemonade Cat" and otroop.Name ~= "Slime King" then -- Normally people stick these out of the way and you don't want troops doing nothing.
		            local value = math.random(1, #menutable) -- Random Select from our menu..
		            warn("Placing: " .. tostring(value))
		            game:GetService("ReplicatedStorage").Events.TroopPlace:FireServer(game:GetService("ReplicatedStorage").Troops[tostring(menutable[value])], otroop.PrimaryPart.Position, 0)
		        end
		    end
		end
	end
end)

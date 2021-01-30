-- Anti AFK

local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    Virtual:CaptureController()
    Virtual:ClickButton2(Vector2.new())
    wait(2)
end)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Fall Block")

local b = w:CreateFolder("Function")

    b:Toggle("SafeZone",function(bool)
        if bool then
            safezone = Instance.new("Part", workspace)
            safezone.Transparency = 0.6
            safezone.Anchored = true
            safezone.Position = Vector3.new(106.04, 1409.654, -152.822)
            safezone.Size = Vector3.new(154.444, 0.25, 145.655)
        else
            safezone:Destroy()
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
	CS:Label("https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	CS:DestroyGUI()

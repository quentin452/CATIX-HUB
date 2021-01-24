-- Anti AFK
 
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("STAY ON THE CUBE!")

local b = w:CreateFolder("Function")

	b:Toggle("Safe Zone",function(bool)
		shared.toggleSZ = bool
	end)

	b:Toggle("Collect Money",function(bool)
		shared.toggleCM = bool
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

	CS:Label("Script: Altix#5997",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	CS:DestroyGUI()

spawn(function()
	while wait(1) do
		if shared.toggleCM then
			for i,v in pairs(game:GetService("Workspace").MoneyFolder:GetChildren()) do
				v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			end
		end
	end
end)

spawn(function()
	while wait(1) do
		if shared.toggleSZ then
			game:GetService("Workspace").SpawnLocation.CanCollide = true
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4.24493, 164.019, -3.65739)
		end
	end
end)


-- 1383164929

-- https://pastebin.com/raw/uZJMLujF

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Treacherous Tower")

local FNC = w:CreateFolder("Function")

	FNC:Toggle("GodMode",function(bool)
		shared.toggleGM = bool
	end)

	FNC:Toggle("Inf Jump",function(bool)
		shared.toggleIJ = bool
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
	CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()

spawn(function() --// GodeMode
	while wait() do
		if shared.toggleGM == true then
			game.Workspace[game.Players.LocalPlayer.Name].KillScript.Disabled = true
		elseif shared.toggleGM == false then
			 game.Workspace[game.Players.LocalPlayer.Name].KillScript.Disabled = false
		end
	end
end)

--// Inf Jump
	local UserInputService = game:GetService("UserInputService")
	local key = Enum.KeyCode.Space
	local function is()
	return UserInputService:IsKeyDown(key)
	end
	local function Input(input, gameProcessedEvent)
		while is() and shared.toggleIJ do
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
				wait(.1)
				game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Seated")
		end
	end
	UserInputService.InputBegan:Connect(Input)

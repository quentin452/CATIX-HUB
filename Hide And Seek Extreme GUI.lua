local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Hide and Seek Extreme")

local GF = w:CreateFolder("Function")

	GF:Button("Collect Coins",function()
	    for i,v in pairs(game:GetService("Workspace").GameObjects:GetChildren()) do
	    	v.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
	    end
	end)

	GF:Button("It & Players ESP",function()
		for i,v in pairs(game.Players:GetChildren())do
			wait(.05)

			local billboard = Instance.new("BillboardGui",v.Character.Head)
			billboard.Size = UDim2.new (0,200,0,50)
			billboard.ExtentsOffset = Vector3.new(0,2.5,0)
			billboard.AlwaysOnTop = true
			wait(.01)

			local textbox = Instance.new ("TextBox",billboard)
			textbox.Size = UDim2.new (0, 200,0, 50)
			textbox.Name = "textbox"
			wait(.01)

			textbox.TextColor3 = Color3.fromRGB(0,0,255)
			textbox.TextSize = 20
			textbox.BackgroundTransparency = 1
			
			if v.PlayerData.It.Value == true then
				textbox.Text = "It"
				textbox.TextColor3 = Color3.fromRGB(255,0,0)
			else
				textbox.Text = "Hider"
			end
		end
	end)

	GF:Button("Find All Players",function()
		local players = game.Players:GetChildren()
		local me = game.Players.LocalPlayer.Character
		wait(1)
		for i,v in pairs(players) do
		    wait(.01)
		    me.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
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

	MISC:GuiSettings()
	
local CS = w:CreateFolder("Credits")

  CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()

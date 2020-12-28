-- Anti AFK

local Virtual = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	Virtual:CaptureController()
	Virtual:ClickButton2(Vector2.new())
	wait(2)
end)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Monster Battle")

local AF = w:CreateFolder("Functions")
	local sdqdsqdq = 50
	AF:Slider("Distance Aimbot",100,true,function(value) --MaxValue
	    sdqdsqdq = value
	end)

	AF:Toggle("Aimbot",function(bool)
		shared.toggleAB = bool
		local groundDistance = 8
		local Player = game:GetService("Players").LocalPlayer
		local function getNearest()
		local nearest,dist = nil, sdqdsqdq

		for _,v in pairs(game.Workspace.Enemies:GetChildren()) do
			if(v:FindFirstChild("Head")~=nil)then
				local m =(Player.Character.Head.Position-v.Head.Position).magnitude
				if(m<dist)then
					dist = m
					nearest = v
				end
			end
		end

		return nearest
		end

		_G.globalTarget = nil
		game:GetService("RunService").RenderStepped:Connect(function()
			if shared.toggleAB then
				local target = getNearest()
				if(target~=nil)then
					game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, target.Head.Position)
					_G.globalTarget = target
				end
			end
		end)
	end)

	AF:Label("I recommend you to be in first person",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

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

local TP = w:CreateFolder("Teleport")

	TP:Button("Chest",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-508.629, -65.693, -1.34018)
	end)

	TP:Button("BlackSmith",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-568.548, -65.6892, -38.9146)
	end)

	TP:Button("Sell items",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-504.626, -65.6892, -53.4212)
	end)

	TP:Button("Cosmetics Shop",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-544.367, -65.6892, 5.87157)
	end)

	TP:Button("View Quest",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-549.86, -65.6915, 36.5766)
	end)

	TP:Button("Shop",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-573.503, -65.693, 0.918473	)
	end)

	TP:Button("Monster Zone",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lobby.Interactable.GrindZone.CFrame
	end)

	TP:Button("Farm Zone",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Lobby.Interactable.FarmTeleport.CFrame
	end)

	TP:Button("Rebirth Shop",function()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-603.726, -60.693, 47.8845)
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

	MSC:Button("Collect Chest",function()
		fireclickdetector(game:GetService("Workspace").Lobby.Interactable.Chest.Hitbox.ClickDetector)
	end)

	MSC:Button("infinite Dungeon Time",function()
		game:GetService("Workspace").BeginTime.Value = 1e+9
	end)

	MSC:GuiSettings()

local CS = w:CreateFolder("Credit")

	  CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()

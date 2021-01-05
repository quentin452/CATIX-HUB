-- Anti AFK

local Virtual = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	Virtual:CaptureController()
	Virtual:ClickButton2(Vector2.new())
	wait(2)
end)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/quentin452/CATIX-HUB/master/!Zypher%20UI.lua"))()
local main = library:CreateMain({
	projName = "ScreenGui",
	Resizable = true,
	MinSize = UDim2.new(0,400,0,400),
	MaxSize = UDim2.new(0,750,0,500),
})

local Home = main:CreateCategory("Home")
local Tittle = Home:CreateSection("Candy Clicking Simulator")
local H1 = Home:CreateSection("Update logs V1.0:")
	H1:Create(
		"Textlabel",
		"New Game Added To Hub"
	)
	H1:Create(
		"Textlabel",
		"+ Christmas Update"
	)
local H2 = Home:CreateSection("Credits")
	H2:Create(
		"Textlabel",
		"Script by Altix#3395"
	)
	H2:Create(
		"Textlabel",
		"Tested by I'm A Cat#7202"
	)
	H2:Create(
		"Button",
		"Copy Discord Link (https://discord.gg/KmHZUpXEmQ)",
		function()
		setclipboard("https://discord.gg/KmHZUpXEmQ")
		end,
		{
			animated = true,
		}
	)
local Function = main:CreateCategory("Function")
	local AS = Function:CreateSection("Auto Click Stuff")
		AS:Create(
			"Toggle",
			"Auto Click",
			function(state)
				shared.toggleAC = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait() do
				if shared.toggleAC then
					game:GetService("ReplicatedStorage").Events.ClickEvent:FireServer()
				end
			end
		end)
		AS:Create(
			"Toggle",
			"Remove Popups",
			function(state)
				if state then
					game:GetService("Players").Nitix13.PlayerGui.MainGUI.PopUpsFrame.Visible = false
				else
					game:GetService("Players").Nitix13.PlayerGui.MainGUI.PopUpsFrame.Visible = true
				end
			end,
			{
				default = false,
			}
		)

	local ARS = Function:CreateSection("Auto Rebirths Stuff")
		ARS:Create(
			"DropDown",
			"Choose a rebirths", 
			function(current)
				print("Selected to:", current)
				_G.RebirthSelected = current
				wait()
				game:GetService("ReplicatedStorage").Events.ClickEvent:FireServer()
			end,
			{
				options = {
					"1",
					"5",
					"15",
					"25",
					"50",
					"100",
					"500",
					"1000",
					"2500",
					"50000",
					"100000",
				},
				-- Optional
				default = "Choose a rebirths",
				search = true
			}
		)
		ARS:Create(
			"Toggle",
			"Auto Rebirth",
			function(state)
				shared.toggleAR = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait() do
				if shared.toggleAR then
					if _G.RebirthSelected ~= nil then
						local args = {
							[1] = tonumber(_G.RebirthSelected)
						}
						game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(unpack(args))
					else
					end
				end
			end
		end)

	local ACS = Function:CreateSection("Auto Collect Stuff")
		ACS:Create(
			"Toggle",
			"Auto Collect Gift",
			function(state)
				shared.toggleACG = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(1) do
				if shared.toggleACG then
					for i,v in pairs(game:GetService("Workspace").GiftSpawn.Gifts:GetChildren()) do
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
						wait(0.1)
					end
				end
			end
		end)
	local ABS = Function:CreateSection("Auto Boss Stuff")
		ABS:Create(
			"Toggle",
			"Auto Boss",
			function(state)
				shared.toggleAB = state
				shared.toggleAC = state
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait() do
				if shared.toggleAB then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
						local me = game.Players.LocalPlayer.Character.HumanoidRootPart
						local pbosd = game:GetService("Workspace").MainMap.Boss.Holder.Robot.Torso
						me.CFrame = pbosd.CFrame - Vector3.new(0,43,0)
					end
				end
			end
		end)

local PlayerStuff = main:CreateCategory("Player Stuff")
local PS = PlayerStuff:CreateSection("Player Stuff")
	PS:Create(
		"Slider",
		"Speed Hack",
		function(value)
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
		end,
		{
			min = 0,
			max = 250,
			-- Optional
			default = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
			precise = false, -- ex: 0.1, 0.2, 0.3
			changablevalue = true
		}
	)
	PS:Create(
		"Slider",
		"Jump Hack",
		function(value)
			game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
		end,
		{
			min = 0,
			max = 250,
			-- Optional
			default = game.Players.LocalPlayer.Character.Humanoid.JumpPower,
			precise = false, -- ex: 0.1, 0.2, 0.3
			changablevalue = true
		}
	)
	PS:Create(
		"Slider",
		"HipHeight Hack",
		function(value)
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
		end,
		{
			min = 2.56,
			max = 250,
			-- Optional
			default = game.Players.LocalPlayer.Character.Humanoid.HipHeight,
			precise = true, -- ex: 0.1, 0.2, 0.3
			changablevalue = true
		}
	)
	PS:Create(
		"Button",
		"No Clip (Press N)",
		function()
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
		end,
		{
			animated = true,
		}
	)
	PS:Create(
		"Button",
		"Fly (Press F)",
		function()
			loadstring(game:HttpGet("https://pastebin.com/raw/c01bpxpF", true))()
		end,
		{
			animated = true,
		}
	)
	PS:Create(
		"Button",
		"Ctrl + Click Tp",
		function()
			local Plr = game:GetService("Players").LocalPlayer
			local Mouse = Plr:GetMouse()

			Mouse.Button1Down:connect(function()
			if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
			if not Mouse.Target then return end
			Plr.Character:MoveTo(Mouse.Hit.p)
			end)
		end,
		{
			animated = true,
		}
	)
	PS:Create(
		"Button",
		"Camera Max/Min Zoom Distance",
		function()
			game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 99999
			game:GetService("Players").LocalPlayer.CameraMinZoomDistance = 0
		end,
		{
			animated = true,
		}
	)

local Misc = main:CreateCategory("Misc")
	local Miscsection = Misc:CreateSection("Misc Stuff")
		Miscsection:Create(
			"Button",
			"Refresh Game",
			function()
				local TeleportService = game:GetService("TeleportService")
				local PlaceId = game.PlaceId
				local player = game.Players.LocalPlayer
				if player then
				TeleportService:Teleport(PlaceId, player)
				end
			end,
			{
				animated = true,
			}
		)
	local GuiStuff = Misc:CreateSection("Gui Stuff")
		GuiStuff:Create(
			"KeyBind",
			"Hide Gui", 
			function(bool)
				print(bool)
				local Gui = game:GetService("CoreGui")["ScreenGui"].Motherframe
				if Gui.Visible then
					Gui.Visible = false
				else
					Gui.Visible = true
				end
			end,
			{
				default = Enum.KeyCode.RightControl
			}
		)
		GuiStuff:Create(
			"Button",
			"Destroy Gui",
			function()
				game:GetService("CoreGui")["ScreenGui"]:Destroy()
			end,
			{
				animated = true,
			}
		)

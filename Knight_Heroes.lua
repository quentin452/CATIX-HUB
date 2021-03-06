-- Anti AFK

local Virtual = game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
	Virtual:CaptureController()
	Virtual:ClickButton2(Vector2.new())
	wait(2)
end)

if game.CoreGui:FindFirstChild("ScreenGui") then
	game.CoreGui:FindFirstChild("ScreenGui"):Destroy() 
end
local rs = game:GetService("RunService").RenderStepped
local Remote = game:GetService("ReplicatedStorage").Modules.ServiceLoader.NetworkService.Events.Objects:GetChildren()
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/quentin452/CATIX-HUB/master/!Zypher%20UI.lua"))()

local main = library:CreateMain({projName = "ScreenGui",Resizable = true,MinSize = UDim2.new(0,400,0,400),MaxSize = UDim2.new(0,750,0,500),})

local Home = main:CreateCategory("Home")
	local Tittle = Home:CreateSection("Knight Heroes")
	local H1 = Home:CreateSection("Update logs:")
		H1:Create(
			"Textlabel",
			"+ Void Update Added"
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
	local Func = Function:CreateSection("Function Stuff")
		Func:Create(
			"Toggle",
			"Auto Click",
			function(state)
				shared.toggle = state
			end,
			{
				default = false,
			}
		)
		Func:Create(
			"Toggle",
			"Auto Sell",
			function(state)
				shared.toggle2 = state
			end,
			{
				default = false,
			}
		)
		Func:Create(
			"Toggle",
			"Auto Regen",
			function(state)
				shared.toggle3 = state
			end,
			{
				default = false,
			}
		)
		Func:Create(
			"Toggle",
			"Auto Collect Rings",
			function(state)
				shared.toggle4 = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait() do
				if shared.toggle then
					Remote[5]:FireServer("SwingSword")
				end
				if shared.toggle2 then
					Remote[5]:FireServer("SellPower")
				end
				if shared.toggle3 then
					Remote[13]:FireServer("Home")
				end
				if shared.toggle4 then
					for i,v in pairs(game:GetService("Workspace").Rings:GetDescendants()) do
						if v.Name == "Model" then
							v.CollisionPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
							rs:wait()
							v.CollisionPart.CFrame = CFrame.new(0,0,0)
						end
					end
				end
			end
		end)
		--[[
			local AUTOBOSS = Function:CreateSection("Auto Boss Stuff")
				local BossTable = {}
				local bossloacation = game.workspace:FindFirstChild("Bosses")
				for i,v in pairs(bossloacation:GetChildren()) do
					table.insert(BossTable, v.Name)
				end
				AUTOBOSS:Create(
					"DropDown",
					"Select Boss", 
					function(current)
						print("Selected to:", current)
						_G.BossSelected = current
					end,
					{
						options = BossTable,
						-- Optional
						default = "Select Boss",
						search = false
					}
				)
				AUTOBOSS:Create(
					"Toggle",
					"Auto Farm Boss",
					function(state)
						shared.toggleAFB = state
					end,
					{
						default = false,
					}
				)
				spawn(function()
					while wait() do
						if _G.BossSelected ~= nil then
							if shared.toggleAFB then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Bosses[_G.BossSelected].Model[_G.BossSelected].HumanoidRootPart.CFrame
								Remote[23]:FireServer("DamageBoss",workspace.Bosses[_G.BossSelected].Model[_G.BossSelected].LowerTorso,_G.BossSelected)
							end
						end
					end
				end)
		]]

	local ABS = Function:CreateSection("Auto Buy Stuff")
		ABS:Create(
			"Toggle",
			"Auto Buy Swords",
			function(state)
				shared.toggleabss = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait() do
				if shared.toggleabss then
					Remote[5]:FireServer("BuyAllSwords","Void")
				end
			end
		end)
local PetModule = main:CreateCategory("PetModule")
	local BES = PetModule:CreateSection("Buy Egg Stuff")
		local SelectEggsStrings = {}
		for i,v in pairs(game:GetService("ReplicatedStorage").Assets.Pets.Eggs:GetChildren()) do
			table.insert(SelectEggsStrings, v.Name)
		end
		BES:Create(
			"DropDown",
			"Select An Egg", 
			function(current)
				_G.EggSelected = current
			end,
			{
				options = SelectEggsStrings,
				-- Optional
				default = "Select An Egg",
				search = false
			}
		)
		BES:Create(
			"Toggle",
			"Auto Open Egg x1",
			function(state)
				shared.togglex1 = state
		end,
			{
				default = false,
			}
		)
		BES:Create(
			"Toggle",
			"Auto Open Egg x3",
			function(state)
				shared.togglex3 = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(2) do
				if shared.togglex1 then
					if _G.EggSelected ~= nil then
						Remote[21]:FireServer(10,_G.EggSelected,"Mono")
					end
				end
				if shared.togglex3 then
					if _G.EggSelected ~= nil then
						Remote[21]:FireServer(10,_G.EggSelected,"Triple")
					end
				end
			end
		end)
	local OS = PetModule:CreateSection("Other Stuff")
		OS:Create(
			"Toggle",
			"Auto Evolve",
			function(state)
				shared.toggleAEV = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(0.5) do
				if shared.toggleAEV then
					Remote[3]:FireServer(7)
				end
			end
		end)
local Teleport = main:CreateCategory("Teleport")
		local TS = Teleport:CreateSection("Teleport Stuff")
			TS:Create(
				"DropDown",
				"Choose a Location", 
				function(current)
					print("Selected to:", current)
					if current == "Home" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-170, 143, -26)
					elseif current == "Mystic" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-169, 122, -2605)
					elseif current == "Unknown" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(31, 92, -6384)
					elseif current == "Tundra" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89, 92, -13964)
					elseif current == "Thunder" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-32, 92, -18520)
					elseif current == "Inferno" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(24, 92, -29225)
					elseif current == "Void" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(411, 92, -38953)
					elseif current == "Dragon" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(352, 119, -51537)
					end
				end,
				{
					options = {
						"Home", "Mystic", "Unknown", "Tundra", "Thunder", "Inferno", "Void", "Dragon"
					},
					-- Optional
					default = "Choose a Location",
					search = false
				}
			)
			TS:Create(
				"DropDown",
				"Choose a Player", 
				function(current)
					print("Selected to:", current)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[current].Character.HumanoidRootPart.CFrame
				end,
				{
					playerlist = true,
					default = "Choose a Player",
					search = true
				}
			)

local PlayerStuff = main:CreateCategory("Local Player")
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
				min = game.Players.LocalPlayer.Character.Humanoid.HipHeight,
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
		PS:Create(
			"Button",
			"Copy Location",
			function()
				local function RoundNumber(Number, Divider)
					Divider = Divider or 1
					return (math.floor((Number/Divider)+0.5)*Divider)
				end
				syn.write_clipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. tostring(Vector3.new(RoundNumber(game.Players.LocalPlayer.Character.Head.Position.X,1),RoundNumber(game.Players.LocalPlayer.Character.Head.Position.Y-1.5,1),RoundNumber(game.Players.LocalPlayer.Character.Head.Position.Z,1))) .. ")")
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
			Miscsection:Create(
				"Button",
				"Use All Codes",
				function()
					local codes = { 
						"RELEASE", "DRAGONS", "1klikes", "VOIDISLAND"
					}
					for i,v in pairs(codes) do
						Remote[10]:FireServer(v)
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

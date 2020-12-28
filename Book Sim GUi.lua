-- Anti AFK

local Virtual = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	Virtual:CaptureController()
	Virtual:ClickButton2(Vector2.new())
	wait(2)
end)

local library = loadstring(game:HttpGet("https://zypher.wtf/UI-Lib"))()
local main = library:CreateMain({
	projName = "ScreenGui",
	Resizable = true,
	MinSize = UDim2.new(0,400,0,400),
	MaxSize = UDim2.new(0,750,0,500),
})

local Home = main:CreateCategory("Home")
	local Tittle = Home:CreateSection("Book Simulator")
	local H1 = Home:CreateSection("Update logs V1.0:")
		H1:Create(
			"Textlabel",
			"+ All"
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

local category = main:CreateCategory("Function")
	local AS = category:CreateSection("Auto Stuff")
		AS:Create(
			"Toggle",
			"Auto Book",
			function(state)
				print("Current state:", state)
				shared.ToggleAB = state
			end,
			{
				default = false,
			}
		)
		AS:Create(
			"Toggle",
			"Auto Sell",
			function(state)
				print("Current state:", state)
				shared.ToggleAS = state
				if state then
					local args = {
						[1] = "Sell2",
						[2] = {
							["Currency"] = "Brains"
						}
					}
					game:GetService("ReplicatedStorage").sendToServer:FireServer(unpack(args))
				end
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(0.25) do
				if shared.ToggleAB then
					local Book = game.Players.LocalPlayer.Backpack:FindFirstChild("Book") or game.Players.LocalPlayer.Character:FindFirstChild("Book")
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(Book)
					Book:Activate()
				end
				if shared.ToggleAS then
					local args = {
						[1] = "Sell",
						[2] = {
							["Currency"] = "Brains"
						}
					}
					game:GetService("ReplicatedStorage").sendToServer:FireServer(unpack(args))            
				end
			end
		end)
	local ABS = category:CreateSection("Auto Buy Stuff")
		ABS:Create(
			"Toggle",
			"Auto Buy Brains",
			function(state)
				print("Current state:", state)
				shared.ToggleABB = state
			end,
			{
				default = false,
			}
		)
		ABS:Create(
			"Toggle",
			"Auto Buy Ranks",
			function(state)
				print("Current state:", state)
				shared.ToggleABR = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(1) do
				if shared.ToggleABB then
					for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GameInterface.ItemShop.ItemSelection.ScrollingFrame:GetChildren()) do wait(0.6)
						if v.Name == "Infinite" or v.Name == "UIGridLayout" then
						else
							local args = {
								[1] = "Buy",
								[2] = {
									["Item"] = v.Name,
									["Type"] = "Brains"
								}
							}
							game:GetService("ReplicatedStorage").sendToServer:FireServer(unpack(args))
						end
					end
				end
				if shared.ToggleABR then
					for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.GameInterface.ItemShop.ItemSelectionRanks.ScrollingFrame:GetChildren()) do wait(0.6)
						if v.Name == "Infinite" or v.Name == "UIGridLayout" then
						else
							local args = {
								[1] = "Buy",
								[2] = {
									["Item"] = "Coal",
									["Type"] = "Ranks"
								}
							}
							game:GetService("ReplicatedStorage").sendToServer:FireServer(unpack(args))
						end
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
			Miscsection:Create(
				"Button",
				"Use All Codes",
				function()
					local codes = { 
						"freecoins","10kvisits","Jujutsu","Group","Trading","Server","freebee","christmas"
					}
					warn("!! CODE LIST !!")
					redem_code = game:GetService("ReplicatedStorage").Code
					for i,v in pairs(codes) do
						redem_code:InvokeServer(v)
						print(i,")",v)
					end
					warn("All Codes Used")
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

-- Anti AFK

local Virtual = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
Virtual:CaptureController()
Virtual:ClickButton2(Vector2.new())
wait(2)
end)

local library = loadstring(game:HttpGet("https://pastebin.com/raw/H5u3dYwA"))()

local main = library:CreateMain({
	projName = "ScreenGui",
	Resizable = true,
	MinSize = UDim2.new(0,400,0,400),
	MaxSize = UDim2.new(0,750,0,500),
})
local Home = main:CreateCategory("Home")
	local Tittle = Home:CreateSection("Soda Legends")
	local H1 = Home:CreateSection("Update logs V2.0:")
		H1:Create(
			"Textlabel",
			"+ New UI"
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
		
local Fnc = main:CreateCategory("Function")
	local AS = Fnc:CreateSection("Auto Stuff")
		AS:Create(
			"Toggle",
			"Auto Click (normal)",
			function(state)
				print("Current state:", state)
				shared.Toggle_AutoClick_Normal = state
			end,
			{
				default = false,
			}
		)
		AS:Create(
			"Toggle",
			"Auto Click (Fast)",
			function(state)
				print("Current state:", state)
				shared.Toggle_AutoClick_Fast = state
			end,
			{
				default = false,
			}
		)
		AS:Create(
			"Toggle",
			"Auto Click (Very Fast)",
			function(state)
				print("Current state:", state)
				shared.Toggle_AutoClick_VeryFast = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait() do
				if shared.Toggle_AutoClick_Normal then
					game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.PlayerClicked:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.ClickButton.ClickFireFunction)
				end
				if shared.Toggle_AutoClick_Fast then
					for i = 1,3 do
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.PlayerClicked:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.ClickButton.ClickFireFunction)
					end
				end
				if shared.Toggle_AutoClick_VeryFast then
					for i = 1,10 do
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.PlayerClicked:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.ClickButton.ClickFireFunction)
					end
				end
			end
		end)
		AS:Create(
			"Toggle",
			"Auto Sell x10",
			function(state)
				print("Current state:", state)
				shared.Toggle_AutoSell = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(0.5) do
				if shared.Toggle_AutoSell then
					local sell = game:GetService("Workspace").Russo.Sell.HIT
					local me = game.Players.LocalPlayer.Character.HumanoidRootPart
					sell.CFrame = me.CFrame
					wait()
					sell.CFrame = CFrame.new(-937.21, -31.7061, 1355.38)
				end
			end
		end)


local EventFnc = main:CreateCategory("Event Function")
	local ES = EventFnc:CreateSection("Event Stuff")
		ES:Create(
			"Button",
			"Teleport To Christmas Event",
			function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3434, 123, 825)
			end,
			{
				animated = true,
			}
		)			
		ES:Create(
			"Toggle",
			"Auto Collect Candy",
			function(state)
				print("Current state:", state)
				shared.Toggle_AutoCollect = state
			end,
			{
				default = false,
			}
		)
		ES:Create(
			"Toggle",
			"Auto Collect House",
			function(state)
				print("Current state:", state)
				shared.Toggle_AutoHouseEvent = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(1) do
				if shared.Toggle_AutoCollect then
					for i,v in pairs(game:GetService("Workspace").Event1.PickUpCandy:GetDescendants()) do
						if v.Name == "MeshPart" or v.Name == "Head" then
						   v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						   wait()
						   v.CFrame = CFrame.new(0,0,0)
						end
					end
				end
				if shared.Toggle_AutoHouseEvent then
					for i,v in pairs(game:GetService("Workspace").Event1.HouseEvents:GetChildren()) do
						v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						wait()
						v.CFrame = CFrame.new(0,0,0)
					end
				end
			end
		end)
	local EBS = EventFnc:CreateSection("Event Buy Stuff")
		EBS:Create(
			"DropDown",
			"Choose For Auto Buy", 
			function(current)
				print("Selected to:", current)
				_G.EventSelected = current
			end,
			{
				options = {
					"2x Fizz (Boost)",
					"2x Hatch Speed (Boost)",
					"2x Candy Canes (Boost)",
					"Candy Cane Duo (Pet)",
					"Santa Plushie (Pet)",
					"GTMaze Plushie (Pet)"
				},
				-- Optional
				default = "Choose For Auto Buy",
				search = true
			}
		)
		EBS:Create(
			"Toggle",
			"Auto Buy",
			function(state)
				print("Current state:", state)
				shared.Toggle_AutoBuyEvent = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait() do
				if shared.Toggle_AutoBuyEvent then
					if _G.EventSelected == "2x Fizz (Boost)" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.EventShop:FireServer("BoostFizz")
					elseif _G.EventSelected == "2x Hatch Speed (Boost)" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.EventShop:FireServer("BoostHatch")
					elseif _G.EventSelected == "2x Candy Canes (Boost)" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.EventShop:FireServer("BoostCandy")
					elseif _G.EventSelected == "Candy Cane Duo (Pet)" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.EventShop:FireServer("Pet")
					elseif _G.EventSelected == "Santa Plushie (Pet)" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.EventShop:FireServer("Pet1")
					elseif _G.EventSelected == "GTMaze Plushie (Pet)" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.EventShop:FireServer("Pet2")
					end
				end
			end
		end)

	local ABEE = EventFnc:CreateSection("Auto Buy Event Egg Stuff")
		ABEE:Create(
			"DropDown",
			"Choose An Egg", 
			function(current)
				print("Selected to:", current)
				_G.EventEggSelected = current
			end,
			{
				options = {
					"Festive",
					"Jolly",
					"Mint",
					"Frosty",
					"2020",
				},
				-- Optional
				default = "Choose An Egg",
				search = true
			}
		)
		ABEE:Create(
			"Toggle",
			"Auto Buy Egg",
			function(state)
				print("Current state:", state)
				shared.Toggle_AutoBuyEventEgg = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait() do
				if shared.Toggle_AutoBuyEventEgg then
					if _G.EventEggSelected == "Festive" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Festive","Buy1")
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3565, 100, 505)
					elseif _G.EventEggSelected == "Jolly" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Jolly","Buy1")
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3557, 100, 519)
					elseif _G.EventEggSelected == "Mint" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Mint","Buy1")
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3548, 100, 532)
					elseif _G.EventEggSelected == "Frosty" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Frosty","Buy1")
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3538, 100, 549)
					elseif _G.EventEggSelected == "2020" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("2020","Buy1")
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64, 3, -69)
					end
				end
			end
		end)


local AB = main:CreateCategory("Auto Buy")
	local ABE = AB:CreateSection("Auto Buy Egg Stuff")
		ABE:Create(
			"DropDown",
			"Choose An Egg", 
			function(current)
				print("Selected to:", current)
				_G.EggSelected = current
			end,
			{
				options = {
					"Common",
					"Rare",
					"Party",
					"Winter",
					"Lego",
					"Lava",
					"Candy",
					"Mushroom",
					"Robot",
				},
				-- Optional
				default = "Choose An Egg",
				search = true
			}
		)
		ABE:Create(
			"Toggle",
			"Auto Buy Egg",
			function(state)
				print("Current state:", state)
				shared.Toggle_AutoBuyEgg = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(0.5) do
				if shared.Toggle_AutoBuyEgg then
					if _G.EggSelected == "Common" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Common","Buy1")
						game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(165.493729, 4.10719824, -158.107574)
					elseif _G.EggSelected == "Rare" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Rare","Buy1")
						game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(175.665466, 3.56050277, -145.146088)
					elseif _G.EggSelected == "Party" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Party","Buy1")
						game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(52.8232269, 4.46898174, -81.7460632)	
					elseif _G.EggSelected == "Winter" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Winter","Buy1")
						game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(55.9273567, -28.8611717, 912.823425)
					elseif _G.EggSelected == "Lego" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Lego","Buy1")
						game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(58.0512123, -27.9179363, 2979.90088)
					elseif _G.EggSelected == "Lava" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Lava","Buy1")
						game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(53.441597, -28.861166, 1901.4436)
					elseif _G.EggSelected == "Candy" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Candy","Buy1")
						game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(57.751358, -28.861166, 4400.5415)
					elseif _G.EggSelected == "Mushroom" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Mushroom","Buy1")
						game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(56.2021103, -28.861166, 5737.10938)
					elseif _G.EggSelected == "Robot" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Robot","Buy1")
						game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(60.2214546, -27.9178886, 7184.71094)
					end
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
				if current == "Spawn" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121, 3, -99)
				elseif current == "Winter World" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17, -29, 913)
				elseif current == "Lava World" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -29, 1907)
				elseif current == "Brick World" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25, -29, 2986)
				elseif current == "Candy World" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(26, -29, 4410)
				elseif current == "MushRoom World" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10, -29, 5748)
				elseif current == "Robot World" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1, -29, 7178)
				elseif current == "Russo World" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-978, -29, 1391)
				end
			end,
			{
				options = {
					"Spawn", "Winter World", "Lava World", "Brick World", "Candy World", "MushRoom World", "Robot World", "Russo World"
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
					for i,v in pairs(game:GetService("Players").LocalPlayer.Codes:GetChildren()) do
						game:GetService("ReplicatedStorage").GetCode:FireServer(v.Name)
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

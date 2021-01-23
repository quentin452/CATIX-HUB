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
		AS:Create(
			"Toggle",
			"Auto Click (OP, SPAM BUTTON)",
			function(state)
				shared.Toggle_AutoClick_VeryFastOP = state
				spawn(function()
					while wait() do
						if shared.Toggle_AutoClick_VeryFastOP then
							game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.PlayerClicked:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.ClickButton.ClickFireFunction)
						end
					end
				end)
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
			"Teleport To Carnival Event",
			function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2738, -11, -1191)
			end,
			{
				animated = true,
			}
		)			
		ES:Create(
			"Toggle",
			"Auto Collect Ticket",
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
			"Auto Spin Wheel",
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
					game:GetService("ReplicatedStorage").SpinWheel:FireServer("Normal")
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
					"2x Tickets (Boost)",
					"Teddy Bear (Pet)",

				},
				-- Optional
				default = "Choose For Auto Buy",
				search = false
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
					elseif _G.EventSelected == "2x Tickets (Boost)" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.EventShop:FireServer("BoostTickets")
					elseif _G.EventSelected == "Teddy Bear (Pet)" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteEvent.EventShop:FireServer("Pet")
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
					"Clown",
					"Sweet",
					"Magic",
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
					if _G.EventEggSelected == "Clown" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Clown","Buy1")
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2772, -11, -1390)
					elseif _G.EventEggSelected == "Sweet" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Sweet","Buy1")
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2788, -11, -1385)
					elseif _G.EventEggSelected == "Magic" then
						game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer("Magic","Buy1")
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2807, -11, -1376)
					end
				end
			end
		end)


		local Eggs = main:CreateCategory("Eggs")
		local EggsS = Eggs:CreateSection("Eggs Stuff")
	  local DropDownName = EggsS:Create(
				 "DropDown",
				 "Select Eggs", 
				 function(current)
				   _G.EggsNtm = current
				 end,
				 {
					 options = {
						 "",
					 },
					 -- Optional
					 default = "Select Eggs",
					 search = false
				 }
			 )
			 local tablename = {}
			 spawn(function()
				 while wait(1) do 
					 tablename = {}
					 for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do 
						 table.insert(tablename, v.Name)
					 end
					 DropDownName:SetDropDownList({options = tablename})
					 if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
	 
				 end end
			 end)
	 
			  EggsS:Create(
		 "Toggle",
		 "Auto Buy Eggs",
		 function(state)
			 shared.toggle2 = state
		 end,
		 {
			 default = false,
		 }
	 )
	 spawn(function()
		 while wait() do
			 if shared.toggle2 then
			 if _G.EggsNtm ~= nil then
				game:GetService("ReplicatedStorage").GameClient.Events.RemoteFunction.BuyEgg:InvokeServer(_G.EggsNtm,"Buy1") 
				local me = game.Players.LocalPlayer.Character
	 local pbosd = game:GetService("Workspace").Eggs[_G.EggsNtm].View
	 me.HumanoidRootPart.CFrame = pbosd.CFrame + Vector3.new(0,0,0)
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

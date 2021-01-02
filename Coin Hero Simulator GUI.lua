local library = loadstring(game:HttpGet("https://pastebin.com/raw/H5u3dYwA"))()

	local main = library:CreateMain({
		projName = "ScreenGui",
		Resizable = true,
		MinSize = UDim2.new(0,400,0,400),
		MaxSize = UDim2.new(0,750,0,500),
	})

	local Home = main:CreateCategory("Home")
		local Tittle = Home:CreateSection("Coins Hero Simulator")
		local H1 = Home:CreateSection("Update logs v2.1")
			H1:Create(
				"Textlabel",
				"Auto Equip,UnEquip,Evolve,Delete Pet"
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
				"Auto Coins",
				function(state)
					print("Current state:", state)
					shared.toggleAC = state
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
					shared.toggleAS = state
					if state then
						game:GetService("Players").LocalPlayer.PlayerGui.Notificaciones.Enabled = false
					else
						game:GetService("Players").LocalPlayer.PlayerGui.Notificaciones.Enabled = true
					end
				end,
				{
					default = false,
				}
			)
			AS:Create(
				"Toggle",
				"Auto Op Cosmos (Fills your backpack 100%)",
				function(state)
					print("Current state:", state)
					shared.toggleAOC = state
					game:GetService("ReplicatedStorage").Remotes.Sell:FireServer()
				end,
				{
					default = false,
				}
			)
			spawn(function()
				while wait() do
					if shared.toggleAC then
						game:GetService("ReplicatedStorage").CoinToPlayer:FireServer()
					end
					if shared.toggleAS then
						game:GetService("ReplicatedStorage").Remotes.Sell:FireServer()
					end
				end
			end)
			spawn(function()
				while wait(0.5) do
					if shared.toggleAOC then
						game:GetService("ReplicatedStorage").Remotes.Skill:FireServer("Cosmos",{math.huge,0,0,0})
					end
				end
			end)
			
	local PetFunc = main:CreateCategory("Pet Function")
        local PetES = PetFunc:CreateSection("Pet Equip Stuff")
			PetES:Create(
				"Toggle",
				"Equip Best Pets",
				function(state)
					print("Current state:", state)
					shared.togglePetFunc_EAP = state
				end,
				{
					default = false,
				}
			)
			PetES:Create(
				"Toggle",
				"UnEquip All Pets",
				function(state)
					print("Current state:", state)
					shared.togglePetFunc_UAP = state
				end,
				{
					default = false,
				}
			)
			PetES:Create(
				"Toggle",
				"Auto Evolve Pets",
				function(state)
					print("Current state:", state)
					shared.togglePetFunc_AEP = state
				end,
				{
					default = false,
				}
			)
			spawn(function()
				while wait(1) do
					if shared.togglePetFunc_UAP then
						for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pets.Inv.Menu.Scroll:GetChildren()) do
							if v.Name == "Grid" then
							else
								game:GetService("ReplicatedStorage").Remotes.PetManager:FireServer("Unequip",v.PetInfo.ID.Value)
							end
						end
					end
					if shared.togglePetFunc_EAP then
						for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pets.Inv.Menu.Scroll:GetChildren()) do
							if v.Name == "Grid" then
							else
								game:GetService("ReplicatedStorage").Remotes.PetManager:FireServer("Equip",v.PetInfo.ID.Value)
							end
						end
					end
					if shared.togglePetFunc_AEP then
						for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pets.Inv.Menu.Scroll:GetChildren()) do
							if v.Name == "Grid" then
							else
								local args = {
									[1] = "Upgrade",
									[2] = 1,
									[3] = game:GetService("ReplicatedStorage").Data[game.Players.LocalPlayer.Name].Pets.Storage[tostring(v.PetInfo.ID.Value)]
								}
								game:GetService("ReplicatedStorage").Remotes.PetManager:FireServer(unpack(args))
							end
						end
					end
				end
            end)
        local ADPS = PetFunc:CreateSection("Auto Delete Pets Stuff")
            ADPS:Create(
                "DropDown",
                "Choose a Pet Type", 
                function(current)
                    print("Selected to:", current)
                    _G.PETTODELETSELECTED = current
                end,
                {
                    options = {
                        "Common", "Uncommon", "Rare", "Epic", "Mythical", "Beast", "Radiant", "Glorious", "Legendary"
                    },
                    -- Optional
                    default = "Choose a Pet Type",
                    search = false
                }
            )
			ADPS:Create(
				"Toggle",
				"Auto Delete",
				function(state)
					print("Current state:", state)
					shared.toggleADPS = state
				end,
				{
					default = false,
				}
			)
			spawn(function()
				while wait(1) do
                    if shared.toggleADPS then
                        if _G.PETTODELETSELECTED ~= nil then
                            for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Pets.Inv.Menu.Scroll:GetChildren()) do
                                if v.Name == "Grid" then
                                else
                                    if v.PetInfo.Type.Value == _G.PETTODELETSELECTED then
                                        game:GetService("ReplicatedStorage").Remotes.PetManager:FireServer("Delete",v.PetInfo.ID.Value)
                                    end
                                end
                            end
                        end
                    end
                end
            end)

	local AB = main:CreateCategory("Auto Buy")	
		local ABS = AB:CreateSection("Auto Buy Stuff")
			ABS:Create(
				"Toggle",
				"Auto Buy BackPacks",
				function(state)
					print("Current state:", state)
					shared.toggleABBP = state
				end,
				{
					default = false,
				}
			)
			ABS:Create(
				"Toggle",
				"Auto Buy Speed Skills",
				function(state)
					print("Current state:", state)
					shared.toggleABSS = state
				end,
				{
					default = false,
				}
			)
			ABS:Create(
				"Toggle",
				"Auto Buy Thunder Skills",
				function(state)
					print("Current state:", state)
					shared.toggleABTS = state
				end,
				{
					default = false,
				}
			)
			ABS:Create(
				"Toggle",
				"Auto Buy Cosmos Skills",
				function(state)
					print("Current state:", state)
					shared.toggleABCS = state
				end,
				{
					default = false,
				}
			)
			ABS:Create(
				"Toggle",
				"Auto Buy Twister Skills",
				function(state)
					print("Current state:", state)
					shared.toggleABTTS = state
				end,
				{
					default = false,
				}
			)
			ABS:Create(
				"Toggle",
				"Auto Buy Tremor Skills",
				function(state)
					print("Current state:", state)
					shared.toggleABTRS = state
				end,
				{
					default = false,
				}
			)
			ABS:Create(
				"Toggle",
				"Auto Buy Summoner Skills",
				function(state)
					print("Current state:", state)
					shared.toggleABSRS = state
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
					shared.toggleABR = state
				end,
				{
					default = false,
				}
			)
			spawn(function()
				while wait() do
					if shared.toggleABBP then
						game:GetService("ReplicatedStorage").Remotes.BuyAllBackpacks:InvokeServer()
					end
					if shared.toggleAS then
						game:GetService("ReplicatedStorage").Remotes.Sell:FireServer()
					end
					if shared.toggleABSS then
						game:GetService("ReplicatedStorage").Remotes.BuyAllSkills:InvokeServer("Speed")
					end
					if shared.toggleABTS then
						game:GetService("ReplicatedStorage").Remotes.BuyAllSkills:InvokeServer("Thunder")
					end
					if shared.toggleABCS then
						game:GetService("ReplicatedStorage").Remotes.BuyAllSkills:InvokeServer("Cosmos")
					end
					if shared.toggleABTTS then
						game:GetService("ReplicatedStorage").Remotes.BuyAllSkills:InvokeServer("Twister")
					end
					if shared.toggleABTRS then
						game:GetService("ReplicatedStorage").Remotes.BuyAllSkills:InvokeServer("Tremor")
					end
					if shared.toggleABSRS then
						game:GetService("ReplicatedStorage").Remotes.BuyAllSkills:InvokeServer("Summoner")
					end
					if shared.toggleABR then
						game:GetService("ReplicatedStorage").Remotes.Rank:InvokeServer()
					end
				end
			end)

		local ABE = AB:CreateSection("Auto Buy Egg Stuff")
			ABE:Create(
				"DropDown",
				"Choose an Egg", 
				function(current)
					print("Selected to:", current)
					_G.EggSelected = current
				end,
				{
					options = {
						"Chiken Egg (Apprentice World)", "Unicorn Egg (Apprentice World)", "Bull Egg (Apprentice World)", "Dragon Egg (Apprentice World)", "Alien Egg (Apprentice World)", "Candy Egg (Apprentice World)", "Ice Egg (Apprentice World)",
						"Master Egg (Master's World)", "Pirate Egg (Master's World)", "Atlantis Egg (Master's World)", "Zombie Egg (Master's World)"
					},
					-- Optional
					default = "Choose an Egg",
					search = false
				}
			)
			ABE:Create(
				"Toggle",
				"Auto Buy Egg",
				function(state)
					print("Current state:", state)
					shared.toggleABE = state
				end,
				{
					default = false,
				}
			)
			spawn(function()
				while wait() do
					if shared.toggleABE then
						if _G.EggSelected == "Chiken Egg (Apprentice World)" then
							game:GetService("ReplicatedStorage").Remotes.BuyPets:InvokeServer(1)
						elseif _G.EggSelected == "Unicorn Egg (Apprentice World)" then
							game:GetService("ReplicatedStorage").Remotes.BuyPets:InvokeServer(2)
						elseif _G.EggSelected == "Bull Egg (Apprentice World)" then
							game:GetService("ReplicatedStorage").Remotes.BuyPets:InvokeServer(3)
						elseif _G.EggSelected == "Dragon Egg (Apprentice World)" then
							game:GetService("ReplicatedStorage").Remotes.BuyPets:InvokeServer(4)
						elseif _G.EggSelected == "Alien Egg (Apprentice World)" then
							game:GetService("ReplicatedStorage").Remotes.BuyPets:InvokeServer(5)
						elseif _G.EggSelected == "Candy Egg (Apprentice World)" then
							game:GetService("ReplicatedStorage").Remotes.BuyPets:InvokeServer(6)
						elseif _G.EggSelected == "Ice Egg (Apprentice World)" then
							game:GetService("ReplicatedStorage").Remotes.BuyPets:InvokeServer(7)
						elseif _G.EggSelected == "Master Egg (Master's World)" then
							game:GetService("ReplicatedStorage").Remotes.BuyPets:InvokeServer(8)
						elseif _G.EggSelected == "Pirate Egg (Master's World)" then
							game:GetService("ReplicatedStorage").Remotes.BuyPets:InvokeServer(9)
						elseif _G.EggSelected == "Atlantis Egg (Master's World)" then
							game:GetService("ReplicatedStorage").Remotes.BuyPets:InvokeServer(10)
						elseif _G.EggSelected == "Zombie Egg (Master's World)" then
							game:GetService("ReplicatedStorage").Remotes.BuyPets:InvokeServer(11)
						end				
					end
				end
			end)

	local Teleport = main:CreateCategory("Teleport")
		local TS = Teleport:CreateSection("Teleport Stuff")
			TS:Create(
				"DropDown",
				"Choose a Location (Apprentice World)", 
				function(current)
					print("Selected to:", current)
					if current == "Spawn" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(131, 2, 57)
					elseif current == "VIP" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16, 2, 88)
					elseif current == "Unicorn's Zone" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(164, 2, 268)
					elseif current == "Bull's Zone" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(140, 2, 392)
					elseif current == "Dragon's Zone" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141, 2, 547)
					elseif current == "Alien's Zone" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143, 2, 709)
					elseif current == "Candy's Zone" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(161, 2, 924)
					elseif current == "Ice Zone" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(162, 2, 1058)
					end
				end,
				{
					options = {
						"Spawn", "VIP", "Unicorn's Zone","Bull's Zone","Dragon's Zone","Alien's Zone","Candy's Zone","Ice Zone"
					},
					-- Optional
					default = "Choose a Location (Apprentice World)",
					search = false
				}
			)
			TS:Create(
				"DropDown",
				"Choose a Location (Master's World)", 
				function(current)
					print("Selected to:", current)
					if current == "Spawn" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5942, 3, 6374)
					elseif current == "Pirates's Zone" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5955, 2, 6509)
					elseif current == "Atlantis Zone" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5932, 2, 6643)
					elseif current == "Zombie's Zone" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5948, 2, 6799)	
					end
				end,
				{
					options = {
						"Spawn", "Pirates's Zone", "Atlantis Zone", "Zombie's Zone"
					},
					-- Optional
					default = "Choose a Location (Master's World)",
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
						local codes = { 
							"5kCash","10Million", "Manucraft"
						}
						warn("!! CODE LIST !!")
						redem_code = game:GetService("ReplicatedStorage").Remotes.Code
						for i,v in pairs(codes) do
							redem_code:FireServer(v)
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

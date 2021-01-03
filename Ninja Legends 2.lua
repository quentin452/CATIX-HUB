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
	local Tittle = Home:CreateSection("Ninja Legends 2")
	local H1 = Home:CreateSection("Update logs V1.3:")
		H1:Create(
			"Textlabel",
			"+ Auto Collect Fixed + Auto Collect Rings"
		)
		H1:Create(
			"Textlabel",
			"+ Auto Delete Pets"
		)
		H1:Create(
			"Textlabel",
			"+ Auto Spin Fortune Wheel"
		)
		H1:Create(
			"Textlabel",
			"+ Auto Collect Tokens After Boss Killed"
		)
		H1:Create(
			"Textlabel",
			"+ Fixed A Few Problems"
		)
		H1:Create(
			"Textlabel",
			"+ Auto Good/Bad Karma"
		)
		H1:Create(
			"Textlabel",
			"+ Hide Name"
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
	local FUNC = Function:CreateSection("Function Stuff")
		FUNC:Create(
			"Toggle",
			"Auto Swing",
			function(state)
				print("Current state:", state)
				shared.toggleASwing = state
			end,
			{
				default = false,
			}
		)
		FUNC:Create(
			"Toggle",
			"Auto Sell",
			function(state)
				print("Current state:", state)
				shared.toggleASell = state
			end,
			{
				default = false,
			}
		)
		FUNC:Create(
			"Toggle",
			"Auto Collect Coins",
			function(state)
				print("Current state:", state)
				shared.toggleACC = state
			end,
			{
				default = false,
			}
		)
		FUNC:Create(
			"Toggle",
			"Auto Collect Shards",
			function(state)
				print("Current state:", state)
				shared.toggleACS = state
			end,
			{
				default = false,
			}
		)
		FUNC:Create(
			"Toggle",
			"Auto Collect Rings",
			function(state)
				print("Current state:", state)
				shared.toggleACR = state
			end,
			{
				default = false,
			}
		)
		FUNC:Create(
			"Toggle",
			"Auto Boss (Elemental Cyborg)",
			function(state)
				print("Current state:", state)
				shared.toggleABEC = state
			end,
			{
				default = false,
			}
		)
		FUNC:Create(
			"Toggle",
			"Auto KOTH",
			function(state)
				print("Current state:", state)
				shared.toggleAKOTH = state
			end,
			{
				default = false,
			}
		)
		FUNC:Create(
			"Toggle",
			"Auto Good Karma",
			function(state)
				print("Current state:", state)
				if state then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1175, 124, 2209)
				end
				shared.toggleAGK = state
			end,
			{
				default = false,
			}
		)
		FUNC:Create(
			"Toggle",
			"Auto Bad Karma",
			function(state)
				print("Current state:", state)
				if state then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1175, 124, 2209)
				end
				shared.toggleABK = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait() do
				if shared.toggleAGK then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
						for i, v in pairs(game:GetService("Players"):GetChildren()) do
							if v.Name ~= game:GetService("Players").LocalPlayer.Name then
								v.Character.UpperTorso.Anchored = true
								v.Character.UpperTorso.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(math.random(-10,10),0,math.random(-10,10))
							end
						end
						game:GetService("Players").LocalPlayer.saberEvent:FireServer("swingBlade")
						for _, v in pairs(game:GetService("Workspace").soulPartsFolder:GetChildren()) do
							if v.Name == "soulPart" then
								if v.collectPlayers:FindFirstChild(game:GetService("Players").LocalPlayer.Name) then
									if v:FindFirstChild("isGoodKarma") then
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
										game:GetService("Players").LocalPlayer.saberEvent:FireServer("collectSoul", v)
									end
								end
							end
						end
					end
				end
			end
		end)
		spawn(function()
			while wait() do
				if shared.toggleABK then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
						for i, v in pairs(game:GetService("Players"):GetChildren()) do
							if v.Name ~= game:GetService("Players").LocalPlayer.Name then
								v.Character.UpperTorso.Anchored = true
								v.Character.UpperTorso.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position+Vector3.new(math.random(-10,10),0,math.random(-10,10))
							end
						end
						game:GetService("Players").LocalPlayer.saberEvent:FireServer("swingBlade")
						for _, v in pairs(game:GetService("Workspace").soulPartsFolder:GetChildren()) do
							if v.Name == "soulPart" then
								if v.collectPlayers:FindFirstChild(game:GetService("Players").LocalPlayer.Name) then
									if not v:FindFirstChild("isGoodKarma") then
										game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
										game:GetService("Players").LocalPlayer.saberEvent:FireServer("collectSoul", v)
									end
								end
							end
						end
					end
				end
			end
		end)
		spawn(function()
			while wait() do
				if shared.toggleASwing then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
						game:GetService("Players").LocalPlayer.saberEvent:FireServer("swingBlade")
					end
				end
			end
		end)
		spawn(function()
			while wait() do
				if shared.toggleASell then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
						for i,v in pairs(game:GetService("Workspace").sellAreaCircles:GetChildren()) do
							if v.whichPlanet.Value == "Ground" then
								v.circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								wait()
								v.circleInner.CFrame = CFrame.new(-75.0282, 6314.25, 138.326)
							end
						end
					end
				end
			end
		end)
		spawn(function()
			while wait() do
				if shared.toggleABEC then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
						local boss = game:GetService("Workspace").spawnedBosses["Elemental Cyborg"].HumanoidRootPart
						local me = game.Players.LocalPlayer.Character.HumanoidRootPart
						me.CFrame = boss.CFrame + Vector3.new(0,-31.5,0)
						local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
						if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
							game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
							wait(0.1)
						end
						if game.workspace.bossArenas["Elemental Cyborg"]:FindFirstChild("tokenPart") then
							local args = {
								[1] = "collectToken",
								[2] = {
									["serverTokenPart"] = workspace.bossArenas["Elemental Cyborg"].tokenPart
								}
							}
							game:GetService("ReplicatedStorage").rEvents.tokenEvent:FireServer(unpack(args))
						end
					end
				end
			end
		end)
		spawn(function()
			while wait() do
				if shared.toggleAKOTH then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-355, 173, 12)
					end
				end
			end
		end)
		spawn(function()
			while wait() do
				if shared.toggleACC then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
						for i, v in pairs(game:GetService("Workspace").spawnedCoins:GetDescendants()) do
							if shared.toggleACC then
								if v.Name == "Coin" or v.Name == "Blue Coin" or v.Name == "Green Coin Crate" then
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Base").CFrame
									wait(.09)
								end
							end
						end
					end
				end
			end
		end)
		spawn(function()
			while wait() do
				if shared.toggleACS then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
						for i, v in pairs(game:GetService("Workspace").spawnedCoins:GetDescendants()) do
							if shared.toggleACS then
								if v.Name == "Shard" or v.Name == "Blue Shard" or v.Name == "Red Shard Crate" then
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Base").CFrame
									wait(.09)
								end
							end
						end
					end
				end
			end
		end)
		spawn(function()
			local tween = game:GetService("TweenService")
			local character = game.Players.LocalPlayer.character
			local humanoid = character.HumanoidRootPart
			while wait() do
				if shared.toggleACR then
					game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
					for i,v in pairs(game:GetService("Workspace").Rings:GetDescendants()) do
						if v.Name == "MiddleRing" and shared.toggleACR then
							tween:Create(humanoid, TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
							wait(1)
						end
					end
				end
			end
		end)

local PetModule = main:CreateCategory("Pet Module")
	local ABE = PetModule:CreateSection("Auto Buy Egg")
		ABE:Create(
			"DropDown",
			"Select Eggs", 
			function(current)
				print("Selected to:", current)
				_G.EggSelected = current
			end,
			{
				options = {
					"Electro Orb", "Astral Orb", "Sky Tempest Orb", "Mystic Fusion Orb", "Dark Supernova Orb", "Omega Genesis Orb", "Secret Shadows Orb", "Forgotten Legends Orb"
				},
				-- Optional
				default = "Select Eggs",
				search = false
			}
		)
		ABE:Create(
			"Toggle",
			"Open 1 Egg",
			function(state)
				print("Current state:", state)
				shared.toggleABE1 = state
			end,
			{
				default = false,
			}
		)
		ABE:Create(
			"Toggle",
			"Open 3 Eggs",
			function(state)
				print("Current state:", state)
				shared.toggleABE3 = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(0.2) do
				if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
					if shared.toggleABE1 then
						if _G.EggSelected ~= nil then
							local args = {
								[1] = "openOrb",
								[2] = workspace.petOrbs[_G.EggSelected]
							}
							game:GetService("ReplicatedStorage").rEvents.openOrbRemote:InvokeServer(unpack(args))						
						end
					end
					if shared.toggleABE3 then
						if _G.EggSelected ~= nil then
							local args = {
								[1] = "openOrb",
								[2] = workspace.petOrbs[_G.EggSelected],
								[3] = true
							}
							game:GetService("ReplicatedStorage").rEvents.openOrbRemote:InvokeServer(unpack(args))
												
						end		
					end
					if shared.toggleABEvolve then
						game:GetService("ReplicatedStorage").rEvents.autoEvolveRemote:InvokeServer("autoEvolvePets")
					end
				end
			end
		end)
	local PM = PetModule:CreateSection("Pet Module Stuff")
		PM:Create(
			"Toggle",
			"Auto Delete Basic Pet",
			function(state)
				print("Current state:", state)
				shared.toggleADBP = state
			end,
			{
				default = false,
			}
		)
		PM:Create(
			"Toggle",
			"Auto Delete Advanced Pet",
			function(state)
				print("Current state:", state)
				shared.toggleADAP = state
			end,
			{
				default = false,
			}
		)
		PM:Create(
			"Toggle",
			"Auto Delete Rare Pet",
			function(state)
				print("Current state:", state)
				shared.toggleADRP = state
			end,
			{
				default = false,
			}
		)
		PM:Create(
			"Toggle",
			"Auto Delete Mythical Pet",
			function(state)
				print("Current state:", state)
				shared.toggleADMP = state
			end,
			{
				default = false,
			}
		)
		PM:Create(
			"Toggle",
			"Auto Delete Legend Pet",
			function(state)
				print("Current state:", state)
				shared.toggleADLP = state
			end,
			{
				default = false,
			}
		)
		PM:Create(
			"Toggle",
			"Auto Evolve",
			function(state)
				print("Current state:", state)
				shared.toggleABEvolve = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(0.2) do
				if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
					if shared.toggleADBP then
						for i, v in pairs(game:GetService("Players").LocalPlayer.petsFolder.Basic:GetChildren()) do
							game:GetService("ReplicatedStorage").rEvents.sellPetEvent:FireServer("sellPet", v)
						end
					end
					if shared.toggleADAP then
						for i, v in pairs(game:GetService("Players").LocalPlayer.petsFolder.Advanced:GetChildren()) do
							game:GetService("ReplicatedStorage").rEvents.sellPetEvent:FireServer("sellPet", v)
						end
					end
					if shared.toggleADRP then
						for i, v in pairs(game:GetService("Players").LocalPlayer.petsFolder.Rare:GetChildren()) do
							game:GetService("ReplicatedStorage").rEvents.sellPetEvent:FireServer("sellPet", v)
						end
					end
					if shared.toggleADMP then
						for i, v in pairs(game:GetService("Players").LocalPlayer.petsFolder.Mythical:GetChildren()) do
							game:GetService("ReplicatedStorage").rEvents.sellPetEvent:FireServer("sellPet", v)
						end
					end
					if shared.toggleADLP then
						for i, v in pairs(game:GetService("Players").LocalPlayer.petsFolder.Legend:GetChildren()) do
							game:GetService("ReplicatedStorage").rEvents.sellPetEvent:FireServer("sellPet", v)
						end
					end
					if shared.toggleABEvolve then
						game:GetService("ReplicatedStorage").rEvents.autoEvolveRemote:InvokeServer("autoEvolvePets")
					end
				end
			end
		end)

local AutoBuy = main:CreateCategory("Auto Buy")
	local AB = AutoBuy:CreateSection("Auto Buy Stuff")
		AB:Create(
			"Toggle",
			"Buy Swords",
			function(state)
				print("Current state:", state)
				shared.toggleABS = state
			end,
			{
				default = false,
			}
		)
		AB:Create(
			"Toggle",
			"Buy Crystals",
			function(state)
				print("Current state:", state)
				shared.toggleABC = state
			end,
			{
				default = false,
			}
		)
		AB:Create(
			"Toggle",
			"Buy Skills",
			function(state)
				print("Current state:", state)
				shared.toggleABSkills = state
			end,
			{
				default = false,
			}
		)
		AB:Create(
			"Toggle",
			"Buy Powers",
			function(state)
				print("Current state:", state)
				shared.toggleABP = state
			end,
			{
				default = false,
			}
		)
		AB:Create(
			"Toggle",
			"Buy Rank (Evolution)",
			function(state)
				print("Current state:", state)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 113, 88)
				shared.toggleABRE = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(0.2) do
				if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
					if shared.toggleABS then
						local args = {
							[1] = "buyAllItems",
							[2] = {
								["whichItems"] = "Swords",
								["whichPlanet"] = "Planet Elemental"
							}
						}
						game:GetService("Players").LocalPlayer.saberEvent:FireServer(unpack(args))		
					end
					if shared.toggleABC then
						local args = {
							[1] = "buyAllItems",
							[2] = {
								["whichItems"] = "Crystals",
								["whichPlanet"] = "Planet Elemental"
							}
						}
						game:GetService("Players").LocalPlayer.saberEvent:FireServer(unpack(args))
					end
					if shared.toggleABSkills then
						local args = {
							[1] = "buyAllItems",
							[2] = {
								["whichItems"] = "Skills",
								["whichPlanet"] = "Planet Elemental"
							}
						}
						game:GetService("Players").LocalPlayer.saberEvent:FireServer(unpack(args))
					end
					if shared.toggleABP then
						local args = {
							[1] = "buyAllItems",
							[2] = {
								["whichItems"] = "Powers",
								["whichPlanet"] = "Planet Elemental"
							}
						}
						game:GetService("Players").LocalPlayer.saberEvent:FireServer(unpack(args))
					end
					if shared.toggleABRE then
						for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.itemsShopGui.itemsShopMenu.menus.evolutionsMenu:GetChildren()) do
							if v.Name == "itemButtonFrame" then
								local args = {
									[1] = "buyEvolution",
									[2] = game:GetService("ReplicatedStorage").Evolutions.Ground[tostring(v.whichItem.Value)]
								}
								game:GetService("Players").LocalPlayer.saberEvent:FireServer(unpack(args))
							end
						end
					end
				end
			end
		end)



local Teleport = main:CreateCategory("Teleport")
		local TS = Teleport:CreateSection("Teleport Stuff")
			TS:Create(
				"DropDown",
				"Choose a Planet", 
				function(current)
					print("Selected to:", current)
					if current == "Ground" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 131, 158)
					elseif current == "Secret Island" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2377, 135, 992)
					elseif current == "Planet Zephyr" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9, 1487, 70)
					elseif current == "Planet Inferno" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4, 3077, 99)
					elseif current == "Planet Omega" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4, 4701, 99)
					elseif current == "Planet Elemental" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(62, 6331, 101)
					end
				end,
				{
					options = {
						"Ground", "Secret Island", "Planet Zephyr", "Planet Inferno", "Planet Omega", "Planet Elemental"
					},
					-- Optional
					default = "Choose a Planet",
					search = false
				}
			)
			TS:Create(
				"DropDown",
				"Choose a Training Area", 
				function(current)
					print("Selected to:", current)
					if current == "Ancien Master Blade" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-228, 134, 352)
					elseif current == "Soul Fusion Arena" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310, 141, -191)
					elseif current == "Forgotton Santuary" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1152, 6273, 861)
					elseif current == "Crashed Spaceships" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-192, 127, -152)
					end
				end,
				{
					options = {
						"Ancien Master Blade", "Soul Fusion Arena", "Forgotton Santuary", "Crashed Spaceships"
					},
					-- Optional
					default = "Choose a Training Area",
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
			TS:Create(
				"Button",
				"Unlock All Islands",
				function()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9, 1487, 70)
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4, 3077, 99)
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4, 4701, 99)
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(62, 6331, 101)
				end,
				{
					animated = true,
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
					"Inf Jumps",
					function()
						local mjc = getrawmetatable(game)
						make_writeable(mjc)
						local old_index = mjc.__index
							
						mjc.__index = function(a, b)
							if tostring(a) == "multiJumpCount" then
								if tostring(b) == "Value" then
									return math.huge
								end
							end
							return old_index(a, b)
						end
					end,
					{
						animated = true,
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
								"epicturrets450","waterfall500","newgame500","epictower350", "firstplanet250", "treeninja400", "bossbattle300", "shurikencity500"
							}
							warn("!! CODE LIST !!")
							redem_code = game:GetService("ReplicatedStorage").rEvents.codeRemote
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
					Miscsection:Create(
						"Button",
						"Open All Chests",
						function()
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(129, 123, 274) + Vector3.new(0,10,0)
							wait(0.5)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-334, 123, 217) + Vector3.new(0,10,0)
							wait(0.5)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(90, 1477, 130) + Vector3.new(0,10,0)
							wait(0.5)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86, 3067, 126) + Vector3.new(0,10,0)
							wait(0.5)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(88, 4691, 128) + Vector3.new(0,10,0)
							wait(0.5)
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(87, 6321, 17) + Vector3.new(0,10,0)
							wait(0.5)
						end,
						{
							animated = true,
						}
					)
					Miscsection:Create(
						"Button",
						"Auto Spins Fortune Wheel",
						function()
							local args = {
								[1] = "openFortuneWheel",
								[2] = workspace.FortuneWheels["Fortune Wheel"]
							}
							game:GetService("ReplicatedStorage").rEvents.openFortuneWheelRemote:InvokeServer(unpack(args))							
						end,
						{
							animated = true,
						}
					)
					Miscsection:Create(
						"Button",
						"Hide Popups",
						function()
							game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.statEffectsGui.Enabled
							game:GetService("Players").LocalPlayer.PlayerGui.hoopGui.Enabled = not game:GetService("Players").LocalPlayer.PlayerGui.hoopGui.Enabled						
						end,
						{
							animated = true,
						}
					)
					Miscsection:Create(
						"Button",
						"Hide Name",
						function()
							local plrname = game.Players.LocalPlayer.Name
							workspace[plrname].Head.nameGui:Destroy()
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
							game:GetService("CoreGui")["ScreenGui"].Motherframe.Visible = not game:GetService("CoreGui")["ScreenGui"].Motherframe.Visible
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
		

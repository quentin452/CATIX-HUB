local library = loadstring(game:HttpGet("https://pastebin.com/raw/H5u3dYwA"))()
local main = library:CreateMain("zypher")

local Home = main:CreateCategory("Home")
	local Tittle = Home:CreateSection("Saber Simulator")
	local H1 = Home:CreateSection("Update logs V2.0.1:")
		H1:Create(
			"Textlabel",
			"+ Update 60 Added"
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
			"Copy Discord Link (https://discord.gg/x2hM4M5xWj)",
			function()
			setclipboard("https://discord.gg/x2hM4M5xWj")
			end,
			{
				animated = true,
			}
		)
		
local Function = main:CreateCategory("Function")
	local AS = Function:CreateSection("Auto Stuff")
		AS:Create(
			"Toggle",
			"Auto Swing",
			function(state)
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
				shared.toggleASell = state
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(535, 184, 152)
			end,
			{
				default = false,
			}
		)
		AS:Create(
			"Toggle",
			"Auto Flags",
			function(state)
				shared.toggleAFlags = state
			end,
			{
				default = false,
			}
		)
		AS:Create(
			"Toggle",
			"Auto KOTH",
			function(state)
				shared.toggleAKOTH = state
			end,
			{
				default = false,
			}
		)
		AS:Create(
			"Toggle",
			"Auto Kill Boss",
			function(state)
				shared.toggleAKillBoss = state
				local BladeName = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(0.25) do
				if shared.toggleAC then
					game:GetService("ReplicatedStorage").Events.Clicked:FireServer()
				end
			end
		end)
		spawn(function()
			while wait(0.25) do
				if shared.toggleASell then
					game:GetService("ReplicatedStorage").Events.Sell:FireServer()
				end
			end
		end)
		spawn(function()
			while wait(0.25) do
				if shared.toggleAFlags then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
						local CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
						for i, v in pairs(game.Workspace.Flags:GetChildren()) do
							if v.OwnerValue.Value ~= game.Players.LocalPlayer.Name then
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Base.CFrame
								repeat
								wait()
								until v.OwnerValue.Value == game.Players.LocalPlayer.Name
								wait(13.5)
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
							end
						end
					end
				end
			end
		end)
		spawn(function()
			while wait(0.25) do
				if shared.toggleAKOTH then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(790, 250, 32)
						wait(1)
					end
				end
			end
		end)
		spawn(function()
			while wait(0.25) do
				if shared.toggleAKillBoss then
					if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
						local me = game.Players.LocalPlayer.Character
						local pbosd = game:GetService("Workspace").Boss.LeftLowerLeg
						me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X, pbosd.Position.Y, pbosd.Position.Z)		
						local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
						game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
						local BladeName = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
						game.ReplicatedStorage.Events.Clicked:FireServer()
						game.Players.LocalPlayer.Character[BladeName].RemoteClick:FireServer()
					end
				end
			end
		end)

	local AS = Function:CreateSection("Collect Stuff")
		AS:Create(
			"Toggle",
			"Auto Collect Coins",
			function(state)
				shared.toggleACCoins = state
			end,
			{
				default = false,
			}
		)
		AS:Create(
			"Toggle",
			"Auto Collect Candy & Present",
			function(state)
				shared.toggleACCandy = state
			end,
			{
				default = false,
			}
        )
        spawn(function()
            local tween = game:GetService("TweenService")
            local character = game.Players.LocalPlayer.character
            local humanoid = character.HumanoidRootPart

			while wait() do
				if shared.toggleACCoins then
                    game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
                    wait(1)
                    for i, v in next, {game.Workspace.CoinsHolder} do
                        pcall(
                            function()
                                if v:FindFirstChild("Coin") then
                                    tween:Create(humanoid, TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = v.Coin.CFrame}):Play()
                                    wait(2)
                                    v.Coin:Destroy()
                                end
                            end
                        )
                    end
				end
			end
		end)
		spawn(function()
			local tween = game:GetService("TweenService")
			local character = game.Players.LocalPlayer.character
			local humanoid = character.HumanoidRootPart
			
			while wait() do
				if shared.toggleACCandy then
					game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
					wait(1)
					for i, v in next, {game.Workspace.CandyHolder} do
						pcall(
							function()
								if v:FindFirstChild("CandyCane") then
									tween:Create(humanoid, TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = v.CandyCane.CFrame}):Play()
									wait(2)
									v.CandyCane:Destroy()
								end
							end
						)
					end
				end
			end
		end)
		
	local PF = Function:CreateSection("Pet Function stuff")
		PF:Create(
			"Toggle",
			"Auto Combine Pets",
			function(state)
				shared.toggleAC_PETS = state
			end,
			{
				default = false,
			}
		)
		Spawn(function()
			while wait(0.5) do
				if shared.toggleAC_PETS then
					game:GetService("ReplicatedStorage").Events.CombineAll:FireServer()
				end
			end
		end)

local AutoBuy = main:CreateCategory("Auto Buy")
	local ABS = AutoBuy:CreateSection("Auto Buy Stuff")
		ABS:Create(
			"Toggle",
			"Auto Buy Swords",
			function(state)
				shared.toggleAB_Swords = state
			end,
			{
				default = false,
			}
		)
		ABS:Create(
			"Toggle",
			"Auto Buy Class",
			function(state)
				shared.toggleAB_Class = state
			end,
			{
				default = false,
			}
		)
		ABS:Create(
			"Toggle",
			"Auto Buy Dna",
			function(state)
				shared.toggleAB_Dna = state
			end,
			{
				default = false,
			}
		)
		ABS:Create(
			"Toggle",
			"Auto Buy Auras",
			function(state)
				shared.toggleAB_Auras = state
			end,
			{
				default = false,
			}
		)
		ABS:Create(
			"Toggle",
			"Auto Buy Pet Auras",
			function(state)
				shared.toggleAB_Pet_Auras = state
			end,
			{
				default = false,
			}
		)
		ABS:Create(
			"Toggle",
			"Auto Buy Jumps",
			function(state)
				shared.toggleAB_Jumps = state
			end,
			{
				default = false,
			}
		)
		ABS:Create(
			"Toggle",
			"Auto Buy Boss Hit",
			function(state)
				shared.toggleAB_Boss_Hit = state
			end,
			{
				default = false,
			}
		)
		Spawn(function()
			while wait(0.5) do
				if shared.toggleAB_Swords then
					game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Swords")
				end
				if shared.toggleAB_Class then
					for i,v in pairs (game:GetService("ReplicatedStorage").ShopItems.Classes:GetChildren()) do
						local args = {
							[1] = game:GetService("ReplicatedStorage").ShopItems.Classes[v.Name],
						}
						game:GetService("ReplicatedStorage").Events.BuyItem:FireServer(unpack(args))
					end
				end
				if shared.toggleAB_Dna then
					game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Backpacks")
				end
				if shared.toggleAB_Auras then
					game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("Auras")
				end
				if shared.toggleAB_Pet_Auras then
					game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("PetAuras")
				end
				if shared.toggleAB_Jumps then
					game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("JumpBoosts")
				end
				if shared.toggleAB_Boss_Hit then
					game:GetService("ReplicatedStorage").Events.BuyAll:FireServer("BossBoosts")
				end
			end
		end)

	local ABE = AutoBuy:CreateSection("Auto Buy Egg")
		ABE:Create(
			"DropDown",
			"Choose An Egg", 
			function(current)
				print("Selected to:", current)
				shared.DropDownABEChoose = current
			end,
			{
				options = {
					"Main Island 1", "Main Island 2", "Main Island 3", "Main Island 4", "Island 1", "Island 2", "Island 3", "Island 4", "Island 5", "Island 6", "Island 7",
					"Island 8", "Island 9", "Island 10", "Island 11", "Island 12", "Island 13", "Island 14","Island 15",
					"Island 16", "Island 17", "Island 18", "Island 19", "Island 20", "Island 21","Island 22", "Island 23",
					"Island 24", "Island 25", "Island 26", "Island 27", "Island 28","Island 29", "Island 30","Island 31",
					"Island 32", "Island 33", "Island 34", "Island 35","Island 36", "Island 37","Island 38", "Island 39", 
					"Island 40", "Island 41", "Island 42", "Island 43", "Island 44", "Island 45", "Island 46","Island 47", 
					"Island 48", "Island 49", "Island 50", "Island 51", "Island 52", "Island 53","Island 54", "Island 55", 
					"Island 56", "Island 57", "Island 58", "Island 59", "Island 60","Island 61", "Island 62","Island 63", 
					"Island 64", "Island 65", "Island 66", "Island 67", "Island 68", "Island 69","Island 70", "Island 71",
				},
				-- Optional
				default = "Choose An Egg",
				search = true
			}
		)
		ABE:Create(
			"Toggle",
			"Start",
			function(state)
				shared.toggleABES = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(0.25) do
				if shared.toggleABES then
					if shared.DropDownABEChoose == "Main Island 1" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Basic Egg"],1)
					elseif shared.DropDownABEChoose == "Main Island 2" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Wooden Egg"],1)
					elseif shared.DropDownABEChoose == "Main Island 3" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs.Ancient,1)
					elseif shared.DropDownABEChoose == "Main Island 4" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Reinforced Egg"],1)
					elseif shared.DropDownABEChoose == "Island 1" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Egg of life"],1)
					elseif shared.DropDownABEChoose == "Island 2" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Glory Egg"],1)
					elseif shared.DropDownABEChoose == "Island 3" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Dominus Egg"],1)
					elseif shared.DropDownABEChoose == "Island 4" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Silver Egg"],1)
					elseif shared.DropDownABEChoose == "Island 5" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Golden Egg"],1)
					elseif shared.DropDownABEChoose == "Island 6" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Premium Egg"],1)
					elseif shared.DropDownABEChoose == "Island 7" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Class Egg"],1)
					elseif shared.DropDownABEChoose == "Island 8" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Diamond Egg"],1)
					elseif shared.DropDownABEChoose == "Island 9" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Ruby Egg"],1)
					elseif shared.DropDownABEChoose == "Island 10" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Alpha Egg"],1)
					elseif shared.DropDownABEChoose == "Island 11" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Snow Egg"],1)
					elseif shared.DropDownABEChoose == "Island 12" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Reaper Egg"],1)
					elseif shared.DropDownABEChoose == "Island 13" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Nature Egg"],1)
					elseif shared.DropDownABEChoose == "Island 14" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Winter Egg"],1)
					elseif shared.DropDownABEChoose == "Island 15" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Food Egg"],1)
					elseif shared.DropDownABEChoose == "Island 16" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Fire Egg"],1)
					elseif shared.DropDownABEChoose == "Island 17" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Valk Egg"],1)
					elseif shared.DropDownABEChoose == "Island 18" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Dragon Egg"],1)
					elseif shared.DropDownABEChoose == "Island 19" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Star Egg"],1)
					elseif shared.DropDownABEChoose == "Island 20" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Cow Egg"],1)
					elseif shared.DropDownABEChoose == "Island 21" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Flame Egg"],1)
					elseif shared.DropDownABEChoose == "Island 22" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Water Egg"],1)
					elseif shared.DropDownABEChoose == "Island 23" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Ooga Egg"],1)
					elseif shared.DropDownABEChoose == "Island 24" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Round Egg"],1)
					elseif shared.DropDownABEChoose == "Island 25" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Heart Egg"],1)
					elseif shared.DropDownABEChoose == "Island 26" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Matrix Egg"],1)
					elseif shared.DropDownABEChoose == "Island 27" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Shadow Egg"],1)
					elseif shared.DropDownABEChoose == "Island 28" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Pink Egg"],1)
					elseif shared.DropDownABEChoose == "Island 29" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Candy Egg"],1)
					elseif shared.DropDownABEChoose == "Island 30" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Rushed Egg"],1)
					elseif shared.DropDownABEChoose == "Island 31" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Onetap Egg"],1)
					elseif shared.DropDownABEChoose == "Island 32" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Swag Egg"],1)
					elseif shared.DropDownABEChoose == "Island 33" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Triangle Egg"],1)
					elseif shared.DropDownABEChoose == "Island 34" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Square Egg"],1)
					elseif shared.DropDownABEChoose == "Island 35" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Cringe Egg"],1)
					elseif shared.DropDownABEChoose == "Island 36" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Boris Egg"],1)
					elseif shared.DropDownABEChoose == "Island 37" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Phantom Egg"],1)
					elseif shared.DropDownABEChoose == "Island 38" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Business Egg"],1)
					elseif shared.DropDownABEChoose == "Island 39" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Egg Egg"],1)
					elseif shared.DropDownABEChoose == "Island 40" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Birthday Egg"],1)
					elseif shared.DropDownABEChoose == "Island 41" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Switch Egg"],1)
					elseif shared.DropDownABEChoose == "Island 42" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["America Egg"],1)
					elseif shared.DropDownABEChoose == "Island 43" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["British Egg"],1)
					elseif shared.DropDownABEChoose == "Island 44" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Erick Egg"],1)
					elseif shared.DropDownABEChoose == "Island 45" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Henry Egg"],1)
					elseif shared.DropDownABEChoose == "Island 46" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Lazy Dev Egg"],1)
					elseif shared.DropDownABEChoose == "Island 47" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Puppet Egg"],1)
					elseif shared.DropDownABEChoose == "Island 48" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Piggy Egg"],1)
					elseif shared.DropDownABEChoose == "Island 49" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Easy Egg"],1)
					elseif shared.DropDownABEChoose == "Island 50" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Bruh Egg"],1)
					elseif shared.DropDownABEChoose == "Island 51" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Guts Egg"],1)
					elseif shared.DropDownABEChoose == "Island 52" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Griffith Egg"],1)
					elseif shared.DropDownABEChoose == "Island 53" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Casca Egg"],1)
					elseif shared.DropDownABEChoose == "Island 54" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Femto Egg"],1)
					elseif shared.DropDownABEChoose == "Island 55" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Pippin Egg"],1)
					elseif shared.DropDownABEChoose == "Island 56" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Dog Egg"],1)
					elseif shared.DropDownABEChoose == "Island 57" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Bingo Egg"],1)
					elseif shared.DropDownABEChoose == "Island 58" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["M Egg"],1)
					elseif shared.DropDownABEChoose == "Island 59" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["A Egg"],1)
					elseif shared.DropDownABEChoose == "Island 60" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["B Egg"],1)
					elseif shared.DropDownABEChoose == "Island 61" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["C Egg"],1)
					elseif shared.DropDownABEChoose == "Island 62" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["D Egg"],1)
					elseif shared.DropDownABEChoose == "Island 63" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["E Egg"],1)
					elseif shared.DropDownABEChoose == "Island 64" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["F Egg"],1)
					elseif shared.DropDownABEChoose == "Island 65" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["G Egg"],1)
					elseif shared.DropDownABEChoose == "Island 66" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["H Egg"],1)
					elseif shared.DropDownABEChoose == "Island 67" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["I Egg"],1)
					elseif shared.DropDownABEChoose == "Island 68" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["O Egg"],1)
					elseif shared.DropDownABEChoose == "Island 69" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["P Egg"],1)
					elseif shared.DropDownABEChoose == "Island 70" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["Q Egg"],1)
					elseif shared.DropDownABEChoose == "Island 71" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["R Egg"],1)
					end
				end
			end
		end)

	local ABEE = AutoBuy:CreateSection("Auto Buy Winter Event Egg")
		ABEE:Create(
			"DropDown",
			"Choose An Egg", 
			function(current)
				print("Selected to:", current)
				shared.DropDownABEEChoose = current
				TpArea()
			end,
			{
				options = {
					"First (200 Candy)", "Second (150 Candy)", "Third (75 Candy)",
				},
				-- Optional
				default = "Choose An Egg",
				search = true
			}
		)
		ABEE:Create(
			"Toggle",
			"Start",
			function(state)
				shared.toggleABEES = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(0.25) do
				if shared.toggleABEES then
					if shared.DropDownABEEChoose == "First (200 Candy)" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["U Egg"],1)
					elseif shared.DropDownABEEChoose == "Second (150 Candy)" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["T Egg"],1)
					elseif shared.DropDownABEEChoose == "Third (75 Candy)" then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs["S Egg"],1)
					end
				end
			end
		end)

local Teleport = main:CreateCategory("Teleport")
	local TS = Teleport:CreateSection("Teleport Stuff")
		TS:Create(
			"DropDown",
			"Choose a Island's Location", 
			function(current)
				print("Selected to:", current)
				shared.DropDownTPChoose = current
				TpArea()
			end,
			{
				options = {
					"Main Island", "Island 1", "Island 2", "Island 3", "Island 4", "Island 5", "Island 6", "Island 7",
					"Island 8", "Island 9", "Island 10", "Island 11", "Island 12", "Island 13", "Island 14","Island 15",
					"Island 16", "Island 17", "Island 18", "Island 19", "Island 20", "Island 21","Island 22", "Island 23",
					"Island 24", "Island 25", "Island 26", "Island 27", "Island 28","Island 29", "Island 30","Island 31",
					"Island 32", "Island 33", "Island 34", "Island 35","Island 36", "Island 37","Island 38", "Island 39", 
					"Island 40", "Island 41", "Island 42", "Island 43", "Island 44", "Island 45", "Island 46","Island 47", 
					"Island 48", "Island 49", "Island 50", "Island 51", "Island 52", "Island 53","Island 54", "Island 55", 
					"Island 56", "Island 57", "Island 58", "Island 59", "Island 60","Island 61", "Island 62","Island 63", 
					"Island 64", "Island 65", "Island 66", "Island 67", "Island 68", "Island 69","Island 70", "Island 71"
				},
				-- Optional
				default = "Choose a Island's Location",
				search = true
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
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(530, 186, -37)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(515, 800, 162)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(482, 2653, -295)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(651, 7092, -289)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(586, 12698, -233)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(503, 19439, -77)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(478, 26257, -200)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(632, 29800, -86)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(520, 34169, -212)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(567, 38094, -128)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(568, 42888, -191)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 48849, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 52643, -154)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 57627, -154)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 62383, -154)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(544, 67088, -63)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 72952, -154)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(612, 76590, -35)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469, 80724, -22)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469, 84822, -22)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469, 90390, -22)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469, 94252, -22)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469, 97712, -22)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469, 101249, -22)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(553, 104247, -141)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(692, 108787, -2)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(692, 127920, -2)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(691, 117959, -2)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(692, 121864, -2)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(691, 127920, -2)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(626, 131089, -52)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(554, 135607, -141)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(692, 140147, -2)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(691, 143498, -2)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(584, 146933, -202)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(584, 150269, -202)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(346, 152664, 28)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 158319, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 162114, -154)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 164290, -155)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 166416, -154)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 171579, -98)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(363, 175489, -246)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(554, 179363, -291)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(505, 182102, -215)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(490, 184962, -248)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(482, 187552, -240)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(642, 190399, -112)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 192607, -154)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 195964, -154)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 199264, -154)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 202506, -154)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 206038, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 209508, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 213009, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 216610, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 220081, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 223509, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 226954, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 230474, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 233950, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 237504, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 241063, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 244541, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 251557, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 255099, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(630, 255100, -310)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 258654, -312)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(630, 262200, -310)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 265717, -310)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 269271, -303)
				wait(0.35)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(638, 272960, -247)
			end,
			{
				animated = true,
			}
		)
		function TpArea()
			if shared.DropDownTPChoose == "Main Island" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(530, 186, -37)
			elseif shared.DropDownTPChoose == "Island 1" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(515, 800, 162)
			elseif shared.DropDownTPChoose == "Island 2" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(482, 2653, -295)
			elseif shared.DropDownTPChoose == "Island 3" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(651, 7092, -289)
			elseif shared.DropDownTPChoose == "Island 4" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(586, 12698, -233)
			elseif shared.DropDownTPChoose == "Island 5" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(503, 19439, -77)
			elseif shared.DropDownTPChoose == "Island 6" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(478, 26257, -200)
			elseif shared.DropDownTPChoose == "Island 7" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(632, 29800, -86)
			elseif shared.DropDownTPChoose == "Island 8" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(520, 34169, -212)
			elseif shared.DropDownTPChoose == "Island 9" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(567, 38094, -128)
			elseif shared.DropDownTPChoose == "Island 10" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(568, 42888, -191)
			elseif shared.DropDownTPChoose == "Island 11" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 48849, -303)
			elseif shared.DropDownTPChoose == "Island 12" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 52643, -154)
			elseif shared.DropDownTPChoose == "Island 13" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 57627, -154)
			elseif shared.DropDownTPChoose == "Island 14" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 62383, -154)
			elseif shared.DropDownTPChoose == "Island 15" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(544, 67088, -63)
			elseif shared.DropDownTPChoose == "Island 16" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 72952, -154)
			elseif shared.DropDownTPChoose == "Island 17" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(612, 76590, -35)
			elseif shared.DropDownTPChoose == "Island 18" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469, 80724, -22)
			elseif shared.DropDownTPChoose == "Island 19" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469, 84822, -22)
			elseif shared.DropDownTPChoose == "Island 20" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469, 90390, -22)
			elseif shared.DropDownTPChoose == "Island 21" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469, 94252, -22)
			elseif shared.DropDownTPChoose == "Island 22" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469, 97712, -22)
			elseif shared.DropDownTPChoose == "Island 23" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(469, 101249, -22)
			elseif shared.DropDownTPChoose == "Island 24" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(553, 104247, -141)
			elseif shared.DropDownTPChoose == "Island 25" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(692, 108787, -2)
			elseif shared.DropDownTPChoose == "Island 26" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(692, 127920, -2)
			elseif shared.DropDownTPChoose == "Island 27" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(691, 117959, -2)
			elseif shared.DropDownTPChoose == "Island 28" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(692, 121864, -2)
			elseif shared.DropDownTPChoose == "Island 29" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(691, 127920, -2)
			elseif shared.DropDownTPChoose == "Island 30" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(626, 131089, -52)
			elseif shared.DropDownTPChoose == "Island 31" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(554, 135607, -141)
			elseif shared.DropDownTPChoose == "Island 32" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(692, 140147, -2)
			elseif shared.DropDownTPChoose == "Island 33" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(691, 143498, -2)
			elseif shared.DropDownTPChoose == "Island 34" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(584, 146933, -202)
			elseif shared.DropDownTPChoose == "Island 35" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(584, 150269, -202)
			elseif shared.DropDownTPChoose == "Island 36" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(346, 152664, 28)
			elseif shared.DropDownTPChoose == "Island 37" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 158319, -303)
			elseif shared.DropDownTPChoose == "Island 38" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 162114, -154)
			elseif shared.DropDownTPChoose == "Island 39" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 164290, -155)
			elseif shared.DropDownTPChoose == "Island 40" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 166416, -154)
			elseif shared.DropDownTPChoose == "Island 41" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 171579, -98)
			elseif shared.DropDownTPChoose == "Island 42" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(363, 175489, -246)
			elseif shared.DropDownTPChoose == "Island 43" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(554, 179363, -291)
			elseif shared.DropDownTPChoose == "Island 44" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(505, 182102, -215)
			elseif shared.DropDownTPChoose == "Island 45" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(490, 184962, -248)
			elseif shared.DropDownTPChoose == "Island 46" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(482, 187552, -240)
			elseif shared.DropDownTPChoose == "Island 47" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(642, 190399, -112)
			elseif shared.DropDownTPChoose == "Island 48" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 192607, -154)
			elseif shared.DropDownTPChoose == "Island 49" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 195964, -154)
			elseif shared.DropDownTPChoose == "Island 50" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 199264, -154)
			elseif shared.DropDownTPChoose == "Island 51" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(540, 202506, -154)
			elseif shared.DropDownTPChoose == "Island 52" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 206038, -303)
			elseif shared.DropDownTPChoose == "Island 53" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 209508, -303)
			elseif shared.DropDownTPChoose == "Island 54" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 213009, -303)
			elseif shared.DropDownTPChoose == "Island 55" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 216610, -303)
			elseif shared.DropDownTPChoose == "Island 56" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 220081, -303)
			elseif shared.DropDownTPChoose == "Island 57" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 223509, -303)
			elseif shared.DropDownTPChoose == "Island 58" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 226954, -303)
			elseif shared.DropDownTPChoose == "Island 59" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 230474, -303)
			elseif shared.DropDownTPChoose == "Island 60" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 233950, -303)
			elseif shared.DropDownTPChoose == "Island 61" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 237504, -303)
			elseif shared.DropDownTPChoose == "Island 62" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 241063, -303)
			elseif shared.DropDownTPChoose == "Island 63" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 244541, -303)
			elseif shared.DropDownTPChoose == "Island 64" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 251557, -303)
			elseif shared.DropDownTPChoose == "Island 65" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 255099, -303)
			elseif shared.DropDownTPChoose == "Island 66" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(630, 255100, -310)
			elseif shared.DropDownTPChoose == "Island 67" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 258654, -312)
			elseif shared.DropDownTPChoose == "Island 68" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(630, 262200, -310)
			elseif shared.DropDownTPChoose == "Island 69" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 265717, -310)
			elseif shared.DropDownTPChoose == "Island 70" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(631, 269271, -303)
			elseif shared.DropDownTPChoose == "Island 71" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(638, 272960, -247)
			end
		end

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
			"Inf MaxJumps",
			function()
				game:GetService("Players").LocalPlayer.PlayerScripts["Double Jump"].MaxJumps.Value = 1e+9
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
				local Codes = {
					"VoidGG";"weekend";"oioi";"Yippee";"2020";"5000Followers";"Vehnix";
					"Slayer";"Saber";"Legend";"ISLANDS";"100m";"Airstudio";"MIRRAWRXD";"straw";
					"calixo";"erick";"GOLDEN";"prez";"grim";"boss";"telanthric";"defild";
					"melihkardes";"cookieclix";"cookie";"gravy";"JS";"raven";"razor";"robzi";
					"subtoaustin";"release";"mirrorrs";"henrydev";"mmistaken";
				}
				for i, v in next, Codes do
					game:GetService("ReplicatedStorage").Events.CheckCode:InvokeServer(v)
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

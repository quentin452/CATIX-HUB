-- Auto Update
local SelectIslandStrings = {}
local SelectEggsStrings = {}

for i,v in pairs(game:GetService("ReplicatedStorage").IslandCF:GetChildren()) do
	table.insert(SelectIslandStrings, v.Name)
end
for i,v in pairs(game:GetService("ReplicatedStorage").Eggs:GetChildren()) do
	if v.Currency.Value ~= "CandyCanes" then
		table.insert(SelectEggsStrings, v.Name)
	end
end
-- Anti AFK

if game.CoreGui:FindFirstChild("ScreenGui") then
    game.CoreGui:FindFirstChild("ScreenGui"):Destroy() 
end

local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    Virtual:CaptureController()
    Virtual:ClickButton2(Vector2.new())
    wait(2)
end)

local library = loadstring(game:HttpGet("https://pastebin.com/raw/H5u3dYwA"))()
local main = library:CreateMain("zypher")

local Home = main:CreateCategory("Home")
	local Tittle = Home:CreateSection("Saber Simulator")
	local H1 = Home:CreateSection("Latest Update: "..game:GetService("Players").LocalPlayer.PlayerGui.Gui.Home.Version.Text)
		H1:Create(
			"Textlabel",
			"+ Auto Update Added"
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
					local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
					game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
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
						if game:GetService("Workspace"):FindFirstChild("Boss") then
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
		local EggDropDown = ABE:Create(
			"DropDown",
			"Choose An Egg", 
			function(current)
				print("Selected to:", current)
				_G.DropDownABEChoose = current
			end,
			{
				options = {
					""
				},
				-- Optional
				default = "Choose An Egg",
				search = true
			}
		)
		EggDropDown:SetDropDownList({options = SelectEggsStrings})
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
					if _G.DropDownABEChoose ~= nil then
						game:GetService("ReplicatedStorage").Events.HatchEggs:InvokeServer(game:GetService("ReplicatedStorage").Eggs[_G.DropDownABEChoose],1)
					end
				end
			end
		end)

local Teleport = main:CreateCategory("Teleport")
	local TS = Teleport:CreateSection("Teleport Stuff")
		local IslandDropDown = TS:Create(
			"DropDown",
			"Choose a Island's Location", 
			function(current)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("ReplicatedStorage").IslandCF[current].Value
			end,
			{
				options = {
					"LOL U FIND ME",
				},
				-- Optional
				default = "Choose a Island's Location",
				search = true
			}
		)
		IslandDropDown:SetDropDownList({options = SelectIslandStrings})
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
				local me = game.Players.LocalPlayer.Character.HumanoidRootPart
				me.CFrame = CFrame.new(530, 186, -37) wait(0.35)
				me.CFrame = CFrame.new(515, 800, 162) wait(0.35)
				me.CFrame = CFrame.new(482, 2653, -295) wait(0.35)
				me.CFrame = CFrame.new(651, 7092, -289) wait(0.35)
				me.CFrame = CFrame.new(586, 12698, -233) wait(0.35)
				me.CFrame = CFrame.new(503, 19439, -77) wait(0.35)
				me.CFrame = CFrame.new(478, 26257, -200) wait(0.35)
				me.CFrame = CFrame.new(632, 29800, -86) wait(0.35)
				me.CFrame = CFrame.new(520, 34169, -212) wait(0.35)
				me.CFrame = CFrame.new(567, 38094, -128) wait(0.35)
				me.CFrame = CFrame.new(568, 42888, -191) wait(0.35)
				me.CFrame = CFrame.new(631, 48849, -303) wait(0.35)
				me.CFrame = CFrame.new(540, 52643, -154) wait(0.35)
				me.CFrame = CFrame.new(540, 57627, -154) wait(0.35)
				me.CFrame = CFrame.new(540, 62383, -154) wait(0.35)
				me.CFrame = CFrame.new(544, 67088, -63) wait(0.35)
				me.CFrame = CFrame.new(540, 72952, -154) wait(0.35)
				me.CFrame = CFrame.new(612, 76590, -35) wait(0.35)
				me.CFrame = CFrame.new(469, 80724, -22) wait(0.35)
				me.CFrame = CFrame.new(469, 84822, -22) wait(0.35)
				me.CFrame = CFrame.new(469, 90390, -22) wait(0.35)
				me.CFrame = CFrame.new(469, 94252, -22) wait(0.35)
				me.CFrame = CFrame.new(469, 97712, -22) wait(0.35)
				me.CFrame = CFrame.new(469, 101249, -22) wait(0.35)
				me.CFrame = CFrame.new(553, 104247, -141) wait(0.35)
				me.CFrame = CFrame.new(692, 108787, -2) wait(0.35)
				me.CFrame = CFrame.new(692, 127920, -2) wait(0.35)
				me.CFrame = CFrame.new(691, 117959, -2) wait(0.35)
				me.CFrame = CFrame.new(692, 121864, -2) wait(0.35)
				me.CFrame = CFrame.new(691, 127920, -2) wait(0.35)
				me.CFrame = CFrame.new(626, 131089, -52) wait(0.35)
				me.CFrame = CFrame.new(554, 135607, -141) wait(0.35)
				me.CFrame = CFrame.new(692, 140147, -2) wait(0.35)
				me.CFrame = CFrame.new(691, 143498, -2) wait(0.35)
				me.CFrame = CFrame.new(584, 146933, -202) wait(0.35)
				me.CFrame = CFrame.new(584, 150269, -202) wait(0.35)
				me.CFrame = CFrame.new(346, 152664, 28) wait(0.35)
				me.CFrame = CFrame.new(631, 158319, -303) wait(0.35)
				me.CFrame = CFrame.new(540, 162114, -154) wait(0.35)
				me.CFrame = CFrame.new(540, 164290, -155) wait(0.35)
				me.CFrame = CFrame.new(540, 166416, -154) wait(0.35)
				me.CFrame = CFrame.new(540, 171579, -98) wait(0.35)
				me.CFrame = CFrame.new(363, 175489, -246) wait(0.35)
				me.CFrame = CFrame.new(554, 179363, -291) wait(0.35)
				me.CFrame = CFrame.new(505, 182102, -215) wait(0.35)
				me.CFrame = CFrame.new(490, 184962, -248) wait(0.35)
				me.CFrame = CFrame.new(482, 187552, -240) wait(0.35)
				me.CFrame = CFrame.new(642, 190399, -112) wait(0.35)
				me.CFrame = CFrame.new(540, 192607, -154) wait(0.35)
				me.CFrame = CFrame.new(540, 195964, -154) wait(0.35)
				me.CFrame = CFrame.new(540, 199264, -154) wait(0.35)
				me.CFrame = CFrame.new(540, 202506, -154) wait(0.35)
				me.CFrame = CFrame.new(631, 206038, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 209508, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 213009, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 216610, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 220081, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 223509, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 226954, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 230474, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 233950, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 237504, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 241063, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 244541, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 251557, -303) wait(0.35)
				me.CFrame = CFrame.new(631, 255099, -303) wait(0.35)
				me.CFrame = CFrame.new(630, 255100, -310) wait(0.35)
				me.CFrame = CFrame.new(631, 258654, -312) wait(0.35)
				me.CFrame = CFrame.new(630, 262200, -310) wait(0.35)
				me.CFrame = CFrame.new(631, 265717, -310) wait(0.35)
				me.CFrame = CFrame.new(631, 269271, -303) wait(0.35)
				me.CFrame = CFrame.new(638, 272960, -247) wait(0.35)
				me.CFrame = CFrame.new(634, 276486, -208)
			end,
			{
				animated = true,
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

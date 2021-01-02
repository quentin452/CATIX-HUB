-- Anti AFK

	local Virtual = game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		Virtual:CaptureController()
		Virtual:ClickButton2(Vector2.new())
		wait(2)
	end)

-- Old Position Save
	local oldpos = Instance.new("CFrameValue",game.Players.LocalPlayer)
	oldpos.Name = "oldpos"

	local library = loadstring(game:HttpGet("https://pastebin.com/raw/H5u3dYwA"))()
local main = library:CreateMain({
	    projName = "ScreenGui",
	    Resizable = true,
	    MinSize = UDim2.new(0,400,0,400),
	    MaxSize = UDim2.new(0,750,0,500),
	})

local Home = main:CreateCategory("Home")
	local Tittle = Home:CreateSection("Treasure Quest")
	local H1 = Home:CreateSection("Update logs V2.0.1:")
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
			"Copy Discord Link (https://discord.gg/x2hM4M5xWj)",
			function()
			setclipboard("https://discord.gg/x2hM4M5xWj")
			end,
			{
				animated = true,
			}
		)

local category = main:CreateCategory("Auto Farm")
	local AF = category:CreateSection("Auto Farm (Simple Method)")
		AF:Create(
		    "Button",
		    "Start",
		    function()
				loadstring(game:HttpGet("https://pastebin.com/raw/c58AFVU0"))()
		    end,
		    {
		        animated = true,
		    }
		)
	local AF = category:CreateSection("Auto Farm (Complex Method)")
		AF:Create(
		    "Textlabel",
		    "-- Dungeon Settings --"
		)
		AF:Create(
			"DropDown",
			"Select Map", 
			function(current)
			    print("You have selected:",current)
			    _G.Map = current
			end,
			{
				options = {
					"Ancient Jungle","Coral Kingdom","Crystal Cave","Sacred Sands",
					"Candy Land","Sinister Sewers","Magical Mushrooms","Space Base",
					"Daring Dojo","Cryptic Castle","Santa's Workshop","Ice Palace",
					"Frenzy Factory","Fiery Fortress"
				},
				-- Optional
				default = "Select Map",
				search = false
			}
		)
		AF:Create(
			"DropDown",
			"Select DungeonType", 
			function(current)
			    print("You have selected:",current)
			    _G.DungeonType = current
			end,
			{
				options = {
					"Classic","MiniBosses","Endless","Uncapped","Endless Uncapped"
				},
				-- Optional
				default = "Select DungeonType",
				search = false
			}
		)
		AF:Create(
			"DropDown",
			"Select Difficulty", 
			function(current)
			    print("You have selected:",current)
			    _G.Difficulty = current
			end,
			{
				options = {
					"Easy","Medium","Hard","Demon","Impossible"
				},
				-- Optional
				default = "Select Difficulty",
				search = false
			}
		)
		AF:Create(
			"DropDown",
			"Select Privacy", 
			function(current)
			    print("You have selected:",current)
			    _G.Privacy = current
			end,
			{
				options = {
					"Public","Friends","Solo"
				},
				-- Optional
				default = "Select Privacy",
				search = false
			}
		)
		AF:Create(
		    "Textlabel",
		    "-- Other Settings --"
		)
		AF:Create(
			"Toggle",
			"SemiGodMode",
			function(state)
	    		print("SemiGodMode =",state)
   				_G.SemiGodMode = state
			end,
			{
				default = false,
			}
		)
		AF:Create(
			"Toggle",
			"AutoChest",
			function(state)
	    		print("AutoChest =",state)
   				_G.AutoChest = state
			end,
			{
				default = false,
			}
		)
		AF:Create(
			"Toggle",
			"AutoMedKit",
			function(state)
	    		print("AutoMedKit =",state)
   				_G.AutoMedKit = state
			end,
			{
				default = false,
			}
		)
		AF:Create(
			"Toggle",
			"Security",
			function(state)
	    		print("Security =",state)
   				_G.Security = state
			end,
			{
				default = false,
			}
		)
		AF:Create(
		    "Button",
		    "Click to verified (F9)",
		    function()
				print("")
				print("-- Dungeon Settings --")
				print("You have selected:",_G.Map)
				print("You have selected:",_G.DungeonType)
				print("You have selected:",_G.Difficulty)
				print("You have selected:",_G.Privacy)
				print("")
				print("-- Dungeon Settings --")
				print("SemiGodMode =",_G.SemiGodMode)
				print("AutoChest =",_G.AutoChest)
				print("AutoMedKit =",_G.AutoMedKit)
				print("Security =",_G.Security)
				print("")
		    end,
		    {
		        animated = true,
		    }
		)
		AF:Create(
		    "Button",
		    "Run (After Virified)",
		    function()
				loadstring(game:HttpGet("https://pastebin.com/raw/c58AFVU0"))()
		    end,
		    {
		        animated = true,
		    }
		)

	local Tittle = category:CreateSection("! Important !")
		Tittle:Create(
		    "Textlabel",
		    "Autofarm does not work with all Exploits!"
		)

local Function = main:CreateCategory("Function")
	local AS = Function:CreateSection("Auto Stuff")
		AS:Create(
			"Toggle",
			"Auto Attack",
			function(state)
				shared.toggleAA = state
			end,
			{
				default = false,
			}
		)
		AS:Create(
			"Toggle",
			"Auto Ability",
			function(state)
				shared.toggleAA2 = state
			end,
			{
				default = false,
			}
		)

		spawn(function()
			while wait() do
				if shared.toggleAA then
					local args = {
					    [1] = Vector3.new(586.664978, 320.968811, 656.171387),
					}
					game:GetService("ReplicatedStorage").Remotes.Attack:FireServer(unpack(args))
				end
				if shared.toggleAA2 then
					local args = {
					    [1] = Vector3.new(603.193542, 322.180023, 492.801849),
					}
					game:GetService("ReplicatedStorage").Remotes.Ability:FireServer(unpack(args))
				end
			end
		end)
	local Event = Function:CreateSection("Christmas Event")
		Event:Create(
		    "Button",
		    "Tp To Event Area",
		    function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(339, 321, 530)
		    end,
		    {
		        animated = true,
		    }
		)
		Event:Create(
		    "Button",
		    "Solo Event",
		    function()
				local TeleportService = game:GetService("TeleportService")
				local PlaceId = 2978518061
				local player = game.Players.LocalPlayer
				if player then
					TeleportService:Teleport(PlaceId, player)
				end
		    end,
		    {
		        animated = true,
		    }
		)
		Event:Create(
		    "Textlabel",
		    "the autofarm works very badly with the event"
		)

local Teleport = main:CreateCategory("Teleport")
	local TS = Teleport:CreateSection("Teleport Stuff")
		TS:Create(
			"DropDown",
			"Choose a Location", 
			function(current)
				print("Selected to:", current)
				if current == "Spawn" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(619, 320, 470)
				elseif current == "Prize Wheel & Daily Rewards" then
					game.Players.LocalPlayer.oldpos.Value = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
				    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(517.379, 329.191, 663.12)
				    wait(0)
				    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(392.291, 322.15, 638.79)
				    wait(0)
				    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(517.379, 329.191, 663.12)
				    wait(0)
				    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.oldpos.Value
				elseif current == "Training Area" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(478, 345, 562)
				elseif current == "Beach" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-362, 469, 948)
				elseif current == "Unlock All Blades" then
					game.Players.LocalPlayer.oldpos.Value = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Essentials.QuestItems["Lava Blade"].CFrame
					wait(0.2)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Essentials.QuestItems["Grass Blade"].CFrame
					wait(0.2)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Essentials.QuestItems["Thunder Blade"].CFrame
					wait(0.2)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Essentials.QuestItems["Crystal Blade"].CFrame
					wait(0.2)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Essentials.QuestItems["Ice Blade"].CFrame
					wait(0.2)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Essentials.QuestItems["Shadow Blade"].CFrame
					wait(0.2)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.oldpos.Value
				end
			end,
			{
				options = {
					"Spawn", "Prize Wheel & Daily Rewards", "Training Area", "Beach", "Unlock All Blades",
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
					"officialrelease","randompotion","randomeffect","treasure","freecoins",
					"levelup","update1","anothereffect","anotherpotion","freelevel","bossanubis",
					"newdungeon","desertcactus","update2","candyquest","sugarquest","yummycandy",
					"i<3effects","imfeelinglucky","extrastorage","mythicalplz","i<3levels",
					"endlessmode","ilovegold","ilovexp","stronk","beefy","updatesoon","hypehype",
					"goldrush","plzgivemythical","summerishere","happy4thofjuly","ilovesales",
					"i<3storage","newdungeonhype","luckluckluck","ultimaterarity","update7",
					"reepotion","freepotion2","2hourluck","2hourexp","update8","alien","area51",
					"ufo","nosniy=noob","sensei=noob","update9","localization","newabilities",
					"update10","blackbelt","samurai","trueninja","update11","king","givemelevels",
					"puredamage","xp potion","purehealth","100,000,000visits2","100,000,000visits3",
					"100,000,000visits4","update12","halloweenupdate","spookyseason","pumpkincarving",
					"experienceboost","bestcostume","freestorage","luckfordays","experienceboost2",
					"sinistereerie","update14","autumn","evenmorexp","10storage","UPDATE15","ILOVEXMAS",
					"NAUGHTY","NICE","PEPPERMINTS","WINTERISHERE","UPDATE16","BANKSLOTS","NEWLOBBYHYPE",
					"ICECOLD","NEWMONSTERSHYPE","QUESTSKIPS","JUNGLEREVAMP","SEWERSREVAMP","CAVESREVAMP",
					"UPDATE18","FREECOSMETIC","MILLIONMEMBERS","CORALREVAMP","QUESTSKIPS2","UPDATE19",
					"OMGROBOTS","RANOUTOFIDEAS","HI","UPDATE20","EASTER2020","EGGHUNT2020","DREGGONSBREATH",
					"BIGBOOST","SPRINGTIME","UPDATE21","SCROLLSHYPE","UPDATE22","FIERYFORTRESS","2NEWABILITIES",
					"PROTECTOR","NEWGAMEMODE","ENDLESSUNCAPPED","ONEYEAR","THANKSFORPLAYING","METEORBLAST",
					"SHOPREVAMP","HUGEUPDATESOON","SUMMERTIME","BRIGHTBEACHISBACK","SHELLGRIND","PEARLHUNT",
					"SUNSHINE","SUMMERPART2","FEDERATIONGRIND","DOMINUSGRIND","COCONUT","PALMTREES","HALLOWEENPART2",
					"SPOOKY","GHOUL","HAUNTED","OMBIE","FRANKENSTEIN","DANGERDEPTHS","ABYSS","HYPERFROST","BOSSFIGHT"
				}
				warn("!! CODE LIST !!")
				redem_code = game:GetService("ReplicatedStorage").Remotes.RedeemCode
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
			"Remove Border Map",
			function()
				game:GetService("Workspace").Map.Lobby.Border:Destroy()
			end,
			{
				animated = true,
			}
		)
		Miscsection:Create(
			"DropDown",
			"Open Gui", 
			function(current)
			    print("You have selected:",current)
			    game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainFrame.Pages[current].Visible = true
			end,
			{
				options = {
					"Dungeon","Inventory","Collection","Upgrade","Trading","Shop",
					"Codes","Settings","BossDefeat","Effects","Coins","CoinPurchase",
					"Potions","Stats","Crafting","PrizeWheel","Holiday","Sell","Bank",
					"CosmeticInventory","CosmeticShop","EggHuntTeleport","EggHuntQuests",
					"Badges","StarCreators","Wizard","Scrolls","ChangeLog"
				},
				-- Optional
				default = "Open Gui",
				search = true
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

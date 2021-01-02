-- Anti Ban Bypass

local sowd = getrawmetatable(game)
local sucks = sowd.__namecall
local player = game.Players.LocalPlayer
setreadonly(sowd, false)
sowd.__namecall = newcclosure(function(name, ...)
	local tabs = {
		...
	}
	if getnamecallmethod() == "FireServer"  and tostring(name) == "UDPSocket" then
		return
	end
	return sucks(name, unpack(tabs))
end)

setreadonly(sowd, true)


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
	local Tittle = Home:CreateSection("Tapping Mania")
	local H1 = Home:CreateSection("Update logs V2.2:")
		H1:Create(
			"Textlabel",
			"+ Auto Buy x3 Added"
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
	local AS = category:CreateSection("Auto Click Stuff")
		AS:Create(
			"Toggle",
			"Auto Click",
			function(state)
				print("Current state:", state)
				shared.ToggleAC = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait() do
				if shared.ToggleAC then
					game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()
				end
			end
		end)

local ARS = category:CreateSection("Auto Rebirths Stuff")
	ARS:Create(
		"DropDown",
		"Choose a Rebirths", 
		function(current)
			print("Selected to:", current)
			_G.RebirthChoosen = current
		end,
		{
			options = {
				"+1","+5","+10","+50","+100","+250","+500","+1k","+5k",
				"+8k","+10k","+25k","+69k","+100k","+400k","+1m","+5m",
				"+10m","+50m","+100m","+1b","+5b","+10b","+30b","+70b",
				"+200b","+1t","+3t","+10t","+50t","+100t","+1qd","+10qd",
				"+100qd","+1qn","+10qn","+50qn","+250qn","+690qn", "+1sx",
				"+4sx", "+10sx"
			},
			-- Optional
			default = "Choose a Rebirths",
			search = false
		}
	)
	ARS:Create(
			"Toggle",
			"Auto Rebirths",
			function(state)
				print("Current state:", state)
				shared.ToggleABR = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait(0.25) do
				if shared.ToggleABR then
					if _G.RebirthChoosen == "+1" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(1)
					elseif _G.RebirthChoosen == "+5" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(2)
					elseif _G.RebirthChoosen == "+10" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(3)
					elseif _G.RebirthChoosen == "+50" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(4)
					elseif _G.RebirthChoosen == "+100" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(5)
					elseif _G.RebirthChoosen == "+250" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(6)
					elseif _G.RebirthChoosen == "+500" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(7)
					elseif _G.RebirthChoosen == "+1k" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(8)
					elseif _G.RebirthChoosen == "+5k" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(9)
					elseif _G.RebirthChoosen == "+8k" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(10)
					elseif _G.RebirthChoosen == "+10k" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(11)
					elseif _G.RebirthChoosen == "+25k" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(12)
					elseif _G.RebirthChoosen == "+69k" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(13)
					elseif _G.RebirthChoosen == "+100k" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(14)
					elseif _G.RebirthChoosen == "+400k" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(15)
					elseif _G.RebirthChoosen == "+1m" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(16)
					elseif _G.RebirthChoosen == "+5m" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(17)
					elseif _G.RebirthChoosen == "+10m" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(18)
					elseif _G.RebirthChoosen == "+50m" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(19)
					elseif _G.RebirthChoosen == "+100m" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(20)
					elseif _G.RebirthChoosen == "+1b" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(21)
					elseif _G.RebirthChoosen == "+5b" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(22)
					elseif _G.RebirthChoosen == "+10b" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(23)
					elseif _G.RebirthChoosen == "+30b" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(24)
					elseif _G.RebirthChoosen == "+70b" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(25)
					elseif _G.RebirthChoosen == "+200b" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(26)
					elseif _G.RebirthChoosen == "+1t" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(27)
					elseif _G.RebirthChoosen == "+3t" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(28)
					elseif _G.RebirthChoosen == "+10t" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(29)
					elseif _G.RebirthChoosen == "+50t" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(30)
					elseif _G.RebirthChoosen == "+100t" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(31)
					elseif _G.RebirthChoosen == "+1qd" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(32)
					elseif _G.RebirthChoosen == "+10qd" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(33)
					elseif _G.RebirthChoosen == "+100qd" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(34)
					elseif _G.RebirthChoosen == "+1qn" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(35)
					elseif _G.RebirthChoosen == "+10qn" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(36)
					elseif _G.RebirthChoosen == "+50qn" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(37)
					elseif _G.RebirthChoosen == "+250qn" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(38)
					elseif _G.RebirthChoosen == "+690qn" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(39)
					elseif _G.RebirthChoosen == "+1sx" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(40)
					elseif _G.RebirthChoosen == "+4sx" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(41)
					elseif _G.RebirthChoosen == "+10sx" then
						game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(42)
					end	
				end
			end
		end)

local ABS = category:CreateSection("Auto Buy Stuff")
	ABS:Create(
		"DropDown",
		"Choose an Egg", 
		function(current)
			print("Selected to:", current)
			_G.EggChoosen = current
		end,
		{
			options = {
				"Basic Egg","Rare Egg","Desert Egg","Epic Egg","Forest Egg",
				"Winter Egg","Noob Egg","Candy Egg","Volcano Egg","Moon Egg",
				"Angelic Egg","Galactic Egg","Deepfrost Egg","Void Egg",
				"Nuclear Egg","Chaotic Egg","Frozen Egg","Ghost Egg","Devil Egg",
				"Lava Egg","Deadland Egg","Toxic Gem Egg","Exotic Gem Egg",
				"Flaming Gem Egg","Mythical Egg","Russo Egg","Exotic Egg",
				"God Egg","Upside Down Egg","Snowy Egg","Santa Egg","Christmas Egg",
				"Ghast Egg","Shattered Egg","Electro Egg","Robot Egg", "Steampunk Egg"
			},
			-- Optional
			default = "Choose an Egg",
			search = false
		}
	)
		ABS:Create(
			"Toggle",
			"Auto Buy Egg",
			function(state)
				print("Current state:", state)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Eggs[_G.EggChoosen].Top.CFrame
				shared.ToggleABE = state
			end,
			{
				default = false,
			}
		)
		ABS:Create(
			"Toggle",
			"Auto Buy Egg x3",
			function(state)
				print("Current state:", state)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Eggs[_G.EggChoosen].Top.CFrame
				shared.ToggleABEX3 = state
			end,
			{
				default = false,
			}
		)
		spawn(function()
			while wait() do
				if shared.ToggleABE then
					if _G.EggChoosen ~= nil then
						game:GetService("ReplicatedStorage").RemoteEvents.OpenEgg:FireServer(_G.EggChoosen)
					end		
				end
				if shared.ToggleABEX3 then
					if _G.EggChoosen ~= nil then
						game:GetService("ReplicatedStorage").RemoteEvents.OpenEgg:FireServer(_G.EggChoosen,true)
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
					"TOFUU","IMPOSTER","SP00KY","Russo","2MVISITS","100KMEMBERS","4MVISITS","5MVISITS","200KMEMBERS", "666KMEMBERS", "20MVISITS", "Taps", "Gems"
				}
				warn("!! CODE LIST !!")
				redem_code = game:GetService("ReplicatedStorage").RemoteEvents.RedeemCode
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

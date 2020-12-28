-- 1548158252
-- https://pastebin.com/6rKAWfK2

--| Anti AFK
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Sword Legends")

local b = w:CreateFolder("Function")

	b:Toggle("Auto Swing",function(bool)
	    shared.toggleASwing = bool
	end)

	b:Toggle("Auto Slash",function(bool)
	    shared.toggleASlash = bool
	end)

	b:Toggle("Auto Dash",function(bool)
	    shared.toggleADash = bool
	end)

	b:Toggle("Auto Sell (x24)",function(bool)
	    shared.toggleAS24 = bool
	end)

local ABS = w:CreateFolder("Auto Buy Stuff")

	ABS:Toggle("Auto Buy Tools",function(bool)
	    shared.toggleABT = bool
	end)

	ABS:Toggle("Auto Buy Backpack",function(bool)
	    shared.toggleABB = bool
	end)

local AC = w:CreateFolder("Auto Collect")

	AC:Toggle("Coins",function(bool)
	    shared.toggleACC = bool
	end)

	AC:Toggle("Gems",function(bool)
	    shared.toggleACG = bool
	end)

local TP = w:CreateFolder("Teleport")

	TP:Dropdown("(Choose a Location)",{
	"Spawn",
	"Grass Lands",
	"Earth Lands",
	"Wind Lands",
	"Ice Lands",
	"Fire Isles",
	"Fairy Isles",
	"Plasma Isles",
	"Dark Isles",
	"Electric Isles",
	"Rainbow Isles",
	"Cosmic Isles",
	"Glitched Isles",
	"Dark Magic Isles"
	},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.AreaSelected = mob
	    TpArea()
	end)

	TP:Button("Unlock All",function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-31, 1909, 111) + Vector3.new(0,10,0)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11, 4450, 169) + Vector3.new(0,10,0)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-69, 6271, 148) + Vector3.new(0,10,0)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-85, 8734, 109) + Vector3.new(0,10,0)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59, 10970, 93) + Vector3.new(0,10,0)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10, 13000, 125) + Vector3.new(0,10,0)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-79, 15132, 143) + Vector3.new(0,10,0)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3, 16885, 141) + Vector3.new(0,10,0)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-212, 18245, 162) + Vector3.new(0,10,0)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(164, 24447, 97) + Vector3.new(0,10,0)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133, 28386, 91) + Vector3.new(0,10,0)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64, 30962, -79) + Vector3.new(0,10,0)
		wait(0.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(196, 34471, -56) + Vector3.new(0,10,0)
	end)

local PLR = w:CreateFolder("Player")

	PLR:Box("Speed Hack","number",function(value)
	    print(value)
	    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	end)

	PLR:Box("Jump Hack","number",function(value)
	    print(value)
	    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	end)

	PLR:Button("No Clip (Press N)",function()
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
	end)

	PLR:Button("Fly (Press E)",function()
		loadstring(game:HttpGet("https://pastebin.com/raw/G1yWQbeU", true))()
	end)

local MISC = w:CreateFolder("Misc")

	MISC:Button("Rejoin",function()
		local TeleportService = game:GetService("TeleportService")
		local PlaceId = game.PlaceId
		local player = game.Players.LocalPlayer
		if player then
		TeleportService:Teleport(PlaceId, player)
		end
	end)

	MISC:Button("Use All Codes",function()
		local Codes = {
			"ROADTO30";
			"DARK MAGIC";
			"TOOMANYGEMS";
			"ROADTO10K";
			"6K";
			"NITRO";
		}

		for i, v in next, Codes do
			local args = {
			    [1] = {
			        ["Value"] = v,
			        ["Type"] = "RedeemCode"
			    }
			}
			game:GetService("ReplicatedStorage").Magik.RemoteFunction:InvokeServer(unpack(args))
		end
	end)

	MISC:GuiSettings()

local CS = w:CreateFolder("Credits")

	CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()


spawn(function()
	while wait(0.2) do
		if shared.toggleASwing then
			local tool1 = game.Players.LocalPlayer.Backpack:FindFirstChild("DefaultTool")  or game.Players.LocalPlayer.Character:FindFirstChild("DefaultTool")
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool1)
			tool1:Activate()
		end
		if shared.toggleASlash then
			local tool2 = game.Players.LocalPlayer.Backpack:FindFirstChild("DefaultSlashTool")  or game.Players.LocalPlayer.Character:FindFirstChild("DefaultSlashTool")
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool2)
			tool2:Activate()
		end
		if shared.toggleADash then
			local tool3 = game.Players.LocalPlayer.Backpack:FindFirstChild("DefaultDashTool")  or game.Players.LocalPlayer.Character:FindFirstChild("DefaultDashTool")
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool3)
			tool3:Activate()
		end
		if shared.toggleAS24 then
			local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
			local Sell24 = game:GetService("Workspace").Extra.Pads.Sell24
		    Sell24.CFrame = hum.CFrame
		    wait(0.2)
		    Sell24.CFrame = CFrame.new(250.208, 34439, 46.6542)
		end
	end
end)

spawn(function()
	while wait(0.5) do
		if shared.toggleACC then
			local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
			local coin = game:GetService("Workspace").Extra:WaitForChild("Coin")
			hum.CFrame = coin.CFrame
		end
		if shared.toggleACG then
			local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
			local Gem = game:GetService("Workspace").Extra:WaitForChild("Gem")
			hum.CFrame = Gem.CFrame
		end
	end
end)

spawn(function()
	while wait(0.5) do
		if shared.toggleABT then
			local args = {
			    [1] = {
			        ["Type"] = "BuyAllTools"
			    }
			}
			game:GetService("ReplicatedStorage").Magik.RemoteEvent:FireServer(unpack(args))
		end
		if shared.toggleABB then
			local args = {
			    [1] = {
			        ["Type"] = "BuyAllBackpacks"
			    }
			}
			game:GetService("ReplicatedStorage").Magik.RemoteEvent:FireServer(unpack(args))
		end
		if shared.toggleABB then
			local args = {
			    [1] = {
			        ["Type"] = "BuyAllBackpacks"
			    }
			}
			game:GetService("ReplicatedStorage").Magik.RemoteEvent:FireServer(unpack(args))
		end
	end
end)

function TpArea()
	if _G.AreaSelected == "Spawn" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2, 22, 333) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Grass Lands" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-31, 1909, 111) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Earth Lands" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11, 4450, 169) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Wind Lands" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-69, 6271, 148) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Ice Lands" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-85, 8734, 109) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Fire Isles" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59, 10970, 93) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Fairy Isles" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10, 13000, 125) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Plasma Isles" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-79, 15132, 143) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Dark Isles" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3, 16885, 141) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Electric Isles" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-212, 18245, 162) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Rainbow Isles" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(164, 24447, 97) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Cosmic Isles" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133, 28386, 91) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Glitched Isles" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64, 30962, -79) + Vector3.new(0,10,0)
	elseif _G.AreaSelected == "Dark Magic Isles" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(196, 34471, -56) + Vector3.new(0,10,0)
	end
end

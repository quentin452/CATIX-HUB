-- Anti AFK

local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    Virtual:CaptureController()
    Virtual:ClickButton2(Vector2.new())
    wait(2)
end)
local rs = game:GetService("RunService").RenderStepped
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Pet Hatching Simulator 5")

local b = w:CreateFolder("Functions")

    b:Toggle("Auto Collect Coins",function(bool)
        shared.toggleACC = bool
	end)
    b:Toggle("Auto Collect Tickets",function(bool)
        shared.toggleACT = bool
    end)
    spawn(function()
        while wait(1.5) do
            if shared.toggleACC then
				for i,v in pairs(game:GetService("Workspace").Coins:GetChildren()) do
					if v.ClassName == "MeshPart" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
						rs:wait()
					end
				end
			end
            if shared.toggleACT then
				for i,v in pairs(game:GetService("Workspace").Tickets:GetChildren()) do
					if v.Name == "Tickets" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
						rs:wait()
					end
				end
				for i,v in pairs(game:GetService("Workspace").TicketsBarel:GetChildren()) do
					if v.Name == "Ticket" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Part.CFrame
						rs:wait()
					end
				end
            end
        end
    end)

local c = w:CreateFolder("Pet Module")
	local SelectEggsStrings = {}

	for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
		table.insert(SelectEggsStrings, v.Name)
	end
	c:Dropdown("Select Egg",SelectEggsStrings,true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
		_G.EggSelected = mob
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Eggs[mob].NameBrick.CFrame + Vector3.new(0,5,0)
	end)
    c:Toggle("Open x1",function(bool)
        shared.toggleAOx1 = bool
	end)
    c:Toggle("Open x3",function(bool)
        shared.toggleAOx3 = bool
	end)
    c:Toggle("LockAllRarity",function(bool)
        shared.toggleLAR = bool
    end)
    spawn(function()
		while wait(0.5) do
			if _G.EggSelected ~= nil then
				if shared.toggleAOx1 then
					game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(_G.EggSelected,"Single")
				end
				if shared.toggleAOx3 then
					game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(_G.EggSelected,"Triple")
				end
			end
			if shared.toggleLAR then
				game:GetService("ReplicatedStorage").RemoteEvents.PetActionRequest:InvokeServer("LockAllRarity")
			end
        end
	end)

local TP = w:CreateFolder("Teleport")
	TP:Dropdown("Select Teleport",{
		"Spawn", "Crsytal Forest", "Beach", "Frost", "Jungle", "UnderWorld", "Island"
	},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
		if mob == "Spawn" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25, 6, 12)
		elseif mob == "Crsytal Forest" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(924, 4, -377)
		elseif mob == "Beach" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1796, 16, 1266)
		elseif mob == "Frost" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1248, 4, -823)
		elseif mob == "Jungle" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1828, 4, -327)
		elseif mob == "UnderWorld" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1201, 9, 131)
		elseif mob == "Island"then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1285, 65, 11)
		end
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

	MISC:GuiSettings()

local CS = w:CreateFolder("Credits")

	CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	CS:Label("https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	CS:DestroyGUI()

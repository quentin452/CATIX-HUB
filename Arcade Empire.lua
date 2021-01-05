local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Arcade Empire")

local b = w:CreateFolder("Function")

    b:Toggle("Auto Farm",function(bool)
        shared.toggleAF = bool
        print(shared.toggle)
    end)
    local plr = game.Players.LocalPlayer
    local store
    spawn(function()
        while wait(0.5) do
            if shared.toggleAF then
                for i,v in pairs(game:GetService("Workspace").StoreModels:GetDescendants()) do
                    if v.Name == "Owner" then
                        if v.Value == plr.Name then
                            for i,v in pairs(v.Parent.Furniture:GetChildren()) do
                                if shared.toggleAF then
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Value + Vector3.new(0,5,0)
                                    for i = 1,3 do
                                        game:GetService("ReplicatedStorage").Events.FurnitureInteract:FireServer(v,"Dirty")
                                        wait(0.05)
                                        game:GetService("ReplicatedStorage").Events.FurnitureInteract:FireServer(v,"Broken")
                                        wait(0.05)
                                        game:GetService("ReplicatedStorage").Events.FurnitureInteract:FireServer(v,"Full")
                                        wait(0.05)
                                        game:GetService("ReplicatedStorage").Events.FurnitureInteract:FireServer(v,"Collect")
                                    end
                                    wait(0.05)
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
	b:Button("Boost Fps",function()
		for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
			if v.Name == "Model" then
			   v:Destroy()
			end
		end
		game:GetService("Workspace").BuildingsWithLights:Destroy()
	end)

local bf = w:CreateFolder("Shop Function")
	bf:Dropdown("Select Item",{
		"Maze Game",
		"Prize Claw",
		"Sword Fighter",
		"Ball Claw",
		"Table Game",
		"Boxer Game",
		"Wack A Nobb",
		"Air Hockey",
		"King Hammer",
		"Ball Roll",
		"Spin 2 Win",
		"MotorBike Madness",
		"Packpot Wheel",
		"Dogfighter",
		"Basketball Game",
		"Dance!",
		"4 Player Air Hockey",
		"Potted Plant",
		"Potted Tree",
		"Potted Cactus",
		"Potted Sakura Tree",
		"Potted Bamboo",
		"Double Couch",
		"Couch",
		"High Table and Stools",
		},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
		_G.FurnitureSelected = mob
	end)
	bf:Box("Ammount","number",function(value) -- "number" or "string"
		_G.FurnitureAmountSelected = value
	end)
	bf:Button("Buy Item",function()
		if _G.FurnitureSelected ~= nil or _G.FurnitureAmountSelected ~= nil  then
			game:GetService("ReplicatedStorage").Events.BuyFurniture:FireServer(_G.FurnitureSelected,_G.FurnitureAmountSelected)
		end	
	end)
    bf:Toggle("Auto Buy Item",function(bool)
        shared.toggleABI = bool
	end)
	spawn(function()
		while wait() do
			if shared.toggleABI then
				game:GetService("ReplicatedStorage").Events.BuyFurniture:FireServer(_G.FurnitureSelected,_G.FurnitureAmountSelected)
			end
		end
	end)
	bf:Label("",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	bf:Dropdown("Select Capsule",{
		"Noob Capsule",
		"Profession Capsule",
		"Sports Capsule",
		"Fairy Tale Capsule",
		"Monster Capsule",
		"Knight Capsule",
		"Ancient Capsule",
		"Rich Capsule",
		"Robot Capsule",
		"",
		"",
		},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
		_G.CapsuleSelected = mob
	end)
	bf:Button("Buy Capsule",function()
		if _G.CapsuleSelected ~= nil  then
			game:GetService("ReplicatedStorage").Events.OpenCapsule:InvokeServer(_G.CapsuleSelected,1)
		end	
	end)
    bf:Toggle("Auto Buy Capsule",function(bool)
        shared.toggleABC = bool
	end)
	spawn(function()
		while wait() do
			if shared.toggleABC then
				game:GetService("ReplicatedStorage").Events.OpenCapsule:InvokeServer(_G.CapsuleSelected,1)
			end
		end
	end)
	bf:Label("",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111))
	bf:Dropdown("Select Arcade",{
		"Maze Game",
		"Prize Claw",
		"Sword Fighter",
		"Ball Claw",
		"Table Game",
		"Boxer Game",
		"Wack A Nobb",
		"Air Hockey",
		"King Hammer",
		"Ball Roll",
		"Spin 2 Win",
		"MotorBike Madness",
		"Packpot Wheel",
		"Dogfighter",
		"Basketball Game",
		"Dance!",
		"4 Player Air Hockey",
		},true,function(mob)
		_G.ArcadeSelected = mob
	end)
    bf:Toggle("Auto Gold",function(bool)
        shared.toggleAG = bool
	end)
    bf:Toggle("Auto Max Gold",function(bool)
        shared.toggleAMG = bool
	end)
    bf:Toggle("Auto Rainbow",function(bool)
        shared.toggleAR = bool
	end)
    bf:Toggle("Auto Max Rainbow",function(bool)
        shared.toggleAMR = bool
	end)
	spawn(function()
		while wait(0.5) do
			if shared.toggleAG then
				game:GetService("ReplicatedStorage").Events.ResearchFurniture:FireServer(_G.ArcadeSelected,"Standard")
			end
			if shared.toggleAMG then
				game:GetService("ReplicatedStorage").Events.ResearchFurniture:FireServer(_G.ArcadeSelected,"Max")
			end
			if shared.toggleAR then
				game:GetService("ReplicatedStorage").Events.ResearchFurniture:FireServer("Golden ".._G.ArcadeSelected,"Standard")
			end
			if shared.toggleAMR then
				game:GetService("ReplicatedStorage").Events.ResearchFurniture:FireServer("Golden ".._G.ArcadeSelected,"Max")
			end
		end
	end)
local Tp = w:CreateFolder("Teleports")
	local plr = game.Players.LocalPlayer
	Tp:Button("To Your Arcade",function()
		for i,v in pairs(game:GetService("Workspace").StoreModels:GetDescendants()) do
			if v.Name == "Owner" then
				if v.Value == plr.Name then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.BasePart.CFrame + Vector3.new(0,2,0)
				end
			end
		end
	end)
	Tp:Button("To Shop",function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-224, 15, 1054)
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
	CS:DestroyGUI()

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Arcade Empire")

local b = w:CreateFolder("Auto Stuff")

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

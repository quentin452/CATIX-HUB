--https://www.roblox.com/games/5770043489/UPDATE-Shuriken-Simulator
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w3 = library:CreateWindow("Shuriken-Simulator GUI")
local w = w3:CreateFolder("Things")
    w:Label("Hacks",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111))
        w:Toggle("Auto Click",function(bool)
            shared.toggleAC = bool
        end)
        spawn(function()
            while wait(0.5) do
                if shared.toggleAC then
                    while wait() do
                        local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                           game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                           game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
                        end	  
                        for i,v in pairs (game:GetService("Workspace")[game.Players.LocalPlayer.Name]:GetChildren()) do
                        local args = {
                         [1] = Vector3.new(0,0,0),
                         [2] = game:GetService("Players").LocalPlayer.Character[v.Name]
                        }
                        game:GetService("ReplicatedStorage").Resources.RemoteEvents.FireEvent:FireServer(unpack(args))
                        end
                    end
                end
            end
        end)
    w:Toggle("Auto Sell",function(bool)
        shared.toggle2 = bool
    end) 
    w:Toggle("Auto Rebirths",function(bool)
        shared.toggle3 = bool
    end) 
    w:Toggle("Claim Quests",function(bool)
        shared.toggle4 = bool
    end) 
    w:Button("Claim All Codes",function()
        local Codes = {
            "RussoPlays",
            "JeffBlox",
            "Tofuu",
            "EmpireBlox",
            "ErikCarr",
            "Release",
            "UPDATE1",
            "UPDATE2",
        }
        for i, v in next, Codes do
            local args = {
                [1] = v
            }
            game:GetService("ReplicatedStorage").Resources.RemoteFunctions.TwitterCode:InvokeServer(unpack(args))
        end     
    end) 
	spawn(function()
		while wait() do
            if shared.toggle2 then
                game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(860.391663, 61.8452072, -226.635971)
                wait(0)
                game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(858.105347, 62.6317749, -211.858139)
            end
	        if shared.toggle3 then
                game:GetService("ReplicatedStorage").Resources.RemoteFunctions.Rebirth:InvokeServer()
            end
	        if shared.toggle4 then
                game:GetService("ReplicatedStorage").Resources.RemoteEvents.ClaimReward:FireServer("Balls")
                game:GetService("ReplicatedStorage").Resources.RemoteEvents.ClaimReward:FireServer("BuyEggs")
                game:GetService("ReplicatedStorage").Resources.RemoteEvents.ClaimReward:FireServer("CollectCoins")
            end
        end
    end)
local AB = w3:CreateFolder("Auto Buy")
    local Shuriken = {
        "Wood Shuriken",
        "Stone Shuriken",
        "Copper Shuriken",
        "Tin Shuriken",
        "Silver Shuriken",
        "Iron Shuriken",
        "Gold Shuriken",
        "Crimson Shuriken",
        "Ultra Shuriken",
        "Wind Shuriken",
        "Electro Shuriken",
        "Fire Shuriken",
        "Toxic Shuriken",
        "Corrupted Shuriken",
        "Infernal Shuriken",
        "Lightning Shuriken",
        "Elemental Shuriken",
        "Mythical Shuriken",
        "Immortal Shuriken",
        "Legends Shuriken",
        "Explosive Legends Shuriken",
        "Explosive Dragon Shuriken",
        "Explosive Corrupt Shuriken",
        "Explosive Hypersonic Shuriken",
        "Explosive Eternal Shuriken",
        "Double Lightning Shuriken",
        "Double Elemental Shuriken",
        "Double Mythical Shuriken",
        "Double Immortal Shuriken",
        "Double Legends Shuriken",
        "Double Explosive Legends Shuriken",
    }
    AB:Toggle("Auto Buy Shuriken",function(bool)
        shared.toggleABS = bool
    end) 
	spawn(function()
		while wait(0.5) do
            if shared.toggleABS then
                for i, v in next, Shuriken do
                    local args = {
                        [1] = v,
                        [2] = "Papers"
                    }
                    game:GetService("ReplicatedStorage").Resources.RemoteFunctions.Buy:InvokeServer(unpack(args))
                end 
            end
        end
    end)
  local Backpacks = {
        "Normal Backpack",
        "Large Backpack",
        "Camping Backpack",
        "Bird Backpack",
        "Super Backpack",
        "Ultra Backpack",
        "Spider Backpack",
        "Black Widow Backpack",
        "Octopus Backpack",
        "Crow Backpack",
        "Demon Backpack",
        "Angel Backpack",
        "Kraken Backpack",
        "Megalodon Backpack",
        "Mechanical backpack",
        "Mechanical Kraken Backpack",
        "Phoenix Backpack",
        "Magical Backpack",
        "Pegasus Backpack",
        "Mothra Backpack",
        "Dragon Backpack",
        "Hydra Backpack",
    }
    AB:Toggle("Auto Buy BackPacks",function(bool)
        shared.toggleABB = bool
    end) 
	spawn(function()
		while wait(0.5) do
            if shared.toggleABB then
                for i, v in next, Backpacks do
                    local args = {
                        [1] = v,
                        [2] = "Backpacks"
                    }
                    game:GetService("ReplicatedStorage").Resources.RemoteFunctions.Buy:InvokeServer(unpack(args))
                end 
            end
        end
    end)
local TP = w3:CreateFolder("Teleport")
	TP:Dropdown("Select Area",{
        "Spawn",
		"Butterfly Island",
		"Rabbit Island",
		"Fox Island",
		"Wolf Island",
		"Camel Island",
		"Giraffe Island",
        "Elephant Island",
    },true,function(mob)
		SelectArea = mob
		TpArea()
		print("Telepored to "..mob)
    end)
    function TpArea()
        if SelectArea == "Spawn" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1124, 61, -383)
        elseif SelectArea == "Butterfly Island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1045, 69, 104)
        elseif SelectArea == "Rabbit Island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1008, 69, 874)
        elseif SelectArea == "Fox Island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1024, 72, 1519)
        elseif SelectArea == "Wolf Island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1344, 78, 2032)
        elseif SelectArea == "Camel Island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1949, 82, 2403)
        elseif SelectArea == "Giraffe Island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2552, 83, 2669)
        elseif SelectArea == "Elephant Island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3168, 83, 2887)
        end
    end
local PLR = w3:CreateFolder("Player")
	PLR:Slider("Jump Hack",10,250,true,function(value)
	    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	end)
	    PLR:Button("Speed Hack (press G)",function(bool)
            local walkspeedplayer = game:GetService("Players").LocalPlayer
            local walkspeedmouse = walkspeedplayer:GetMouse()
            local walkspeedenabled = false
            function x_walkspeed(key)
                if (key == "g") then
                    if walkspeedenabled == false then
                        _G.WS = 200;
                        local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
                        Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                        Humanoid.WalkSpeed = _G.WS;
                    end)
                    Humanoid.WalkSpeed = _G.WS;
                    walkspeedenabled = true
                elseif walkspeedenabled == true then
                    _G.WS = 20;
                    local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
                    Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
                        Humanoid.WalkSpeed = _G.WS;
                    end)
                    Humanoid.WalkSpeed = _G.WS;
                    walkspeedenabled = false
                end
            end
        end
        walkspeedmouse.KeyDown:connect(x_walkspeed)
    end)
	PLR:Button("No Clip (Press V)",function()
		noclip = false
		game:GetService('RunService').Stepped:connect(function()
			if noclip then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
		local plr = game.Players.LocalPlayer
		local mouse = plr:GetMouse()
		mouse.KeyDown:connect(function(key)
			if key == "v" then
				noclip = not noclip
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
	end)
    PLR:Button("Inf Jump",function()
        game:GetService("UserInputService").JumpRequest:connect(function()
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
        end)
    end)
    PLR:Button("Crl + Click = TP",function()
        local Plr = game:GetService("Players").LocalPlayer
        local Mouse = Plr:GetMouse()
        Mouse.Button1Down:connect(function()
            if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
            if not Mouse.Target then return end
            Plr.Character:MoveTo(Mouse.Hit.p)
        end)
    end)
	PLR:Button("Extreme Light",function()
        local s = Instance.new("PointLight", game.Players.LocalPlayer.Character.Head)
        s.Brightness = 0.3
        s.Range = 100
        game.Lighting.Changed:connect(function()
            game.Lighting.TimeOfDay = "14:00:00"
            game.Lighting.FogEnd = 300
            game.Lighting.Brightness = 10
            game.Lighting.ColorCorrection.Brightness = 0.1
            game.Lighting.ColorCorrection.Saturation = 0.1
            game.Lighting.Bloom.Intensity = 0.1
        end)
    end)
	PLR:Button("Btools",function()
        game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
        for index, child in pairs(game:GetService("Workspace"):GetChildren()) do
            if child.ClassName == "Part" then
                child.Locked = false
            end
            if child.ClassName == "MeshPart" then
                child.Locked = false
            end
            if child.ClassName == "UnionOperation" then
                child.Locked = false
            end
            if child.ClassName == "Model" then
                for index, chil in pairs(child:GetChildren()) do
                    if chil.ClassName == "Part" then
                        chil.Locked = false
                    end
                    if chil.ClassName == "MeshPart" then
                        chil.Locked = false
                    end
                    if chil.ClassName == "UnionOperation" then
                          chil.Locked = false
                     end
                    if chil.ClassName == "Model" then
                        for index, childe in pairs(chil:GetChildren()) do
                            if childe.ClassName == "Part" then
                                childe.Locked = false
                            end
                            if childe.ClassName == "MeshPart" then
                                childe.Locked = false
                            end
                            if childe.ClassName == "UnionOperation" then
                                childe.Locked = false
                            end
                            if childe.ClassName == "Model" then
                                for index, childeo in pairs(childe:GetChildren()) do
                                    if childeo.ClassName == "Part" then
                                        childeo.Locked = false
                                    end
                                    if childeo.ClassName == "MeshPart" then
                                        childeo.Locked = false
                                    end
                                    if childeo.ClassName == "UnionOperation" then
                                        childeo.Locked = false
                                    end
                                    if childeo.ClassName == "Model" then
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
        c.BinType = Enum.BinType.Hammer
        c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
        c.BinType = Enum.BinType.Clone
        c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
        c.BinType = Enum.BinType.Grab
    end)
	PLR:Button("ESP UNIVERSAL",function()
        for i,v in pairs(game.Workspace:GetDescendants()) do
            if v.ClassName == "TouchTransmitter" then
                -- if v.ClassName == "TouchTransmitter" and v.Parent.Name == "Handle" then
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                BillboardGui.Parent = v.Parent
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1
                BillboardGui.Size = UDim2.new(0, 100, 0, 100)
                BillboardGui.StudsOffset = Vector3.new(0, 2, 0)
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
                TextLabel.BackgroundTransparency = 1
                TextLabel.Size = UDim2.new(1, 0, 1, 0)
                TextLabel.Text = v.Parent.Parent.Name
                TextLabel.TextColor3 = Color3.new(1, 0, 0)
                TextLabel.TextScaled = true
            end
        end
    end)
	PLR:Button("Dark Dex",function()
        loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))()
    end)
    PLR:Label("Work Whit Paid,KRNL AND SONA Exploit",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) 
	PLR:Button("Remote Spy Universal GAME",function()
        loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
    end)
local MISC = w3:CreateFolder("Misc")
	MISC:Button("Rejoin",function()
		local TeleportService = game:GetService("TeleportService")
		local PlaceId = game.PlaceId
		local player = game.Players.LocalPlayer
		if player then
		TeleportService:Teleport(PlaceId, player)
		end
	end)
MISC:GuiSettings()
local CS = w3:CreateFolder("Credits")
    CS:Button("Script by: I'm A Cat#7202",function()
        setclipboard("I'm A Cat#7202")
    end)
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",function()
        setclipboard("https://discord.gg/KmHZUpXEmQ")
    end)
    CS:Button("Helped by: Altix#3395",function()
        setclipboard("Altix#3395")
    end)
	CS:DestroyGUI()
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)
wait(10)
    game.StarterGui:SetCore(
        "ChatMakeSystemMessage",
        {
            Text = "[ANTI AFK] Started !",
            Font = Enum.Font.SourceSansBold, 
            FontSize = Enum.FontSize.Size24 
        }
    )
    while wait(30) do
        local VirtualUser=game:service'VirtualUser'
        game:service'Players'.LocalPlayer.Idled:connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end
local CloneFunction = clonefunction
local CheckCaller = CloneFunction(checkcaller)
local HookFunction = CloneFunction(hookfunction)
local LocalPlayer = game.Players.PlayerAdded:wait()
local PostMessage = require(LocalPlayer:WaitForChild("PlayerScripts", 1/0):WaitForChild("ChatScript", 1/0):WaitForChild("ChatMain", 1/0)).MessagePosted
getgenv().MessageEvent = Instance.new("BindableEvent")
local OldFunctionHook
local PostMessageHook = function(self, msg)
   if not CheckCaller() and self == PostMessage then
       MessageEvent:Fire(msg)
       return
   end
   return OldFunctionHook(self, msg)
end
OldFunctionHook = HookFunction(PostMessage.fire, PostMessageHook)

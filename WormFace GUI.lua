local items = game:GetService("Workspace").Items
local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
local tweenserv = game:GetService('TweenService')
local deletethis = game.Players.LocalPlayer.Character.HumanoidRootPart.StarterWorm.Head:FindFirstChild("FaceCenterAttachment")
local rebirthtext = game:GetService("Players").LocalPlayer.PlayerGui.RebirthGui.Button.ProgressBar.Background.Text
local rebirthevent = game:GetService("ReplicatedStorage").RebirthRequest

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("WormFace")

local b = w:CreateFolder("Things")

    b:Toggle("Auto Collects",function(bool)
        shared.toggleAC = bool
        tp()
    end)
    b:Toggle("Auto Rebirths",function(bool)
        shared.toggleAR = bool
    end)
    b:Toggle("Auto Super Rebirths",function(bool)
        shared.toggleASR = bool
	end)
	b:Toggle("Disable Popups",function(bool)
		if bool then
			game:GetService("Players").LocalPlayer.PlayerGui.OnScreenNotificationGui.Enabled = false
		else
			game:GetService("Players").LocalPlayer.PlayerGui.OnScreenNotificationGui.Enabled = true
		end
    end)
    spawn(function()
        while wait(0.25) do
            if shared.toggleAR then
                game:GetService("ReplicatedStorage").RebirthRequest:InvokeServer("rebirth")
            end
            if shared.toggleASR then
                game:GetService("ReplicatedStorage").RebirthRequest:InvokeServer("superRebirth")
            end
        end
    end)
    function tp()
        if shared.toggleAC then
            local items = game:GetService("Workspace").Items
            local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
            local tweenserv = game:GetService('TweenService')
            local deletethis = game.Players.LocalPlayer.Character.HumanoidRootPart.StarterWorm.Head:FindFirstChild("FaceCenterAttachment")
            local rebirthtext = game:GetService("Players").LocalPlayer.PlayerGui.RebirthGui.Button.ProgressBar.Background.Text
            local rebirthevent = game:GetService("ReplicatedStorage").RebirthRequest
            getgenv().active = true
            local doit = true
            local function getGem()
            for _, v in ipairs(items:GetChildren()) do
                if not v then return end
                if not v:FindFirstChild('Part') then return end
                if(v.Part.Position.X < 325) then
                    return v.Part
                end
            end
            end
            local function gotoGem()
            local gem = getGem()
            if not gem then return end
            local goal = {}
            goal.CFrame = gem.CFrame
            local tweenInfo = TweenInfo.new(0.01)
            local tween = tweenserv:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, tweenInfo, goal)
            tween:Play()
            wait(0.1)
            if(gem.Parent) then
            gem.Parent:Destroy()
            end
            end

            local function canRebirth()
            local split1 = string.split(rebirthtext.Text, " ")
            local split2 = string.split(split1[2], "/")
            local returnval = tonumber(split2[1]) >= tonumber(split2[2])
            return returnval
            end
            if(deletethis) then
            deletethis:Destroy()
            end
            if(canRebirth()) then
                rebirthevent:InvokeServer()
            end
            local rebirthconnect = rebirthtext:GetPropertyChangedSignal("Text"):Connect(function()
            if(canRebirth()) then
                print('rebirthing')
                doit = false
                rebirthevent:InvokeServer()
                wait(3)
                if(game.Players.LocalPlayer.Character.HumanoidRootPart.StarterWorm.Head:FindFirstChild("FaceCenterAttachment")) then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.StarterWorm.Head:FindFirstChild("FaceCenterAttachment"):Destroy()
                end
                doit = true
            end
            end)

            while getgenv().active do
            if doit then
                gotoGem()
            end
            wait()
            end
        else
            getgenv().active = false
            rebirthconnect:Disconnect()
        end
    end

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

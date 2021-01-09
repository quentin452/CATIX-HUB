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

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/quentin452/CATIX-HUB/master/!Zypher%20UI.lua"))()
local main = library:CreateMain("zypher")

local Home = main:CreateCategory("Home")
	local Tittle = Home:CreateSection("Eating Simulator")
	local H1 = Home:CreateSection("Latest Update: ")
		H1:Create(
			"Textlabel",
			"+ Game Added"
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
            "Auto Collect",
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
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(242, 108, -140)
            end,
            {
                default = false,
            }
        )
        spawn(function()
            while wait() do
                if shared.toggleAC then
                    for i,v in pairs(game:GetService("Workspace").SpawnedFood:GetChildren()) do
                            if shared.toggleAC then
                            v.CanCollide = false
                            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            wait()
                        end
                    end
                end
            end
        end)
    local AS = Function:CreateSection("Auto Buy Stuff")
        AS:Create(
            "Toggle",
            "Auto Buy Food",
            function(state)
                shared.toggleABFood = state
            end,
            {
                default = false,
            }
        )
        AS:Create(
            "Toggle",
            "Auto Buy Stomach",
            function(state)
                shared.toggleABStomach = state
            end,
            {
                default = false,
            }
        )
        AS:Create(
            "Toggle",
            "Auto Buy Ranks",
            function(state)
                shared.toggleABRanks = state
            end,
            {
                default = false,
            }
        )
        spawn(function()
            while wait() do
                if shared.toggleABFood then
                    game:GetService("ReplicatedStorage").Buy:FireServer("Food")
                end
                if shared.toggleABStomach then
                    game:GetService("ReplicatedStorage").Buy:FireServer("Stomach")
                end
                if shared.toggleABRanks then
                    game:GetService("ReplicatedStorage").Buy:FireServer("Rank")
                end
            end
        end)
local Teleport = main:CreateCategory("Teleport")
        local TS = Teleport:CreateSection("Teleport Stuff")
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
    

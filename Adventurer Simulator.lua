
-- Anti AFK

local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    Virtual:CaptureController()
    Virtual:ClickButton2(Vector2.new())
    wait(2)
end)

if game.CoreGui:FindFirstChild("ScreenGui") then
    game.CoreGui:FindFirstChild("ScreenGui"):Destroy() 
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/quentin452/CATIX-HUB/master/!Zypher%20UI.lua"))()

local main = library:CreateMain({
    projName = "ScreenGui",
    Resizable = true,
    MinSize = UDim2.new(0,400,0,400),
    MaxSize = UDim2.new(0,750,0,500),
})
local Home = main:CreateCategory("Home")
	local Tittle = Home:CreateSection("Catix Hub | Adventurer Simulator")
	local H1 = Home:CreateSection("Update logs: [UPDATE 1]")
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
			"Copy Discord Link (https://discord.gg/KmHZUpXEmQ)",
			function()
			setclipboard("https://discord.gg/KmHZUpXEmQ")
			end,
			{
				animated = true,
			}
        )
local Function = main:CreateCategory("Function")
    local Func = Function:CreateSection("Auto Stuff")
        Func:Create(
            "Toggle",
            "Auto Farm",
            function(state)
                shared.toggleAF = state
            end,
            {
                default = false,
            }
        )
        Func:Create(
            "Toggle",
            "Auto Sell",
            function(state)
            if state then
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-91, 3, -30) 
                end
            end,
            {
                default = false,
            }
        )
        Func:Create(
            "Toggle",
            "Auto Collect Coins",
            function(state)
                shared.toggleAC1 = state
            end,
            {
                default = false,
            }
        )
        Func:Create(
            "Toggle",
            "Auto Collect Diamonds",
            function(state)
                shared.toggleAC2 = state
            end,
            {
                default = false,
            }
        )
        Func:Create(
            "Toggle",
            "Auto Claim Achievements",
            function(state)
                if state then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2, 8, 191)
                end
                shared.toggleACA = state
            end,
            {
                default = false,
            }
        )
        spawn(function()
            while wait() do
                if shared.toggleAF then
                                            game:GetService("ReplicatedStorage").Remotes.Events.Weapon:FireServer({["Action"] = "Attack"})
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
                    if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
                        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()

                    end
                end
                if shared.toggleAC1 then
                    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.ClassName == "Model" and v.Name == "Coins" then
                            v.Part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame   
                        end
                    end
                end
                if shared.toggleAC2 then
                    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v.ClassName == "Model" and v.Name == "Diamonds" then
                            v.Core.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame   
                        end
                    end
                end
                if shared.toggleACA then
                    local EggsAch = game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("Achievements")["Eggs Hatched"].Container
                    local StrengthAch = game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("Achievements")["Total Strength"].Container
                    
                    for i,v in pairs(EggsAch:GetChildren()) do
                        game:GetService("ReplicatedStorage").Remotes.Events.Achievement:FireServer({["Type"] = "Eggs Hatched",["Action"] = "Claim",["Index"] = i})
                        wait()
                    end
                    for i,v in pairs(StrengthAch:GetChildren()) do
                        game:GetService("ReplicatedStorage").Remotes.Events.Achievement:FireServer({["Type"] = "Total Strength",["Action"] = "Claim",["Index"] = i})
                        wait()
              end
                  
                end
            end
        end)
         
      

local Shop = main:CreateCategory("Shop")
    local AbS = Shop:CreateSection("Auto Buy Stuff")
        AbS:Create(
            "Toggle",
            "Auto Buy Weapons",
            function(state)
                shared.toggleAB1 = state
            end,
            {
                default = false,
            }
        )
        AbS:Create(
            "Toggle",
            "Auto Buy Genetics",
            function(state)
                shared.toggleAB2 = state
            end,
            {
                default = false,
            }
        )
        --[[
        Func:Create(
            "Toggle",
            "Auto Buy Classes",
            function(state)
                shared.toggleAB3 = state
            end,
            {
                default = false,
            }
        )]]
        spawn(function()
            while wait() do
                if shared.toggleAB1 then
                    game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer({["Action"] = "Buy All",["Category"] = "Weapons"})
                end
                if shared.toggleAB2 then
                    game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer({["Action"] = "Buy All",["Category"] = "Genetics"})
                end
                --[[
                    if shared.toggleAB3 then
                        game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer({["Action"] = "Buy All",["Category"] = "Weapons"})
                    end
                ]]
            end
        end)
    local AUS = Shop:CreateSection("Auto Upgrade Skills")
        AUS:Create(
            "Toggle",
            "Auto Upgrade Jumps",
            function(state)
                shared.toggleAUS1 = state
            end,
            {
                default = false,
            }
        )
        AUS:Create(
            "Toggle",
            "Auto Upgrade Boss Hits",
            function(state)
                shared.toggleAUS2 = state
            end,
            {
                default = false,
            }
        )
        spawn(function()
            while wait() do
                if shared.toggleAUS1 then
                    game:GetService("ReplicatedStorage").Remotes.Events.Skill:FireServer({["Action"] = "Buy All",["Category"] = "Double Jumps"})
                end
                if shared.toggleAUS2 then
                    game:GetService("ReplicatedStorage").Remotes.Events.Skill:FireServer({["Action"] = "Buy All",["Category"] = "Boss Hits"})
                end
            end
        end)
    local ABP = Shop:CreateSection("Auto Open Egg")
        ABP:Create(
            "DropDown",
            "Select An Egg", 
            function(current)
                _G.EggSelected = current
            end,
            {
                options = {
                    "Common Egg", "Spotted Egg", "Overworld Egg", "Slimy Egg",
                    "Magic Egg", "Cursed Egg", "Shattered Egg", "Magic Forest Egg",
                    "Jungle Egg", "Sandy Egg", "Watery Egg", "Tropical Egg"
                },
                -- Optional
                default = "Select An Egg",
                search = false
            }
        )
        ABP:Create(
            "DropDown",
            "Select An Event Egg", 
            function(current)
                _G.EggEventSelected = current
            end,
            {
                options = {
                    "Snowy Egg", "Gift Egg", "GingerBread Egg", "Xmas Egg"
                },
                -- Optional
                default = "Select An Event Egg",
                search = false
            }
        )
        ABP:Create(
            "Toggle",
            "Auto Open x1",
            function(state)
                shared.toggleAOEx1 = state
            end,
            {
                default = false,
            }
        )
        ABP:Create(
            "Toggle",
            "Auto Open x3",
            function(state)
                shared.toggleAOEx3 = state
            end,
            {
                default = false,
            }
        )
        H2:Create(
			"Textlabel",
			"You have to be near the egg for it to buy itself"
		)
        spawn(function()
            while wait() do
                if _G.EggSelected ~= nil then
                    if _G.EggSelected == "Common Egg" or _G.EggSelected == "Spotted Egg" or _G.EggSelected == "Overworld Egg" or _G.EggSelected == "Slimy Egg" then
                        if shared.toggleAOEx1 then
                            game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer({["EggName"] = _G.EggSelected,["Action"] = "Hatch Egg",["WorldName"] = "Overworld"})
                        end
                        if shared.toggleAOEx3 then
                            game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer({["EggName"] = _G.EggSelected,["Action"] = "Triple Hatch Egg",["WorldName"] = "Overworld"})
                        end
                    elseif _G.EggSelected == "Magic Egg" or _G.EggSelected == "Cursed Egg" or _G.EggSelected == "Shattered Egg" or _G.EggSelected == "Magic Forest Egg" then
                        if shared.toggleAOEx1 then
                            game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer({["EggName"] = _G.EggSelected,["Action"] = "Hatch Egg",["WorldName"] = "Magic Forest"})
                        end
                        if shared.toggleAOEx3 then
                            game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer({["EggName"] = _G.EggSelected,["Action"] = "Triple Hatch Egg",["WorldName"] = "Magic Forest"})
                        end
                    elseif _G.EggSelected == "Jungle Egg" or _G.EggSelected == "Sandy Egg" or _G.EggSelected == "Watery Egg" or _G.EggSelected == "Tropical Egg" then
                        if shared.toggleAOEx1 then
                            game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer({["EggName"] = _G.EggSelected,["Action"] = "Hatch Egg",["WorldName"] = "Tropical Paradise"})
                        end
                        if shared.toggleAOEx3 then
                            game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer({["EggName"] = _G.EggSelected,["Action"] = "Triple Hatch Egg",["WorldName"] = "Tropical Paradise"})
                        end
                    end
                end
                if _G.EggEventSelected ~= nil then
                    if _G.EggEventSelected == "Common Egg" or _G.EggEventSelected == "Spotted Egg" or _G.EggEventSelected == "Overworld Egg" or _G.EggEventSelected == "Slimy Egg" then
                        if shared.toggleAOEx1 then
                            game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer({["EggName"] = _G.EggEventSelected,["Action"] = "Hatch Egg",["WorldName"] = "Xmas"})
                        end
                        if shared.toggleAOEx3 then
                            game:GetService("ReplicatedStorage").Remotes.Events.Shop:FireServer({["EggName"] = _G.EggEventSelected,["Action"] = "Triple Hatch Egg",["WorldName"] = "Xmas"})
                        end
                    end
                end
            end
        end)
local Teleport = main:CreateCategory("Teleport")
        local TS = Teleport:CreateSection("Teleport Stuff")
        local EggDropDown = TS:Create(
                "DropDown",
                "Choose a Location", 
                function(current)
                    print("Selected to:", current)
                    if current == "Spawn" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, 7, 0)
                    elseif current == "Magic Forest" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9, 902, 10)
                    elseif current == "Tropical Paradise" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9, 1902, 10)
                    end
                end,
                {
                    options = {
                        "Spawn", "Magic Forest", "Tropical Paradise"
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
local PlayerStuff = main:CreateCategory("Local Player")
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
            PS:Create(
                "Button",
                "Copy Location",
                function()
                    local function RoundNumber(Number, Divider)
                        Divider = Divider or 1
                        return (math.floor((Number/Divider)+0.5)*Divider)
                    end
                    syn.write_clipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. tostring(Vector3.new(RoundNumber(game.Players.LocalPlayer.Character.Head.Position.X,1),RoundNumber(game.Players.LocalPlayer.Character.Head.Position.Y-1.5,1),RoundNumber(game.Players.LocalPlayer.Character.Head.Position.Z,1))) .. ")")
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

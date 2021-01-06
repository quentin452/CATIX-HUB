-- Anti AFK

local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    Virtual:CaptureController()
    Virtual:ClickButton2(Vector2.new())
    wait(2)
end)

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/quentin452/CATIX-HUB/master/!Zypher%20UI.lua"))()

local main = library:CreateMain({
    projName = "ScreenGui",
    Resizable = true,
    MinSize = UDim2.new(0,400,0,400),
    MaxSize = UDim2.new(0,750,0,500),
})

local Home = main:CreateCategory("Home")
    local Tittle = Home:CreateSection(" Pet Evolution Simulator")
    local H1 = Home:CreateSection("Update logs V1.0:")
        H1:Create(
            "Textlabel",
            "+ Game Added"
        )
    local H2 = Home:CreateSection("Credits")
        H2:Create(
            "Textlabel",
            "Script by CATIX HUB"
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
    local FS = Function:CreateSection("Function Stuff")
        FS:Create(
            "Toggle",
            "Auto Evolve",
            function(state)
                shared.toggle1 = state
            end,
            {
                default = false,
            }
        )
        FS:Create(
            "Toggle",
            "Auto Mutate",
            function(state)
                shared.toggle2 = state
            end,
            {
                default = false,
            }
        )
        FS:Create(
            "Toggle",
            "Auto Aura",
            function(state)
                if state then
                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.AuraService.ToggleAura:InvokeServer(true)
                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.AuraService.SetAuraOntoCharacter:InvokeServer(0)
                    game:GetService("Players").LocalPlayer.PlayerGui.CoreUI.TopPanel.Charge.Bar.Fill.Size = UDim2.new(1,0,1,0)
                else
                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.AuraService.ToggleAura:InvokeServer(false)
                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.AuraService.SetAuraOntoCharacter:InvokeServer(1)
                    game:GetService("Players").LocalPlayer.PlayerGui.CoreUI.TopPanel.Charge.Bar.Fill.Size = UDim2.new(0,0,1,0)
                end
            end,
            {
                default = false,
            }
        )
        FS:Create(
            "Toggle",
            "Auto Delete Model (require for auto farm and tp)",
            function(state)
                shared.toggle3 = state
            end,
            {
                default = false,
            }
        )
        spawn(function()
            while wait() do
                if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
                    local plr = game.Players.LocalPlayer.Name
                    if shared.toggle1 then
                        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EvolutionService.Evolve:InvokeServer()
                    end
                    if shared.toggle2 then
                        game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EvolutionService.Mutate:InvokeServer()
                    end
                    if shared.toggle3 then
                        local me = game.Players.LocalPlayer.Character
                        for i,v in pairs(me:GetChildren()) do
                            if v.ClassName == "Model" then
                                v:Destroy()   
                            end
                        end
                    end
                end
            end
        end)

        local Mobs = Function:CreateSection("Auto Tp To Mobs")
            Mobs:Create(
                "DropDown",
                "Choose a Stage", 
                function(current)
                    _G.SelecteStage = current
                    if current == "Stage 1" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(147.762711, 8, 137.650558)
                    elseif current == "Stage 2" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9.38612175, 8, 154.267273)
                    elseif current == "Stage 3" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-186.226318, 8, 142.677994)
                    elseif current == "Stage 4" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-388.904572, 8, 145.00766)
                    elseif current == "Stage 5" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-540.650635, 8, 146.028366)
                    elseif current == "Stage 6" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-715.515869, 8, 133.353897)
                    elseif current == "Stage 7" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-898.667725, 8, 152.557114)
                    elseif current == "Stage 8" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1077.31201, 8, 152.494446)
                    elseif current == "Stage 9" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1255.83655, 8, 143.13858)
                    elseif current == "Stage 10" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1382.75354, 8, 102.631073)
                    elseif current == "Stage 11" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1557.13452, 8, 150.865341)
                    elseif current == "Stage 12" then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1708.8562, 8, 174.231552)
                    end
                end,
                {
                    options = {
                        "Stage 1", "Stage 2", "Stage 3", "Stage 4", "Stage 5", "Stage 6","Stage 7", "Stage 8", "Stage 9", "Stage 10", "Stage 11", "Stage 12"
                    },
                    -- Optional
                    default = "Choose a Stage",
                    search = false
                }
            )
            Mobs:Create(
                "Toggle",
                "Auto Farm",
                function(state)
                    print("Current state:", state)
                    shared.toggleABE2 = state
                end,
                {
                    default = false,
                }
            )
            spawn(function()
                local me = game.Players.LocalPlayer.Character.HumanoidRootPart
                local HumanCache = game:GetService("Workspace").HumanCache
                while wait() do
                    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
                        if shared.toggleABE2 then
                            if _G.SelecteStage ~= nil then
                                if _G.SelecteStage == "Stage 1" then
                                    local pbosd = HumanCache:FindFirstChild("Noob") or HumanCache:FindFirstChild("Bacon Hair") or HumanCache:FindFirstChild("Guest")
                                    me.CFrame = pbosd.HumanoidRootPart.CFrame
                                elseif _G.SelecteStage == "Stage 2" then
                                    local pbosd = HumanCache:FindFirstChild("Skeleton") or HumanCache:FindFirstChild("Cowboy") or HumanCache:FindFirstChild("Sun Lord")
                                    me.CFrame = pbosd.HumanoidRootPart.CFrame
                                elseif _G.SelecteStage == "Stage 3" then
                                    local pbosd = HumanCache:FindFirstChild("Astronaut") or HumanCache:FindFirstChild("Space Walker") or HumanCache:FindFirstChild("Alien")
                                    me.CFrame = pbosd.HumanoidRootPart.CFrame
                                elseif _G.SelecteStage == "Stage 4" then
                                    local pbosd = HumanCache:FindFirstChild("PolarBear") or HumanCache:FindFirstChild("Snowman") or HumanCache:FindFirstChild("Rich Santa")
                                    me.CFrame = pbosd.HumanoidRootPart.CFrame
                                elseif _G.SelecteStage == "Stage 5" then
                                    local pbosd = HumanCache:FindFirstChild("Candycorn") or HumanCache:FindFirstChild("Chocolate Zombie") or HumanCache:FindFirstChild("Gingerbread Man")
                                    me.CFrame = pbosd.HumanoidRootPart.CFrame
                                elseif _G.SelecteStage == "Stage 6" then
                                    local pbosd = HumanCache:FindFirstChild("Magma Lord") or HumanCache:FindFirstChild("Magma Fiend") or HumanCache:FindFirstChild("Fire Lord")
                                    me.CFrame = pbosd.HumanoidRootPart.CFrame
                                elseif _G.SelecteStage == "Stage 7" then
                                    local pbosd = HumanCache:FindFirstChild("Rich Man") or HumanCache:FindFirstChild("Suspicious Man") or HumanCache:FindFirstChild("Golden Man")
                                    me.CFrame = pbosd.HumanoidRootPart.CFrame
                                elseif _G.SelecteStage == "Stage 8" then
                                    local pbosd = HumanCache:FindFirstChild("Beach") or HumanCache:FindFirstChild("Pirate") or HumanCache:FindFirstChild("Captain Pirate")
                                    me.CFrame = pbosd.HumanoidRootPart.CFrame
                                elseif _G.SelecteStage == "Stage 9" then
                                    local pbosd = HumanCache:FindFirstChild("Lindsey") or HumanCache:FindFirstChild("Dennis") or HumanCache:FindFirstChild("Cindy")
                                    me.CFrame = pbosd.HumanoidRootPart.CFrame
                                elseif _G.SelecteStage == "Stage 10" then
                                    local pbosd = HumanCache:FindFirstChild("Aqua Soldier") or HumanCache:FindFirstChild("Squid Lord") or HumanCache:FindFirstChild("Ruin Lord")
                                    me.CFrame = pbosd.HumanoidRootPart.CFrame
                                elseif _G.SelecteStage == "Stage 11" then
                                    local pbosd = HumanCache:FindFirstChild("Cave Man") or HumanCache:FindFirstChild("Explorer") or HumanCache:FindFirstChild("Hunter")
                                    me.CFrame = pbosd.HumanoidRootPart.CFrame
                                elseif _G.SelecteStage == "Stage 12" then
                                    local pbosd = HumanCache:FindFirstChild("Steamer") or HumanCache:FindFirstChild("MadMan") or HumanCache:FindFirstChild("Pan")
                                    me.CFrame = pbosd.HumanoidRootPart.CFrame
                                end
                            end
                        end
                    end
                end
            end)

    local OS = Function:CreateSection("Other Stuff")
        OS:Create(
            "Button",
            "Active All Gamepass",
            function()
                for i,v in pairs(game:GetService("Players").LocalPlayer.Passes:GetChildren()) do
                    v.Value = true
                end
            end,
            {
                animated = true,
            }
        )
        OS:Create(
            "Button",
            "Destroy Doors",
            function()
                game:GetService("Workspace").Doors:Destroy()
            end,
            {
                animated = true,
            }
        )
local PetModule = main:CreateCategory("Pet Module")
    local ABE = PetModule:CreateSection("Auto Buy Egg(go to eggs)")
            ABE:Create(
                "DropDown",
                "Select Eggs", 
                function(current)
                    print("Selected to:", current)
                    _G.EggSelected = current
                end,
                {
                    options = {
                        "stage1", "stage2", "stage3", "stage4", "stage5", "stage6", "stage7", "stage8", "stage9", "stage10", "stage11", "stage12"
                    },
                    -- Optional
                    default = "Select Eggs",
                    search = false
                }
            )
            ABE:Create(
                "Toggle",
                "Open 1 Egg",
                function(state)
                    print("Current state:", state)
                    shared.toggleABE1 = state
                end,
                {
                    default = false,
                }
            )
            spawn(function()
                while wait() do
                    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health ~= 0 then
                        if shared.toggleABE1 then
                            if _G.EggSelected ~= nil then
                                if _G.EggSelected == "stage1" then
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(166.985931, 9.4234972, 266.464233)
                                    wait()    
                                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StageService.Purchase:InvokeServer(workspace.StageCapsules[_G.EggSelected])
                                elseif _G.EggSelected == "stage2" then
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(3.98311234, 8.38979053, 263.198578)
                                    wait()
                                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StageService.Purchase:InvokeServer(workspace.StageCapsules[_G.EggSelected])
                                elseif _G.EggSelected == "stage3" then
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-173.989746, 10.0876331, 268.536652)
                                    wait()
                                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StageService.Purchase:InvokeServer(workspace.StageCapsules[_G.EggSelected])
                                elseif _G.EggSelected == "stage4" then
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-350.793152, 8.51311684, 238.050842)
                                    wait()
                                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StageService.Purchase:InvokeServer(workspace.StageCapsules[_G.EggSelected])
                                elseif _G.EggSelected == "stage5" then
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-511.107971, 8.77133369, 263.727875)
                                    wait()
                                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StageService.Purchase:InvokeServer(workspace.StageCapsules[_G.EggSelected])
                                elseif _G.EggSelected == "stage6" then
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-680.74762, 11.8059883, 265.457642)
                                    wait()
                                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StageService.Purchase:InvokeServer(workspace.StageCapsules[_G.EggSelected])
                                elseif _G.EggSelected == "stage7" then
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-866.715576, 9.77270699, 257.518372)
                                    wait()
                                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StageService.Purchase:InvokeServer(workspace.StageCapsules[_G.EggSelected])
                                elseif _G.EggSelected == "stage8" then
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1031.42566, 10.3537083, 251.807739)
                                    wait()
                                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StageService.Purchase:InvokeServer(workspace.StageCapsules[_G.EggSelected])
                                elseif _G.EggSelected == "stage9" then
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1213.95496, 8.13463783, 243.060242)
                                    wait()
                                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StageService.Purchase:InvokeServer(workspace.StageCapsules[_G.EggSelected])
                                elseif _G.EggSelected == "stage10" then
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1380.70337, 8.61589527, 260.981476)
                                    wait()
                                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StageService.Purchase:InvokeServer(workspace.StageCapsules[_G.EggSelected])
                                elseif _G.EggSelected == "stage11" then
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1562.45178, 10.4052944, 265.826904)
                                    wait()
                                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StageService.Purchase:InvokeServer(workspace.StageCapsules[_G.EggSelected])
                                elseif _G.EggSelected == "stage12" then
                                    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1733.47058, 9.93076706, 264.870667)
                                    wait()
                                    game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.StageService.Purchase:InvokeServer(workspace.StageCapsules[_G.EggSelected])
                                end
                            end
                        end
                    end   
                end
            end)

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

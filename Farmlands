-- Anti AFK

    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Farmlands")

local AF = w:CreateFolder("Auto farm")

    AF:Toggle("Farm Fishing",function(bool)
        shared.toggleAF = bool
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-244.079, 24.8942, -506.78)
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
        loadstring(game:HttpGet("https://pastebin.com/raw/7rXZ9VNc", true))()
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

local CS = w:CreateFolder("Credit")

 CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
    CS:DestroyGUI()

spawn(function()
    while wait(1) do
        if shared.toggleAF then
            local args = {
                [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fishing Rod") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fishing Rod"),
                [2] = Vector3.new(-246.824402, 20.5250015, -525.877991),
                [3] = workspace.WaterSources.Water.Water,
            }
            game:GetService("ReplicatedStorage").RemoteCommunication.UseFishingRod:FireServer(unpack(args))
        end
    end
end)

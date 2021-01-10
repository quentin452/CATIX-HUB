local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Wizard Cats")
    local b = w:CreateFolder("Function")
        b:Slider("FOV",70,120,true,function(value) --MinValue,MaxValue,Precise
            game:GetService("Workspace").Camera.FieldOfView = value
        end)
        b:Button("God Mod",function()
            local player = game.Players.LocalPlayer
            if player.Character then
                if player.Character:FindFirstChild("Humanoid") then
                    player.Character.Humanoid.Name = "1"
                end
                local l = player.Character["1"]:Clone()
                l.Parent = player.Character
                l.Name = "Humanoid"; wait(0.1)
                player.Character["1"]:Destroy()
                workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
                player.Character.Animate.Disabled = true; wait(0.1)
                player.Character.Animate.Disabled = false
            end
            print("finished.")
        end)
        b:Label("Once the god mode starts, you will not be able to move until the end of the game",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

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

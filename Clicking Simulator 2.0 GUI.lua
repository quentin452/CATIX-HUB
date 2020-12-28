-- Anti AFK

    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

local rs = game:GetService("RunService").RenderStepped
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Clicking Simulator 2.0")
_G.clickspeed = 1
local AF = w:CreateFolder("Auto farm")

    AF:Slider("Choosing click speed",1,20,true,function(value)
        print(value)
        _G.clickspeed = value
    end)

    AF:Toggle("Auto Clicking",function(bool)
        shared.toggleAC = bool
    end)

local AR = w:CreateFolder("Auto Rebirth")

    AR:Toggle("Auto Rebirth x1",function(bool)
        shared.toggleAR1 = bool
    end)

    AR:Toggle("Auto Rebirth x5",function(bool)
        shared.toggleAR2 = bool
    end)

    AR:Toggle("Auto Rebirth x15",function(bool)
        shared.toggleAR3 = bool
    end)

    AR:Toggle("Auto Rebirth x50",function(bool)
        shared.toggleAR4 = bool
    end)

    AR:Toggle("Auto Rebirth x100",function(bool)
        shared.toggleAR5 = bool
    end)

    AR:Toggle("Auto Rebirth x250",function(bool)
        shared.toggleAR6 = bool
    end)

    AR:Toggle("Auto Rebirth x750",function(bool)
        shared.toggleAR7 = bool
    end)

    AR:Toggle("Auto Rebirth x2.5k",function(bool)
        shared.toggleAR8 = bool
    end)

    AR:Toggle("Auto Rebirth x10k",function(bool)
        shared.toggleAR9 = bool
    end)

    AR:Toggle("Auto Rebirth x25k",function(bool)
        shared.toggleAR10 = bool
    end)

local ABE = w:CreateFolder("Auto Buy Eggs")

    ABE:Toggle("x3 Open Egg ?",function(bool)
        _G.x3EggOpenn = bool
    end)

    ABE:Toggle("Common (500)",function(bool)
        shared.toggleABE1 = bool
    end)

    ABE:Toggle("Fruit (75k)",function(bool)
        shared.toggleABE2 = bool
    end)

    ABE:Toggle("Volcano (4.5M)",function(bool)
        shared.toggleABE3 = bool
    end)

    ABE:Toggle("Water (5B)",function(bool)
        shared.toggleABE4 = bool
    end)

    ABE:Toggle("Scuba (500B)",function(bool)
        shared.toggleABE5 = bool
    end)

    ABE:Toggle("Meteor (150T)",function(bool)
        shared.toggleABE6 = bool
    end)

    ABE:Toggle("Event 1M (1T)",function(bool)
        shared.toggleABE7 = bool
    end)

local TP = w:CreateFolder("Teleport")

    TP:Button("Spawn",function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-58.4476, 793.349, -133.86)
    end)

    TP:Button("Volcano Area",function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5034.48, 680.489, -2599.75)
    end)

    TP:Button("Atlantis Area",function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2722.48, 572.946, -655.038)
    end)

    TP:Button("Space Area",function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-605.566, 2778.13, -307.86)
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

    MISC:Button("Unlock Area",function()
        game:GetService("Players").LocalPlayer.Stats.Volcano.Value = true
        game:GetService("Players").LocalPlayer.Stats.VolcanoB.Value = true
        game:GetService("Players").LocalPlayer.Stats.Atlantic.Value = true
        game:GetService("Players").LocalPlayer.Stats.AtlanticB.Value = true
        game:GetService("Players").LocalPlayer.Stats.Space.Value = true
        game:GetService("Players").LocalPlayer.Stats.SpaceB.Value = true
    end)

    MISC:GuiSettings()

local CS = w:CreateFolder("Credits")

    CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
    CS:DestroyGUI()

spawn(function()
    while rs:wait() do
        if shared.toggleAC then
            for i = 1,_G.clickspeed do
                workspace.Events.Give:FireServer()
            end
        end
    end
end)

spawn(function()
    while rs:wait() do
        if shared.toggleAR1 then
            for i = 1,10 do
                workspace.Events.Give2:FireServer()
            end
        end
    end
end)

spawn(function()
    while rs:wait() do
        if shared.toggleAR2 then
            for i = 1,10 do
                workspace.Events.Give3:FireServer()
            end
        end
    end
end)

spawn(function()
    while rs:wait() do
        if shared.toggleAR3 then
            workspace.Events.Give4:FireServer()
        end
    end
end)

spawn(function()
    while rs:wait() do
        if shared.toggleAR4 then
            workspace.Events.Give5:FireServer()
        end
    end
end)

spawn(function()
    while rs:wait() do
        if shared.toggleAR5 then
            workspace.Events.Give7:FireServer()
        end
    end
end)

spawn(function()
    while rs:wait() do
        if shared.toggleAR6 then
            workspace.Events.Give8:FireServer()
        end
    end
end)

spawn(function()
    while rs:wait() do
        if shared.toggleAR7 then
            workspace.Events.Give9:FireServer()
        end
    end
end)

spawn(function()
    while rs:wait() do
        if shared.toggleAR8 then
            workspace.Events.Give10:FireServer()
        end
    end
end)

spawn(function()
    while rs:wait() do
        if shared.toggleAR9 then
            workspace.Events.Give11:FireServer()
        end
    end
end)

spawn(function()
    while rs:wait() do
        if shared.toggleAR10 then
            workspace.Events.Give12:FireServer()
        end
    end
end)

_G.x3EggOpenn = false
spawn(function()
    while wait(0.2) do
        if shared.toggleABE1 then
            local args = {
                [1] = game:GetService("Players").LocalPlayer,
                [2] = "Common",
                [3] = _G.x3EggOpenn,
            }
            game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))
        end
        if shared.toggleABE2 then
            local args = {
                [1] = game:GetService("Players").LocalPlayer,
                [2] = "Fruit",
                [3] = _G.x3EggOpenn,
            }
            game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))
        end
        if shared.toggleABE3 then
            local args = {
                [1] = game:GetService("Players").LocalPlayer,
                [2] = "Volcano",
                [3] = _G.x3EggOpenn,
            }
            game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))
        end
        if shared.toggleABE5 then
            local args = {
                [1] = game:GetService("Players").LocalPlayer,
                [2] = "Scuba",
                [3] = _G.x3EggOpenn,
            }
            game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))
        end
        if shared.toggleABE4 then
            local args = {
                [1] = game:GetService("Players").LocalPlayer,
                [2] = "Water",
                [3] = _G.x3EggOpenn,
            }
            game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))
        end
        if shared.toggleABE6 then
            local args = {
                [1] = game:GetService("Players").LocalPlayer,
                [2] = "Meteor",
                [3] = _G.x3EggOpenn,
            }
            game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))
        end
        if shared.toggleABE7 then
            local args = {
                [1] = game:GetService("Players").LocalPlayer,
                [2] = "Event",
                [3] = _G.x3EggOpenn,
            }
            game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))
        end
    end
end)

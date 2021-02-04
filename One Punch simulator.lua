-- Anti AFK

local Virtual = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
    Virtual:CaptureController()
    Virtual:ClickButton2(Vector2.new())
    wait(2)
end)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("One Punch simulator")

local AF = w:CreateFolder("Auto Farm")

    AF:Toggle("Auto Punch",function(bool)
        shared.toggleAPunch = bool
    end)

    AF:Toggle("Auto Pushups",function(bool)
        shared.toggleAP = bool
    end)

    AF:Toggle("Auto Squats",function(bool)
        shared.toggleAS = bool
    end)

    AF:Toggle("Auto Rebirth",function(bool)
        shared.toggleAR = bool
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
local PM = w:CreateFolder("Pet Module")
    local SelectEggsStrings = {}

    for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
        table.insert(SelectEggsStrings, v.Name)
    end
    PM:Dropdown("Select Egg",SelectEggsStrings,true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
        _G.EggSelected = mob
    end)
    PM:Toggle("Open X1",function(bool)
        shared.OpenX1 = bool
    end)
    PM:Toggle("Open X3",function(bool)
        shared.OpenX3 = bool
    end)
    spawn(function()
        while wait() do
            if _G.EggSelected ~= nil then
                if shared.OpenX1 then
                    game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(_G.EggSelected,"Single")
                end
                if shared.OpenX3 then
                    game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(_G.EggSelected,"Triple")
                end
            end
        end
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

    MISC:Button("Use All Codes",function()
        local A1 = "saitama"
        local Event = game:GetService("ReplicatedStorage").Events.CodeReward
        Event:InvokeServer(A1)
        local A1 = "esper"
        Event:InvokeServer(A1)
        local A1 = "crablante"
        Event:InvokeServer(A1)
        local A1 = "arena"
        Event:InvokeServer(A1)
        local A1 = "6milvisits"
        Event:InvokeServer(A1)
        local A1 = "30kfavs"
        Event:InvokeServer(A1)
    end)

    MISC:GuiSettings()

local CS = w:CreateFolder("Credits")

    CS:Label("Script: Altix#5997",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:DestroyGUI()

spawn(function()
    while wait() do
        if shared.toggleAPunch then
            local tool1 = game.Players.LocalPlayer.Backpack:FindFirstChild("Punch")  or game.Players.LocalPlayer.Character:FindFirstChild("Punch")
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool1)
            tool1:Activate()
        end
    end
end)
spawn(function()
    while wait() do
        if shared.toggleAP then
            game:GetService("ReplicatedStorage").Events.GiverPower_Client_Event:FireServer("Pushups")
        end
    end
end)
spawn(function()
    while wait() do
        if shared.toggleAS then
            game:GetService("ReplicatedStorage").Events.GiverSpeed_Client_Event:FireServer("Squats")
        end
    end
end)
spawn(function()
    while wait(1) do
        if shared.toggleAR then
            game:GetService("ReplicatedStorage").Events.RebirthEvent:FireServer()
        end
    end
end)

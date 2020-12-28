local nubr = Instance.new("NumberValue", game.Workspace)
nubr.Name = "nubr"
nubr.Value = 1

-- Anti AFK

    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

-- GUI
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()
local w = library:CreateWindow("Super Clicker X")
local rs = game:GetService("RunService").RenderStepped

local ABE = w:CreateFolder("Auto Buy Cases")
    
    ABE:Box("number of openings at a time","number",function(value) -- "number" or "string"
        print(value)
        nubr.Value = value
    end)

    ABE:Toggle("Common",function(bool)
        shared.toggle0 = bool
    end)

    ABE:Toggle("Uncommon",function(bool)
        shared.toggle1 = bool
    end)

    ABE:Toggle("Rare",function(bool)
        shared.toggle2 = bool
    end)

    ABE:Toggle("Epic",function(bool)
        shared.toggle3 = bool
    end)

    ABE:Toggle("Legendary",function(bool)
        shared.toggle4 = bool
    end)

    ABE:Toggle("Mythic",function(bool)
        shared.toggle5 = bool
    end)

    ABE:Toggle("Amethyst",function(bool)
        shared.toggle6 = bool
    end)

    ABE:Toggle("Mystic",function(bool)
        shared.toggle7 = bool
    end)

    ABE:Toggle("Fast Mystic",function(bool)
        shared.toggle8 = bool
    end)

    ABE:Toggle("FastFast Mystic",function(bool)
        shared.toggle9 = bool
    end)

    ABE:Toggle("Really Fast Mystic",function(bool)
        shared.toggle10 = bool
    end)

    ABE:Button("INFINIE BUX",function() -- "number" or "string"
        function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end
        local args = {
            [1] = getNil("Value", "LocalScript"),
            [2] = 9593393,
            [3] = "Neo",
            [4] = -1e+999,
        }
        game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
    end)
local ABU = w:CreateFolder("Auto Buy Upgrade")

    ABU:Toggle("Bux Per Click",function(bool)
        shared.toggleABU1 = bool
    end)

    ABU:Toggle("Trade Slots",function(bool)
        shared.toggleABU2 = bool
    end)

    ABU:Toggle("Cases at Once",function(bool)
        shared.toggleABU3 = bool
    end)

local AS = w:CreateFolder("Auto Sell")

    AS:Toggle("Auto Sell",function(bool)
        shared.toggleAS = bool
    end)

local AR = w:CreateFolder("Auto Rebirth")

    AR:Toggle("Auto Rebirth",function(bool)
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
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
    CS:DestroyGUI()

function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end

spawn(function()
    while rs:wait() do
        if shared.toggle0 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 19159005,
                [3] = "Medium",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle1 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 55555,
                [3] = "Pro",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle2 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 109559,
                [3] = "Insane",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle3 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 900,
                [3] = "Extreme",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle4 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 5999990,
                [3] = "Godly",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle5 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 5901500,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle6 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 1519559,
                [3] = "Ultimate",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle7 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle8 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle8 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle8 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle9 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)
spawn(function()
    while rs:wait() do
            if shared.toggle10 then
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 501959,
                [3] = "Neo",
                [4] = nubr.Value,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Open Case"]:InvokeServer(unpack(args))
        end
    end
end)



spawn(function()
    while wait() do
        if shared.toggleAS then
            function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 39531509,
                [3] = "All",
            }
            
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes.Sell:FireServer(unpack(args))
        end
        if shared.toggleABU1 then
            function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 9015009,
                [3] = "BuxPerClick",
                [4] = false,
            }

            game:GetService("ReplicatedStorage")["Game Objects"].Remotes.Upgrade:FireServer(unpack(args))
        end
        if shared.toggleABU2 then
            function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 5909135,
                [3] = "TradeSlots",
                [4] = false,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes.Upgrade:FireServer(unpack(args))
        end
        if shared.toggleABU3 then
            function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end
            local args = {
                [1] = getNil("Value", "LocalScript"),
                [2] = 59033915,
                [3] = "CasesPerOpen",
                [4] = true,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes.Upgrade:FireServer(unpack(args))
        end
    end
end)

spawn(function()
    while wait(2) do
        if shared.toggleAR then
            local args = {
                [1] = game:GetService("Players").LocalPlayer,
            }
            game:GetService("ReplicatedStorage")["Game Objects"].Remotes["Rebirth Player"]:FireServer(unpack(args))
        end
    end
end)

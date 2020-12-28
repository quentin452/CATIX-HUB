--https://www.roblox.com/games/5016053113/SALE-Energy-Legends


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Energy Legends GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local Eggs = Library:CreateTab("eggs","things", true)
local MISC = Library:CreateTab("MISC","things", true)
local credits = Library:CreateTab("Credits","things", true)



credits:CreateButton("Our Discords", function() --you dont need "arg" for a button
    setclipboard("AHAHAHAHAH")
end)

credits:CreateButton("https://discord.gg/KmHZUpXEmQ", function() --you dont need "arg" for a button
    setclipboard("https://discord.gg/KmHZUpXEmQ")
end)

credits:CreateButton("by Altix#3395", function() --you dont need "arg" for a button
    setclipboard("Altix#3395")
end)

credits:CreateButton("by I'm A Cat#7202", function() --you dont need "arg" for a button
    setclipboard("I'm A Cat#7202")
end)
AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
       while wait(0) do 
game:GetService("ReplicatedStorage").Events.EnergyEvent:FireServer()
end
    else
        _G.a = false
    end
end)

AutoTab:CreateToggle("Auto Sell", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
       while wait(0) do 
    local Event = game:GetService("ReplicatedStorage").Events.TradeEvent
     Event:FireServer()
end
    else
        _G.b = false
    end
end)

AutoTab:CreateToggle("Auto Upgrade", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
       while wait(0) do 
    local Event = game:GetService("ReplicatedStorage").Events.UpgradeEvent
 Event:FireServer()

end
    else
        _G.c = false
    end
end)

MISC:CreateToggle("NO CLIP Press(E)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.NO = true 
  noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)

if key == "e" then
noclip = not noclip
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
print('Created by FileExplorer')
print('Credits to Peyton for the ChangeState part of this script')

         
else
_G.NO = false
end
end)



MISC:CreateToggle("Speed Hack 300", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.Speed = true 
        while wait() and _G.Speed do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 300
        end
    else
        _G.Speed = false
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
         end
end)

Eggs:CreateToggle("Egg cost 100k Spawn", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
            local args = {
            [1] = "OpenEgg",
            [2] = 1,
            [3] = "Tier1",
            }
            game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))    
        end
    else
        _G.e = false
    end
end)

Eggs:CreateToggle("Egg cost 1M Spawn", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
            local args = {
            [1] = "OpenEgg",
            [2] = 1,
            [3] = "Tier2",
            }
            game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))    
        end
    else
        _G.f = false
    end
end)

Eggs:CreateToggle("Egg cost 10M Spawn", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
            local args = {
            [1] = "OpenEgg",
            [2] = 1,
            [3] = "Tier3",
            }
            game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))    
        end
    else
        _G.g = false
    end
end)

Eggs:CreateToggle("Egg cost 100M Spawn", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
            local args = {
            [1] = "OpenEgg",
            [2] = 1,
            [3] = "Tier4",
            }
            game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))    
        end
    else
        _G.h = false
    end
end)

Eggs:CreateToggle("Egg cost 1B Spawn", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
            local args = {
            [1] = "OpenEgg",
            [2] = 1,
            [3] = "Tier5",
            }
            game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))    
        end
    else
        _G.i = false
    end
end)

Eggs:CreateToggle("Egg cost 500k island 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
            local args = {
            [1] = "OpenEgg",
            [2] = 1,
            [3] = "Tier6",
            }
            game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))    
        end
    else
        _G.j = false
    end
end)

Eggs:CreateToggle("Egg cost 5M Island 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
       local args = {
    [1] = "OpenEgg",
    [2] = 1,
    [3] = "Tier7"
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))

        end
    else
        _G.k = false
    end
end)

Eggs:CreateToggle("Egg cost 50M Island 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
            local args = {
            [1] = "OpenEgg",
            [2] = 1,
            [3] = "Tier8",
            }
            game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))    
        end
    else
        _G.l = false
    end
end)

Eggs:CreateToggle("Egg cost 500M Island 4", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
            local args = {
            [1] = "OpenEgg",
            [2] = 1,
            [3] = "Tier9",
            }
            game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))    
        end
    else
        _G.m = false
    end
end)

Eggs:CreateToggle("Egg cost 5B Island 5", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do
            local args = {
            [1] = "OpenEgg",
            [2] = 1,
            [3] = "Tier10",
            }
            game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))    
        end
    else
        _G.n = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-102.232002, -116.638832, -320.815735)
end)

teleports:CreateButton("Island 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2295.60205, -116.747467, 23.1212158)
end)

teleports:CreateButton("Island 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2324.35742, -129.745758, 1576.32837)
end)

teleports:CreateButton("Island 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2377.49194, -129.745804, 3089.42969)
end)

teleports:CreateButton("Island 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2315, -129.745804, 4897)
end)

teleports:CreateButton("Island 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2315.08936, -129.745758, 6705.52539)
end)

teleports:CreateButton("Island 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2298.60645, -129.745758, 8556.00586)
end)

teleports:CreateButton("Island 7", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2308.90381, -116.74749, -1.38810539)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

--https://www.roblox.com/games/4489411976/WORLD-3-Spellblade-Legends





local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Spellblade Legends GUI","things", true)
local buy = Library:CreateTab("Auto Buy","things", true)
local eggs1 = Library:CreateTab("Buy Eggs World 1","things", true)
local teleports1 = Library:CreateTab("TP WORLD 1","things", true)
local eggs2 = Library:CreateTab("Buy Eggs World 2","things", true)
local teleports2 = Library:CreateTab("TP WORLD 2","things", true)
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
        _G.LULU = true 
        while wait(0) and _G.LULU do
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
end

    else
        _G.LULU = false
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


MISC:CreateToggle("Speed Hack 100", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.Speed = true 
        while wait() and _G.Speed do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
        end
    else
        _G.Speed = false
           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20
         end
end)

AutoTab:CreateToggle("Auto Evolve All Pets", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
            local A_1 = "EvolveAll"
local Event = game:GetService("ReplicatedStorage").Remotes.PetRequest
Event:InvokeServer(A_1)

        end
    else
        _G.b = false
    end
end)

buy:CreateToggle("Auto Buy Sword", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
            local A_1 = "AllWeapons"
local Event = game:GetService("ReplicatedStorage").Remotes.Purchase
Event:InvokeServer(A_1)

        end
    else
        _G.c = false
    end
end)

buy:CreateToggle("Auto Buy Auras", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
           local A_1 = "AllAuras"
local Event = game:GetService("ReplicatedStorage").Remotes.Purchase
Event:InvokeServer(A_1)

        end
    else
        _G.d = false
    end
end)

eggs1:CreateToggle("Auto Buy  Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
             
local A_1 = " Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.OpenEgg
Event:InvokeServer(A_1, A_2)


        end
    else
        _G.e = false
    end
end)

eggs1:CreateToggle("Auto Buy Desert Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
             
local A_1 = "Desert Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.OpenEgg
Event:InvokeServer(A_1, A_2)


        end
    else
        _G.f= false
    end
end)

eggs1:CreateToggle("Auto Buy Frost Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
             
local A_1 = "Frost Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.OpenEgg
Event:InvokeServer(A_1, A_2)


        end
    else
        _G.g = false
    end
end)

eggs1:CreateToggle("Auto Buy Magma Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
             
local A_1 = "Magma Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.OpenEgg
Event:InvokeServer(A_1, A_2)


        end
    else
        _G.h = false
    end
end)

eggs2:CreateToggle("Auto Buy Sakura Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
             
local A_1 = "Sakura Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.OpenEgg
Event:InvokeServer(A_1, A_2)


        end
    else
        _G.i = false
    end
end)

eggs2:CreateToggle("Auto Buy Galaxy Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
             
local A_1 = "Galaxy Egg"
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Remotes.OpenEgg
Event:InvokeServer(A_1, A_2)


        end
    else
        _G.j = false
    end
end)

teleports1:CreateButton("Zone Magic X2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-731.861206, 2.77017498, 2122.51831)
end)

teleports1:CreateButton("Zone Magic X2,5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1324.56189, 2.77017498, 2479.33496)
end)

teleports1:CreateButton("Zone Magic X3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(115.793755, 4.48140574, 1439.72192)
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports1:CreateButton("Sell", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-298.252563, 14.5220203, 810.769226)
end)

teleports1:CreateButton("Zone 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-317.704315, 2.87017488, 1033.81091)
end)

teleports1:CreateButton("Zone 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-433.320221, 2.77017498, 1930.33215)
end)

teleports1:CreateButton("Zone 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1271.80627, 2.77017474, 2063.55273)
end)

teleports1:CreateButton("Zone 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(347.445709, 42.9764938, 2678.10132)
end)

teleports2:CreateButton("Zone Magic X3.5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-159.00528, 12.5827923, -59.9996719)
end)

teleports2:CreateButton("Zone Magic X4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1484.19934, -171.772308, -399.919006)
end)

teleports2:CreateButton("Sellx2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(21.2727604, 30.9532471, 36.0900078)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

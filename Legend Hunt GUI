--https://www.roblox.com/games/3135436676/Legend-Hunt


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Combo Clickers GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
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

AutoTab:CreateToggle("Auto Rebirth", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
         local Event = game:GetService("ReplicatedStorage").Events.rebirth
Event:InvokeServer()
   
        end
    else
        _G.b = false
    end
end)

eggs:CreateToggle("Auto Buy Common Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
            local A_1 = "Open"
            local A_2 = "Common"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.c = false
    end
end)

eggs:CreateToggle("Auto Buy Uncommon Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
            local A_1 = "Open"
            local A_2 = "Uncommon"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.d = false
    end
end)

eggs:CreateToggle("Auto Buy Royal Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
            local A_1 = "Open"
            local A_2 = "Royal"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.e = false
    end
end)

eggs:CreateToggle("Auto Buy Angelic Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
            local A_1 = "Open"
            local A_2 = "Angelic"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.f = false
    end
end)

eggs:CreateToggle("Auto Buy Demonic Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
            local A_1 = "Open"
            local A_2 = "Demonic"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Auto Buy Exotic Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
            local A_1 = "Open"
            local A_2 = "exotic"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Auto Buy Emathyest Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
            local A_1 = "Open"
            local A_2 = "Emathyest"
            local Event = game:GetService("ReplicatedStorage").Events.eggControl
            Event:FireServer(A_1, A_2)

        end
    else
        _G.i = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-269.874481, 3.09750366, -77.7202377)
end)

teleports:CreateButton("Zone 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-417.210754, 3.00753164, -213.892853)
end)

teleports:CreateButton("Zone 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-411.76297, 3.00753164, -366.507477)
end)

teleports:CreateButton("Zone 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-394.080505, 3.08753157, 161.521072)
end)

teleports:CreateButton("Zone 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-665.92804, 3.08753157, -79.182373)
end)

teleports:CreateButton("Zone 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-856.589539, 3.08753157, -79.7124634)
end)

teleports:CreateButton("Zone 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1047.54639, 3.18262768, -82.7457809)
end)

teleports:CreateButton("Sell", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-288.937866, 3.0974977, -103.371521)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

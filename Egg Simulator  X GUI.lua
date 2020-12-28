--https://www.roblox.com/games/4571493251/x2-Coins-Egg-Simulator-X




local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Egg Simulator X GUI","things", true)
local eggs = Library:CreateTab("Auto Buy eggs","things", true)
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

AutoTab:CreateToggle("Auto Buy Upgrades", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
            local Event = game:GetService("ReplicatedStorage").Upgrade
Event:FireServer()

        end
    else
        _G.b = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(2) and _G.c do
          local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
}

game:GetService("ReplicatedStorage").Eggs["Egg1"]:InvokeServer(unpack(args))
        end
    else
        _G.c = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(2) and _G.d do
                 local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
}

game:GetService("ReplicatedStorage").Eggs["Egg2"]:InvokeServer(unpack(args))
        end
    else
        _G.d = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(2) and _G.e do
                 local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
}

game:GetService("ReplicatedStorage").Eggs["Egg3"]:InvokeServer(unpack(args))
        end
    else
        _G.e = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs 4", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(2) and _G.f do
             local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
}

game:GetService("ReplicatedStorage").Eggs["Egg4"]:InvokeServer(unpack(args))
        end
    else
        _G.f = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs 5", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(2) and _G.g do
                    local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
}

game:GetService("ReplicatedStorage").Eggs["Egg5"]:InvokeServer(unpack(args))
        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs 6", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(2) and _G.h do
                    local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
}

game:GetService("ReplicatedStorage").Eggs["Egg6"]:InvokeServer(unpack(args))
        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs 7", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(2) and _G.i do
                  local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
}

game:GetService("ReplicatedStorage").Eggs["Egg7"]:InvokeServer(unpack(args))
        end
    else
        _G.i = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs 8", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(2) and _G.j do
                  local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
}

game:GetService("ReplicatedStorage").Eggs["Egg8"]:InvokeServer(unpack(args))
        end
    else
        _G.j = false
    end
end)

eggs:CreateToggle("Auto Buy Eggs 9", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(2) and _G.k do
                   local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
}

game:GetService("ReplicatedStorage").Eggs["Egg9"]:InvokeServer(unpack(args))
        end
    else
        _G.k = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-386.600098, 5.13563347, -720.700317)
end)

teleports:CreateButton("Safe Zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(943.662354, 5.13563347, -896.34259)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

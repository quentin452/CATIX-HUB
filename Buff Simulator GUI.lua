--https://www.roblox.com/games/4840737956/UPDATE-4-Buff-Simulator


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Buff Simulator GUI","things", true)
local buy = Library:CreateTab("Auto Buy","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local MISC = Library:CreateTab("MISC","things", true)
local credits = Library:CreateTab("Credits","things", true)

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
        while wait(0) and _G.a do
            local args = {
    [1] = "FirePunch",
    [2] = "Left",
}

game:GetService("ReplicatedStorage").RE:FireServer(unpack(args))
        end
    else
        _G.a = false
    end
end)

AutoTab:CreateToggle("Auto Sell", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
           local args = {
    [1] = "SellTeleport",
}

game:GetService("ReplicatedStorage").Communication.RE:FireServer(unpack(args))
        end
    else
        _G.b = false
    end
end)

AutoTab:CreateToggle("Speed Hack 100", function(arg) --the (arg) is if the checkbox is toggled or not
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

buy:CreateToggle("Auto Buy Punches", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
         local args = {
    [1] = "CSBuyAllPossible",
    [2] = "Punches",
}

game:GetService("ReplicatedStorage").Communication.RE:FireServer(unpack(args))
        end
    else
        _G.d = false
    end
end)

buy:CreateToggle("Auto Buy Muscles", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
      local args = {
    [1] = "CSBuyAllPossible",
    [2] = "Muscles",
}

game:GetService("ReplicatedStorage").Communication.RE:FireServer(unpack(args))
        end
    else
        _G.e = false
    end
end)

buy:CreateToggle("Auto Buy Ranks", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
        local args = {
    [1] = "CSBuyAllPossible",
    [2] = "Ranks",
}

game:GetService("ReplicatedStorage").Communication.RE:FireServer(unpack(args))
        end
    else
        _G.f = false
    end
end)

eggs:CreateToggle("Auto Buy Bronze Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
            local args = {
    [1] = "OpenEgg",
    [2] = 1,
    [3] = "Bronze3",
}

game:GetService("ReplicatedStorage").Communication.RE:FireServer(unpack(args))
        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Auto Buy Silver Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
          local args = {
    [1] = "OpenEgg",
    [2] = 1,
    [3] = "Silver4",
}

game:GetService("ReplicatedStorage").Communication.RE:FireServer(unpack(args))
        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Auto Buy Gold Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
        local args = {
    [1] = "OpenEgg",
    [2] = 1,
    [3] = "Gold5",
}

game:GetService("ReplicatedStorage").Communication.RE:FireServer(unpack(args))
        end
    else
        _G.i = false
    end
end)

eggs:CreateToggle("Auto Buy Diamond Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
  local args = {
    [1] = "OpenEgg",
    [2] = 1,
    [3] = "Diamond6",
}

game:GetService("ReplicatedStorage").Communication.RE:FireServer(unpack(args))
        end
    else
        _G.j = false
    end
end)

eggs:CreateToggle("Auto Buy Platinum Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
           local args = {
    [1] = "OpenEgg",
    [2] = 1,
    [3] = "Platinum7",
}

game:GetService("ReplicatedStorage").Communication.RE:FireServer(unpack(args))
        end
    else
        _G.k = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(92.6552734, 67.018158, 1128.8573)
end)

teleports:CreateButton("Island 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(125.004646, 940.055542, 1118.36816)
end)

teleports:CreateButton("Island 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(112.765366, 2560.25, 768.174316)
end)

teleports:CreateButton("Island 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(34.0867233, 4040.01196, 910.728821)
end)

teleports:CreateButton("Isalnd 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(36.4868813, 5670.05518, 911.071167)
end)

teleports:CreateButton("Island 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-29.8744164, 7802.05322, 753.919312)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

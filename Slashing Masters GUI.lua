--https://www.roblox.com/games/4359012847/NEW-Slashing-Masters

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()


local AutoTab = Library:CreateTab("Slashing-Masters GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local buy = Library:CreateTab("Auto Buy","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs x1","things", true)
local eggs2 = Library:CreateTab("Auto Buy Eggs x3","things", true)
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

buy:CreateToggle("Auto Buy Souls", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
          local args = {
    [1] = "Backpacks",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.ShopBuyAll:FireServer(unpack(args))
        end
    else
        _G.b = false
    end
end)

buy:CreateToggle("Auto Buy Swords", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
        local args = {
    [1] = "Swords",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.ShopBuyAll:FireServer(unpack(args))
        end
    else
        _G.c = false
    end
end)

buy:CreateToggle("Auto Buy Skills", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
       local args = {
    [1] = "Skills",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.ShopBuyAll:FireServer(unpack(args))
        end
    else
        _G.d = false
    end
end)

buy:CreateToggle("Auto Buy Auras", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
         local args = {
    [1] = "Auras",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.ShopBuyAll:FireServer(unpack(args))
        end
    else
        _G.e = false
    end
end)

eggs:CreateToggle("Auto Buy Commons Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
           
local args = {
    [1] = "COMMON",
    [2] = "E",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.f = false
    end
end)

eggs:CreateToggle("Auto Buy Uncommon Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
           local args = {
    [1] = "UNCOMMON",
    [2] = "E",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Auto Buy Rare Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
                   local args = {
    [1] = "RARE",
    [2] = "E",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Auto Buy Epic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
                     local args = {
    [1] = "EPIC",
    [2] = "E",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.i = false
    end
end)

eggs:CreateToggle("Auto Buy Legendary Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
     local args = {
    [1] = "LEGENDARY",
    [2] = "E",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.j = false
    end
end)

eggs:CreateToggle("Auto Buy Impossible Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
                local args = {
    [1] = "IMPOSSIBLE",
    [2] = "E",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.k = false
    end
end)

eggs:CreateToggle("Auto Buy Imortal Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
                   local args = {
    [1] = "IMORTAL",
    [2] = "E",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.l = false
    end
end)

eggs:CreateToggle("Auto Buy Lightning Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
                           local args = {
    [1] = "LIGHTNING",
    [2] = "E",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.m = false
    end
end)

eggs:CreateToggle("Auto Buy Waterfall Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do
                           local args = {
    [1] = "WATERFALL",
    [2] = "E",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.n = false
    end
end)

eggs:CreateToggle("Auto Buy Oriental Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do
                                     local args = {
    [1] = "ORIENTAL",
    [2] = "E",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.o = false
    end
end)

eggs:CreateToggle("Auto Buy Reaper Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
        while wait(0) and _G.p do
                                        local args = {
    [1] = "REAPER",
    [2] = "E",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.p = false
    end
end)

eggs:CreateToggle("Auto Buy Heaven Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
        while wait(0) and _G.q do
                                                  local args = {
    [1] = "HEAVEN",
    [2] = "E",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.q = false
    end
end)

eggs2:CreateToggle("Auto Buy Commons Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
        while wait(0) and _G.r do
           
local args = {
    [1] = "COMMON",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.r = false
    end
end)

eggs2:CreateToggle("Auto Buy Uncommon Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s = true 
        while wait(0) and _G.s do
           local args = {
    [1] = "UNCOMMON",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.s = false
    end
end)

eggs2:CreateToggle("Auto Buy Rare Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t = true 
        while wait(0) and _G.t do
                   local args = {
    [1] = "RARE",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.t = false
    end
end)

eggs2:CreateToggle("Auto Buy Epic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.u = true 
        while wait(0) and _G.u do
                     local args = {
    [1] = "EPIC",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.u = false
    end
end)

eggs2:CreateToggle("Auto Buy Legendary Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.v = true 
        while wait(0) and _G.v do
     local args = {
    [1] = "LEGENDARY",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.v = false
    end
end)

eggs2:CreateToggle("Auto Buy Impossible Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.w = true 
        while wait(0) and _G.w do
                local args = {
    [1] = "IMPOSSIBLE",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.w = false
    end
end)

eggs2:CreateToggle("Auto Buy Imortal Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.x = true 
        while wait(0) and _G.x do
                   local args = {
    [1] = "IMORTAL",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.x = false
    end
end)

eggs2:CreateToggle("Auto Buy Lightning Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.y = true 
        while wait(0) and _G.y do
                           local args = {
    [1] = "LIGHTNING",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.y = false
    end
end)

eggs2:CreateToggle("Auto Buy Waterfall Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.z = true 
        while wait(0) and _G.z do
                           local args = {
    [1] = "WATERFALL",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.z = false
    end
end)

eggs2:CreateToggle("Auto Buy Oriental Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.za = true 
        while wait(0) and _G.za do
                                     local args = {
    [1] = "ORIENTAL",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.za = false
    end
end)

eggs2:CreateToggle("Auto Buy Reaper Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zb = true 
        while wait(0) and _G.zb do
                                        local args = {
    [1] = "REAPER",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.zb = false
    end
end)

eggs2:CreateToggle("Auto Buy Heaven Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zc = true 
        while wait(0) and _G.zc do
                                                  local args = {
    [1] = "HEAVEN",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Resources.RemoteEvents.OpenEgg:FireServer(unpack(args))
        end
    else
        _G.zc = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(72.1722946, 16.9177265, -505.114655)
end)

teleports:CreateButton("Islands 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(31.8586006, 687.834167, -630.393982)
end)

teleports:CreateButton("Islands 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(303.372986, 3040.2793, -599.676025)
end)

teleports:CreateButton("Islands 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(357.156006, 5790.38232, -967.755981)
end)

teleports:CreateButton("Islands 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(346.742004, 10270.1113, -987.95697)
end)

teleports:CreateButton("Islands 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(569.304993, 17399.127, -821.729004)
end)

teleports:CreateButton("Islands 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(569.948975, 21961.7031, -980.817993)
end)

teleports:CreateButton("Islands 7", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(451.687012, 27039.5957, -1127.68005)
end)

teleports:CreateButton("Islands 8", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(537.203003, 34241.8789, -1099.34998)
end)

teleports:CreateButton("Islands 9", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(545.684021, 40039.1641, -1095.56995)
end)

teleports:CreateButton("Islands 10", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(514.887024, 47179.625, -1067.93005)
end)

teleports:CreateButton("Sell x75", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(558.639832, 47178.8477, -1105.36877)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

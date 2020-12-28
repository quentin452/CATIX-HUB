--https://www.roblox.com/games/5454936056/NEW-Milkshake-Legends


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Milkshake-Legends GUI","things", true)
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



AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)


MISC:CreateButton("NO CLIP Press(E)", function(arg) --the (arg) is if the checkbox is toggled or not
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
AutoTab:CreateButton("Impossible to arrest", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(nothing)
end)
AutoTab:CreateToggle("Auto Jump", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.za = true 
        while wait() and _G.za do
while true do wait()
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
           end
  else
    
        _G.za = false
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

AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
end

    else
        _G.j = false
    end
end)

AutoTab:CreateToggle("Auto Buy Milkshakes", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
           local args = {
    [1] = "Milkshake",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))
       local args = {
    [1] = "Milkshake",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))
       local args = {
    [1] = "Milkshake",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))
       local args = {
    [1] = "Milkshake",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))

 
end

    else
        _G.k = false
    end
end)

AutoTab:CreateToggle("Auto Buy Cup", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
           local args = {
    [1] = "Cup",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))
         local args = {
    [1] = "Cup",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))
         local args = {
    [1] = "Cup",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))
         local args = {
    [1] = "Cup",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))
           local args = {
    [1] = "Cup",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))
         local args = {
    [1] = "Cup",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))
         local args = {
    [1] = "Cup",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))
         local args = {
    [1] = "Cup",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))
 
end

    else
        _G.l = false
    end
end)


AutoTab:CreateToggle("Auto Buy Rank", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
           local args = {
    [1] = "Rank",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:InvokeServer(unpack(args))
 
        local args = {
    [1] = "Rank",
}


end

    else
        _G.m= false
    end
end)

eggs:CreateButton("Go To Eggs to work", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(nothing)
end)

eggs:CreateToggle("Auto Buy Basic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e1 = true 
        while wait(0) and _G.e1 do
     local args = {
    [1] = "Basic",
    [2] = "Single"
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))

 
end

    else
        _G.e1= false
    end
end)

eggs:CreateToggle("Auto Buy Rare Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e2 = true 
        while wait(0) and _G.e2 do
     local args = {
    [1] = "Rare",
    [2] = "Single"
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))

 
end

    else
        _G.e2= false
    end
end)

eggs:CreateToggle("Auto Buy Ocean Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e3 = true 
        while wait(0) and _G.e3 do
     local args = {
    [1] = "Ocean",
    [2] = "Single"
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))

 
end

    else
        _G.e3= false
    end
end)


eggs:CreateToggle("Auto Buy Lava Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e4 = true 
        while wait(0) and _G.e4 do
local args = {
    [1] = "Lava",
    [2] = "Single"
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:Server(unpack(args))

 
end

    else
        _G.e4= false
    end
end)
eggs:CreateToggle("Auto Buy Snow Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e5 = true 
        while wait(0) and _G.e5 do

local args = {
    [1] = "Snow",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))

 
end

    else
        _G.e5= false
    end
end)
teleports:CreateButton("Sell", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(0.193530664, 3.51879215, 737.712036)
end)

teleports:CreateButton("Zone 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1012.12634, 2.9075315, 449.206451)
end)

teleports:CreateButton("Zone 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-983.430176, 10.9891491, 908.698853)
end)
teleports:CreateButton("Zone 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-951.651794, 10.9020271, -109.443535)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

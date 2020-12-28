--https://www.roblox.com/games/5372450078/X50-Teddie-Simulator






local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Teddie Simulator GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local buy = Library:CreateTab("Auto Buy","things", true)
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


AutoTab:CreateToggle("Auto Collect Gems", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0.5) and _G.a do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end
         if child:IsA("BasePart") and child.Name == "Gem" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame            
        end
    end
    end
    else
        _G.a = false
    end
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

AutoTab:CreateToggle("Auto Sell", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
           game:GetService("ReplicatedStorage").Events["Sell Events"].Sell:FireServer()
        end
    else
        _G.c = false
    end
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-84.1580505, 41.5875282, 10.3246756)
end)

teleports:CreateButton("Shop", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-111.164818, 41.7435684, -79.2475586)
end)

teleports:CreateButton("Grass Land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-529.063599, 41.3875313, 100.923485)
end)

teleports:CreateButton("Desert Land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(567.624451, 41.3875313, 92.5502319)
end)

teleports:CreateButton("Candy Land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-53.2367325, 41.5875282, -542.131836)
end)

teleports:CreateButton("Galactic Land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-66.7316055, 41.4875298, 765.162109)
end)

teleports:CreateButton("Crystal Forest", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(486.02063, 40.1875267, -509.113617)
end)

teleports:CreateButton("Toy Land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-500.051758, 40.8953857, 736.612366)
end)
teleports:CreateButton("Heaven", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-57.9921494, 268.74057, 83.1585159)
end)
teleports:CreateButton("Volcano Land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(600.895935, 41.4875221, 729.283691)
end)
teleports:CreateButton("Heaven Land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-60.77108, 268.707886, 87.2637939)
end)
teleports:CreateButton("Hell Land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-98.2548294, 497.659637, 189.768311)
end)
teleports:CreateButton("Island", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-10.4819069, 778.517334, 83.480835)
end)
teleports:CreateButton("Jungle", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(585.24115, 41.3875198, -512.849121)
end)
eggs:CreateToggle("Auto Buy  1 Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
            local args = {
    [1] = "Tier 1",
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))
        end
    else
        _G.d = false
    end
end)

eggs:CreateToggle("Auto Buy Night Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
          local args = {
    [1] = "Tier 2",
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))
        end
    else
        _G.e = false
    end
end)

eggs:CreateToggle("Auto Buy Dragon Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
                   local args = {
    [1] = "Tier 3",
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))
        end
    else
        _G.f = false
    end
end)

eggs:CreateToggle("Auto Buy Desert Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
                local args = {
    [1] = "Tier 4",
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))
        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Auto Buy Candy Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
                  local args = {
    [1] = "Tier 5",
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))
        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Auto Buy Galactic Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do       
local args = {
    [1] = "Tier 6",
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))
        end
    else
        _G.i = false
    end
end)

eggs:CreateToggle("Auto Buy Toy Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
                 local args = {
    [1] = "Tier 7",
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))
        end
    else
        _G.j = false
    end
end)

eggs:CreateToggle("Auto Buy Summer Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
            local args = {
    [1] = "Summer Tier"
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))

        end
    else
        _G.k = false
    end
end)

eggs:CreateToggle("Auto Buy Frozen Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k2 = true 
        while wait(0) and _G.k2 do
            local args = {
    [1] = "Frozen Tier"
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))

        end
    else
        _G.k2 = false
    end
end)
eggs:CreateToggle("Auto Buy Crystal Forest Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k3 = true 
        while wait(0) and _G.k3 do
   local args = {
    [1] = "Tier 7",
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))

        end
    else
        _G.k3 = false
    end
end)
eggs:CreateToggle("Auto Buy Volcano Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k4 = true 
        while wait(0) and _G.k4 do
local args = {
    [1] = "Tier 8",
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))

        end
    else
        _G.k4 = false
    end
end)
eggs:CreateToggle("Auto Buy Heaven Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k5 = true 
        while wait(0) and _G.k5 do
local args = {
    [1] = "Tier 9",
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))

        end
    else
        _G.k5 = false
    end
end)
eggs:CreateToggle("Auto Buy Hell Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k5 = true 
        while wait(0) and _G.k5 do
local args = {
    [1] = "Tier 10",
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))

        end
    else
        _G.k5 = false
    end
end)
eggs:CreateToggle("Auto Buy Island Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k5 = true 
        while wait(0) and _G.k5 do
local args = {
    [1] = "Tier 12",
}

game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer(unpack(args))

        end
    else
        _G.k5 = false
    end
end)
eggs:CreateToggle("Auto Buy Jungle Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k5 = true 
        while wait(0) and _G.k5 do
game:GetService("ReplicatedStorage").Events["Eggs Events"].OpenEgg:FireServer("Jungle Tier")

        end
    else
        _G.k5 = false
    end
end)
buy:CreateToggle("Auto Buy Bags", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
          local args = {
    [1] = "Energies",
}

game:GetService("ReplicatedStorage").Events["Shop Events"].BuyAllRemote:InvokeServer(unpack(args))
        end
    else
        _G.l = false
    end
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

--https://www.roblox.com/games/4254575069/Champion-Simulator?refPageId=806dcc9f-1afa-4834-ad30-46a06780cd69#!/store


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Champion-Simulator GUI","things", true)
local eggs = Library:CreateTab("Eggs","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local class1 = Library:CreateTab("Classes 1-15","things", true)
local class2 = Library:CreateTab("Classes 16-31","things", true)
local boss = Library:CreateTab("HIT BOSS","things", true)
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
AutoTab:CreateButton("Auto Equip Gloves", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bcc = true 
        while wait(0) and _G.bcc do
local toolname = "Punch" -- replace with the name of the tool
local Plr = game:GetService("Players").LocalPlayer
while wait() do
    pcall(function()
        if game:GetService("StarterPack"):FindFirstChild(toolname) and Plr.Character:FindFirstChild(toolname) == nil then
            local tool = Plr.Backpack:FindFirstChild(toolname)
            Plr.Character.Humanoid:EquipTool(tool)
        end
    end)
end	
        end
    else
        _G.bcc = false
    end
end)

boss:CreateToggle("Champion Boss", function(arg)
if arg then
_G.bossc = true
 while wait() and _G.bossc do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace")["Basic Boss"].LeftLowerLeg

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X, pbosd.Position.Y, pbosd.Position.Z)
end
else
_G.bossc = false
end
end)


boss:CreateToggle("Pirate Boss", function(arg)
if arg then
_G.bossp = true
 while wait() and _G.bossp do
 
local me = game.Players.LocalPlayer.Character
local pboss = game:GetService("Workspace")["Pirate Boss"].LeftLowerLeg

me.HumanoidRootPart.CFrame = CFrame.new(pboss.Position.X, pboss.Position.Y, pboss.Position.Z)
end
else
_G.bossp = false
end
end)



AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0) and _G.a do
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
end

    else
        _G.a = false
    end
end)

teleports:CreateButton("Sell x10", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-22.9144306, 48.9636803, -5422.31543)
end)

AutoTab:CreateToggle("Auto Buy Gloves", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
       local args = {
    [1] = "purchaseall",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.Events.Gloves:FireServer(unpack(args))	
local args = {
    [1] = "purchaseall",
    [2] = 2,
}

game:GetService("ReplicatedStorage").Remotes.Events.Gloves:FireServer(unpack(args))	
local args = {
    [1] = "purchaseall",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.Events.Gloves:FireServer(unpack(args))	
local args = {
    [1] = "purchaseall",
    [2] = 4,
}

game:GetService("ReplicatedStorage").Remotes.Events.Gloves:FireServer(unpack(args))	

end

    else
        _G.b = false
    end
end)
AutoTab:CreateToggle("Auto Buy DNA", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
  local args = {
    [1] = "purchaseall",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.Events.DNA:FireServer(unpack(args))

local args = {
    [1] = "purchaseall",
    [2] = 2,
}

game:GetService("ReplicatedStorage").Remotes.Events.DNA:FireServer(unpack(args))

local args = {
    [1] = "purchaseall",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.Events.DNA:FireServer(unpack(args))

local args = {
    [1] = "purchaseall",
    [2] = 4,
}

game:GetService("ReplicatedStorage").Remotes.Events.DNA:FireServer(unpack(args))

end

    else
        _G.c = false
    end
end)

AutoTab:CreateToggle("Auto Buy Jump", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.ddd = true 
        while wait(0) and _G.ddd do
local args = {
    [1] = "purchase",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.Events.JumpSkill:FireServer(unpack(args))
local args = {
    [1] = "purchase",
    [2] = 2,
}

game:GetService("ReplicatedStorage").Remotes.Events.JumpSkill:FireServer(unpack(args))
local args = {
    [1] = "purchase",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.Events.JumpSkill:FireServer(unpack(args))
local args = {
    [1] = "purchase",
    [2] = 4,
}

game:GetService("ReplicatedStorage").Remotes.Events.JumpSkill:FireServer(unpack(args))
local args = {
    [1] = "purchase",
    [2] = 5,
}

game:GetService("ReplicatedStorage").Remotes.Events.JumpSkill:FireServer(unpack(args))


end

    else
        _G.ddd = false
    end
end)


class1:CreateToggle("Buy Class 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass2 = true 
        while wait(0) and _G.bclass2 do


 local args = {
     [1] = "purchase",
     [2] = 2, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass2 = false
    end
end)

class1:CreateToggle("Buy Class 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass3 = true 
        while wait(0) and _G.bclass3 do


 local args = {
     [1] = "purchase",
     [2] = 3, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass3 = false
    end
end)

class1:CreateToggle("Buy Class 4", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass4 = true 
        while wait(0) and _G.bclass4 do


 local args = {
     [1] = "purchase",
     [2] = 4, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass4 = false
    end
end)

class1:CreateToggle("Buy Class 5", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass5 = true 
        while wait(0) and _G.bclass5 do


 local args = {
     [1] = "purchase",
     [2] = 5, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass5 = false
    end
end)

class1:CreateToggle("Buy Class 6", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass6 = true 
        while wait(0) and _G.bclass6 do


 local args = {
     [1] = "purchase",
     [2] = 6, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass6 = false
    end
end)

class1:CreateToggle("Buy Class 7", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass7 = true 
        while wait(0) and _G.bclass7 do


 local args = {
     [1] = "purchase",
     [2] = 7, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass7 = false
    end
end)

class1:CreateToggle("Buy Class 8", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass8 = true 
        while wait(0) and _G.bclass8 do


 local args = {
     [1] = "purchase",
     [2] = 8, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass8 = false
    end
end)

class1:CreateToggle("Buy Class 9", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass9 = true 
        while wait(0) and _G.bclass9 do


 local args = {
     [1] = "purchase",
     [2] = 9, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass9 = false
    end
end)

class1:CreateToggle("Buy Class 10", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass10 = true 
        while wait(0) and _G.bclass10 do


 local args = {
     [1] = "purchase",
     [2] = 10, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass10 = false
    end
end)

class1:CreateToggle("Buy Class 11", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass11 = true 
        while wait(0) and _G.bclass11 do


 local args = {
     [1] = "purchase",
     [2] = 11, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass11 = false
    end
end)

class1:CreateToggle("Buy Class 12", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass12 = true 
        while wait(0) and _G.bclass12 do


 local args = {
     [1] = "purchase",
     [2] = 12, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass12 = false
    end
end)

class1:CreateToggle("Buy Class 13", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass13 = true 
        while wait(0) and _G.bclass13 do


 local args = {
     [1] = "purchase",
     [2] = 13, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass13 = false
    end
end)

class1:CreateToggle("Buy Class 14", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass14 = true 
        while wait(0) and _G.bclass14 do


 local args = {
     [1] = "purchase",
     [2] = 14, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass14 = false
    end
end)

class1:CreateToggle("Buy Class 15", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass15 = true 
        while wait(0) and _G.bclass15 do


 local args = {
     [1] = "purchase",
     [2] = 15, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass15 = false
    end
end)

class2:CreateToggle("Buy Class 16", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass16 = true 
        while wait(0) and _G.bclass16 do

 local args = {
     [1] = "purchase",
     [2] = 16, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass16 = false
    end
end)

class2:CreateToggle("Buy Class 17", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass17 = true 
        while wait(0) and _G.bclass17 do

 local args = {
     [1] = "purchase",
     [2] = 17, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass17 = false
    end
end)

class2:CreateToggle("Buy Class 18", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass18 = true 
        while wait(0) and _G.bclass18 do

 local args = {
     [1] = "purchase",
     [2] = 18, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass18 = false
    end
end)

class2:CreateToggle("Buy Class 19", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass19 = true 
        while wait(0) and _G.bclass19 do

 local args = {
     [1] = "purchase",
     [2] = 19, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass19 = false
    end
end)

class2:CreateToggle("Buy Class 20", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass20 = true 
        while wait(0) and _G.bclass20 do

 local args = {
     [1] = "purchase",
     [2] = 20, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass20 = false
    end
end)

class2:CreateToggle("Buy Class 21", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass21 = true 
        while wait(0) and _G.bclass21 do

 local args = {
     [1] = "purchase",
     [2] = 21, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass21 = false
    end
end)

class2:CreateToggle("Buy Class 22", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass22 = true 
        while wait(0) and _G.bclass22 do

 local args = {
     [1] = "purchase",
     [2] = 22, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass22 = false
    end
end)

class2:CreateToggle("Buy Class 23", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass23 = true 
        while wait(0) and _G.bclass23 do

 local args = {
     [1] = "purchase",
     [2] = 23, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass23 = false
    end
end)

class2:CreateToggle("Buy Class 24", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass24 = true 
        while wait(0) and _G.bclass24 do

 local args = {
     [1] = "purchase",
     [2] = 24, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass24 = false
    end
end)

class2:CreateToggle("Buy Class 25", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass25 = true 
        while wait(0) and _G.bclass25 do

 local args = {
     [1] = "purchase",
     [2] = 25, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass25 = false
    end
end)

class2:CreateToggle("Buy Class 26", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass26 = true 
        while wait(0) and _G.bclass26 do

 local args = {
     [1] = "purchase",
     [2] = 26, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass26 = false
    end
end)

class2:CreateToggle("Buy Class 27", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass27 = true 
        while wait(0) and _G.bclass27 do

 local args = {
     [1] = "purchase",
     [2] = 27, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass27 = false
    end
end)

class2:CreateToggle("Buy Class 28", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass28 = true 
        while wait(0) and _G.bclass28 do

 local args = {
     [1] = "purchase",
     [2] = 28, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass28 = false
    end
end)

class2:CreateToggle("Buy Class 29", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass29 = true 
        while wait(0) and _G.bclass29 do

 local args = {
     [1] = "purchase",
     [2] = 29, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass29 = false
    end
end)

class2:CreateToggle("Buy Class 30", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass30 = true 
        while wait(0) and _G.bclass30 do

 local args = {
     [1] = "purchase",
     [2] = 30, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass30 = false
    end
end)

class2:CreateToggle("Buy Class 31", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.bclass31 = true 
        while wait(0) and _G.bclass31 do

 local args = {
     [1] = "purchase",
     [2] = 31, 
 }

 game:GetService("ReplicatedStorage").Remotes.Events.Classes:FireServer(unpack(args))   wait(30)
end

    else
        _G.bclass31 = false
    end
end)




MISC:CreateToggle("Bring Players", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.Kill = true 
        while wait(0) and _G.Kill do
_G.Kill = true
while _G.Kill do
wait()
for i,v in pairs(game.Players:GetChildren()) do
if v.Name ~= game.Players.LocalPlayer.Name then
v.Character.Head.Anchored = true
v.Character.Head.CFrame = game.Players.LocalPlayer.Character.Head.CFrame*CFrame.new(0,3,-3)
end
end
end

end

    else
        _G.Kill = false
    end
end)
eggs:CreateToggle("1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 2,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("4", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 4,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("5", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 5,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("6", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 6,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("7", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 7,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("8", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 8,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("9", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 9,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)

eggs:CreateToggle("10", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 10,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("11", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 11,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("12", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 12,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("13", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 13,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("14", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 14,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("15", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 15,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("16", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 16,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("17", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 17,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("18", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 18,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("19", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 19,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("20", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 20,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("21", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 21,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("22", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 22,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("23", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 23,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("24", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 24,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
eggs:CreateToggle("25", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l0 = true 
        while wait(0) and _G.l0 do

local args = {
    [1] = "single",
    [2] = 25,
}

game:GetService("ReplicatedStorage").Remotes.Functions.EggHatch:InvokeServer(unpack(args))



        end
    else
        _G.l0 = false
    end
end)
AutoTab:CreateToggle("Auto Hoops", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.gd = true 
        while wait(0) and _G.gd do

game.Players.LocalPlayer.Character:MoveTo(Vector3.new(88.4931946, 6040.39941, 166.77356))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(194.644608, 6290.84912, 219.670959))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-53.3297462, 6595.62549, -40.9779243))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(131.281265, 6654.05615, -69.8479233))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-97.6518478, 6803.3252, 226.848389))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-37.5464058, 6966.47461, -68.4852905))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(52.2905617, 6995.27441, -89.2255783))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(250.886368, 7038.97705, 99.9231491))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(86.9137497, 7364.88623, 126.167381))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(196.799683, 7670.44629, 10.9827366))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(120.426369, 7753.69678, -34.9076118))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(6.85210323, 7825.1958, -103.150833))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(306.390564, 8340.37305, 172.614288))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(415.712799, 9690.98047, 94.3439636))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(658.312744, 9814.43457, 94.3466339))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(828.762817, 9901.28418, 94.3485107))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(231.255753, 10822.7842, 211.653107))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(62.6988983, 11009.4346, 37.1033516))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(280.560944, 11585.2363, 64.0752487))
wait(x)
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(174.192856, 11771.8867, -154.018402))
wait(x)

end

    else
        _G.gd = false
    end
end)
AutoTab:CreateToggle("Auto Collect Gems", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.lol = true 
        while wait(0) and _G.lol do



local plr = game.Players.LocalPlayer
for i,v in pairs(game.Workspace.Pickups.Gem:GetChildren()) do
if v and plr.Character:FindFirstChild("HumanoidRootPart") and v:IsA("MeshPart") then
plr.Character.HumanoidRootPart.CFrame = v.CFrame
end
end
end


    else
        _G.lol = false
    end
end)
MISC:CreateButton("Inf Double Jump", function() --you dont need "arg" for a button
        _G.e = true 
        while wait(0) and _G.e do
 game.Players.LocalPlayer.Others.DoubleJumps.Value = 9999999999999
end
end)
MISC:CreateButton("Unlock Rebirths Islands", function() --the (arg) is if the checkbox is toggled or not
        _G.f = true 
        while wait(0) and _G.f do
game:GetService("Players").LocalPlayer.Others.Rebirths.Value = 999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
    end
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-53.3565903, 3.6808784, 163.493317)
end)
teleports:CreateButton("Zone 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(124.771751, 815.296021, 115.089088)
end)
teleports:CreateButton("Zone 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(131.25531, 1608.5957, 103.393738)
end)
teleports:CreateButton("Zone 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(100.815781, 2369.88062, 132.018478)
end)
teleports:CreateButton("Zone 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(94.3880081, 3845.5354, 114.4636)
end)
teleports:CreateButton("Zone 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(116.226425, 5811.93896, 112.466423)
end)
teleports:CreateButton("Zone 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(109.099342, 8541.31934, 107.222359)
end)
teleports:CreateButton("Zone 7", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(110.836037, 13323.1016, 131.407364)
end)
teleports:CreateButton("Zone 8", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(97.5960236, 20372.7871, 120.699013)
end)
teleports:CreateButton("Eternal Zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-93.8420258, 52.5833778, -5336.04932)
end)
---- auto equip gloves -----
_G.equip = true

while wait() and _G.equip do

local tool = game:GetService("StarterPack").Punch
Character.Humanoid:EquipTool(tool)

end
--| Anti AFK | By Altix#3395

    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)
    
    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

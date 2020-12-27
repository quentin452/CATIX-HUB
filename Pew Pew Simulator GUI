--https://www.roblox.com/games/2930126565/Pew-Pew-Simulator

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Pew-Pew-Simulator GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local crates = Library:CreateTab("Auto Buy Crates","things", true)
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
AutoTab:CreateButton("Two Works Buy Zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(n)
end)
AutoTab:CreateButton("And In Rebirths Zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(n)
end)
AutoTab:CreateButton("You Can use If You Have It", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(n)
end)
AutoTab:CreateToggle("Auto Kills Ennemies", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0.1) and _G.b do

for _,v in pairs(game.Workspace:GetChildren()) do 
if v:FindFirstChild("CharId") and v.Name ~= game.Players.LocalPlayer.Name then
local A_1 = "Shoot"
local A_2 = v.CharId.Value
local Event = game:GetService("ReplicatedStorage").RemoteEvent
Event:FireServer(A_1, game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChildOfClass("Tool").TypeId.Value,A_2)

end
end
        end
    else
        _G.b= false
    end
end)


AutoTab:CreateToggle("Auto Buy Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0.1) and _G.c do
local args = {
    [1] = "Rebirth",
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

        end
    else
        _G.c= false
    end
end)

AutoTab:CreateToggle("Auto Buy Bonuses", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c3 = true 
        while wait(0) and _G.c3 do
local args = {
    [1] = "Purchase Bonus",
    [2] = "PetXP",
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Purchase Bonus",
    [2] = "XP",
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Purchase Bonus",
    [2] = "Coins",
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

        end
    else
        _G.c3= false
    end
end)
AutoTab:CreateToggle("Auto Buy Guns", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c2= true 
        while wait(0.1) and _G.c2 do

local args = {
    [1] = "Purchase Tool",
    [2] = 39,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 50,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 12,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 13,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 8,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 43,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 31,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 29,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 9,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 10,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 3,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 14,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 32,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))

wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 20,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 5,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 34,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 4,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 18,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 40,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 47,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 24,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 7,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 22,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 23,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 37,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 27,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 28,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 25,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 17,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 26,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 19,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 48,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 41,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 21,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 30,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 45,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 49,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 6,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 42,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 38,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 44,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 2,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 15,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 51,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 46,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 16,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 36,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 33,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "Purchase Tool",
    [2] = 11,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.c2= false
    end
end)

eggs:CreateToggle("Auto Buy 25K Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0.1) and _G.e do
local args = {
    [1] = "Purchase One Egg",
    [2] = 1,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.e= false
    end
end)
eggs:CreateToggle("Auto Buy 100K Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0.1) and _G.f do
local args = {
    [1] = "Purchase One Egg",
    [2] = 2,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f= false
    end
end)
eggs:CreateToggle("Auto Buy 1M Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f2 = true 
        while wait(0.1) and _G.f2 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 3,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f2= false
    end
end)
eggs:CreateToggle("Auto Buy 2,5M Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f3 = true 
        while wait(0.1) and _G.f3 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 4,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f3= false
    end
end)
eggs:CreateToggle("Auto Buy 25M Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f4 = true 
        while wait(0.1) and _G.f4 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 5,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f4= false
    end
end)
eggs:CreateToggle("Auto Buy 250M Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f5 = true 
        while wait(0.1) and _G.f5 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 9,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f5= false
    end
end)
eggs:CreateToggle("Auto Buy 2,5B Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f6 = true 
        while wait(0.1) and _G.f6 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 6,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f6= false
    end
end)
eggs:CreateToggle("Auto Buy 250B Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f7 = true 
        while wait(0.1) and _G.f7 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 7,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f7= false
    end
end)
eggs:CreateToggle("Auto Buy 2,5T Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f8 = true 
        while wait(0.1) and _G.f8 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 8,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f8= false
    end
end)
eggs:CreateToggle("Auto Buy 15T Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f9= true 
        while wait(0.1) and _G.f9 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 10,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f9= false
    end
end)
eggs:CreateToggle("Auto Buy 1Qi Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f122= true 
        while wait(0.1) and _G.f122 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 31,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f122= false
    end
end)
eggs:CreateToggle("Auto Buy 1Sx Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f10= true 
        while wait(0.1) and _G.f10 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 30,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f10= false
    end
end)
eggs:CreateToggle("Auto Buy 250Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0.1) and _G.d do
local args = {
    [1] = "Purchase One Egg",
    [2] = 11,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.d= false
    end
end)
eggs:CreateToggle("Auto Buy 750 Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f10= true 
        while wait(0.1) and _G.f10 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 29,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f10= false
    end
end)
eggs:CreateToggle("Auto Buy 1K Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f11= true 
        while wait(0.1) and _G.f11 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 24,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f11= false
    end
end)
eggs:CreateToggle("Auto Buy 2K Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f111= true 
        while wait(0.1) and _G.f111 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 12,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f111= false
    end
end)
eggs:CreateToggle("Auto Buy 5K Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f12= true 
        while wait(0.1) and _G.f12 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 13,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f12= false
    end
end)
eggs:CreateToggle("Auto Buy 7,5K Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f13= true 
        while wait(0.1) and _G.f13 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 35,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f13= false
    end
end)
crates:CreateToggle("Auto Buy 200 Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0.1) and _G.i do

local args = {
    [1] = "Purchase One Egg",
    [2] = 15,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.i= false
    end
end)
crates:CreateToggle("Auto Buy 250 Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i2 = true 
        while wait(0.1) and _G.i2 do

local args = {
    [1] = "Purchase One Egg",
    [2] = 16,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.i2= false
    end
end)
crates:CreateToggle("Auto Buy 300 Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i3 = true 
        while wait(0.1) and _G.i3 do

local args = {
    [1] = "Purchase One Egg",
    [2] = 19,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.i3= false
    end
end)
crates:CreateToggle("Auto Buy 350 Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i4 = true 
        while wait(0.1) and _G.i4 do

local args = {
    [1] = "Purchase One Egg",
    [2] = 21,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.i4= false
    end
end)
crates:CreateToggle("Auto Buy 400 Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i5 = true 
        while wait(0.1) and _G.i5 do

local args = {
    [1] = "Purchase One Egg",
    [2] = 22,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.i5= false
    end
end)
crates:CreateToggle("Auto Buy 450 Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i6 = true 
        while wait(0.1) and _G.i6 do

local args = {
    [1] = "Purchase One Egg",
    [2] = 20,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.i6= false
    end
end)
crates:CreateToggle("Auto Buy 500 Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0.1) and _G.h do

local args = {
    [1] = "Purchase One Egg",
    [2] = 38,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.h= false
    end
end)
crates:CreateToggle("Auto Buy 500 Gems 2 Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0.1) and _G.h do

local args = {
    [1] = "Purchase One Egg",
    [2] = 17,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.h= false
    end
end)
crates:CreateToggle("Auto Buy 550 Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h2 = true 
        while wait(0.1) and _G.h2 do

local args = {
    [1] = "Purchase One Egg",
    [2] = 18,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.h2= false
    end
end)
crates:CreateToggle("Auto Buy 600 Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h3 = true 
        while wait(0.1) and _G.h3 do

local args = {
    [1] = "Purchase One Egg",
    [2] = 23,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.h3= false
    end
end)
crates:CreateToggle("Auto Buy 700 Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h4 = true 
        while wait(0.1) and _G.h4 do

local args = {
    [1] = "Purchase One Egg",
    [2] = 24,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.h4= false
    end
end)
crates:CreateToggle("Auto Buy 800 Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h5 = true 
        while wait(0.1) and _G.h5 do

local args = {
    [1] = "Purchase One Egg",
    [2] = 25,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.h5= false
    end
end)
crates:CreateToggle("Auto Buy 900 Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g3 = true 
        while wait(0.1) and _G.g3 do

local args = {
    [1] = "Purchase One Egg",
    [2] = 37,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.g3= false
    end
end)
crates:CreateToggle("Auto Buy 1K Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g4 = true 
        while wait(0.1) and _G.g4 do

local args = {
    [1] = "Purchase One Egg",
    [2] = 26,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.g4= false
    end
end)
crates:CreateToggle("Auto Buy 1,5K Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0.1) and _G.g do

local args = {
    [1] = "Purchase One Egg",
    [2] = 27,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.g= false
    end
end)
crates:CreateToggle("Auto Buy 2,5K Gems Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g2 = true 
        while wait(0.1) and _G.g2 do

local args = {
    [1] = "Purchase One Egg",
    [2] = 36,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.g2= false
    end
end)
crates:CreateToggle("Auto Buy 100Qa Coins Crates", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f30= true 
        while wait(0.1) and _G.f30 do
local args = {
    [1] = "Purchase One Egg",
    [2] = 20,
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
        end
    else
        _G.f30= false
    end
end)
teleports:CreateButton("🌍World 1🌍", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(d)
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(134.061096, 32.2106934, 31.6908188)
end)

teleports:CreateButton("Zone 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-178.282455, 44.9272537, -42.1813126)
end)

teleports:CreateButton("Zone 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-367.744354, 37.7043343, -80.9488983)
end)
teleports:CreateButton("Zone 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-479.718719, 37.7143478, 81.6143341)
end)
teleports:CreateButton("Zone 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-755.642334, 44.8807449, -33.9609451)
end)
teleports:CreateButton("Zone 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-971.181213, 42.9736252, 40.8197098)
end)
teleports:CreateButton("Zone 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1225.46167, 37.1581116, -65.6029892)
end)
teleports:CreateButton("Zone 7", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1396.47888, 40.7937279, 70.6978531)
end)
teleports:CreateButton("Zone 8", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1595.92725, 43.486763, -3.60634923)
end)
teleports:CreateButton("Zone 9", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1882.97168, 37.6414413, 13.8025637)
end)
teleports:CreateButton("Zone Rebirths 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1905.65955, 36.8443375, -130.811249)
end)
teleports:CreateButton("Zone Rebirths 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1759.88708, 36.4043655, -346.823059)
end)
teleports:CreateButton("Zone Rebirths 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1748.85608, 36.1418533, -519.352539)
end)

teleports:CreateButton("🌍World 2🌍", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(n)
end)
teleports:CreateButton("Zone Rebirths 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2838.04492, 36.7143326, 1043.1499)
end)
teleports:CreateButton("Zone Rebirths 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2726.62354, 37.6501541, 291.916534)
end)
teleports:CreateButton("Zone Rebirths 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-3757.07788, 37.3188782, 222.249176)
end)
teleports:CreateButton("Zone Rebirths 7 X2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-886.112488, 38.4731827, 1808.33655)
end)
--| Anti KICK |
local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function

if not protect then
protect = function(f) return f end
end

setreadonly(mt, false)
mt.__namecall = protect(function(self, ...)
local method = getnamecallmethod()
if method == "Kick" then
wait(9e9)
return
end
return old(self, ...)
end)
hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() wait(9e9)
 end))

--| Anti AFK |
   local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

--| Anti Ban |
setfflag("DFStringCrashPadUploadToBacktraceToBacktraceBaseUrl", "")
setfflag("DFIntCrashUploadToBacktracePercentage", "0")
setfflag("DFStringCrashUploadToBacktraceBlackholeToken", "")
setfflag("DFStringCrashUploadToBacktraceWindowsPlayerToken", "")



--| Anti Chat Logs |
local CloneFunction = clonefunction
local CheckCaller = CloneFunction(checkcaller)
local HookFunction = CloneFunction(hookfunction)
local LocalPlayer = game.Players.PlayerAdded:wait()

local PostMessage = require(LocalPlayer:WaitForChild("PlayerScripts", 1/0):WaitForChild("ChatScript", 1/0):WaitForChild("ChatMain", 1/0)).MessagePosted
getgenv().MessageEvent = Instance.new("BindableEvent")

local OldFunctionHook
local PostMessageHook = function(self, msg)
   if not CheckCaller() and self == PostMessage then
       MessageEvent:Fire(msg)
       return
   end
   return OldFunctionHook(self, msg)
end
OldFunctionHook = HookFunction(PostMessage.fire, PostMessageHook)

--https://www.roblox.com/games/5514871679/UPDATE-1-Castle-Clickers





local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Castle-Clickers GUI","things", true)
local Rebirths = Library:CreateTab("Auto Buy Rebirths","things", true)
local Rebirths1 = Library:CreateTab("Rebirths whit max upgrade","things", true)
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
AutoTab:CreateToggle("Auto Click x100", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.za = true 
        while wait() and _G.za do


  

game.RunService.RenderStepped:Connect(function()
 for i=1,1 do

game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()

 end
end)

           end
  else
    
        _G.za = false
    end
end)

AutoTab:CreateToggle("Auto Click x8", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.za = true 
        while wait() and _G.za do


  



game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()


game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()


game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()


game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()


game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()


game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()


game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()


game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()



           end
  else
    
        _G.za = false
    end
end)

AutoTab:CreateToggle("Auto Buy Rebirths Upgrades", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.re = true 
        while wait() and _G.re do


 local args = {
    [1] = "PetsEquipped"
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:FireServer(unpack(args))
local args = {
    [1] = "JumpPower",
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:FireServer(unpack(args))

local args = {
    [1] = "AutoClick"
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:FireServer(unpack(args))

local args = {
    [1] = "AutoRebirth"
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:FireServer(unpack(args))


local args = {
    [1] = "EggSpeed"
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:FireServer(unpack(args))


local args = {
    [1] = "WalkSpeed"
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:FireServer(unpack(args))

local args = {
    [1] = "FasterAutoClick"
}

game:GetService("ReplicatedStorage").RemoteEvents.Upgrade:FireServer(unpack(args))

           end
  else
    
        _G.re = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r1 = true 
        while wait() and _G.r1 do

local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))

           end
  else
    
        _G.r1 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r2 = true 
        while wait() and _G.r2 do

local args = {
    [1] = 5,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))

           end
  else
    
        _G.r2 = false
    end
end)


Rebirths:CreateToggle("Auto Rebirths x40", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r40 = true 
        while wait() and _G.r40 do

local args = {
    [1] = 100,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))

           end
  else
    
        _G.r40 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x200", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r200 = true 
        while wait() and _G.r200 do

local args = {
    [1] = 200,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))

           end
  else
    
        _G.r200 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x500", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r1000 = true 
        while wait() and _G.r1000 do

local args = {
    [1] = 1000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.r1000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x2k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r5000 = true 
        while wait() and _G.r5000 do

local args = {
    [1] = 5000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.r5000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x4k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r10000 = true 
        while wait() and _G.r10000 do

local args = {
    [1] = 10000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.r10000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x20k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r50000 = true 
        while wait() and _G.r50000 do

local args = {
    [1] = 50000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.r50000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x40k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v100000 = true 
        while wait() and _G.v100000 do

local args = {
    [1] = 100000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.v100000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x276k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v690000 = true 
        while wait() and _G.v690000 do

local args = {
    [1] = 690000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.v690000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x1,4M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v3500000 = true 
        while wait() and _G.v3500000 do
local args = {
    [1] = 3500000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.v3500000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x4M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v10000000 = true 
        while wait() and _G.v10000000 do
local args = {
    [1] = 10000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.v10000000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x40M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v100000000 = true 
        while wait() and _G.v100000000 do
local args = {
    [1] = 100000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.v100000000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x140M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v350000000 = true 
        while wait() and _G.v350000000 do
local args = {
    [1] = 350000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v350000000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x380M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v950000000 = true 
        while wait() and _G.v950000000 do
local args = {
    [1] = 950000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v950000000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x1,6B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v4000000000 = true 
        while wait() and _G.v4000000000 do
local args = {
    [1] = 4000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v4000000000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x3,6B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v9000000000 = true 
        while wait() and _G.v9000000000 do
local args = {
    [1] = 9000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v9000000000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x4B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v10000000000 = true 
        while wait() and _G.v10000000000 do
local args = {
    [1] = 10000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v10000000000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x24B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v60000000000 = true 
        while wait() and _G.v60000000000 do
local args = {
    [1] = 60000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v60000000000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x36B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v90000000000 = true 
        while wait() and _G.v90000000000 do
local args = {
    [1] = 90000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v90000000000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x52B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v130000000000 = true 
        while wait() and _G.v130000000000 do
local args = {
    [1] = 130000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v130000000000 = false
    end
end)

Rebirths:CreateToggle("Auto Rebirths x280B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v700000000000 = true 
        while wait() and _G.v700000000000 do
local args = {
    [1] = 700000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v700000000000 = false
    end
end)


Rebirths1:CreateToggle("Auto Rebirths x9400", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r1 = true 
        while wait() and _G.r1 do

local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))

           end
  else
    
        _G.r1 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x47,2k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r2 = true 
        while wait() and _G.r2 do

local args = {
    [1] = 5,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))

           end
  else
    
        _G.r2 = false
    end
end)


Rebirths1:CreateToggle("Auto Rebirths x944k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r40 = true 
        while wait() and _G.r40 do

local args = {
    [1] = 100,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))

           end
  else
    
        _G.r40 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x4,7m", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r200 = true 
        while wait() and _G.r200 do

local args = {
    [1] = 200,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))

           end
  else
    
        _G.r200 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x9,4m", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r1000 = true 
        while wait() and _G.r1000 do

local args = {
    [1] = 1000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.r1000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x47,2M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r5000 = true 
        while wait() and _G.r5000 do

local args = {
    [1] = 5000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.r5000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x94,4M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r10000 = true 
        while wait() and _G.r10000 do

local args = {
    [1] = 10000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.r10000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x472M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.r50000 = true 
        while wait() and _G.r50000 do

local args = {
    [1] = 50000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.r50000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x944M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v100000 = true 
        while wait() and _G.v100000 do

local args = {
    [1] = 100000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.v100000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x6,5B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v690000 = true 
        while wait() and _G.v690000 do

local args = {
    [1] = 690000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.v690000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x33b", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v3500000 = true 
        while wait() and _G.v3500000 do
local args = {
    [1] = 3500000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.v3500000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x94,4B", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v10000000 = true 
        while wait() and _G.v1000000 do
local args = {
    [1] = 10000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.v10000000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x944b", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v100000000 = true 
        while wait() and _G.v100000000 do
local args = {
    [1] = 100000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
           end
  else
    
        _G.v100000000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x3,3T", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v350000000 = true 
        while wait() and _G.v350000000 do
local args = {
    [1] = 350000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v350000000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x8,9T", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v950000000 = true 
        while wait() and _G.v950000000 do
local args = {
    [1] = 950000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v950000000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x18,8T", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v2000000000 = true 
        while wait() and _G.v2000000000 do
local args = {
    [1] = 2000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v2000000000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x37,7T", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v4000000000 = true 
        while wait() and _G.v4000000000 do
local args = {
    [1] = 4000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v4000000000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x84,9T", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v9000000000 = true 
        while wait() and _G.v9000000000 do
local args = {
    [1] = 9000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v9000000000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x94,4t", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v10000000000 = true 
        while wait() and _G.v10000000000 do
local args = {
    [1] = 10000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v10000000000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x283,2T", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v10000000000 = true 
        while wait() and _G.v10000000000 do
local args = {
    [1] = 10000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v10000000000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x566T", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v60000000000 = true 
        while wait() and _G.v60000000000 do
local args = {
    [1] = 60000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v60000000000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x1,2Qd", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v130000000000 = true 
        while wait() and _G.v130000000000 do
local args = {
    [1] = 130000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v130000000000 = false
    end
end)

Rebirths1:CreateToggle("Auto Rebirths x6,6qd", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.v700000000000 = true 
        while wait() and _G.v700000000000 do
local args = {
    [1] = 700000000000,
}

game:GetService("ReplicatedStorage").RemoteEvents.Rebirth:FireServer(unpack(args))
end
  else
    
        _G.v700000000000 = false
    end
end)

eggs:CreateToggle("Auto Buy Heaven Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.g = true 
        while wait() and _G.g do
local args = {
    [1] = "Heaven Egg",
}

game:GetService("ReplicatedStorage").RemoteEvents.OpenEgg:FireServer(unpack(args))
 end
        _G.g = false
    end
end)
eggs:CreateToggle("Auto Buy Frost Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.i= true 
        while wait() and _G.i do
local args = {
    [1] = "Frost Egg",
}

game:GetService("ReplicatedStorage").RemoteEvents.OpenEgg:FireServer(unpack(args))
 end
        _G.i = false
    end
end)
eggs:CreateToggle("Auto Buy Candy Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.h= true 
        while wait() and _G.h do
local args = {
    [1] = "Candy Egg",
}

game:GetService("ReplicatedStorage").RemoteEvents.OpenEgg:FireServer(unpack(args))
 end
        _G.h = false
    end
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(71.7898483, 3.66993809, 83.2115402)
end)

teleports:CreateButton("Shop", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(216.487625, 3.76654005, 43.1189423)
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

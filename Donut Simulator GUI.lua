--https://www.roblox.com/games/2927161509/Donut-Simulator


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Donut-Simulator GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
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

AutoTab:CreateButton("Impossible To Arrest", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(d)
end)

AutoTab:CreateToggle("Auto Jump IMPOSSIBLE TO ARREST", function(arg) --the (arg) is if the checkbox is toggled or not
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
AutoTab:CreateToggle("Add Best Pets FREE", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.zz = true 
        while wait(0.5) and _G.zz do
local args = {
    [1] = "Demon Death Dominus",
}

game:GetService("ReplicatedStorage").Remotes["Add Pet"]:FireServer(unpack(args))
           end
  else
    
        _G.zz = false
    end
end)
AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
     local args = {
    [1] = "Dough",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
        local args = {
    [1] = "Chocolate",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
      local args = {
    [1] = "Blueberry",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
       local args = {
    [1] = "Grass",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
       local args = {
    [1] = "Oreo",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
    local args = {
    [1] = "Alien",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
  local args = {
    [1] = "RedVelvet",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
  local args = {
    [1] = "Blood",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
  local args = {
    [1] = "Strawberry",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
  local args = {
    [1] = "Water",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
  local args = {
    [1] = "Milky",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
  local args = {
    [1] = "Sky",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
  local args = {
    [1] = "RedLeopard",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))
 local args = {
    [1] = "SwirlyMagic",
    [2] = "rbxassetid://2946053656",
}

game:GetService("ReplicatedStorage").Remotes.Donut:FireServer(unpack(args))

        end
    else
        _G.b= false
    end
end)

AutoTab:CreateToggle("Auto Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
        end
    else
        _G.c= false
    end
end)
AutoTab:CreateToggle("Auto Buy Donuts", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
   while wait(0) and _G.d do
      local args = {
    [1] = "Donuts",
    [2] = "Dough",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
      local args = {
    [1] = "Donuts",
    [2] = "Chocolate",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
       local args = {
    [1] = "Donuts",
    [2] = "Blueberry",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
       local args = {
    [1] = "Donuts",
    [2] = "Grass",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
       local args = {
    [1] = "Donuts",
    [2] = "Oreo",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
    local args = {
    [1] = "Donuts",
    [2] = "Alien",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
  local args = {
    [1] = "Donuts",
    [2] = "RedVelvet",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
  local args = {
    [1] = "Donuts",
    [2] = "Blood",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
  local args = {
    [1] = "Donuts",
    [2] = "Strawberry",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
  local args = {
    [1] = "Donuts",
    [2] = "Water",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
  local args = {
    [1] = "Donuts",
    [2] = "Milky",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
  local args = {
    [1] = "Donuts",
    [2] = "Sky",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
  local args = {
    [1] = "Donuts",
    [2] = "RedLeopard",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
 local args = {
    [1] = "Donuts",
    [2] = "SwirlyMagic",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
 local args = {
    [1] = "Donuts",
    [2] = "DonutKing",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
        end
    else
        _G.d = false
    end
end)
AutoTab:CreateToggle("Auto Buy Flavors", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
local args = {
    [1] = "Flavors",
    [2] = "GlazedSprinkles",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
local args = {
    [1] = "Flavors",
    [2] = "ChocolateSprinkles",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
local args = {
    [1] = "Flavors",
    [2] = "Oreo",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
local args = {
    [1] = "Flavors",
    [2] = "MixedGlazedWonder",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
local args = {
    [1] = "Flavors",
    [2] = "MilkyCookie",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
local args = {
    [1] = "Flavors",
    [2] = "ChocolateCookie",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
local args = {
    [1] = "Flavors",
    [2] = "VanillaSprinkles",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
local args = {
    [1] = "Flavors",
    [2] = "StrawberrySprinkles",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
local args = {
    [1] = "Flavors",
    [2] = "MilkChocolate",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
local args = {
    [1] = "Flavors",
    [2] = "StrawberrySwirl",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))



local args = {
    [1] = "Flavors",
    [2] = "Night",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
local args = {
    [1] = "Flavors",
    [2] = "RainbowSwirl",
}

game:GetService("ReplicatedStorage").Remotes["Buy Item"]:InvokeServer(unpack(args))
        end
    else
        _G.e= false
    end
end)
AutoTab:CreateButton("If You Want Farm Eggs", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(d)
end)
AutoTab:CreateToggle("Add Buy Common Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.zzee = true 
        while wait(0.5) and _G.zzee do
local args = {
    [1] = "Common",
    [2] = 999,
}

game:GetService("ReplicatedStorage").Remotes["Buy Egg"]:InvokeServer(unpack(args))
           end
  else
    
        _G.zzee = false
    end
end)
teleports:CreateButton("Sell", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-510.696259, 5.00755835, 175.697876)
end)

teleports:CreateButton("Donut Land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-586.663574, 5.00755978, 180.557449)
end)
teleports:CreateButton("Haunted Island", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-2468.3269, 9.00752926, -3951.69092)
end)
teleports:CreateButton("Plante 11", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(3272.59082, -134.430649, -992.514771)
end)

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

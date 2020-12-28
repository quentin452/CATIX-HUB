--https://web.roblox.com/games/3859039810/UPD-Munching-Masters



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Munching Master GUI","things", true)
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


AutoTab:CreateToggle("Auto Eat", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0) and _G.a do
           local Event = game:GetService("ReplicatedStorage").Events.Player.Eat
Event:FireServer()
        end
    else
        _G.a = false
    end
end)

AutoTab:CreateToggle("Auot BUy Foods", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
            local A_1 = "Food"
local A_2 = "Bacon"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

  local A_1 = "Food"
local A_2 = "Pizza"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

  local A_1 = "Food"
local A_2 = "Watermelon"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

  local A_1 = "Food"
local A_2 = "Hotdog"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

  local A_1 = "Food"
local A_2 = "Pie"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

  local A_1 = "Food"
local A_2 = "Cookie"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

  local A_1 = "Food"
local A_2 = "Pancake"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

  local A_1 = "Food"
local A_2 = "Donut"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

  local A_1 = "Food"
local A_2 = "Ice cream"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

  local A_1 = "Food"
local A_2 = "Sugar Cookie"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

  local A_1 = "Food"
local A_2 = "Turkey Leg"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

  local A_1 = "Food"
local A_2 = "Cake"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

  local A_1 = "Food"
local A_2 = "Burger"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

        end
    else
        _G.b = false
    end
end)

AutoTab:CreateToggle("Auto Buy Sac", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
           local A_1 = "Metabolism"
local A_2 = "Skinny"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

           local A_1 = "Metabolism"
local A_2 = "Average"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

           local A_1 = "Metabolism"
local A_2 = "Pudgy"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)
   
local A_1 = "Metabolism"
local A_2 = "Big"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Metabolism"
local A_2 = "Fat"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Metabolism"
local A_2 = "Chunky"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Metabolism"
local A_2 = "Hefty"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Metabolism"
local A_2 = "Muffin Top"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Metabolism"
local A_2 = "Huge"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Metabolism"
local A_2 = "Giant"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Metabolism"
local A_2 = "Massive"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Metabolism"
local A_2 = "Enormous"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Metabolism"
local A_2 = "Toxic"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Metabolism"
local A_2 = "Colossal"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)
        end
    else
        _G.c = false
    end
end)

AutoTab:CreateToggle("Auto Buy Seasons", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
           local A_1 = "Seasoning"
local A_2 = "Spicy"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "Glitter"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "Fire"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "Ice"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "Electric"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "Crystal"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "Golden"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "Radioactive"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "Galaxy"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "Alien"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "MLG"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "Raimbow"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "Diamond"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)

local A_1 = "Seasoning"
local A_2 = "Void"
local Event = game:GetService("ReplicatedStorage").Events.Player.Buy
Event:FireServer(A_1, A_2)
        end
    else
        _G.d = false
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

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(267.207886, 3.99800491, 467.826996)
end)

teleports:CreateButton("Safe Zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-46.8610497, 3.99800491, 31.7004776)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

--https://www.roblox.com/games/3788547128/Dr-Seuss-Simulator-Summer-Pets





local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Dr Seuss GUI","things", true)
local buy = Library:CreateTab("Auto Buy","things", true)
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
buy:CreateButton("⚠️Display Issues", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(N)
end)
buy:CreateToggle("Auto Buy ALL Books", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
            local A_1 = 1
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuyAll
Event:InvokeServer(A_1)

        end
    else
        _G.b = false
    end
end)

buy:CreateToggle("Auto Buy ALL Bags", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
           local A_1 = 2
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuyAll
Event:InvokeServer(A_1)
        end
    else
        _G.c = false
    end
end)

buy:CreateToggle("Auto Buy ALL Ranks", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
           local A_1 = 3
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 2
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 3
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 4
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 5
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 6
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 7
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 8
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 9
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 10
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 11
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 12
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 13
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 14
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 15
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 16
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 17
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 18
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 19
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 20
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 21
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 22
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 23
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 24
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

local A_1 = 3
local A_2 = 25
local Event = game:GetService("ReplicatedStorage").Events.Simulator.TryBuy
Event:InvokeServer(A_1, A_2)

        end
    else
        _G.d = false
    end
end)

eggs:CreateToggle("Auto Buy  Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
           local A_1 = 1
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.e = false
    end
end)

eggs:CreateToggle("Auto Buy Summer Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
           local A_1 = 24
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.f = false
    end
end)

eggs:CreateToggle("Auto Buy Rainbow Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
           local A_1 = 5
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Auto Buy Sneetch Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
           local A_1 = 7
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Auto Buy Mcgurkus Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
           local A_1 = 2
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.i = false
    end
end)

eggs:CreateToggle("Auto Buy Slide Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
           local A_1 = 9
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.j = false
    end
end)

eggs:CreateToggle("Auto Buy Stage Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0) and _G.k do
           local A_1 = 3
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.k = false
    end
end)

eggs:CreateToggle("Auto Buy Rhino Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
           local A_1 = 10
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.l = false
    end
end)

eggs:CreateToggle("Auto Buy DareDevil Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
           local A_1 = 8
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.m = false
    end
end)

eggs:CreateToggle("Auto Buy Horton Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do
           local A_1 = 4
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.n = false
    end
end)

eggs:CreateToggle("Auto Buy FishBowl Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do
           local A_1 = 6
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.o = false
    end
end)

eggs:CreateToggle("Auto Buy Pink Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
        while wait(0) and _G.p do
           local A_1 = 13
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.p = false
    end
end)


eggs:CreateToggle("Auto Buy Fox Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
        while wait(0) and _G.q do
           local A_1 = 12
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.q = false
    end
end)


eggs:CreateToggle("Auto Buy Maze Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
        while wait(0) and _G.r do
           local A_1 = 11
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.r = false
    end
end)



eggs:CreateToggle("Auto Buy Winter Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s = true 
        while wait(0) and _G.s do
           local A_1 = 15
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.s = false
    end
end)

eggs:CreateToggle("Auto Buy Think Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t = true 
        while wait(0) and _G.t do
           local A_1 = 22
local A_2 = 1
local Event = game:GetService("ReplicatedStorage").Events.PurchasePetRequest
Event:FireServer(A_1, A_2)

        end
    else
        _G.t = false
    end
end)
eggs:CreateToggle("Auto Buy Limited Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t3 = true 
        while wait(0) and _G.t3 do
local args = {
    [1] = 24,
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.PurchasePetRequest:FireServer(unpack(args))

        end
    else
        _G.t3 = false
    end
end)
AutoTab:CreateToggle("Auto Collect Chests", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t2 = true 
        while wait(0) and _G.t2 do

local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'PopcornChest' then
     v.CFrame = root.CFrame
       wait()
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'PinkLemonChest' then
     v.CFrame = root.CFrame
       wait()
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'PropChest' then
     v.CFrame = root.CFrame
       wait()
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'GroupCoinChest' then
     v.CFrame = root.CFrame
       wait()
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'StarChest' then
     v.CFrame = root.CFrame
       wait()
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'MazeCoinChest' then
     v.CFrame = root.CFrame
       wait()
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'CoinChest' then
     v.CFrame = root.CFrame
       wait()
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'DonutChest' then
     v.CFrame = root.CFrame
       wait()
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'GreenChest' then
     v.CFrame = root.CFrame
       wait()
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'CoinChest' then
     v.CFrame = root.CFrame
       wait()
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'CoinChestBig' then
     v.CFrame = root.CFrame
       wait()
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end

        end
    else
        _G.t2 = false
    end
end)
AutoTab:CreateToggle("Auto Collect Coins", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o2 = true 
        while wait(0) and _G.o2 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Coin' then
     v.CFrame = root.CFrame
       wait()
   
       
   local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'CoinStack' then
     v.CFrame = root.CFrame
       wait()
   
  
        end
end
end
end
    end
    else
        _G.o2 = false
    end
end)

AutoTab:CreateToggle("Auto Collect PopCorn", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o3 = true 
        while wait(0) and _G.o3 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Popcorn5' then
     v.CFrame = root.CFrame
       wait()
   

  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Popcorn1' then
     v.CFrame = root.CFrame
       wait()
   
      


end
end
end
end
    end
    else
        _G.o3 = false
    end
end)
AutoTab:CreateToggle("Auto Collect Donuts", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o4 = true 
        while wait(0) and _G.o4 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Donut1' then
     v.CFrame = root.CFrame
       wait()
   

 local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Donut15' then
     v.CFrame = root.CFrame
       wait()
   

 
   
      



end
end
   
      



end
end
    end
    else
        _G.o4 = false
    end
end)
AutoTab:CreateToggle("Auto Collect Stars", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o5 = true 
        while wait(0) and _G.o5 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Star1' then
     v.CFrame = root.CFrame
       wait()
   

  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Star25' then
     v.CFrame = root.CFrame
       wait()
   
      


end
end
end
end
    end
    else
        _G.o5 = false
    end
end)
AutoTab:CreateToggle("Auto Collect Pink lemon", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o6 = true 
        while wait(0) and _G.o6 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'PinkLemon1' then
     v.CFrame = root.CFrame
       wait()
   

  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'PinkLemon10' then
     v.CFrame = root.CFrame
       wait()
   
      


end
end
end
end
    end
    else
        _G.o6 = false
    end
end)
AutoTab:CreateToggle("Auto Collect Green Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o7 = true 
        while wait(0) and _G.o7 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Green1' then
     v.CFrame = root.CFrame
       wait()
   

  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Green15' then
     v.CFrame = root.CFrame
       wait()
   
      


end
end
end
end
    end
    else
        _G.o7 = false
    end
end)
AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Sell", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(224.039368, 1002.45245, 495.499054)
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(191.660477, 1002.79633, 553.575806)
end)

teleports:CreateButton("Coins island", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(4958.70361, -468.058197, 7574.84668)
end)

teleports:CreateButton("Popcorn Island", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(239.348328, -468.058136, 426.805664)
end)

teleports:CreateButton("Donuts Island", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(5144.41699, -468.058197, -4235.29102)
end)

teleports:CreateButton("Star Island", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(4964.02393, 409.984253, 608.926697)
end)

teleports:CreateButton("Pink Lemon Island", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(20842.043, -468.058258, 430.405823)
end)

teleports:CreateButton("Green Egg Island", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-7627.83301, -229.251297, 414.234039)
end)

teleports:CreateButton("Pet Zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(171.847626, 669.799805, 51425.4141)
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

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

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

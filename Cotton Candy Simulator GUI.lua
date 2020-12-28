--https://www.roblox.com/games/3290249490/NEW-WORLD-Cotton-Candy-Simulator
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Cotton Candy Simulator GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local Delete2 = Library:CreateTab("Auto Delete All Pets","things", true)
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
        _G.b = true 
        while wait(0) and _G.b do
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
end

    else
        _G.b= false
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


eggs:CreateButton("World 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
          
        end
    else
        _G.c = false
    end
end)

eggs:CreateToggle("Auto Buy Bronze Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0.1) and _G.d do
           local args = {
    [1] = "Starter World Bronze",
    [2] = 1
}

game:GetService("ReplicatedStorage").Events.BuyEggPromptEvent:FireServer(unpack(args))

        end
    else
        _G.d = false
    end
end)

eggs:CreateToggle("Auto Buy Silver Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0.1) and _G.e do
           local args = {
    [1] = "Starter World Silver",
    [2] = 1
}

game:GetService("ReplicatedStorage").Events.BuyEggPromptEvent:FireServer(unpack(args))

        end
    else
        _G.e = false
    end
end)

eggs:CreateToggle("Auto Buy Gold Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0.1) and _G.f do
           local args = {
    [1] = "Starter World Gold",
    [2] = 1
}

game:GetService("ReplicatedStorage").Events.BuyEggPromptEvent:FireServer(unpack(args))

        end
    else
        _G.f = false
    end
end)

eggs:CreateToggle("Auto Buy Diamond Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0.1) and _G.g do
           local args = {
    [1] = "Starter World Diamond",
    [2] = 1
}

game:GetService("ReplicatedStorage").Events.BuyEggPromptEvent:FireServer(unpack(args))

        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Auto Buy Super Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0.1) and _G.h do
           local args = {
    [1] = "Starter World Super",
    [2] = 1
}

game:GetService("ReplicatedStorage").Events.BuyEggPromptEvent:FireServer(unpack(args))

        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Auto Buy Platinum Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0.1) and _G.i do
  local args = {
    [1] = "Starter World Diamond",
    [2] = 1
}

game:GetService("ReplicatedStorage").Events.BuyEggPromptEvent:FireServer(unpack(args))


        end
    else
        _G.i = false
    end
end)

eggs:CreateButton("World 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
            
        end
    else
        _G.j = false
    end
end)

eggs:CreateToggle("Auto Buy Bronze Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k = true 
        while wait(0.1) and _G.k do
           local args = {
    [1] = "Sugar Beach Bronze",
    [2] = 1
}

game:GetService("ReplicatedStorage").Events.BuyEggPromptEvent:FireServer(unpack(args))

        end
    else
        _G.k = false
    end
end)

eggs:CreateToggle("Auto Buy Silver Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0.1) and _G.l do
           local args = {
    [1] = "Sugar Beach Silver",
    [2] = 1
}

game:GetService("ReplicatedStorage").Events.BuyEggPromptEvent:FireServer(unpack(args))

        end
    else
        _G.l = false
    end
end)

eggs:CreateToggle("Auto Buy Gold Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0.1) and _G.m do
           local args = {
    [1] = "Sugar Beach Gold",
    [2] = 1
}

game:GetService("ReplicatedStorage").Events.BuyEggPromptEvent:FireServer(unpack(args))

        end
    else
        _G.m = false
    end
end)

eggs:CreateToggle("Auto Buy Diamond Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0.1) and _G.n do
           local args = {
    [1] = "Sugar Beach Diamond",
    [2] = 1
}

game:GetService("ReplicatedStorage").Events.BuyEggPromptEvent:FireServer(unpack(args))

        end
    else
        _G.n = false
    end
end)

AutoTab:CreateButton("Wait let the games defrize", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)

AutoTab:CreateToggle("Auto Collect Gems", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0) and _G.o do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Gem' then
     v.CFrame = root.CFrame
       wait()
   
  
        end
    end
    end
    else
        _G.o = false
    end
end)

AutoTab:CreateToggle("Auto Collect Sugar", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p = true 
        while wait(0) and _G.p do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'SugarFloss' then
     v.CFrame = root.CFrame
       wait()
   
  
        end
    end
    end
    else
        _G.p = false
    end
end)
AutoTab:CreateToggle("Auto Collect Coins", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.p2 = true 
        while wait(0) and _G.p2 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Coin' then
     v.CFrame = root.CFrame
       wait()
   
  
        end
    end
    end
    else
        _G.p2 = false
    end
end)
AutoTab:CreateToggle("Auto Claim Quests", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.q = true 
        while wait(0) and _G.q do
            local args = {
    [1] = "BuyWands"
}

game:GetService("ReplicatedStorage").Events.ClaimAchievementEvent:FireServer(unpack(args))

      local args = {
    [1] = "BuyFlavors"
}

game:GetService("ReplicatedStorage").Events.ClaimAchievementEvent:FireServer(unpack(args))

local args = {
    [1] = "BuySilverEggs"
}

game:GetService("ReplicatedStorage").Events.ClaimAchievementEvent:FireServer(unpack(args))

local args = {
    [1] = "BuyBronzeEggs"
}

game:GetService("ReplicatedStorage").Events.ClaimAchievementEvent:FireServer(unpack(args))

local args = {
    [1] = "BuyGoldEggs"
}

game:GetService("ReplicatedStorage").Events.ClaimAchievementEvent:FireServer(unpack(args))

local args = {
    [1] = "BuyDiamondEggs"
}

game:GetService("ReplicatedStorage").Events.ClaimAchievementEvent:FireServer(unpack(args))

local args = {
    [1] = "BuyPlatinumEggs"
}

game:GetService("ReplicatedStorage").Events.ClaimAchievementEvent:FireServer(unpack(args))

local args = {
    [1] = "KillCocoSnakes"
}

game:GetService("ReplicatedStorage").Events.ClaimAchievementEvent:FireServer(unpack(args))

local args = {
    [1] = "KillGummyBears"
}

game:GetService("ReplicatedStorage").Events.ClaimAchievementEvent:FireServer(unpack(args))

local args = {
    [1] = "KillJawbreakers"
}

game:GetService("ReplicatedStorage").Events.ClaimAchievementEvent:FireServer(unpack(args))
        end
    else
        _G.q = false
    end
end)

AutoTab:CreateToggle("Auto Buy Boosts", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
        while wait(0) and _G.r do
            local args = {
    [1] = "AutoCoinGather"
}

game:GetService("ReplicatedStorage").Events.UpdateSkillsEvent:FireServer(unpack(args))


            local args = {
    [1] = "AutoGemMine"
}

game:GetService("ReplicatedStorage").Events.UpdateSkillsEvent:FireServer(unpack(args))


            local args = {
    [1] = "Speedster"
}

game:GetService("ReplicatedStorage").Events.UpdateSkillsEvent:FireServer(unpack(args))


            local args = {
    [1] = "MonsterSlayer"
}

game:GetService("ReplicatedStorage").Events.UpdateSkillsEvent:FireServer(unpack(args))


            local args = {
    [1] = "PetHandler"
}

game:GetService("ReplicatedStorage").Events.UpdateSkillsEvent:FireServer(unpack(args))

     end
    else
        _G.r = false
    end
end)



teleports:CreateButton("World 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1086.05542, 49.8905716, 58.4696999)
end)

teleports:CreateButton("World 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(820.643616, -174.992462, 32881.1953)
end)

teleports:CreateButton("Shop 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1051.25146, 64.6854553, 3.71782184)
end)

teleports:CreateButton("Shop 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1162.84863, -105.658844, 33436.1289)
end)

teleports:CreateButton("Safe Zone", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1156.63147, 71.4762573, -283.506531)
end)
teleports:CreateButton("Sell Impossible To Arres", function() 
    
for x = 1,2000000000000000000000000 do
wait(0)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(948.780518, -163.19249, 32830.0586)
end

end)
AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

Delete2:CreateButton("Best Eggs", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)

Delete2:CreateButton("Diamond Eggs World 2", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)

Delete2:CreateToggle("Delete Sweet Dogs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.s = true 
        while wait(0) and _G.s do
            local args = {
    [1] = "Sweet Dog",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))
        end
    else
        _G.s = false
    end
end)

Delete2:CreateToggle("Delete Sweet Cats", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.t = true 
        while wait(0) and _G.t do
            local args = {
    [1] = "Sweet Cat",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))
        end
    else
        _G.t = false
    end
end)

Delete2:CreateToggle("Delete Sweet Shark", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.u = true 
        while wait(0) and _G.u do
           local args = {
    [1] = "Sweet Shark",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))
        end
    else
        _G.u = false
    end
end)

Delete2:CreateToggle("Delete Sweet Unicorn", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.v = true 
        while wait(0) and _G.v do
           local args = {
    [1] = "Sweet Unicorn",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))
        end
    else
        _G.v = false
    end
end)

Delete2:CreateToggle("Delete Gummy Bear", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.w = true 
        while wait(0) and _G.w do
           local args = {
    [1] = "Gummy Bear",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))
        end
    else
        _G.w = false
    end
end)

Delete2:CreateToggle("Delete Gummy Panda", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.x = true 
        while wait(0) and _G.x do
           local args = {
    [1] = "Gummy Panda",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))
        end
    else
        _G.x = false
    end
end)

Delete2:CreateToggle("Delete Sour Unicorn", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.y = true 
        while wait(0) and _G.y do
           local args = {
    [1] = "Sour Unicorn",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))
        end
    else
        _G.y = false
    end
end)

Delete2:CreateButton("Gold Eggs World 2", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)

Delete2:CreateToggle("Delete All Pets Gold Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.z = true 
        while wait(0) and _G.z do
           local args = {
    [1] = "Sandy Bear",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

   local args = {
    [1] = "Sandy Bat",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

  local args = {
    [1] = "Wavy Cat",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

   local args = {
    [1] = "Wavy Fox",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

  local args = {
    [1] = "Wavy Shark",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))    

local args = {
    [1] = "Gold Dragon",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

 local args = {
    [1] = "Rainbow Shark",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

  local args = {
    [1] = "Rainbow Dragon",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))
        end
    else
        _G.z = false
    end
end)

Delete2:CreateButton("Platinum Eggs World 2", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)

Delete2:CreateToggle("Delete All Pets Platinum Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.za = true 
        while wait(0) and _G.za do
            local args = {
    [1] = "Sour Apple Gummy",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

            local args = {
    [1] = "Cotton Candy",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Unicorn",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Dragon",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Magical Unicorn",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Void",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

        end
    else
        _G.za = false
    end
end)

Delete2:CreateButton("Bronze Eggs World 2", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)

Delete2:CreateToggle("Delete All Pets Bronze Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zb = true 
        while wait(0) and _G.zb do
            local args = {
    [1] = "Kiwi Kitty",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

            local args = {
    [1] = "Coco Koala",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Berry Pup",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Fudgy Fox",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Candy Panda",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Godly Panda",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

        end
    else
        _G.zb = false
    end
end)

Delete2:CreateButton("Silver Eggs World 2", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)

Delete2:CreateToggle("Delete All Pets Silver Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zc = true 
        while wait(0) and _G.zc do
           local args = {
    [1] = "Fudgy Fox",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))
    
           local args = {
    [1] = "Blue Shark",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Red Shark",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))


            local args = {
    [1] = "Pink Shark",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

            local args = {
    [1] = "Purple Shark",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

            local args = {
    [1] = "Baby Shark",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Yellow Turtle",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Orange Turtle",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Nuclear Shark",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Godly Shark",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

        end
    else
        _G.zc = false
    end
end)

Delete2:CreateButton("Auto Delete All Pets World 1", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)

Delete2:CreateToggle("Delete All Pets World 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.zd = true 
        while wait(0) and _G.zd do
           local args = {
    [1] = "Sugar",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

    local args = {
    [1] = "Coco",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

  local args = {
    [1] = "Berry",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

    local args = {
    [1] = "Gum Drop",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

        local args = {
    [1] = "Banana",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

       local args = {
    [1] = "Sherry",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

   local args = {
    [1] = "Blueberry",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

    local args = {
    [1] = "Raspberry",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

       local args = {
    [1] = "Peach",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Sweet",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Sour",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Spicey",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Twirl",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Nutty",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Tasty",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Sour Apple Gummy",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Cotton Candy",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Unicorn",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

local args = {
    [1] = "Dragon",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Magical Unicorn",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Void",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Marshmallow Dominus",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Fudge Dominus",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Sweet Dominus",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Sour Dominus",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Gummy Dominus",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Tropical Dominus",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Rainbow Dominus",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Golden Dominus",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

           local args = {
    [1] = "Cherry",
    [2] = 1,
    [3] = false,
}

game:GetService("ReplicatedStorage").Events.DeletePetEvent:FireServer(unpack(args))

        end
    else
        _G.zd = false
    end
end)



    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local ot = mt.__namecall
mt.__namecall = function(self, ...)
   local args = {...}
   local method = namecallMethod()
   if tostring(method) == "Kick" then
      print('Kick attempt')
       return
   end
   return ot(self, ...)
end

--https://www.roblox.com/games/3854461548/BFF-Best-Fish-Friends-BETA-UPDATE





local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Best-Fish-Friends GUI","things", true)
local Buy = Library:CreateTab("Auto Buy","things", true)
local Eggs = Library:CreateTab("Auto Buy Eggs","things", true)
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

AutoTab:CreateButton("Do not Use All", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)

AutoTab:CreateButton("At The Same Time", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)

AutoTab:CreateToggle("Collect Plastics Zone 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d1 = true 
        while wait(1) and _G.d1 do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end

                  if child:IsA("BasePart") and child.Name == "Bottle_1" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame     
             else
            
                   if child:IsA("BasePart") and child.Name == "Spray_1" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame   
                  end
    
   


end
end
    end
    else
        _G.d1 = false
    end
end)

AutoTab:CreateToggle("Collect Plastics Zone 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d2 = true 
        while wait(1) and _G.d2 do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end
       
           
                  if child:IsA("BasePart") and child.Name == "Bottle_2" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame     
            else
          
              
               
               if child:IsA("BasePart") and child.Name == "Spray_2" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame   
          
  


end
end
end
    end
    else
        _G.d2 = false
    end
end)

AutoTab:CreateToggle("Collect Plastics Zone 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d3 = true 
        while wait(1) and _G.d3 do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end

       if child:IsA("BasePart") and child.Name == "Bottle_3" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame     
            else
      
                
            
               if child:IsA("BasePart") and child.Name == "Spray_3" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
         
    
    


end
end
end
    end
    else
        _G.d3 = false
    end
end)

AutoTab:CreateToggle("Collect Plastics Zone 4", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d4 = true 
        while wait(1) and _G.d4 do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end
         if child:IsA("BasePart") and child.Name == "Bottle_4" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame     
 else

                
                  if child:IsA("BasePart") and child.Name == "Spray_4" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame   
    
    
    



end
end
end
    end
    else
        _G.d4 = false
    end
end)

AutoTab:CreateToggle("Auto Sell", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
         game:GetService("ReplicatedStorage").Recycling.RecyclePlastic:FireServer()

        end
    else
        _G.b = false
    end
end)

AutoTab:CreateToggle("Egg 6 FREE", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.E6 = true 
        while wait(0) and _G.E6 do
         local args = {
    [1] = "Egg_6",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Gifts.GetGiftValue:FireServer(unpack(args))

        end
    else
        _G.E6 = false
    end
end)

AutoTab:CreateToggle("Inf Coins", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.I = true 
        while wait(0) and _G.I do
local args = {
    [1] = "Coin",
    [2] = 100000,
}

game:GetService("ReplicatedStorage").Prizes.Collect:FireServer(unpack(args))

        end
    else
        _G.I = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(71.7898483, 3.66993809, 83.2115402)
end)

teleports:CreateButton("Shop", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(216.487625, 3.76654005, 43.1189423)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

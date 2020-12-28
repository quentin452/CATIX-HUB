--https://www.roblox.com/games/5281022480/Beta-Soda-Simulator
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Soda-Simulator GUI","things", true)
local eggs1 = Library:CreateTab("Auto Buy Eggs x1","things", true)
local eggs2 = Library:CreateTab("Auto Buy Eggs x3","things", true)
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


AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
       

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()


  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()
  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()

  game:GetService("ReplicatedStorage").Events["Energy2Event"]:FireServer()


        end
    else
        _G.b = false
    end
end)

AutoTab:CreateToggle("Auto Upgrades", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
       

game:GetService("ReplicatedStorage").Events.UpgradeEvent:FireServer()


        end
    else
        _G.c = false
    end
end)

AutoTab:CreateToggle("Auto Sell", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
       

game:GetService("ReplicatedStorage").Events.TradeEvent:FireServer()


        end
    else
        _G.d = false
    end
end)

AutoTab:CreateToggle("Auto Collect Chests and coins", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0.5) and _G.o do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end
         if child:IsA("BasePart") and child.Name == "Chest" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame           
else
  if child:IsA("BasePart") and child.Name == "NormalCoin" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame            
        end
end
    end
    end
    else
        _G.o = false
    end
end)

eggs1:CreateToggle("Auto Buy Dominus Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.E1 = true 
        while wait(0) and _G.E1 do
       


local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
    [2] = "Common",
    [3] = false,
}

game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))

        end
    else
        _G.E1 = false
    end
end)

eggs2:CreateToggle("Auto Buy Dominus Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.E2 = true 
        while wait(0) and _G.E2 do
       


local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
    [2] = "Common",
    [3] = true,
}

game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))

        end
    else
        _G.E2 = false
    end
end)

eggs1:CreateToggle("Auto Buy  Common Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.E3 = true 
        while wait(0) and _G.E3 do
       


local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
    [2] = "Rare",
    [3] = false,
}

game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))

        end
    else
        _G.E3 = false
    end
end)

eggs2:CreateToggle("Auto Buy Common Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.E4 = true 
        while wait(0) and _G.E4 do
       


local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
    [2] = "Rare",
    [3] = true,
}

game:GetService("ReplicatedStorage").KeyBind:InvokeServer(unpack(args))

        end
    else
        _G.E4 = false
    end
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

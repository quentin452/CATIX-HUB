--https://www.roblox.com/games/5525364160/RELEASE-Candy-Simulator-2


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Candy Simulator 2 GUI","things", true)
local Rebirths = Library:CreateTab("Auto Rebirths","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs x3","things", true)
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

AutoTab:CreateToggle("Auto Jump", function(arg) --the (arg) is if the checkbox is toggled or not
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

AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.za = true 
        while wait() and _G.za do

game:GetService("ReplicatedStorage").Shared.RemoteEvents.Click:FireServer()
           end
  else
    
        _G.za = false
    end
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
    game:GetService("CoreGui").uiui:Destroy()
    end)
    

Rebirths:CreateToggle("Auto Rebirths x1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.b= true 
        while wait() and _G.b do
        

local args = {
    [1] = "1",
}

game:GetService("ReplicatedStorage").Shared.RemoteFunctions.Rebirth:InvokeServer(unpack(args))




        end
    else
        _G.b = false
        
         end
end)

Rebirths:CreateToggle("Auto Rebirths x10", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.c= true 
        while wait() and _G.c do
        

local args = {
    [1] = "10",
}

game:GetService("ReplicatedStorage").Shared.RemoteFunctions.Rebirth:InvokeServer(unpack(args))




        end
    else
        _G.c = false
        
         end
end)

Rebirths:CreateToggle("Auto Rebirths x50", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.d= true 
        while wait() and _G.d do
        

local args = {
    [1] = "50",
}

game:GetService("ReplicatedStorage").Shared.RemoteFunctions.Rebirth:InvokeServer(unpack(args))




        end
    else
        _G.d = false
        
         end
end)

Rebirths:CreateToggle("Auto Rebirths x500", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.e= true 
        while wait() and _G.e do
        

local args = {
    [1] = "500",
}

game:GetService("ReplicatedStorage").Shared.RemoteFunctions.Rebirth:InvokeServer(unpack(args))




        end
    else
        _G.e = false
        
         end
end)

Rebirths:CreateToggle("Auto Rebirths x1k", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.f= true 
        while wait() and _G.f do
        

local args = {
    [1] = "1000",
}

game:GetService("ReplicatedStorage").Shared.RemoteFunctions.Rebirth:InvokeServer(unpack(args))




        end
    else
        _G.f = false
        
         end
end)

eggs:CreateToggle("Auto Buy Common Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.g= true 
        while wait() and _G.g do
        


local args = {
    [1] = "Common",
    [2] = "R",
}

game:GetService("ReplicatedStorage").Shared.RemoteFunctions.OpenEgg:InvokeServer(unpack(args))





















        end
    else
        _G.g = false
        
         end
end)

eggs:CreateToggle("Auto Buy Candy Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.h= true 
        while wait() and _G.h do
        


            local args = {
                [1] = "Candy",
                [2] = "R",
            }
            
            game:GetService("ReplicatedStorage").Shared.RemoteFunctions.OpenEgg:InvokeServer(unpack(args))




















        end
    else
        _G.h = false
        
         end
end)

eggs:CreateToggle("Auto Buy Snow Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.i= true 
        while wait() and _G.i do
        


            local args = {
                [1] = "Snow",
                [2] = "R",
            }
            
            game:GetService("ReplicatedStorage").Shared.RemoteFunctions.OpenEgg:InvokeServer(unpack(args))




















        end
    else
        _G.i = false
        
    
    end
end)

eggs:CreateToggle("Auto Buy Lava Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.j= true 
        while wait() and _G.j do
        


            local args = {
                [1] = "Lava",
                [2] = "R",
            }
            
            game:GetService("ReplicatedStorage").Shared.RemoteFunctions.OpenEgg:InvokeServer(unpack(args))




















        end
    else
        _G.j = false
        
         end
end)

eggs:CreateToggle("Auto Open Sand Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.SAND = true 
        while wait() and _G.SAND do
            local args = {
    [1] = "Sand",
    [2] = "R"
}

game:GetService("ReplicatedStorage").Shared.RemoteFunctions.OpenEgg:InvokeServer(unpack(args))
        end
    else
        _G.SAND = false
    end
end)


teleports:CreateButton("Sell", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(182.214462, 5.08189011, -118.789383)
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(199.636292, 5.08309937, -101.552391)
    end)

teleports:CreateButton("Sell x2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(147.961823, 363.885223, -143.617783)
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(199.636292, 5.08309937, -101.552391)
    end)

    
teleports:CreateButton("Zone 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(145.173859, 358.514099, -155.908508)
end)

teleports:CreateButton("Zone 2", function() --you dont need "arg" for a button
    game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(148.52626, 667.576904, -197.802246)
    end)

    teleports:CreateButton("Zone 3", function() --you dont need "arg" for a button
        game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(156.980057, 905.7005, -179.467224)
        end)

        Delete2:CreateToggle("Delete All Common Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.za = true 
        while wait(0) and _G.za do
            local args = {
    [1] = "BearCommon",
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




--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

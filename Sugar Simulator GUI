--https://www.roblox.com/games/2846607892/Sugar-Simulator




local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Sugar-Simulator GUI","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
local buy = Library:CreateTab("Auto Buy","things", true)
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




AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.a = true 
        while wait() and _G.a do
            game:GetService("ReplicatedStorage").Events.ScreenClick:FireServer()
end
    else
        _G.a = false
         
         end
end)

AutoTab:CreateToggle("Auto Rebirths", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.b = true 
        while wait() and _G.b do
       local args = {
    [1] = "Rebirth",
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.b = false
         
         end
end)

AutoTab:CreateToggle("Auto Equip Pets", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.bd = true 
        while wait() and _G.bd do
local args = {
    [1] = "Equip",
    [2] = {
        [1] = "Pets",
        [2] = "Desert Hare",
        [3] = "Desert Hare1",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Equip",
    [2] = {
        [1] = "Pets",
        [2] = "Armadillo",
        [3] = "Armadillo2",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Equip",
    [2] = {
        [1] = "Pets",
        [2] = "Sand Eagle",
        [3] = "Sand Eagle1",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Equip",
    [2] = {
        [1] = "Pets",
        [2] = "Armadillo",
        [3] = "Armadillo1",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.bd = false
         
         end
end)

AutoTab:CreateButton("Do not Use All", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)


AutoTab:CreateButton("At The Same Time", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)
AutoTab:CreateToggle("Auto Candies Starter World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Ring Pop' then
     v.CFrame = root.CFrame
       wait()
   
  
    
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'M&Ms' then
     v.CFrame = root.CFrame
       wait()
   end
end
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Candy Bracelet' then
     v.CFrame = root.CFrame
       wait()
 
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Skittles' then
     v.CFrame = root.CFrame
       wait()
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Chocolate Bar' then
     v.CFrame = root.CFrame
       wait()
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Heart Candies' then
     v.CFrame = root.CFrame
       wait()
   end
end
        end
    end
    end
    else
        _G.c = false
    end
end)

AutoTab:CreateToggle("Auto Candies Candy World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c2 = true 
        while wait(0) and _G.c2 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Smarties' then
     v.CFrame = root.CFrame
       wait()
   
  
    
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Starburst' then
     v.CFrame = root.CFrame
       wait()
   end
end
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Candy Cane' then
     v.CFrame = root.CFrame
       wait()
 
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Jaw Breaker' then
     v.CFrame = root.CFrame
       wait()
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Lollipop' then
     v.CFrame = root.CFrame
       wait()
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Jelly Beans' then
     v.CFrame = root.CFrame
       wait()
   end
end
        end
    end
    end
    else
        _G.c2 = false
    end
end)
AutoTab:CreateToggle("Auto Candies Beach World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c3 = true 
        while wait(0) and _G.c3 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Gummy Worms' then
     v.CFrame = root.CFrame
       wait()
   
  
    
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Chocolate Egg' then
     v.CFrame = root.CFrame
       wait()
   end
end
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Starburst' then
     v.CFrame = root.CFrame
       wait()
 
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Chocolate Coin' then
     v.CFrame = root.CFrame
       wait()
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Twizzlers' then
     v.CFrame = root.CFrame
       wait()
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Jaw Breaker' then
     v.CFrame = root.CFrame
       wait()
   end
end
        end
    end
    end
    else
        _G.c3 = false
    end
end)
AutoTab:CreateToggle("Auto Candies SnowTime World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c4 = true 
        while wait(0) and _G.c4 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Mike n' Ikes' then
     v.CFrame = root.CFrame
       wait()
   
  
    
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Chocolate Egg' then
     v.CFrame = root.CFrame
       wait()
   end
end
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Chocolate Raisins' then
     v.CFrame = root.CFrame
       wait()
 
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Rockets' then
     v.CFrame = root.CFrame
       wait()
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Twizzlers' then
     v.CFrame = root.CFrame
       wait()
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Nerds' then
     v.CFrame = root.CFrame
       wait()
   end
end
        end
    end
    end
    else
        _G.c4 = false
    end
end)
AutoTab:CreateToggle("Auto Candies Forest World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c5 = true 
        while wait(0) and _G.c5 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Candy Corn' then
     v.CFrame = root.CFrame
       wait()
   
  
    
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Rockets' then
     v.CFrame = root.CFrame
       wait()
   end
end
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Mike n' Ikes' then
     v.CFrame = root.CFrame
       wait()
 
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Caramel' then
     v.CFrame = root.CFrame
       wait()
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Gushers' then
     v.CFrame = root.CFrame
       wait()
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Cake Pop' then
     v.CFrame = root.CFrame
       wait()
   end
end
        end
    end
    end
    else
        _G.c5 = false
    end
end)
AutoTab:CreateToggle("Auto Candies Desert World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c6 = true 
        while wait(0) and _G.c6 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Toblerone' then
     v.CFrame = root.CFrame
       wait()
   
  
    
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Honey' then
     v.CFrame = root.CFrame
       wait()
   end
end
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Butterscotch' then
     v.CFrame = root.CFrame
       wait()
 
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Gushers' then
     v.CFrame = root.CFrame
       wait()
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Sour Balls' then
     v.CFrame = root.CFrame
       wait()

        end
    end
    end
    else
        _G.c6 = false
    end
end)

AutoTab:CreateToggle("Auto Candies Cloud World", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c7 = true 
        while wait(0) and _G.c7 do
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Mike n' Ikes' then
     v.CFrame = root.CFrame
       wait()
   
  
    
local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Honey' then
     v.CFrame = root.CFrame
       wait()
   end
end
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Sour Balls' then
     v.CFrame = root.CFrame
       wait()
 
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Gushers' then
     v.CFrame = root.CFrame
       wait()
  local root = game:service('Players').LocalPlayer.Character.HumanoidRootPart

for i, v in next, Workspace:GetDescendants() do
   if v.Name == 'Cake Pop' then
     v.CFrame = root.CFrame
       wait()

        end
    end
    end
    else
        _G.c7 = false
    end
end)



eggs:CreateToggle("Auto Buy Normal Eggs (1)", function(arg) --the (arg) is if the checkbox is toggled or not)
    if arg then
_G.f = true 
        while wait() and _G.f do
    
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Normal",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.f = false
         
         end
end)

eggs:CreateToggle("Auto Buy Water Eggs(2)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.g = true 
        while wait() and _G.g do
    
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Water",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.g = false
         
         end
end)

eggs:CreateToggle("Auto Buy Safari Eggs(3)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.h = true 
        while wait() and _G.h do
    
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Safari",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.h= false
         
         end
end)

eggs:CreateToggle("Auto Buy Flight Eggs(4)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.h = true 
        while wait() and _G.h do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Flight",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.h= false
         
         end
end)

eggs:CreateToggle("Auto Buy Candy Eggs(5)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.i = true 
        while wait() and _G.i do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Candy",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.i= false
         
         end
end)

eggs:CreateToggle("Auto Buy Space Eggs(6)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.i = true 
        while wait() and _G.i do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Space",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.i= false
         
         end
end)

eggs:CreateToggle("Auto Buy Light Eggs(7)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.i = true 
        while wait() and _G.i do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Light",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.i= false
         
         end
end)

eggs:CreateToggle("Auto Buy Beach Eggs(8)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.i = true 
        while wait() and _G.i do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Beach",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.i= false
         
         end
end)

eggs:CreateToggle("Auto Buy Snow Eggs(9)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.j = true 
        while wait() and _G.j do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Snow",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.j= false
         
         end
end)

eggs:CreateToggle("Auto Buy Dark Eggs(10)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.k = true 
        while wait() and _G.k do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Dark",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.k= false
         
         end
end)

eggs:CreateToggle("Auto Buy Forest Eggs(11)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.l = true 
        while wait() and _G.l do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Forest",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.l= false
         
         end
end)
eggs:CreateToggle("Auto Buy Mythicals Eggs(12)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.m = true 
        while wait() and _G.m do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Mythical",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.m= false
         
         end
end)

eggs:CreateToggle("Auto Buy Desert Eggs(13)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.n = true 
        while wait() and _G.n do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Desert",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.n= false
         
         end
end)
eggs:CreateToggle("Auto Buy Sand Eggs(14)", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.o = true 
        while wait() and _G.o do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Egg",
        [2] = "Sand",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.o= false
         
         end
end)

buy:CreateToggle("Auto Buy Bags", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.b1 = true 
        while wait() and _G.b1 do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Skinny-bones",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Super Skinny",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Skinny",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Average",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Heavy",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Chubby",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Super Chubby",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Overweight",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Fat",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Really Fat",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Obese",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Giant",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Fatness",
        [2] = "Frickn\' Huge",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.b1= false
         
         end
end)

buy:CreateToggle("Auto Buy Tools", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.b2 = true 
        while wait() and _G.b2 do
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Broken",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Rotten",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Cavities",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Sensitive",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))

local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Normal",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Clean",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Pearly White",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Perfect",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Iron",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Diamond",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Neon",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
local args = {
    [1] = "Buy",
    [2] = {
        [1] = "Teeth",
        [2] = "Angelic",
    },
}

game:GetService("ReplicatedStorage").Events.RemoteEvent:FireServer(unpack(args))
end
    else
        _G.b2 = false
         
         end
end)

teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(58.9317627, 21.6812668, -766.870239)
end)

teleports:CreateButton("Candy World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(42.0444489, 21.581295, 34.5133057)
end)

teleports:CreateButton("Beach World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(797.114807, 28.4676743, -770.014465)
end)

teleports:CreateButton("Snow World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-417.752838, 21.6036167, -475.155457)
end)

teleports:CreateButton("Forest World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(541.513672, 20.4250393, -131.343826)
end)

teleports:CreateButton("Desert World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-937.704712, 23.1520271, -1280.89917)
end)

teleports:CreateButton("Cloud World", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2024.5907, 11.9402943, 514.872437)
end)

teleports:CreateButton("sell x5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-908.823425, 23.1520271, -1262.09644)
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

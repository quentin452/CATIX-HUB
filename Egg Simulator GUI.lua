local rs = game:GetService("RunService").RenderStepped
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Egg Simulator GUI","things", true)
local buy = Library:CreateTab("Auto Buy","things", true)
local MISC = Library:CreateTab("MISC","things", true)
local credits = Library:CreateTab("Credits","things", true)

credits:CreateButton("Our Discords", function() 
  setclipboard("AHAHAHAHAH")
end)
credits:CreateButton("https://discord.gg/KmHZUpXEmQ", function() 
  setclipboard("https://discord.gg/KmHZUpXEmQ")
end)
credits:CreateButton("by Altix#3395", function() 
  setclipboard("Altix#3395")
end)
credits:CreateButton("by I'm A Cat#7202", function() 
  setclipboard("I'm A Cat#7202")
end)

buy:CreateToggle("Egg Multiplier FREE", function(arg) 
    if arg then
        _G.a = true 
        while wait(0.0001) and _G.a do
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
game:GetService("ReplicatedStorage").ShopBuy:FireServer(0,"Egg Multiplier")
       end
    else
        _G.a = false
    end
end)

MISC:CreateToggle("NO CLIP Press(E)", function(arg) 
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
else
_G.NO = false
end
end)

MISC:CreateToggle("Speed Hack 100", function(arg) 
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
AutoTab:CreateToggle("Auto Rebirths", function(arg) 
    if arg then
        _G.c = true 
        while wait(0.1) and _G.c do
          game:GetService("ReplicatedStorage").Rebirth:FireServer()
        end
    else
        _G.c = false
    end
end)

AutoTab:CreateToggle("Auto Collect White Eggs", function(arg) 
    if arg then
        _G.d = true 
        while wait(1) and _G.d do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end
               if child:IsA("BasePart") and child.Name == "Egg5" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
           else
               if child:IsA("BasePart") and child.Name == "Egg4" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
           else
               if child:IsA("BasePart") and child.Name == "Egg3" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
           else
               if child:IsA("BasePart") and child.Name == "Egg2" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
          else
            if child:IsA("BasePart") and child.Name == "Egg" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame     
    end
    end
    end
    end
    end
    end
    end
    else
        _G.d = false
    end
end)



AutoTab:CreateToggle("Auto Collect Silver Eggs", function(arg) 
    if arg then
        _G.e = true 
        while wait(1) and _G.e do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end
             if child:IsA("BasePart") and child.Name == "SilverEgg5" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame       
            else
             if child:IsA("BasePart") and child.Name == "SilverEgg4" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
            else
             if child:IsA("BasePart") and child.Name == "SilverEgg3" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
            else
             if child:IsA("BasePart") and child.Name == "SilverEgg2" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
            else
             if child:IsA("BasePart") and child.Name == "SilverEgg" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
    end
    end
    end
    end     
    end
    end
    end
    else
        _G.e = false
    end
end)

AutoTab:CreateToggle("Auto Collect Gold Eggs", function(arg) 
    if arg then
        _G.f = true 
        while wait(1) and _G.f do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end
if child:IsA("BasePart") and child.Name == "GoldEgg" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame        
            else
         if child:IsA("BasePart") and child.Name == "GoldEgg2" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame        
            else
             if child:IsA("BasePart") and child.Name == "GoldEgg3" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
            else
               if child:IsA("BasePart") and child.Name == "GoldEgg4" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
            else
               if child:IsA("BasePart") and child.Name == "GoldEgg5" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame     
 
        end
     end
   end
end
end
end
end
    else
        _G.f = false
    end
end)

AutoTab:CreateToggle("Auto Collect Mythic Eggs", function(arg) 
    if arg then
        _G.g = true 
        while wait(1) and _G.g do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end
         if child:IsA("BasePart") and child.Name == "MythicEgg" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame            
       
  else
             if child:IsA("BasePart") and child.Name == "MythicEgg2" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
            else
               if child:IsA("BasePart") and child.Name == "MythicEgg5" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
    end
             end
end
end
end
    else
        _G.g = false
    end
end)

AutoTab:CreateToggle("Auto Collect Supreme Eggs", function(arg) 
    if arg then
        _G.h = true 
        while wait(1) and _G.h do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end
         if child:IsA("BasePart") and child.Name == "SupremeEgg" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame     
else
       if child:IsA("BasePart") and child.Name == "SupremeEgg2" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame 
        end
    end
    end
        end

    else
        _G.h = false
    end
end)

AutoTab:CreateToggle("Auto Collect Ultimate Eggs", function(arg) 
    if arg then
        _G.i = true 
        while wait() and _G.i do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end
         if child:IsA("BasePart") and child.Name == "UltimateEgg" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame    
else        
 if child:IsA("BasePart") and child.Name == "UltimateEgg2" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame   
        end
    end
end
    end
    else
        _G.i = false
    end
end)

teleports:CreateButton("Spawn", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(71.7898483, 3.66993809, 83.2115402)
end)

teleports:CreateButton("Shop", function() 
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(216.487625, 3.76654005, 43.1189423)
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

-- Anti AFK
local Virtual = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
Virtual:CaptureController()
Virtual:ClickButton2(Vector2.new())
wait(2)
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


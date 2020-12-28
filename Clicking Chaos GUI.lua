--https://www.roblox.com/games/5531544242/x5-GEMS-Clicking-Chaos




local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Clicking-Chaos GUI","things", true)
local eggs = Library:CreateTab("Auto Buy Eggs","things", true)
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


teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-196.585602, 36.2450066, 7.58795643)
end)


teleports:CreateButton("Desert Island", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-4659.53516, -164.634216, 116.461639)
end)
teleports:CreateButton("Snow Island", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-3296.2583, -164.120377, 121.481377)
end)
teleports:CreateButton("Volcano land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1716.2583, -164.253632, 81.4813766)
end)
teleports:CreateButton("Beach land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-626.705078, -295.796082, 1520.94714)
end)

teleports:CreateButton("Atlantis land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(586.399109, -299.555908, 1541.36682)
end)
teleports:CreateButton("Candy land", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1815.56982, -298.64444, 1557.1189)
end)
teleports:CreateButton("Wild West", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-621.424194, -298.77356, 3032.49243)
end)
teleports:CreateButton("Golden Kingdoms", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(971.733337, -299.555908, 3345.86353)
end)
teleports:CreateButton("Void Dimension", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2437.2959, -299.042084, 3356.53467)
end)
teleports:CreateButton("Samurai Temple", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2404.30493, -299.555908, 2208.99902)
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

AutoTab:CreateToggle("Auto Click ", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
         
game:GetService("ReplicatedStorage").Remotes.MouseClicked:FireServer()


        end
    else
        _G.b = false
    end
end)

AutoTab:CreateToggle("Buy Potions", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.po = true 
        while wait(0) and _G.po do
         
local args = {
    [1] = "2x Clicks",
    [2] = "1 MIN",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))


local args = {
    [1] = "2x Clicks",
    [2] = "10 MIN",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))

local args = {
    [1] = "2x Clicks",
    [2] = "1 HOUR",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))

local args = {
    [1] = "10x Clicks",
    [2] = "1 MIN",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))

local args = {
    [1] = "10x Clicks",
    [2] = "10 MIN",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))

local args = {
    [1] = "10x Clicks",
    [2] = "1 HOUR",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))

local args = {
    [1] = "50x Clicks",
    [2] = "1 MIN",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))

local args = {
    [1] = "50x Clicks",
    [2] = "10 MIN",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))

local args = {
    [1] = "50x Clicks",
    [2] = "1 HOUR",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))
local args = {
    [1] = "100x Clicks",
    [2] = "1 MIN",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))

local args = {
    [1] = "100x Clicks",
    [2] = "10 MIN",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))

local args = {
    [1] = "100x Clicks",
    [2] = "1 HOUR",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))

local args = {
    [1] = "2x Gems",
    [2] = "10 MIN",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))
local args = {
    [1] = "2x Rebirths",
    [2] = "10 MIN",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))
local args = {
    [1] = "2x Luck",
    [2] = "10 MIN",
}

game:GetService("ReplicatedStorage").Remotes.Potions:FireServer(unpack(args))
        end
    else
        _G.po = false
    end
end)

AutoTab:CreateToggle("BuyUpgrades ", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.up = true 
        while wait(0) and _G.up do
         
local args = {
    [1] = "AutoClicker",
}

game:GetService("ReplicatedStorage").Remotes.Upgrades:FireServer(unpack(args))


local args = {
    [1] = "WalkSpeed",
}

game:GetService("ReplicatedStorage").Remotes.Upgrades:FireServer(unpack(args))

local args = {
    [1] = "Gems",
}

game:GetService("ReplicatedStorage").Remotes.Upgrades:FireServer(unpack(args))


local args = {
    [1] = "Rebirths",
}

game:GetService("ReplicatedStorage").Remotes.Upgrades:FireServer(unpack(args))

        end
    else
        _G.up = false
    end
end)
AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
end)


eggs:CreateToggle("Auto Buy Lobby Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c4 = true 
        while wait(0) and _G.c4 do
local args = {
    [1] = "Lobby",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-68.6063385, 36.5404282, 12.5732994)

        end
    else
        _G.c4 = false
    end
end)

eggs:CreateToggle("Auto Buy Desert Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c1 = true 
        while wait(0) and _G.c1 do
         
local args = {
    [1] = "Desert",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-4615.12646, -163.446152, -94.2515411)

        end
    else
        _G.c1 = false
    end
end)
eggs:CreateToggle("Auto Buy Snow Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c2 = true 
        while wait(0) and _G.c2 do
         
local args = {
    [1] = "Snow",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-3183.21411, -164.634262, -20.8305931)

        end
    else
        _G.c2 = false
    end
end)
eggs:CreateToggle("Auto Buy Volcano Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c3 = true 
        while wait(0) and _G.c3 do
         
local args = {
    [1] = "Volcano",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1648.71179, -163.924561, -78.4646683)

        end
    else
        _G.c3 = false
    end
end)
eggs:CreateToggle("Auto Buy Beach Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c5 = true 
        while wait(0) and _G.c5 do
         
local args = {
    [1] = "Beach",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-508.214508, -295.880157, 1415.1886)

        end
    else
        _G.c5 = false
    end
end)
eggs:CreateToggle("Auto Buy Atlantis Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c6 = true 
        while wait(0) and _G.c6 do
         
local args = {
    [1] = "Atlantis",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(569.605286, -289.472687, 1348.09644)

        end
    else
        _G.c6 = false
    end
end)
eggs:CreateToggle("Auto Buy Candy Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c7 = true 
        while wait(0) and _G.c7 do
         
local args = {
    [1] = "Candy",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1697.24719, -296.631317, 1418.69995)

        end
    else
        _G.c7 = false
    end
end)
eggs:CreateToggle("Auto Buy WildWest Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c8 = true 
        while wait(0) and _G.c8 do
         
local args = {
    [1] = "WildWest",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-512.821167, -298.927673, 2896.73071)

        end
    else
        _G.c8 = false
        end
    end)
eggs:CreateToggle("Auto Buy GoldenKingdom Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c9 = true 
        while wait(0) and _G.c9 do
         
local args = {
    [1] = "GoldenKingdom",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(840.629456, -296.452637, 3244.17871)

        end
    else
        _G.c9 = false
    end
end)
eggs:CreateToggle("Auto Buy Void Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c10 = true 
        while wait(0) and _G.c10 do
         
local args = {
    [1] = "Void",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2566.23047, -296.679871, 3209.72705)

        end
    else
        _G.c10 = false
    end
end)
eggs:CreateToggle("Auto Buy SamuraiTemple Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c11 = true 
        while wait(0) and _G.c11 do
         
local args = {
    [1] = "SamuraiTemple",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))

game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2495.9043, -295.984924, 2125.10693)

        end
    else
        _G.c11 = false
    end
end)
eggs:CreateToggle("Auto Buy 2M Event Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c11 = true 
        while wait(0) and _G.c11 do
         
local args = {
    [1] = "TwoMEvent",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))

game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-117.166588, 43.897377, -9.93335438)

        end
    else
        _G.c11 = false
    end
end)
eggs:CreateToggle("Auto Buy 3M Event Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c12 = true 
        while wait(0) and _G.c12 do
         
local args = {
    [1] = "ThreeMEvent",
    [2] = "Single",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))

game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-117.166588, 43.897377, -9.93335438)

        end
    else
        _G.c12 = false
    end
end)
Rebirths:CreateToggle("Rebirths x1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r = true 
        while wait(0) and _G.r do
         
local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r = false
    end
end)

Rebirths:CreateToggle("Rebirths x10", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r10 = true 
        while wait(0) and _G.r10 do
         
local args = {
    [1] = 2,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r10 = false
    end
end)

Rebirths:CreateToggle("Rebirths x25", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r25 = true 
        while wait(0) and _G.r25 do
         
local args = {
    [1] = 3,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r25 = false
    end
end)

Rebirths:CreateToggle("Rebirths x50", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r50 = true 
        while wait(0) and _G.r50 do
         
local args = {
    [1] = 4,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r50 = false
    end
end)

Rebirths:CreateToggle("Rebirths x100 ", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r100 = true 
        while wait(0) and _G.r100 do
         
local args = {
    [1] = 5,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r100 = false
    end
end)

Rebirths:CreateToggle("Rebirths x500 ", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r500 = true 
        while wait(0) and _G.r500 do
         
local args = {
    [1] = 6,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r500 = false
    end
end)

Rebirths:CreateToggle("Rebirths x1k ", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r1k = true 
        while wait(0) and _G.r1k do
         
local args = {
    [1] = 7,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r1k = false
    end
end)

Rebirths:CreateToggle("Rebirths x10k ", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r10k = true 
        while wait(0) and _G.r10k do
         
local args = {
    [1] = 8,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r10k = false
    end
end)

Rebirths:CreateToggle("Rebirths x25k ", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r25k = true 
        while wait(0) and _G.r25k do
         
local args = {
    [1] = 9,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r25k = false
    end
end)

Rebirths:CreateToggle("Rebirths x50k ", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r50k = true 
        while wait(0) and _G.r50k do
         
local args = {
    [1] = 10,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r50k = false
    end
end)
Rebirths:CreateToggle("Rebirths x500k ", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r500k = true 
        while wait(0) and _G.r500k do
         
local args = {
    [1] = 11,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r500k = false
    end
end)
Rebirths:CreateToggle("Rebirths x1M ", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r5000k = true 
        while wait(0) and _G.r5000k do
         
local args = {
    [1] = 12,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r5000k = false
    end
end)

Rebirths:CreateToggle("Rebirths x10M ", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.r50000k = true 
        while wait(0) and _G.r50000k do
         
local args = {
    [1] = 13,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))


        end
    else
        _G.r50000k = false
    end
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

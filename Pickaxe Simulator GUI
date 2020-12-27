--https://web.roblox.com/games/4186060228/UPDATE-2-Pickaxe-Simulator

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Pickaxe-Simulator GUI","things", true)
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



AutoTab:CreateToggle("Auto Sell", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do

game:GetService("ReplicatedStorage").Events.Server.Sell:FireServer()
        end
    else
        _G.b= false
    end
end)
AutoTab:CreateToggle("Auto Mine Center Ore", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0.1) and _G.c do

local args = {
    [1] = workspace.Resources.OreSpawners["100"],
}

game:GetService("ReplicatedStorage").Events.Server.OreNodes.PickaxeStrike:FireServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1837.78833, -5.45701456, -12.7656631)
        end
    else
        _G.c= false
    end
end)

AutoTab:CreateToggle("Auto Tp To Coins", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0.1) and _G.f do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Resources.Pickups.Coins

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
    else
        _G.f= false
    end
end)

AutoTab:CreateToggle("Auto Tp To Gems", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0.1) and _G.e do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Resources.Pickups.Gems

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
    else
        _G.e= false
    end
end)

AutoTab:CreateToggle("Auto Tp To Boss", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0.1) and _G.e do

local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Resources.SpawnedBosses["Rock Golem"].RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
    else
        _G.e= false
    end
end)
AutoTab:CreateToggle("Auto Quests", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0.1) and _G.e do



local args = {
    [1] = "1",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "2",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "3",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "4",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "5",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "6",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "7",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "8",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "9",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "10",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "11",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "12",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "13",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "14",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "15",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "16",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)

local args = {
    [1] = "17",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)


local args = {
    [1] = "18",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "19",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "20",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "21",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "22",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)local args = {
    [1] = "23",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "24",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)
local args = {
    [1] = "25",
}

game:GetService("ReplicatedStorage").Events.Server.Quests:FireServer(unpack(args))
wait(0.1)
        end
    else
        _G.e= false
    end
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1856.44849, -5.55699015, 10.2977171)
end)

teleports:CreateButton("Zone 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1874.63684, 1210.81201, -53.6669693)
end)

teleports:CreateButton("Zone 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1901.89136, 3037.04175, 6.77880383)
end)

teleports:CreateButton("Zone 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1908.88, 8609.47168, -57.5772514)
end)

teleports:CreateButton("Zone 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1881.12561, 15872.1582, -82.6783218)
end)
teleports:CreateButton("Zone 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1752.77673, 23329.8906, -78.3082275)
end)
teleports:CreateButton("Tp To All Chests", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1776.43835, 23329.7168, -108.702065)
wait (0.5)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1938.76416, 8609.97461, -85.242691)
wait (0.5)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1906.84729, 1212.59802, -107.113953)
wait (0.5)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1976.27991, 36.9217987, -384.064209)
wait (0.5)
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1840.39197, -6.14821625, 92.1613007)
wait (0.5)
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

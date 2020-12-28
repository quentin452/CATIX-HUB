--https://web.roblox.com/games/4032944086/TRADING-Workout-Island

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Workout-Island GUI","things", true)
local AutoTab1 = Library:CreateTab("Auto Bosses","things", true)
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



AutoTab:CreateToggle("Auto Lifting", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0) and _G.a do
game:GetService("ReplicatedStorage").Remotes.LiftWeight:FireServer()
        end
    else
        _G.a= false
    end
end)
AutoTab:CreateToggle("Auto Sell", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").RingAreas.RangeSystem.Server.Sell

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+60)
wait (0.1)
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").RingAreas.RangeSystem.Server.Sell

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
        end
    else
        _G.b= false
    end
end)
AutoTab:CreateToggle("Auto Buy All Auras", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
local args = {
    [1] = "Aura",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestBuyAll:InvokeServer(unpack(args))
        end
    else
        _G.c= false
    end
end)
AutoTab:CreateToggle("Auto Buy All Weight", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
local args = {
    [1] = "Weight",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestBuyAll:InvokeServer(unpack(args))
        end
    else
        _G.d= false
    end
end)
AutoTab:CreateToggle("Auto Upgrade All Dna", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
            local args = {
    [1] = "2",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "3",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "4",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "5",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "6",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "7",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "8",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "9",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "10",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "11",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "12",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "13",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "14",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "15",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "16",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "17",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "18",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "19",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "20",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "21",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "22",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "23",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "24",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "25",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "26",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "27",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "28",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "29",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "30",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "31",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "32",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "33",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "34",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "35",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "36",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "37",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "38",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "39",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "40",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "41",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "42",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "43",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "44",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "45",
    [2] = "DNA",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
        end
    else
        _G.e= false
    end
end)
AutoTab:CreateToggle("Auto Buy Bodies", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e4 = true 
        while wait(0) and _G.e4 do

local args = {
    [1] = "2",
    [2] = "BodyUpgrade",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "3",
    [2] = "BodyUpgrade",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "4",
    [2] = "BodyUpgrade",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "5",
    [2] = "BodyUpgrade",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "6",
    [2] = "BodyUpgrade",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "7",
    [2] = "BodyUpgrade",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "8",
    [2] = "BodyUpgrade",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "9",
    [2] = "BodyUpgrade",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = "10",
    [2] = "BodyUpgrade",
}

game:GetService("ReplicatedStorage").Remotes.Shop.RequestPurchase:InvokeServer(unpack(args))
wait(0.1)
        end
    else
        _G.e4= false
    end
end)
AutoTab1:CreateToggle("Auto Punch", function(arg)
if arg then
_G.bossc444 = true
 while wait() and _G.bossc444 do
 
local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Remotes.PVP.Punch:InvokeServer(unpack(args))
end
else
_G.bossc444 = false
end
end)
AutoTab1:CreateToggle("Auto Tp To Magma Boss", function(arg)
if arg then
_G.bossc4 = true
 while wait() and _G.bossc4 do
 
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").BossModels.MagmaBoss.RightUpperArm

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+1)
end
else
_G.bossc4 = false
end
end)
eggs:CreateToggle("Auto Buy 1,5K Gems Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e1 = true 
        while wait(0) and _G.e1 do

local args = {
    [1] = 1,
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.Pets.PurchaseEgg:InvokeServer(unpack(args))
        end
    else
        _G.e1= false
    end
end)
eggs:CreateToggle("Auto Buy 10K Gems Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e2 = true 
        while wait(0) and _G.e2 do
local args = {
    [1] = 2,
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.Pets.PurchaseEgg:InvokeServer(unpack(args))
        end
    else
        _G.e2= false
    end
end)
eggs:CreateToggle("Auto Buy 40K Gems Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e3 = true 
        while wait(0) and _G.e3 do
local args = {
    [1] = 3,
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.Pets.PurchaseEgg:InvokeServer(unpack(args))
        end
    else
        _G.e3= false
    end
end)
teleports:CreateButton("Zone 18", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1691.21399, 27.4616146, -5681.1333)
end)

teleports:CreateButton("Zone 19", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1525.88171, 27.4269829, -5677.54443)
end)

teleports:CreateButton("Zone 20", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1689.25916, 27.4623146, -3887.64136)
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

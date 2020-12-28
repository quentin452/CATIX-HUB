--https://web.roblox.com/games/5650523443/Noggin-Cracking-Simulator

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Noggin-Cracking-Simulator GUI","things", true)
local rebirths = Library:CreateTab("Auto Rebirth","things", true)
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



AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:InvokeServer()
        end
    else
        _G.b= false
    end
end)
rebirths:CreateToggle("Auto Rebirths X1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
        end
    else
        _G.c= false
    end
end)

rebirths:CreateToggle("Auto Rebirths X4", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
local args = {
    [1] = 2,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
        end
    else
        _G.d= false
    end
end)
rebirths:CreateToggle("Auto Rebirths X27", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
local args = {
    [1] = 3,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
        end
    else
        _G.e= false
    end
end)
rebirths:CreateToggle("Auto Rebirths X256", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
local args = {
    [1] = 4,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
        end
    else
        _G.f= false
    end
end)
rebirths:CreateToggle("Auto Rebirths X3130", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
local args = {
    [1] = 5,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
        end
    else
        _G.g= false
    end
end)
rebirths:CreateToggle("Auto Rebirths X46,6K", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
local args = {
    [1] = 6,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
        end
    else
        _G.h= false
    end
end)
rebirths:CreateToggle("Auto Rebirths X823K", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
local args = {
    [1] = 7,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
        end
    else
        _G.i= false
    end
end)
rebirths:CreateToggle("Auto Rebirths X16,7M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
local args = {
    [1] = 8,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
        end
    else
        _G.j= false
    end
end)
rebirths:CreateToggle("Auto Rebirths X387M", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.k= true 
        while wait(0) and _G.k do
local args = {
    [1] = 9,
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.Rebirth:InvokeServer(unpack(args))
        end
    else
        _G.k= false
    end
end)
eggs:CreateToggle("Auto Buy 0 Rebirths Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l= true 
        while wait(0) and _G.l do

local args = {
    [1] = "Basic Egg",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CrateService.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(241.363708, -89.542244, 1354.60425)
        end
    else
        _G.l= false
    end
end)
eggs:CreateToggle("Auto Buy 1 Rebirths Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m= true 
        while wait(0) and _G.m do

local args = {
    [1] = "Uncommon Egg",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CrateService.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(260.919342, -89.356781, 1374.23975)
        end
    else
        _G.m= false
    end
end)
eggs:CreateToggle("Auto Buy 4 Rebirths Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n= true 
        while wait(0) and _G.n do

local args = {
    [1] = "Desert Egg",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CrateService.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(268.271118, -85.3903275, -1243.71375)
        end
    else
        _G.n= false
    end
end)
eggs:CreateToggle("Auto Buy 7 Rebirths Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n2= true 
        while wait(0) and _G.n2 do

local args = {
    [1] = "Swamp Egg",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CrateService.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(73.2767868, -22.6903839, -3541.74707)
        end
    else
        _G.n2= false
    end
end)
eggs:CreateToggle("Auto Buy 10 Rebirths Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n3= true 
        while wait(0) and _G.n3 do

local args = {
    [1] = "Area51 Egg",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CrateService.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(69.3399963, -22.6904411, -5279.36328)
        end
    else
        _G.n3= false
    end
end)
eggs:CreateToggle("Auto Buy 15 Rebirths Egg", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o= true 
        while wait(0) and _G.o do

local args = {
    [1] = "Underwater Egg",
}

game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CrateService.BuyEgg:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(70.9400635, -22.8125267, -7034.75146)
        end
    else
        _G.o= false
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

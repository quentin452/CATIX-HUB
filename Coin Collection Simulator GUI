--https://www.roblox.com/games/5093293793/HUGE-UPDATE-Coin-Collection-Simulator


local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Coin Collection Simulator GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
local eggs = Library:CreateTab("Auto By Cages SLOW","things", true)
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


eggs:CreateToggle("Auto Buy Cages 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.a = true 
        while wait(0) and _G.a do
           local args = {
    [1] = "StarterCage",
}

workspace.petInfo:InvokeServer(unpack(args))
        end
    else
        _G.a = false
    end
end)

eggs:CreateToggle("Auto Buy Cages 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
         local args = {
    [1] = "DesertCage",
}

workspace.petInfo:InvokeServer(unpack(args))
        end
    else
        _G.b = false
    end
end)

eggs:CreateToggle("Auto Buy Cages 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
         local args = {
    [1] = "SnowCage",
}

workspace.petInfo:InvokeServer(unpack(args))
        end
    else
        _G.c = false
    end
end)

eggs:CreateToggle("Auto Buy Cages 4", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
         local args = {
    [1] = "CityCage",
}

workspace.petInfo:InvokeServer(unpack(args))
        end
    else
        _G.d = false
    end
end)

eggs:CreateToggle("Auto Buy Cages 5", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do
         local args = {
    [1] = "LavaCage",
}

workspace.petInfo:InvokeServer(unpack(args))
        end
    else
        _G.e = false
    end
end)

eggs:CreateToggle("Auto Buy Cages 6", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.f = true 
        while wait(0) and _G.f do
         local args = {
    [1] = "OceanCage",
}

workspace.petInfo:InvokeServer(unpack(args))
        end
    else
        _G.f = false
    end
end)

eggs:CreateToggle("Auto Buy Cages 7", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.g = true 
        while wait(0) and _G.g do
         local args = {
    [1] = "CandyCage",
}

workspace.petInfo:InvokeServer(unpack(args))
        end
    else
        _G.g = false
    end
end)

eggs:CreateToggle("Auto Buy Cages 8", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.h = true 
        while wait(0) and _G.h do
         local args = {
    [1] = "JungleCage",
}

workspace.petInfo:InvokeServer(unpack(args))
        end
    else
        _G.h = false
    end
end)

eggs:CreateToggle("Auto Buy Cages 9", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.i = true 
        while wait(0) and _G.i do
      local args = {
    [1] = "SpaceCage",
}

workspace.petInfo:InvokeServer(unpack(args))
        end
    else
        _G.i = false
    end
end)

AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.j = true 
        while wait(0) and _G.j do
            if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
end

    else
        _G.j = false
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
AutoTab:CreateToggle("Disable all pop ups", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.l = true 
        while wait(0) and _G.l do
          game:GetService("ReplicatedStorage").CoinFrame:Destroy()
          game:GetService("ReplicatedStorage").XpFrame:Destroy()  
        end
    else
        _G.l = false
    end
end)

AutoTab:CreateButton("Tp to Last Zone", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)

AutoTab:CreateButton("And Execute Auto Coins", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:nothing()
end)

AutoTab:CreateToggle("Auto Coins FAST", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.m = true 
        while wait(0) and _G.m do
             for i,v in pairs (game:GetService("Workspace").AllCoins.SpaceCoin:GetChildren()) do
        v.Coin.CFrame = Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
end
    else
        _G.m = false
    end
end)

AutoTab:CreateToggle("Auto Sacrifices", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.n = true 
        while wait(0) and _G.n do
          local args = {
    [1] = 0,
}

game:GetService("ReplicatedStorage").SacrificeMoney:FireServer(unpack(args))
end
    else
        _G.n = false
    end
end)

teleports:CreateButton("Shop", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-319.3284, 6.41753483, -571.995544)
end)

teleports:CreateButton("Zone 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-11.0445356, 6.05753565, -546.400757)
end)

teleports:CreateButton("Zone 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(316.360413, 6.05753565, -570.571411)
end)

teleports:CreateButton("Zone 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(694.087219, 6.05384827, -561.044739)
end)

teleports:CreateButton("Zone 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1087.39343, 5.5575366, -553.410522)
end)

teleports:CreateButton("Zone 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1423.27222, 6.0542655, -549.605042)
end)

teleports:CreateButton("Zone 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1779.07678, 6.05753422, -555.153259)
end)

teleports:CreateButton("Zone 7", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2144.20239, 6.05753565, -501.873474)
end)

teleports:CreateButton("Zone 8", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2513.57397, 6.05426502, -511.89859)
end)

teleports:CreateButton("Zone 9", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(2883.66211, 6.05753565, -504.741577)
end)

AutoTab:CreateButton("Destroy Gui :D", function() --you dont need "arg" for a button
game:GetService("CoreGui").uiui:Destroy()
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

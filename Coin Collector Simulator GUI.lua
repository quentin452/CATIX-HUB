--https://www.roblox.com/games/3956799149/Coins-Collector-Simulator



local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Coins-Collector-Simulator GUI","things", true)
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

AutoTab:CreateToggle("Auto Sell", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.a = true 
        while wait() and _G.a do
            game:GetService("ReplicatedStorage").TP:FireServer()
        end
    else
        _G.a = false
           
         end
end)

AutoTab:CreateToggle("Inf Rebirths FREE", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.c = true 
        while wait() and _G.c do
        local args = {
    [1] = 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999,
    [2] = 0,
}

game:GetService("ReplicatedStorage").Rebirth:FireServer(unpack(args))
        end
    else
        _G.c = false
           
         end
end)

AutoTab:CreateToggle("Auto Super Rebirths FREE", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.d = true 
        while wait() and _G.d do
   for i = 1, 100 do 
game:GetService("ReplicatedStorage").SuperRebirth:FireServer()
game:GetService("ReplicatedStorage").SuperRebirth:FireServer()
game:GetService("ReplicatedStorage").SuperRebirth:FireServer()
end

        end
    else
        _G.d = false
           
         end
end)


AutoTab:CreateToggle("Auto Collect All Coins", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(1) and _G.o do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end
         if child:IsA("BasePart") and child.Name == "Coins" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame            
        end
    end
    end
    else
        _G.o = false
    end
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

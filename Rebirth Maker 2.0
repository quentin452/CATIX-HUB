--https://www.roblox.com/games/5055942264/EVENTS-Rebirth-Maker-2-0

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Rebirth-Maker-2-0 GUI","things", true)
local MISC = Library:CreateTab("MISC","things", true)
local credits = Library:CreateTab("Credits","things", true)

AutoTab:CreateToggle("Auto Collect Gems", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.o = true 
        while wait(0.5) and _G.o do
local children = game.Workspace:GetChildren()
    for _, child in pairs(children) do
        for _, child in pairs(child:GetChildren()) do
            table.insert(children, child)
         end
         if child:IsA("BasePart") and child.Name == "Diamond" then
            child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame            
        end
    end
    end
    else
        _G.o = false
    end
end)
AutoTab:CreateToggle("Auto Buy Crate 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.b = true 
        while wait(0) and _G.b do
         local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
}

game:GetService("ReplicatedStorage")["Crate1"]:FireServer(unpack(args))
        end
    else
        _G.b= false
    end
end)
AutoTab:CreateToggle("Auto Buy Crate 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do
      local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
}

game:GetService("ReplicatedStorage")["Crate2"]:FireServer(unpack(args))
        end
    else
        _G.c= false
    end
end)
AutoTab:CreateToggle("Auto Buy Crate 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do
         local args = {
    [1] = game:GetService("Players")["LocalPlayer"],
}

game:GetService("ReplicatedStorage")["Crate3"]:FireServer(unpack(args))
        end
    else
        _G.d= false
    end
end)

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


MISC:CreateButton("NO CLIP Press(E)", function(arg) --the (arg) is if the checkbox is toggled or not
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




--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)
    
    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

--https://www.roblox.com/games/5245876019/NEW-Soda-Shaking-Simulator-2

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Soda-Shaking-Simulator-2 GUI","things", true)
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

AutoTab:CreateToggle("Auto Click", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.a = true 
        while wait(0) and _G.a do
if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
end
          end
    else
        _G.a = false
           
         end
end)

AutoTab:CreateToggle("Eggs 1", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.b = true 
        while wait(0) and _G.b do
game:GetService("Players")["LocalPlayer"].PlayerGui["EGG1"].Frame.Butao.TextButton.RemoteEvent:FireServer()

          end
    else
        _G.b = false
           
         end
end)


AutoTab:CreateToggle("Eggs 2", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.c = true 
        while wait(0) and _G.c do
game:GetService("Players")["LocalPlayer"].PlayerGui["EGG2"].Frame.Butao.TextButton.RemoteEvent:FireServer()

          end
    else
        _G.c = false
           
         end
end)


AutoTab:CreateToggle("Eggs 3", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
_G.d = true 
        while wait(0) and _G.d do
game:GetService("Players")["LocalPlayer"].PlayerGui["EGG3"].Frame.Butao.TextButton.RemoteEvent:FireServer()
end  
    else
        _G.d = false
           
         end
end)


teleports:CreateButton("Shop 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(27.0024281, 41.857029, -348.696503)
end)

teleports:CreateButton("Shop 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(1.31434357, 41.8570328, -336.775177)
end)

teleports:CreateButton("Sell", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(13.7938881, 41.8570328, 211.995789)
end)

--| Anti AFK | By Altix#3395
    local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        Virtual:CaptureController()
        Virtual:ClickButton2(Vector2.new())
        wait(2)
    end)

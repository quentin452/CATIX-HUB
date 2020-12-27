--https://www.roblox.com/games/5193596327/PET-UPD-Dominus-Legends?refPageId=90b7959f-2027-46f7-8afb-3194d3d8af1f

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/preztel/AzureLibrary/master/uilib.lua", true))()

local AutoTab = Library:CreateTab("Dominus-Legends GUI","things", true)
local teleports = Library:CreateTab("Teleports","things", true)
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


AutoTab:CreateToggle("Auto Buy Skills", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.B = true 
        while wait(0) and _G.B do


local args = {
    [1] = {
        ["cmd"] = "BuyAll",
        ["cat"] = "Skills",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
end

    else
        _G.B = false
    end
end)
AutoTab:CreateToggle("Auto Buy Domini", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.c = true 
        while wait(0) and _G.c do



local args = {
    [1] = {
        ["cmd"] = "BuyAll",
        ["cat"] = "Dominuses",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
end

    else
        _G.c = false
    end
end)
AutoTab:CreateToggle("Auto Buy DNA", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.d = true 
        while wait(0) and _G.d do



local args = {
    [1] = {
        ["cmd"] = "BuyAll",
        ["cat"] = "DNA",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
end

    else
        _G.d = false
    end
end)
AutoTab:CreateToggle("Auto Buy Ranks", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.e = true 
        while wait(0) and _G.e do


local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["1"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["2"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["3"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["4"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["5"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["6"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["7"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["8"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["9"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["10"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["11"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["12"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["13"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["14"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["15"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["16"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["17"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["18"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["19"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["20"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["21"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["22"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["23"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["24"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["25"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["26"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["27"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["28"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["29"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["30"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["31"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["32"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["33"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["34"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
wait(0.1)
local args = {
    [1] = {
        ["cmd"] = "Buy Now",
        ["item"] = game:GetService("ReplicatedStorage").Items.Ranks["35"],
        ["cat"] = "Ranks",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Shop:InvokeServer(unpack(args))
end

    else
        _G.e = false
    end
end)
AutoTab:CreateToggle("Auto Sell", function(arg)
      if arg then--you dont need "arg" for a button
_G.f3= true 
while wait(0) and _G.f3 do
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(228.955215, 17555.002, -87.4702148)
wait(0.5)
end
else
  _G.f3 = false
end
end)
eggs:CreateToggle("Auto Buy 750 Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.B2= true 
        while wait(0) and _G.B2 do


local args = {
    [1] = {
        ["cmd"] = "Open",
        ["capsule"] = "1",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Pets:InvokeServer(unpack(args))
end

    else
        _G.B2 = false
    end
end)
eggs:CreateToggle("Auto Buy 2K Coins Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.B3= true 
        while wait(0) and _G.B3 do


local args = {
    [1] = {
        ["cmd"] = "Open",
        ["capsule"] = "2",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Pets:InvokeServer(unpack(args))
end

    else
        _G.B3 = false
    end
end)
eggs:CreateToggle("Auto Buy 1K Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.B4= true 
        while wait(0) and _G.B4 do


local args = {
    [1] = {
        ["cmd"] = "Open",
        ["capsule"] = "3",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Pets:InvokeServer(unpack(args))
end

    else
        _G.B4 = false
    end
end)
eggs:CreateToggle("Auto Buy 2K Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.B5= true 
        while wait(0) and _G.B5 do


local args = {
    [1] = {
        ["cmd"] = "Open",
        ["capsule"] = "4",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Pets:InvokeServer(unpack(args))
end

    else
        _G.B5 = false
    end
end)
eggs:CreateToggle("Auto Buy 6.5K Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.B6= true 
        while wait(0) and _G.B6 do


local args = {
    [1] = {
        ["cmd"] = "Open",
        ["capsule"] = "5",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Pets:InvokeServer(unpack(args))
end

    else
        _G.B6 = false
    end
end)
eggs:CreateToggle("Auto Buy 14.5K Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.B7= true 
        while wait(0) and _G.B7 do


local args = {
    [1] = {
        ["cmd"] = "Open",
        ["capsule"] = "6",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Pets:InvokeServer(unpack(args))
end

    else
        _G.B7 = false
    end
end)
eggs:CreateToggle("Auto Buy 30K Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.B8= true 
        while wait(0) and _G.B8 do


local args = {
    [1] = {
        ["cmd"] = "Open",
        ["capsule"] = "7",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Pets:InvokeServer(unpack(args))
end

    else
        _G.B8 = false
    end
end)
eggs:CreateToggle("Auto Buy 100K Gems Eggs", function(arg) --the (arg) is if the checkbox is toggled or not
    if arg then
        _G.B9= true 
        while wait(0) and _G.B9 do


local args = {
    [1] = {
        ["cmd"] = "Open",
        ["capsule"] = "8",
    },
}

game:GetService("ReplicatedStorage").RemoteSystems.Pets:InvokeServer(unpack(args))
end

    else
        _G.B9 = false
    end
end)
teleports:CreateButton("Spawn", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(229.198196, -2.2161212, 9.9555397)
end)

teleports:CreateButton("Zone 1", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(217.058884, 616.801392, -62.1804581)
end)

teleports:CreateButton("Zone 2", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(260.939056, 1679.60168, -31.3338337)
end)
teleports:CreateButton("Zone 3", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(274.048798, 3162.10181, -47.5677528)
end)
teleports:CreateButton("Zone 4", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(245.430725, 5006.20117, -64.9191437)

end)
teleports:CreateButton("Zone 5", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(254.50618, 7320.30127, -37.5594978)

end)
teleports:CreateButton("Zone 6", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(217.387039, 10091.627, 10.7612886)

end)
teleports:CreateButton("Zone 7", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(264.706757, 13330.041, 0.322577417)

end)
teleports:CreateButton("Zone 8", function() --you dont need "arg" for a button
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(230.080292, 17541.9551, 7.01569843)

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

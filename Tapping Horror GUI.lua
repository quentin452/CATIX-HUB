--https://www.roblox.com/games/5644352013/SECRET-CODE-Tapping-Horror?refPageId=35ab3d8c-c8ee-4f16-b346-c69529d46a54
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Tapping Horror")
local w2 = library:CreateWindow("Rebirths")
local w4 = library:CreateWindow("Eggs")


--================== Model =======================--
local w = w3:CreateFolder("HACKS")

w:Label("THINGS",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor


w:Button("REDEEM CODES",function()
game:GetService("ReplicatedStorage").Events.UseCode:FireServer("GameRelease")
game:GetService("ReplicatedStorage").Events.UseCode:FireServer("Tofu")
game:GetService("ReplicatedStorage").Events.UseCode:FireServer("MarcosDrumom")
game:GetService("ReplicatedStorage").Events.UseCode:FireServer("JeffBlox")
game:GetService("ReplicatedStorage").Events.UseCode:FireServer("xMarcelo")
game:GetService("ReplicatedStorage").Events.UseCode:FireServer("RussoPlays")
game:GetService("ReplicatedStorage").Events.UseCode:FireServer("Betero")
game:GetService("ReplicatedStorage").Events.UseCode:FireServer("Sr_Rickofc")
game:GetService("ReplicatedStorage").Events.UseCode:FireServer("uKingzaum")
game:GetService("ReplicatedStorage").Events.UseCode:FireServer("yTowakGB")
game:GetService("ReplicatedStorage").Events.UseCode:FireServer("ShadowHXD")
end)
	w:Toggle("Auto Upgrades",function(bool)
		shared.toggle1 = bool
	end)
		w:Toggle("Auto SRRebirths",function(bool)
		shared.toggle2 = bool
	end)
	spawn(function()
		while wait() do
		       if shared.toggle1 then

game:GetService("ReplicatedStorage").Events.BuyUpgrade:FireServer("AutoTap")
game:GetService("ReplicatedStorage").Events.BuyUpgrade:FireServer("PetEquip1")
game:GetService("ReplicatedStorage").Events.BuyUpgrade:FireServer("x2Taps")
game:GetService("ReplicatedStorage").Events.BuyUpgrade:FireServer("PetEquip2")
game:GetService("ReplicatedStorage").Events.BuyUpgrade:FireServer("Speed")
game:GetService("ReplicatedStorage").Events.BuyUpgrade:FireServer("PetEquipInf")
end
    if shared.toggle2 then

game:GetService("ReplicatedStorage").Events.SuperRebirths:FireServer()
end
end
end)

--Teleporters

w:Button("Spawn",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-10.678093, 253.576889, -618.91925)
end)

w:Button("Zone 1",function()
 game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(126.232162, 699.028015, -1377.5437)
end)

w:Button("Zone 2",function()
 game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-519.85614, 809.381775, -1786.21558)
end)
w:Button("Zone 3",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-788.31781, 957.781677, -1135.43542)
end)
w:Button("Zone 4",function()
  game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-709.534302, 1072.2821, -819.114563)
end)
w:Button("Zone 5",function()
  game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(154.808731, 1258.58191, -241.641144)
end)

--Rebirths
local w2 = w2:CreateFolder("Rebirths")
	w2:Dropdown("Choose Rebirths",{"X1","X5","X50","X950","X6,5K","X19K","X125K","X950K","X12,6M","X150M","X1,6B","X789B","X49T","X9Qd","X1Sx","X25Sx","X350Sx","X7Sp","X350Sp","X7Oc"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.EggsSelected = mob
	end)

	w2:Toggle("Buy Rebirths",function(bool)
	    shared.REB = bool
	end)

spawn(function()
	while wait(0) do
		if shared.REB then
			if _G.BossSelected == "X1" then
		game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth1")	
			elseif _G.BossSelected == "X5" then
		game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth2")	

			elseif _G.BossSelected == "X50" then
		game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth3")	
			elseif _G.BossSelected == "X950" then
		game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth4")	
			elseif _G.BossSelected == "X6,5K" then
		game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth5")	
			elseif _G.BossSelected == "X19K" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth6")
elseif _G.BossSelected == "X125K" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth7")
elseif _G.BossSelected == "X950K" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth8")
elseif _G.BossSelected == "X12,6M" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth9")
elseif _G.BossSelected == "X150M" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth10")

elseif _G.BossSelected == "X1,6B" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth11")
elseif _G.BossSelected == "X789B" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth12")
elseif _G.BossSelected == "X49T" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth13")
elseif _G.BossSelected == "X9Qd" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth14")
elseif _G.BossSelected == "X1Sx" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth15")
elseif _G.BossSelected == "X25Sx" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth16")
elseif _G.BossSelected == "X350Sx" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth17")

elseif _G.BossSelected == "X7Sp" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth18")
elseif _G.BossSelected == "X350Sp" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth19")
elseif _G.BossSelected == "X7Oc" then
game:GetService("ReplicatedStorage").Events.Rebirths:FireServer("Rebirth20")
			end
		end
	end
end)

--Eggs

local w22 = w4:CreateFolder("Eggs")
	w22:Dropdown("Choose Eggs",{"Egg1","Egg2","Egg3","Egg4","Egg5","Egg6","Egg7","Egg8"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w22:Toggle("Buy Eggs",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.EggsSelected == "Egg1" then
game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg1)
			elseif _G.EggsSelected == "Egg2" then
	game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg2)

			elseif _G.EggsSelected == "Egg3" then
	game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg3)
			elseif _G.EggsSelected == "Egg4" then
		game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg4)
			elseif _G.EggsSelected == "Egg5" then
		game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg5)
			elseif _G.EggsSelected == "Egg6" then
game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg6)
elseif _G.EggsSelected == "Egg7" then
game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg7)
elseif _G.EggsSelected == "Egg8" then

game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(workspace.EggSystem.Egg8)



			end
		end
	end
end)


--================== Player Settings =======================--

--(alot not by me )--
local PLR = w3:CreateFolder("Player")

	
	
	PLR:Slider("Jump Hack",10,250,true,function(value)
	    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	end)

	PLR:Button("No Clip (Press E)",function()
		noclip = false
		game:GetService('RunService').Stepped:connect(function()
			if noclip then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
		local plr = game.Players.LocalPlayer
		local mouse = plr:GetMouse()
		mouse.KeyDown:connect(function(key)
			if key == "e" then
				noclip = not noclip
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
	end)



	PLR:Button("Inf Jump",function()
	game:GetService("UserInputService").JumpRequest:connect(function()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
end)
end)

	PLR:Button("Crl + Click = TP",function()
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
if not Mouse.Target then return end
Plr.Character:MoveTo(Mouse.Hit.p)
end)
end)
	PLR:Button("Extreme Light",function()
	local s = Instance.new("PointLight", game.Players.LocalPlayer.Character.Head)
s.Brightness = 0.3
s.Range = 100
game.Lighting.Changed:connect(function()
game.Lighting.TimeOfDay = "14:00:00"
game.Lighting.FogEnd = 300
game.Lighting.Brightness = 10
game.Lighting.ColorCorrection.Brightness = 0.1
game.Lighting.ColorCorrection.Saturation = 0.1
game.Lighting.Bloom.Intensity = 0.1
end)
end)
	PLR:Button("Inf Yield",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)



	PLR:Button("ESP UNIVERSAL",function()
for i,v in pairs(game.Workspace:GetDescendants()) do
if v.ClassName == "TouchTransmitter" then
-- if v.ClassName == "TouchTransmitter" and v.Parent.Name == "Handle" then
local BillboardGui = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")

BillboardGui.Parent = v.Parent
BillboardGui.AlwaysOnTop = true
BillboardGui.LightInfluence = 1
BillboardGui.Size = UDim2.new(0, 100, 0, 100)
BillboardGui.StudsOffset = Vector3.new(0, 2, 0)

TextLabel.Parent = BillboardGui
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Text = v.Parent.Parent.Name
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextScaled = true
end
end
end)

	PLR:Button("Dark Dex",function()
loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))()
end)

PLR:Label("Work Whit Paid,KRNL AND SONA Exploit",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

	PLR:Button("Remote Spy Universal GAME",function()
loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU", true))()
end)


--================== Misc =======================--

local MISC = w3:CreateFolder("Misc")

	MISC:Button("Rejoin",function()
		local TeleportService = game:GetService("TeleportService")
		local PlaceId = game.PlaceId
		local player = game.Players.LocalPlayer
		if player then
		TeleportService:Teleport(PlaceId, player)
		end
	end)

	MISC:GuiSettings()

--================== Credits =======================--

local CS = w3:CreateFolder("Credits")

	CS:Button("Script by: I'm A Cat#7202",function()
		setclipboard("I'm A Cat#7202")
	end)

	CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",function()
		setclipboard("https://discord.gg/KmHZUpXEmQ")
	end)

CS:Button("Helped by: Altix#3395",function()
		setclipboard("Altix#3395")
end)

	CS:DestroyGUI()

--================== Autres =======================--


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


--| Other Anti AFK |
wait(10)
    game.StarterGui:SetCore(
        "ChatMakeSystemMessage",
        {
            Text = "[ANTI AFK] Started !",
            Font = Enum.Font.SourceSansBold, 
            FontSize = Enum.FontSize.Size24 
        }
    )
while wait(30) do
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
end

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

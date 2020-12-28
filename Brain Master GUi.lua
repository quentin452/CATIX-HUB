local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Brain masters")
local w2 = library:CreateWindow("Eggs X1")
local w4 = library:CreateWindow("Teleporters")

--================== Model =======================--
local w = w3:CreateFolder("Things")

w:Label("Hacks",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

	w:Toggle("Auto Click FAST",function(bool)
		shared.toggle1 = bool
	end)
	
		w:Toggle("Auto Sell X1",function(bool)
		shared.toggle2 = bool
end) 
	w:Toggle("Auto Sell X2",function(bool)
		shared.toggle22 = bool
end) 
	w:Toggle("Auto Sell X3",function(bool)
		shared.toggle222 = bool
end) 
w:Toggle("Auto Upgrades",function(bool)
		shared.toggle7 = bool
end) 
	spawn(function()
		while wait() do
		       if shared.toggle1 then
game:GetService("ReplicatedStorage").Replicated.Remotes.drink:FireServer("1")
game:GetService("ReplicatedStorage").Replicated.Remotes.drink:FireServer("2")
game:GetService("ReplicatedStorage").Replicated.Remotes.drink:FireServer("3")
game:GetService("ReplicatedStorage").Replicated.Remotes.drink:FireServer("4")
game:GetService("ReplicatedStorage").Replicated.Remotes.drink:FireServer("5")
game:GetService("ReplicatedStorage").Replicated.Remotes.drink:FireServer("6")
game:GetService("ReplicatedStorage").Replicated.Remotes.drink:FireServer("7")
game:GetService("ReplicatedStorage").Replicated.Remotes.drink:FireServer("8")
end
	if shared.toggle2 then
game:GetService("Workspace").SellParts.Lobby.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
	if shared.toggle22 then
game:GetService("Workspace").SellParts.Desert.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
	if shared.toggle222 then
game:GetService("Workspace").SellParts.Florest.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
	if shared.toggle4 then
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("2","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("3","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("4","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("5","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("6","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("7","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("8","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("9","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("10","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("11","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("12","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("13","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("14","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("15","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("16","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("17","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("18","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("19","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("20","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("21","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("22","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("23","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("24","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("25","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("26","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("27","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("28","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("29","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("30","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("31","Buy","Potion")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("32","Buy","Potion")
end
	if shared.toggle5 then
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("2","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("3","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("4","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("5","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("6","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("7","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("8","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("9","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("10","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("11","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("12","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("13","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("14","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("15","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("16","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("17","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("18","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("19","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("20","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("21","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("22","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("23","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("24","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("25","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("26","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("27","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("28","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("29","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("30","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("31","Buy","Brain")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("32","Buy","Brain")
end
	if shared.toggle6 then
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("2","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("3","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("4","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("5","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("6","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("7","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("8","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("9","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("10","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("11","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("12","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("13","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("14","Buy","Ranks")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bb:InvokeServer("15","Buy","Ranks")
end
	if shared.toggle7 then
game:GetService("ReplicatedStorage").Replicated.Remotes.bu:InvokeServer("Double Head")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bu:InvokeServer("+2 Pet Equip")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bu:InvokeServer("2x Coins")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bu:InvokeServer("+ 50 Storage")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bu:InvokeServer("2x Speed")
wait(0.1)
game:GetService("ReplicatedStorage").Replicated.Remotes.bu:InvokeServer("2x Jumps")
wait(0.1)
end
end
end)

local w2 = w2:CreateFolder("Eggs")
	w2:Dropdown("Choose Eggs",{"Common","Uncommon","Rare"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w2:Toggle("Buy Eggs",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "Common" then
game:GetService("ReplicatedStorage").Replicated.Remotes.hegg:FireServer(workspace.Eggs.Common,"E")
			elseif _G.BossSelected == "Uncommon" then
			game:GetService("ReplicatedStorage").Replicated.Remotes.hegg:FireServer(workspace.Eggs.Uncommon,"E")
			elseif _G.BossSelected == "Rare" then
			game:GetService("ReplicatedStorage").Replicated.Remotes.hegg:FireServer(workspace.Eggs.Rare,"E")
			elseif _G.BossSelected == "Snow" then
			
			elseif _G.BossSelected == "Lava" then
	
			end
		end
	end
end)

--================== Player Settings =======================--

--(alot not by me )--
local PLR = w3:CreateFolder("Player")

	
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
	PLR:Button("Btools",function()
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
for index, child in pairs(game:GetService("Workspace"):GetChildren()) do
  if child.ClassName == "Part" then
      child.Locked = false
  end
  if child.ClassName == "MeshPart" then
      child.Locked = false
  end
  if child.ClassName == "UnionOperation" then
      child.Locked = false
  end
  if child.ClassName == "Model" then
      for index, chil in pairs(child:GetChildren()) do
          if chil.ClassName == "Part" then
              chil.Locked = false
          end
          if chil.ClassName == "MeshPart" then
              chil.Locked = false
          end
          if chil.ClassName == "UnionOperation" then
              chil.Locked = false
          end
          if chil.ClassName == "Model" then
              for index, childe in pairs(chil:GetChildren()) do
                  if childe.ClassName == "Part" then
                      childe.Locked = false
                  end
                  if childe.ClassName == "MeshPart" then
                      childe.Locked = false
                  end
                  if childe.ClassName == "UnionOperation" then
                      childe.Locked = false
                  end
                  if childe.ClassName == "Model" then
                      for index, childeo in pairs(childe:GetChildren()) do
                          if childeo.ClassName == "Part" then
                              childeo.Locked = false
                          end
                          if childeo.ClassName == "MeshPart" then
                              childeo.Locked = false
                          end
                          if childeo.ClassName == "UnionOperation" then
                              childeo.Locked = false
                          end
                          if childeo.ClassName == "Model" then
                          end
                      end
                  end
              end
          end
      end
  end
 
end
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Hammer
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Clone
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Grab


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

	PLR:Button("Location Detector",function()
local finder = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local nameofgui = Instance.new("TextLabel")
local random = Instance.new("TextLabel")
local cl = Instance.new("TextLabel")
local border = Instance.new("TextLabel")
local copy = Instance.new("TextButton")

finder.Name = "finder"
finder.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
finder.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
finder.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = finder
Main.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Main.Position = UDim2.new(0.460674137, 0, 0.360557795, 0)
Main.Size = UDim2.new(0, 254, 0, 192)

nameofgui.Name = "nameofgui"
nameofgui.Parent = Main
nameofgui.BackgroundColor3 = Color3.new(1, 1, 1)
nameofgui.BackgroundTransparency = 1
nameofgui.Size = UDim2.new(0, 254, 0, 26)
nameofgui.Font = Enum.Font.SourceSans
nameofgui.Text = "Location Finder"
nameofgui.TextColor3 = Color3.new(1, 1, 1)
nameofgui.TextSize = 20

random.Name = "random"
random.Parent = Main
random.BackgroundColor3 = Color3.new(1, 1, 1)
random.BackgroundTransparency = 1
random.Position = UDim2.new(0.106299214, 0, 0.197916672, 0)
random.Size = UDim2.new(0, 200, 0, 37)
random.Font = Enum.Font.SourceSans
random.Text = "Your current location is "
random.TextColor3 = Color3.new(1, 1, 1)
random.TextSize = 18

cl.Name = "cl"
cl.Parent = Main
cl.BackgroundColor3 = Color3.new(1, 1, 1)
cl.BackgroundTransparency = 1
cl.Position = UDim2.new(0.106299214, 0, 0.39062503, 0)
cl.Size = UDim2.new(0, 200, 0, 36)
cl.Font = Enum.Font.SourceSans
cl.TextColor3 = Color3.new(1, 1, 1)
cl.TextSize = 18



border.Name = "border"
border.Parent = Main
border.BackgroundColor3 = Color3.new(1, 1, 1)
border.Position = UDim2.new(0, 0, 0.114583336, 0)
border.Size = UDim2.new(0, 254, 0, 4)
border.Font = Enum.Font.SourceSans
border.Text = ""
border.TextColor3 = Color3.new(0, 0, 0)
border.TextSize = 14

copy.Name = "copy"
copy.Parent = Main
copy.BackgroundColor3 = Color3.new(1, 1, 1)
copy.Position = UDim2.new(0.106299214, 0, 0.666666687, 0)
copy.Size = UDim2.new(0, 200, 0, 31)
copy.Font = Enum.Font.SourceSans
copy.Text = "Copy to clipboard"
copy.TextColor3 = Color3.new(0, 0, 0)
copy.TextSize = 20
copy.MouseButton1Click:connect(function()
setclipboard(cl.Text)
end)

local isHidden = false
local mause = game.Players.LocalPlayer:GetMouse()

do
local mouse = game:GetService("Players").LocalPlayer:GetMouse();
local inputService = game:GetService('UserInputService');
local heartbeat = game:GetService("RunService").Heartbeat;
function Draggable(frame)
local s, event = pcall(function()
return frame.MouseEnter
end)
if s then
frame.Active = true;
event:connect(function()
local input = frame.InputBegan:connect(function(key)
if key.UserInputType == Enum.UserInputType.MouseButton1 then
local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y);
while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Quad', 0.1, true);
end
end
end)
local leave;
leave = frame.MouseLeave:connect(function()
input:disconnect();
leave:disconnect();
end)
end)
end
end
end

Draggable(Main)

mause.KeyDown:connect(function(key)
if key == ";" then
if isHidden == false then
Main:TweenPosition(Main.Position - UDim2.new(0,0,1,0),"Out","Quad",0.4,false)
isHidden = true
else
Main:TweenPosition(Main.Position + UDim2.new(0,0,1,0),"Out","Quad",0.4,false)
isHidden = false
end
end
end)


while true do
wait()
cl.Text = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
end
end)


PLR:Label("Work Whit Paid,KRNL AND SONA Exploit",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

	PLR:Button("Dark Dex other exploit",function()
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/quentin452/CATIX-HUB/master/DEX%20EXPLORER"))()
end)

	PLR:Button("Dark Dex(synapse)",function()
loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))()
end)

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

	CS:Button("Script: I'm A Cat#7202",function()
		setclipboard("I'm A Cat#7202")
	end)

	credits:CreateButton("https://discord.gg/KmHZUpXEmQ", function() --you dont need "arg" for a button
	setclipboard("https://discord.gg/KmHZUpXEmQ")
end)

CS:Button("Helped by: Altix#3395",function()
		setclipboard("Altix#3395")
end)

	CS:DestroyGUI()

--================== Autres =======================--

local w4 = w4:CreateFolder("T^p")
w4:Button("Spawn",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-385.680664, 18.0258179, -721.401672)
end)
w4:Button("Deser",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1090.10498, 556.684082, -1168.87451)
end)
w4:Button("Florest",function()
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(418.497192, 670.762817, -425.272339)
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

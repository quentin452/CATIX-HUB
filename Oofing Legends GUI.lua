--https://www.roblox.com/games/5603696999/Release-Oofing-Legends
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Oofing Legends GUI")
local x = library:CreateWindow("Eggs X3")
local y = library:CreateWindow("Rebirths")


--================== Rebirths =======================--
	local y = y:CreateFolder("Things")

		y:Dropdown("Choose Rebirths",{"X1","X5","X25","X100","X400","X1,2K","X4K","X15K","X30K","X78K","X300K","X1M","X12M","X100M","X500M","X2B","X10B","X25B","X100B","X250B","X1T","X45T","X100T","X1Qd","X5Qd","X25Qd","X85Qd","X250Qd","X1Qn","X5Qn","X35Qn","X100Qn","X250Qn","X500Qn","X2Sx","X5Sx","X15Sx","X50Sx","X250Sx"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
			_G.RebirthsSelected = mob
		end)

		y:Toggle("Buy Rebirths",function(bool)
			shared.Eggs = bool
		end)

	spawn(function()
		while wait(0) do
			if shared.Eggs then
				if _G.RebirthsSelected == "X1" then
			local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M1"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X5" then
				local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M2"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))

				elseif _G.RebirthsSelected == "X25" then
				local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M3"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X100" then
			local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M4"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X400" then
			local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M5"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X1,2K" then
				local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M6"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X4K" then
			local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M7"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X15K" then
			local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M8"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X30K" then
				local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M9"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X78K" then
			local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M10"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X300K" then
					local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M11"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X1M" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M12"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X12M" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M13"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X100M" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M14"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X500M" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M15"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X2B" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M16"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X10B" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M17"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X25B" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M18"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X100B" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M19"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X250B" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M20"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				elseif _G.RebirthsSelected == "X1T" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M21"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X5T" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M22"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X45T" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M23"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X100T" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M24"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X1Qd" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M25"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X5Qd" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M26"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X25Qd" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M27"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X85Qd" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M28"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X250Qd" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M29"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X1Qn" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M30"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X5Qn" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M31"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X35Qn" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M32"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X100Qn" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M33"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X250Qn" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M34"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X500Qn" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M35"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X2Sx" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M36"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X5Sx" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M37"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X15Sx" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M38"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X50Sx" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M39"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
		elseif _G.RebirthsSelected == "X250Sx" then
		local args = {
		[1] = game:GetService("Players")["LocalPlayer"].PlayerGui.Main.RebirthMenu.Shop.MultiplierShop["M40"],
	}

	game:GetService("ReplicatedStorage").RemoteEvents.Rebirthing:FireServer(unpack(args))
				end
			end
		end
	end)

--================== Things =======================--

local w2 = w:CreateFolder("Things")


w2:Dropdown("Choose",{"Candy"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	_G.TpSelected = mob
end)

w2:Toggle("Tp To...",function(bool)
	shared.Teleports = bool
end)
_G.time = 0.3

spawn(function()
	while wait(0) do
		if shared.Teleports then
			if _G.TpSelected == "Candy" then
				local me = game.Players.LocalPlayer.Character
				local pbosd = game:GetService("Workspace").Event.CandyCorn

				
me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
			end
		end
	end
	end)


	w2:Toggle("Auto Craft Pets",function(bool)
		shared.toggle1 = bool
	end)
		w2:Toggle("Auto Jump",function(bool)
		shared.toggle2 = bool
	end) 
	w2:Toggle("Auto Sell",function(bool)
		shared.toggle3 = bool
	end) 


	spawn(function()
		while wait() do
			if shared.toggle1 then
				game:GetService("ReplicatedStorage").Remotes.CraftAll:FireServer()
			end
			if shared.toggle2 then
				game.Players.LocalPlayer.Character.Humanoid.Jump = true
			end
			if shared.toggle3 then
				game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-677.453247, 134.102203, -889.735962)
	
		
			end
	end
	end)
local w3 = x:CreateFolder("Eggs")
	w3:Dropdown("Choose Eggs",{"Common","Rare","1M","Candy","Snow","Lava","Ocean","Moon","Fall","Sand","Dark","Halloween","Ghost","Holy","Potion","Overlord","Royal"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
		_G.BossSelected = mob
	end)

	w3:Toggle("Buy Eggs",function(bool)
		shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "Common" then
				local args = {
					[1] = "Common",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
			elseif _G.BossSelected == "Rare" then
				local args = {
					[1] = "Rare",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))

			elseif _G.BossSelected == "1M" then
				local args = {
					[1] = "1M",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
			elseif _G.BossSelected == "Candy" then
				local args = {
					[1] = "Candy",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
			elseif _G.BossSelected == "Snow" then
				local args = {
					[1] = "Snow",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
			elseif _G.BossSelected == "Lava" then
				local args = {
					[1] = "Lava",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
			elseif _G.BossSelected == "Ocean" then
				local args = {
					[1] = "Ocean",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
			elseif _G.BossSelected == "Moon" then
				local args = {
					[1] = "Moon",
					[2] = "R",
				}

				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
			elseif _G.BossSelected == "Fall" then
				local args = {
					[1] = "Fall",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
			elseif _G.BossSelected == "Sand" then
				local args = {
					[1] = "Sand",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
			elseif _G.BossSelected == "Dark" then
					local args = {
					[1] = "Dark",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
					elseif _G.BossSelected == "Halloween" then
					local args = {
					[1] = "Halloween",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
		elseif _G.BossSelected == "Ghost" then
					local args = {
					[1] = "Ghost",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
elseif _G.BossSelected == "Holy" then
					local args = {
					[1] = "Holy",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
elseif _G.BossSelected == "Potion" then
					local args = {
					[1] = "Potion",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
elseif _G.BossSelected == "Overlord" then
					local args = {
					[1] = "Overlord",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
			elseif _G.BossSelected == "Royal" then
					local args = {
					[1] = "Royal",
					[2] = "R",
				}
				game:GetService("ReplicatedStorage").RemoteEvents.EggOpen:FireServer(unpack(args))
			end
		end
	end
end)

--================== Player Settings =======================--

local PLR = w:CreateFolder("Player")

	PLR:Slider("Speed Hack",10,250,true,function(value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	end)
	
	PLR:Slider("Jump Hack",10,250,true,function(value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
	end)

	PLR:Button("No Clip (Press N)",function()
		noclip = false
		game:GetService('RunService').Stepped:connect(function()
			if noclip then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
		local plr = game.Players.LocalPlayer
		local mouse = plr:GetMouse()
		mouse.KeyDown:connect(function(key)
			if key == "n" then
				noclip = not noclip
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
	end)

	PLR:Button("Fly (Press E)",function()
		loadstring(game:HttpGet("https://pastebin.com/raw/G1yWQbeU", true))()
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

--================== Misc =======================--

local MISC = w:CreateFolder("Misc")

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

local CS = w:CreateFolder("Credits")
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

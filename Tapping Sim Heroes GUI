local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow("Tapping Sim Heroes")

local b = w:CreateFolder("Auto Farm")

	b:Toggle("Auto Click",function(bool)
		shared.toggleAC = bool
	end)

	b:Toggle("Auto Collect Coins",function(bool)
		shared.toggleACC = bool
	end)

	b:Toggle("Auto Daily Coins",function(bool)
		shared.toggleACDC = bool
	end)

	spawn(function()
		while wait() do
			if shared.toggleAC then
				game:GetService("ReplicatedStorage").PlayerClick:FireServer(false)
			end
		end
	end)

	spawn(function()
		while wait(0.25) do
			if shared.toggleACC then
				for i,v in pairs(game:GetService("Workspace").Arena.ActiveLevels:GetChildren()) do
					for i,v in pairs(v:GetChildren()) do
						if v.Name == "Coins" then
							for i,v in pairs(v:GetChildren()) do
								if v.PlayerName.Value == Game.Players.LocalPlayer.Name then
									v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
								end
							end
						else
						end
					end
				end
			end
		end
	end)

	spawn(function()
		while wait(5) do
			if shared.toggleACDC then
				game:GetService("ReplicatedStorage").RepeatableRewards_Claim:InvokeServer("DailyCoins")
			end
		end
	end)

local Hrs = w:CreateFolder("Heroes")

	Hrs:Dropdown("Choose Heroes",{
		"Twigs",
		"Lil Mimic",
		"Heron",
		"Vix",
		"Ra",
		"Avin",
		"Moby",
		"Ryujin",
		"Sheriff Jackson",
		"Snouk",
		"Merlin",
		"Gaston",
		"Mously",
		"Diesel Mouse",
		"Sir Bubbly",
		"Crank",
		"FireFighter",
		"Kin",
		"Permafrost",
		"Alexa",
                "Bailiwick",
                "Cyclopse",
                "Sun Weaver",
                "Peridoton",
                "Zircontops",
	},true,function(mob)
		print(mob)
		_G.SelectHeroes = mob
	end)

	Hrs:Toggle("Auto LvlUp ",function(bool)
		shared.toggleALU = bool
	end)

	Hrs:Toggle("lvl Up All heroes",function(bool)
		shared.toggleAUAH = bool
	end)

	Hrs:Toggle("Upgrade All Skills",function(bool)
		shared.toggleUAS = bool
	end)

	spawn(function()
		while wait() do
			if shared.toggleALU then
				if _G.SelectHeroes == "Twigs" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Twigs",1)
				elseif _G.SelectHeroes == "Lil Mimic" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Lil Mimic",1)
				elseif _G.SelectHeroes == "Heron" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Heron",1)
				elseif _G.SelectHeroes == "Vix" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Vix",1)
				elseif _G.SelectHeroes == "Ra" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Ra",1)
				elseif _G.SelectHeroes == "Avin" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Avin",1)
				elseif _G.SelectHeroes == "Moby" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Moby",1)
				elseif _G.SelectHeroes == "Ryujin" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Ryujin",1)
				elseif _G.SelectHeroes == "Sheriff Jackson" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Sheriff Jackson",1)
				elseif _G.SelectHeroes == "Merlin" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Merlin",1)
				elseif _G.SelectHeroes == "Snouk" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Snouk",1)
				elseif _G.SelectHeroes == "Gaston" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Gaston",1)
				elseif _G.SelectHeroes == "Mously" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Mously",1)
	                        elseif _G.SelectHeroes == "Sir Bubbly" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Sir Bubbly",1)
				elseif _G.SelectHeroes == "Diesel Mouse" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Diesel",1)
				elseif _G.SelectHeroes == "Crank" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Crank",1)
				elseif _G.SelectHeroes == "FireFighter" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","FireFighter",1)
				elseif _G.SelectHeroes == "Kin" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Kin",1)
				elseif _G.SelectHeroes == "Permafrost" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Permafrost",1)
				elseif _G.SelectHeroes == "Alexa" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Alexa",1)
                         	elseif _G.SelectHeroes == "Bailiwick" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Bailiwick",1)
                                elseif _G.SelectHeroes == "Cyclopse" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Cyclopse",1)
                                elseif _G.SelectHeroes == "Sun Weaver" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Sun Weaver",1)
                                elseif _G.SelectHeroes == "Peridoton" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Peridoton",1)
                                elseif _G.SelectHeroes == "Zircontops" then
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Zircontops",1)
				end
			end
		end
	end)

    spawn(function()
		while wait(0.5) do
			if shared.toggleUAS then
				for v = 1,10 do
				wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Twigs",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Lil Mimic",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Heron",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Vix",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Ra",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Avin",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Moby",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Ryujin",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Sheriff Jackson",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Snouk",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Merlin",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Gaston",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Mously",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Diesel",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Crank",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","FireFighter",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Kin",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Permafrost",v)
					wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplySkill","Alexa",v)
                                        wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Bailiwick",v)
                                        wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Cyclopse",v)
                                        wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Sun Weaver",v)
                                        wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Peridoton",v)
                                        wait(0.1)
					game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Zircontops",v)
					wait(0.1)
	                                game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Sir Bubbly",v)
				end
			end
		end
	end)

    spawn(function()
		while wait(0.5) do
			if shared.toggleAUAH then
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Alexa",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Permafrost",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Kin",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","FireFighter",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Crank",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Diesel",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Mously",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Gaston",1)
                                wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Snouk",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Merlin",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Sheriff Jackson",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Ryujin",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Moby",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Avin",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Ra",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Vix",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Heron",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Lil Mimic",1)
				wait()
				game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Twigs",1)
				wait()
                               game:GetService("ReplicatedStorage").GenericHeroRemote:FireServer("ApplyHero","Sir Bubbly",1)
			end
		end
	end)


local PLR = w:CreateFolder("Player")

	PLR:Box("Speed Hack","number",function(value)
		print(value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	end)

	PLR:Box("Jump Hack","number",function(value)
		print(value)
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

local CS = w:CreateFolder("Credits")

	 CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
    end)
	CS:DestroyGUI()


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

--https://www.roblox.com/games/5636466220/RELEASE-Hyper-Clickers

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Hyper-Clickers GUI")
local w2 = library:CreateWindow("Eggs X3")
local w4 = library:CreateWindow("Rebirths")


--================== Model =======================--
local w = w3:CreateFolder("hACKS")

w:Label("tHINGS",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

w:Button("Button",function()
  game:GetService("ReplicatedStorage").Network.Port1:FireServer("Swing",{game:GetService("Workspace").BossFolder.Boss4})
end)

	w:Toggle("Auto Craft All",function(bool)
		shared.toggle1 = bool
	end)
	
		w:Toggle("Auto Equip Best",function(bool)
		shared.toggle2 = bool
end) 
w:Toggle("Auto Click",function(bool)
		shared.toggle3 = bool
end) 
w:Toggle("Auto Hyper Click",function(bool)
		shared.toggle4 = bool
end) 
w:Toggle("Auto Upgrades",function(bool)
		shared.toggle5 = bool
end)
w:Toggle("Auto Potions",function(bool)
		shared.toggle6 = bool
end) 
	spawn(function()
		while wait() do
		       if shared.toggle1 then
game:GetService("ReplicatedStorage").RemoteEvents.PetActionRequest:InvokeServer("CraftAll")
end
	if shared.toggle2 then
	local args = {
    [1] = "EquipBest",
}

game:GetService("ReplicatedStorage").RemoteEvents.PetActionRequest:InvokeServer(unpack(args))
end
	if shared.toggle3 then
game:GetService("ReplicatedStorage").Remotes.Click:FireServer()
end
	if shared.toggle4 then
game:GetService("ReplicatedStorage").Remotes.HyperClick:FireServer()
end
	if shared.toggle5 then
local args = {
    [1] = "TripleHatch",
    [2] = true,
}

game:GetService("ReplicatedStorage").Upgrades.Upgrades:InvokeServer(unpack(args))
local args = {
    [1] = "HatchSpeed",
    [2] = true,
}

game:GetService("ReplicatedStorage").Upgrades.Upgrades:InvokeServer(unpack(args))
local args = {
    [1] = "PetInventory",
    [2] = true,
}

game:GetService("ReplicatedStorage").Upgrades.Upgrades:InvokeServer(unpack(args))
local args = {
    [1] = "HyperClickPower",
    [2] = true,
}

game:GetService("ReplicatedStorage").Upgrades.Upgrades:InvokeServer(unpack(args))
local args = {
    [1] = "HyperClickCooldown",
    [2] = true,
}

game:GetService("ReplicatedStorage").Upgrades.Upgrades:InvokeServer(unpack(args))
local args = {
    [1] = "AutoClickerSpeed",
    [2] = true,
}

game:GetService("ReplicatedStorage").Upgrades.Upgrades:InvokeServer(unpack(args))
local args = {
    [1] = "AutoClicker",
    [2] = true,
}

game:GetService("ReplicatedStorage").Upgrades.Upgrades:InvokeServer(unpack(args))
local args = {
    [1] = "GemMultiplier",
    [2] = true,
}

game:GetService("ReplicatedStorage").Upgrades.Upgrades:InvokeServer(unpack(args))
local args = {
    [1] = "RebirthButtons",
    [2] = true,
}

game:GetService("ReplicatedStorage").Upgrades.Upgrades:InvokeServer(unpack(args))
local args = {
    [1] = "Jump",
    [2] = true,
}

game:GetService("ReplicatedStorage").Upgrades.Upgrades:InvokeServer(unpack(args))

local args = {
    [1] = "Speed",
    [2] = true,
}

game:GetService("ReplicatedStorage").Upgrades.Upgrades:InvokeServer(unpack(args))
end
	if shared.toggle6 then
local args = {
    [1] = "DoubleGems",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.BuyPotion:FireServer(unpack(args))
local args = {
    [1] = "DoubleGems",
    [2] = 10,
}

game:GetService("ReplicatedStorage").Remotes.BuyPotion:FireServer(unpack(args))
local args = {
    [1] = "DoubleGems",
    [2] = 100,
}

game:GetService("ReplicatedStorage").Remotes.BuyPotion:FireServer(unpack(args))

local args = {
    [1] = "DoubleClicks",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Remotes.BuyPotion:FireServer(unpack(args))

local args = {
    [1] = "DoubleClicks",
    [2] = 10,
}

game:GetService("ReplicatedStorage").Remotes.BuyPotion:FireServer(unpack(args))
local args = {
    [1] = "DoubleClicks",
    [2] = 100,
}

game:GetService("ReplicatedStorage").Remotes.BuyPotion:FireServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.BuyPotion:FireServer("QuintupleClicks",1)
game:GetService("ReplicatedStorage").Remotes.BuyPotion:FireServer("QuintupleClicks",10)
game:GetService("ReplicatedStorage").Remotes.BuyPotion:FireServer("QuintupleClicks",100)
game:GetService("ReplicatedStorage").Remotes.BuyPotion:FireServer("DoubleRebirths",1)
game:GetService("ReplicatedStorage").Remotes.BuyPotion:FireServer("DoubleRebirths",10)
game:GetService("ReplicatedStorage").Remotes.BuyPotion:FireServer("DoubleRebirths",100)
end
end
end)

local w2 = w2:CreateFolder("Eggs X3")
	w2:Dropdown("Choose Eggs",{"1K","100 Gems","3B","25T","5Qa","3Sx","Hell","Atlantis","500K(event)","Galaxy","Graveyard","Crystal","2.5M(event)","Wizard","Rainbow","Halloween","Energy","5M","Mine","Candy","Halloween","Radioactive","Blacksmith","Ninja","Sahara","China","10OVG"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w2:Toggle("Buy Eggs",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "1K" then
		local args = {
    [1] = "Starter",
    [2] = "Triple",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-975.710266, 155.156464, -930.710876)
			elseif _G.BossSelected == "100 Gems" then
		local args = {
    [1] = "Good",
    [2] = "Triple",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-997.323547, 155.179626, -931.932617)
			elseif _G.BossSelected == "3B" then
		local args = {
    [1] = "Polar",
    [2] = "Triple",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1252.4762, 11.4743624, -162.063385)
			elseif _G.BossSelected == "25T" then
			local args = {
    [1] = "Jungle",
    [2] = "Triple",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-860.320313, 11.5903826, -152.795593)
			elseif _G.BossSelected == "5Qa" then
			local args = {
    [1] = "Future",
    [2] = "Triple",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-838.942383, 8.08688164, 204.764618)
			elseif _G.BossSelected == "3Sx" then
			local args = {
    [1] = "Heaven",
    [2] = "Triple",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-399.403259, 8.12589836, 209.55629)
			elseif _G.BossSelected == "Hell" then
			local args = {
    [1] = "Hell",
    [2] = "Triple",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-185.759079, 26.5750217, -952.016846, 0.999988317, -8.63217574e-05, -0.00483401865, 8.63217574e-05, 1, -2.08641708e-07, 0.00483401865, -2.08641708e-07, 0.999988317)
			elseif _G.BossSelected == "Atlantis" then
			local args = {
    [1] = "Atlantis",
    [2] = "Triple",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-345.000824, 8.57055855, -261.22757, 0.999988317, -8.63217574e-05, -0.00483401865, 8.63217574e-05, 1, -2.08641708e-07, 0.00483401865, -2.08641708e-07, 0.999988317)
			elseif _G.BossSelected == "500K(event)" then
			local args = {
    [1] = "Event",
    [2] = "Triple",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-648.180664, 22.2206612, -1648.97644, -0.999919891, -8.63202877e-05, -0.0126890838, -8.63202877e-05, 1, -5.47684635e-07, 0.0126890838, 5.47684635e-07, -0.999919891)
			elseif _G.BossSelected == "Galaxy" then
			local args = {
    [1] = "Galaxy",
    [2] = "Triple",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-153.695328, -100.625458, -1275.42639, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			elseif _G.BossSelected == "Graveyard" then
			    local args = {
    [1] = "Graveyard",
    [2] = "Triple",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-260.155334, 26.5245438, -1639.29651, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			elseif _G.BossSelected == "Crystal" then
			    local args = {
    [1] = "Crystal",
    [2] = "Triple",
}

game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer(unpack(args))
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-308.080322, 30.8745441, -2079.42139, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			elseif _G.BossSelected == "2.5M(event)" then
			    game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Event2","Triple")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1016.95734, 151.677887, -999.62616, -0.715985179, -7.99582558e-05, 0.698115587, -7.99582558e-05, 1, 3.25294823e-05, -0.698115587, -3.25294823e-05, -0.715985179)
			elseif _G.BossSelected == "Wizard" then
                game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Wizard","Triple")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(421.513702, 13.1108227, -2978.21558, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			elseif _G.BossSelected == "Rainbow" then
                 game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Rainbow","Triple")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-273.986237, 5.1108222, -2499.21558, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			elseif _G.BossSelected == "Halloween" then
                  game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Halloween","Triple")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-964.082336, 20.922472, -2212.02881)
	elseif _G.BossSelected == "Energy" then
                  game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Energy","Triple")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-926.996033, 20.9630566, -2695.68042)
elseif _G.BossSelected == "5M" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Event3","Triple")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1013.67072, 155.897598, -995.941406)
elseif _G.BossSelected == "Mine" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Mine","Triple")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-926.214355, 19.8042946, -3066.99292)
elseif _G.BossSelected == "Candy" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Candy","Triple")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-926.214355, 19.8042946, -3066.99292)
elseif _G.BossSelected == "Halloween" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Halloween","Triple")
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Eggs.Halloween.UIanchor

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Radioactive" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Radioactive","Triple")
game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-1255.08582, 8.48434258, 1031.81177)
elseif _G.BossSelected == "Blacksmith" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Blacksmith","Triple")
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Eggs.Blacksmith.UIanchor

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Ninja" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Ninja","Triple")
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Eggs.Ninja.UIanchor

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "Sahara" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Sahara","Triple")
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Eggs.Sahara.UIanchor

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "China" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("China","Triple")
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Eggs.China.UIanchor

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
elseif _G.BossSelected == "10OVG" then
game:GetService("ReplicatedStorage").RemoteEvents.EggOpened:InvokeServer("Thanksgiving","Single")
local me = game.Players.LocalPlayer.Character
local pbosd = game:GetService("Workspace").Eggs.Thanksgiving.UIanchor

me.HumanoidRootPart.CFrame = CFrame.new(pbosd.Position.X-0, pbosd.Position.Y+0, pbosd.Position.Z+0)
			end
		end
	end
end)

--================== Rebirths =======================--

local w22 = w4:CreateFolder("Rebirths")
	w22:Dropdown("Choose Rebirths",{"x1","x5","x10","x25","x50","x100","x250","x500","x1K","x2,5K","x5K","x10K","x50K","x250K","x1M","x5M","x15M","x30M","x100M","x250M","x500M","x1B","x10B","x50B","x250B","x750B","x5T","x30T","x100T","x300T","x900T","x2Qa","x17,5Qa","x70Qa","x300Qa","x1Qi","x1Sx","x10Sx","x49Sx","x99Sx","x250Sx","x750Sx","x1,5Sp","x20Sp","x75Sp"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.RebSelected = mob
	end)

	w22:Toggle("Buy Rebirths",function(bool)
	    shared.Reb = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Reb then
			if _G.RebSelected == "x1" then
	   local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x5" then
   local args = {
    [1] = 5,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x10" then
   local args = {
    [1] = 10,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x25" then
	   local args = {
    [1] = 25,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x50" then
	   local args = {
    [1] = 50,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x100" then
		   local args = {
    [1] = 100,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x250" then
		   local args = {
    [1] = 250,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x500" then
		   local args = {
    [1] = 500,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x1K" then
		   local args = {
    [1] = 1000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x2,5K" then
		       local args = {
    [1] = 2500,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x5K" then
		       local args = {
    [1] = 5000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x10K" then
			         local args = {
    [1] = 10000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x50K" then
               local args = {
    [1] = 50000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x250K" then
                local args = {
    [1] = 250000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x1M" then
			    local args = {
    [1] = 1000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))local args = {
    [1] = 250000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x5M" then
		    	    local args = {
    [1] = 5000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x15M" then
	    	    	    local args = {
    [1] = 15000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x30M" then
    	    	    local args = {
    [1] = 30000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))	    
			elseif _G.RebSelected == "x100M" then
	    	    	    	    local args = {
    [1] = 100000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x250M" then
    	    	    local args = {
    [1] = 250000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))	    	    
			elseif _G.RebSelected == "x500M" then
	    	    	    	   local args = {
    [1] = 500000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args)) 	    
			elseif _G.RebSelected == "x1B" then
    	    	    	    local args = {
    [1] = 1000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))	    	    
			elseif _G.RebSelected == "x10B" then
	    	    	   local args = {
    [1] = 10000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args)) 	    	    	    
			elseif _G.RebSelected == "x50B" then
    	    	    	    local args = {
    [1] = 50000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))	    	    	    
			elseif _G.RebSelected == "x250B" then
	    	    	    local args = {
    [1] = 250000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))	    	    	    	    
			elseif _G.RebSelected == "x750B" then
    	    	    	    local args = {
    [1] = 750000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))	    	    	    	    
			elseif _G.RebSelected == "x5T" then
	    	    	    	    local args = {
    [1] = 5000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))	    	    	    	    
			elseif _G.RebSelected == "x30T" then
    	    	    	    	 local args = {
    [1] = 30000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))   	    	    	    	    
			elseif _G.RebSelected == "x100T" then
			    local args = {
    [1] = 100000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x300T" then
		    	    local args = {
    [1] = 300000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x900T" then
	    	    	    
		
    	    	    	    local args = {
    [1] = 900000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x2Qa" then
	    	    	    	    local args = {
    [1] = 2000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))local args = {
    [1] = 900000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x17,5Qa" then
    	    	    	 local args = {
    [1] = 17500000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))   	    
			elseif _G.RebSelected == "x70Qa" then
	    	    	    	   local args = {
    [1] = 70000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args)) 	    
			elseif _G.RebSelected == "x300Qa" then
    	    	    	    	    local args = {
    [1] = 300000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))	    
			elseif _G.RebSelected == "x1Qi" then
			    local args = {
[1] =    1000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
	    	  elseif _G.RebSelected == "x1Sx" then  	    	    	    	    
		local args = {
[1] =    1000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			    
			elseif _G.RebSelected == "x10Sx" then
			    local args = {
[1] =    10000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x49Sx" then
		    	    local args = {
[1] =    49999999999999999999999,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))
			elseif _G.RebSelected == "x99Sx" then
	    	  local args = {
[1] =    99999999999999999999999,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))  	    
			elseif _G.RebSelected == "x250Sx" then
    	    	    local args = {
[1] =    250000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))	    
			elseif _G.RebSelected == "x750Sx" then
	    	    	    	    
    	    	    	local args = {
[1] =    750000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))   
			elseif _G.RebSelected == "x1,5Sp" then
	    	    	    	    
    	    	    	local args = {
[1] =    1500000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))   	    	    	    
	    			elseif _G.RebSelected == "x20Sp" then
	    	    	    	    
    	    	    	local args = {
[1] =    20000000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))   
	    			elseif _G.RebSelected == "x75Sp" then
	    	    	    	    
    	    	    	local args = {
[1] =    75000000000000000000000000,
}

game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer(unpack(args))   	    	    	    	    	    	    	    	    
                  
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
	PLR:Button("Speed Hack (press R)",function(bool)
	    
local walkspeedplayer = game:GetService("Players").LocalPlayer
local walkspeedmouse = walkspeedplayer:GetMouse()

local walkspeedenabled = false

function x_walkspeed(key)
if (key == "r") then
if walkspeedenabled == false then
_G.WS = 200;
local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
Humanoid.WalkSpeed = _G.WS;
end)
Humanoid.WalkSpeed = _G.WS;

walkspeedenabled = true
elseif walkspeedenabled == true then
_G.WS = 20;
local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
Humanoid.WalkSpeed = _G.WS;
end)
Humanoid.WalkSpeed = _G.WS;

walkspeedenabled = false
end
end
end

walkspeedmouse.KeyDown:connect(x_walkspeed)

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

	PLR:Button("Fly (Press F)",function()
   repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Head 
local flying = false
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 400 
local speed = 5000 

function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 100
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "f" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()

          

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

	PLR:Button("Dark Dex",function()
loadstring(game:HttpGetAsync("https://pastebin.com/raw/fPP8bZ8Z"))()
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

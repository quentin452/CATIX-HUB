--https://www.roblox.com/games/5486962185/NEW-Tapping-Heroes
local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Tapping Heroes Other Game")
local w2 = library:CreateWindow("Rebirths")
local w4 = library:CreateWindow("Eggs")
local w5 = library:CreateWindow("Sell")

--================== Model =======================--
local w = w3:CreateFolder("Things")
w:Button("Destroy Prompt Purchase",function()
while true do
-- Remove Purchase Prompt UI
local WaitForCOre = game:FindFirstChild("CoreGui")
if WaitForCOre then
local checkforprAPP = WaitForCOre:FindFirstChild("PurchasePromptApp")
if checkforprAPP then
checkforprAPP:Destroy()
end
end
-- Remove Robux Store UI
local checkforstore = game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui:FindFirstChild("Store")
if checkforstore then
checkforstore:Destroy()
end
-- Remove Error message / You do not have enough.....
local stramlook = game:GetService("Players")[game.Players.LocalPlayer.Name].PlayerGui.Feedback:FindFirstChild("Stream")
if stramlook then
stramlook:Destroy()
end
-- Remove BLUR bug from removed shop UI
local checkforblur = game:GetService("Lighting"):FindFirstChild("InterfaceBlur")
if checkforblur then
checkforblur:Destroy()
end
wait(5)
end
end)
w:Label("By MSDOS#8293",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor


	w:Toggle("Auto Click",function(bool)
		shared.toggle1 = bool
	end)
	
		w:Toggle("Auto Upgrades",function(bool)
		shared.toggle2 = bool
end) 
	w:Toggle("Auto Potions",function(bool)
		shared.toggle3 = bool
end) 
	w:Toggle("Destroy Gems(ping)",function(bool)
		shared.toggle4 = bool
end) 
w:Toggle("Destroy Gems Normal",function(bool)
		shared.toggle44 = bool
end) 
w:Toggle("Auto Evolve Pets",function(bool)
		shared.toggle5 = bool
	end)

	spawn(function()
		while wait() do
		       if shared.toggle1 then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","HandleTapActivation","Home")
end
	if shared.toggle2 then
	      wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","BuyMax","Home")
    wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("More Rebirths","BuyMax","Home")
    wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Faster Speed","BuyMax","Home")
    wait(0.1)

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("More Coins","BuyMax","Winter")
    wait(0.1)

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("More Gems","BuyMax","Winter")
    wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Pet Storage","BuyMax","Home")
    wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Extra Pet Equip","BuyMax","Home")
    wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("x2 Tap Chance","BuyMax","Home")
    wait(0.1)
end
	if shared.toggle3 then
	      wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePotions:FireServer("BuySingle","x2 Gems")
    wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePotions:FireServer("BuySingle","x2 Coins")
    wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePotions:FireServer("BuySingle","x2 Luck")
    wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePotions:FireServer("BuySingle","x2 Rebirths")
    wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePotions:FireServer("BuySingle","x2 Pet Exp")
    wait(0.1)
end
	if shared.toggle4 then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Home","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Home","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Home","1")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Winter","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Winter","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Winter","1")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Candy","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Candy","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Candy","1")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Atlantis","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Atlantis","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Atlantis","1")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Magma","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Magma","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Magma","1")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Space","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Space","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Space","1")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Ninja","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Ninja","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Ninja","1")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Magic","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Magic","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Magic","1")
end
	if shared.toggle44 then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Home","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Home","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Home","1")
wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Winter","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Winter","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Winter","1")
wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Candy","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Candy","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Candy","1")
wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Atlantis","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Atlantis","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Atlantis","1")
wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Magma","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Magma","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Magma","1")
wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Space","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Space","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Space","1")
wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Ninja","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Ninja","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Ninja","1")
wait(0.1)
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Magic","3")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Magic","2")
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","DamageCrystal","Magic","1")
wait(0.1)
	    	if shared.toggle5 then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer("EvolveAllPets")
end
end
end
end)

local w2 = w2:CreateFolder("Rebirths")
	w2:Dropdown("Choose Rebirths",{"X1","X5","X10","X25","X50","X100","X1K","X5K","X10K","X25K","X50K"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.EggsSelected = mob
	end)

	w2:Toggle("Buy Rebirths",function(bool)
	    shared.Reb = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Reb then
			if _G.EggsSelected == "X1" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateRebirths:FireServer("BuyRebirths",1)
			elseif _G.EggsSelected == "X5" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateRebirths:FireServer("BuyRebirths",2)
			elseif _G.EggsSelected == "X10" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateRebirths:FireServer("BuyRebirths",3)
	elseif _G.EggsSelected == "X25" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateRebirths:FireServer("BuyRebirths",4)
		
			elseif _G.EggsSelected == "X50" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateRebirths:FireServer("BuyRebirths",5)
					elseif _G.EggsSelected == "X100" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateRebirths:FireServer("BuyRebirths",6)
				elseif _G.EggsSelected == "X1K" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateRebirths:FireServer("BuyRebirths",7)
		elseif _G.EggsSelected == "X5K" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateRebirths:FireServer("BuyRebirths",8)
	elseif _G.EggsSelected == "X10K" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateRebirths:FireServer("BuyRebirths",9)
	elseif _G.EggsSelected == "X25K" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateRebirths:FireServer("BuyRebirths",10)
	elseif _G.EggsSelected == "X50K" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateRebirths:FireServer("BuyRebirths",11)
	
			end
		end
	end
end)

local w23 = w4:CreateFolder("Eggs FAST X3")
	w23:Dropdown("Choose Eggs",{"250","5K","500K","50M","250M","2,5B","5B","20B","150B","1T","5T","20T","100T","1Qd","Magical","Ninja","Undead","Lava Dragon","Spirit","8-Bit","Ice Shard","Nebula","Frosting","Sea Weed"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w23:Toggle("Buy Eggs",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "250" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Starter",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))

			elseif _G.BossSelected == "5K" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Spiked",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
			elseif _G.BossSelected == "500k" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Iceberg",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
			elseif _G.BossSelected == "50M" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Snowball",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
			elseif _G.BossSelected == "250M" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Toy",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
		elseif _G.BossSelected == "2,5B" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Brick",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
	elseif _G.BossSelected == "5B" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Cupcake",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
elseif _G.BossSelected == "20B" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Sugar Rush",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
elseif _G.BossSelected == "150B" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Atlantis",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
elseif _G.BossSelected == "1T" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Trident",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
elseif _G.BossSelected == "5T" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Eruption",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
			elseif _G.BossSelected == "20T" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Dark Obsidian",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
		elseif _G.BossSelected == "100T" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Asteroid",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
	elseif _G.BossSelected == "1Qd" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Galaxy",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
	elseif _G.BossSelected == "Magical" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Magical",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
	elseif _G.BossSelected == "Ninja" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Ninja",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
	elseif _G.BossSelected == "Undead" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Undead",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
	elseif _G.BossSelected == "Lava Dragon" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Lava Dragon",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
	elseif _G.BossSelected == "Spirit" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Spirit",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
	elseif _G.BossSelected == "8-Bit" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "8-Bit",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
	elseif _G.BossSelected == "Ice Shard" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Ice Shard",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
	elseif _G.BossSelected == "Nebula" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Nebula",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
	elseif _G.BossSelected == "Frosting" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Frosting",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
	elseif _G.BossSelected == "Sea Weed" then
local args = {
    [1] = "PurchaseEgg",
    [2] = "Sea Weed",
    [3] = true
}

game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdatePets:FireServer(unpack(args))
			end
		end
	end
end)

local w5 = w5:CreateFolder("Sell")
	w5:Dropdown("Choose Sell",{"Sell X1","Sell X2","Sell Toy","Sell Candy","Sell Atlantis","Sell Magma","Sell Space","Sell Ninja","Sell Magic"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.SellSelected = mob
	end)

	w5:Toggle("Buy Rebirths",function(bool)
	    shared.Sell = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Sell then
			if _G.SellSelected == "Sell X1" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","SellTaps","Home")
			elseif _G.SellSelected == "Sell X2" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","SellTaps","Winter")
			elseif _G.SellSelected == "Sell Toy" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","SellTaps","Toy")
	elseif _G.SellSelected == "Sell Candy" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","SellTaps","Candy")
			elseif _G.SellSelected == "Sell Atlantis" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","SellTaps","Atlantis")
						elseif _G.SellSelected == "Sell Magma" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","SellTaps","Magma")
	elseif _G.SellSelected == "Sell Space" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","SellTaps","Space")
	elseif _G.SellSelected == "Sell Ninja" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","SellTaps","Ninja")
	elseif _G.SellSelected == "Sell Magic" then
game:GetService("ReplicatedStorage").Shared.Modules.Utilities.NetworkUtility.Events.UpdateGemUpgrades:FireServer("Tap Capacity","SellTaps","Magic")
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

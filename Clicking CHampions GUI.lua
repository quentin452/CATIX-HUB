local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Clicking Champions GUI")
local w2 = library:CreateWindow("Eggs X1")
local w22 = library:CreateWindow("Eggs X3")
local w5 = library:CreateWindow("Rebirths")
local w6 = library:CreateWindow("Gold Rebirths")
--================== Model =======================-
local w = w3:CreateFolder("Clicking Champions GUI")

w:Label("Hacks",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

w:Button("Delete Prompt Purchase",function()
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

	w:Toggle("Auto Click",function(bool)
		shared.toggle1 = bool
	end)
	
		w:Toggle("Equip best pet",function(bool)
		shared.toggle2 = bool
end) 
	w:Toggle("Auto Sr Rebirths",function(bool)
		shared.toggle3 = bool
end) 
w:Toggle("Auto Potions",function(bool)
		shared.toggle4 = bool
end) 
	spawn(function()
		while wait() do
		       if shared.toggle1 then
			 local Event = game:GetService("ReplicatedStorage").Events.Server.RegisterClick
Event:InvokeServer()
end
	if shared.toggle2 then
		  game:GetService("ReplicatedStorage").Events.Server.RequestEquipBest:InvokeServer()
end
	if shared.toggle3 then
         game:GetService("ReplicatedStorage").Events.Server.SuperRebirth:InvokeServer()
end
	if shared.toggle4 then
     local args = {
    [1] = "Click Boost",
}

game:GetService("ReplicatedStorage").Events.Server.PotionBuy:InvokeServer(unpack(args))
local args = {
    [1] = "Mega Click",
}

game:GetService("ReplicatedStorage").Events.Server.PotionBuy:InvokeServer(unpack(args))
local args = {
    [1] = "Insane Click",
}

game:GetService("ReplicatedStorage").Events.Server.PotionBuy:InvokeServer(unpack(args))
local args = {
    [1] = "Shiny Boost",
}

game:GetService("ReplicatedStorage").Events.Server.PotionBuy:InvokeServer(unpack(args))
end
end
end)

local w2 = w2:CreateFolder("Eggs X1")
	w2:Dropdown("Choose Eggs X1",{"Starter Egg","Second Egg","1M Egg","Lava Egg","Water Egg","Pharaoh Egg","Robo Egg","Ice Egg","Toy Egg","Alien Egg","Heaven Egg","Void Egg","Pirate Egg","Zombie Egg","Roman Egg","Dino Egg","Slime Egg","Elemental Egg","Snug Egg","CDTV Egg","Secret Egg","15M Egg","Castle Egg","Starting Egg","Hero Egg","Lava Egg","Ninja Egg"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w2:Toggle("Buy Eggs X1",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "Starter Egg" then
			  local args = {
    [1] = "1",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
			elseif _G.BossSelected == "Second Egg" then
			  local args = {
    [1] = "2",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
			elseif _G.BossSelected == "1M" then
			  local args = {
    [1] = "1M",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
			elseif _G.BossSelected == "Lava" then
			   local args = {
    [1] = "3",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
			elseif _G.BossSelected == "Water Egg" then
			local args = {
    [1] = "4",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
			elseif _G.BossSelected == "Pharaoh Egg" then
			local args = {
    [1] = "5",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Robo Egg" then
			local args = {
    [1] = "6",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Ice Egg" then
			local args = {
    [1] = "7",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Toy Egg" then
			local args = {
    [1] = "8",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Alien Egg" then
			local args = {
    [1] = "9",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Heaven Egg" then
			local args = {
    [1] = "10",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Void Egg" then
			local args = {
    [1] = "11",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Pirate Egg" then
			local args = {
    [1] = "12",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Zombie Egg" then
			local args = {
    [1] = "13",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Roman Egg" then
			local args = {
    [1] = "14",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Dino Egg" then
			local args = {
    [1] = "15",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Slime Egg" then
			local args = {
    [1] = "16",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Elemental Egg" then
			local args = {
    [1] = "Elemental",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Snug Egg" then
			local args = {
    [1] = "Snug",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "CDTV Egg" then
			local args = {
    [1] = "CDTV",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Secret Egg" then
			local args = {
    [1] = "Secret",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "15M Egg" then
			local args = {
    [1] = "15M",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Castle Egg" then
			local args = {
    [1] = "17",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Starting Egg" then
			local args = {
    [1] = "50",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Hero Egg" then
			local args = {
    [1] = "51",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Lava Egg" then
			local args = {
    [1] = "52",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Ninja Egg" then
			local args = {
    [1] = "19",
    [2] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
			end
		end
	end
end)
local w22 = w22:CreateFolder("Eggs X3")
	w22:Dropdown("Choose Eggs X3",{"Starter Egg","Second Egg","1M Egg","Lava Egg","Water Egg","Pharaoh Egg","Robo Egg","Ice Egg","Toy Egg","Alien Egg","Heaven Egg","Void Egg","Pirate Egg","Zombie Egg","Roman Egg","Dino Egg","Slime Egg","Elemental Egg","Snug Egg","CDTV Egg","Secret Egg","15M Egg","Castle Egg","Starting Egg","Hero Egg","Lava Egg","Ninja Egg"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w22:Toggle("Buy Eggs X3",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "Starter Egg" then
			  local args = {
    [1] = "1",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
			elseif _G.BossSelected == "Second Egg" then
			  local args = {
    [1] = "2",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
			elseif _G.BossSelected == "1M" then
			  local args = {
    [1] = "1M",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
			elseif _G.BossSelected == "Lava" then
			   local args = {
    [1] = "3",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
			elseif _G.BossSelected == "Water Egg" then
			local args = {
    [1] = "4",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
			elseif _G.BossSelected == "Pharaoh Egg" then
			local args = {
    [1] = "5",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Robo Egg" then
			local args = {
    [1] = "6",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Ice Egg" then
			local args = {
    [1] = "7",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Toy Egg" then
			local args = {
    [1] = "8",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Alien Egg" then
			local args = {
    [1] = "9",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Heaven Egg" then
			local args = {
    [1] = "10",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Void Egg" then
			local args = {
    [1] = "11",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Pirate Egg" then
			local args = {
    [1] = "12",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Zombie Egg" then
			local args = {
    [1] = "13",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Roman Egg" then
			local args = {
    [1] = "14",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Dino Egg" then
			local args = {
    [1] = "15",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Slime Egg" then
			local args = {
    [1] = "16",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Elemental Egg" then
			local args = {
    [1] = "Elemental",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Snug Egg" then
			local args = {
    [1] = "Snug",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "CDTV Egg" then
			local args = {
    [1] = "CDTV",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Secret Egg" then
			local args = {
    [1] = "Secret",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "15M Egg" then
			local args = {
    [1] = "15M",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Castle Egg" then
			local args = {
    [1] = "17",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Starting Egg" then
			local args = {
    [1] = "50",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Hero Egg" then
			local args = {
    [1] = "51",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Lava Egg" then
			local args = {
    [1] = "52",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
elseif _G.BossSelected == "Ninja Egg" then
			local args = {
    [1] = "19",
    [2] = 3,
}

game:GetService("ReplicatedStorage").Events.Server.OpenEgg:InvokeServer(unpack(args))
			end
		end
	end
end)
local w5 = w5:CreateFolder("Rebirths")
	w5:Dropdown("Choose Rebirths",{"X1","X5","X15","X50","X100","X250","X750","X1,5K","X5K","X25K","X50K","X250K","X1M","X5M","X10M","X25M","X250M","X1B","X5B","X25B","X100B","X250B","X500B","X750B","X1T","X5T","X15T","X25T","X50T","X75T","X100T","X500T","X1,5Qa","X2,5Qa","X5Qa","X7,5Qa","X10Qa","X50Qa","X150Qa","X250Qa","X500Qa","X750Qa","X1Qi","X5Qi","X15Qi","X25Qi","X50Qi","X75Qi","X100Qi","X500Qi","X1.5Sx","X2.5Sx","X5Sx","X7.5Sx","X50Sx","X150Sx","X250Sx","X500Sx","X750Sx","X1Sp","X5Sp","X15Sp","X25Sp","X50Sp","X75Sp","X100Sp","X500Sp","X1.5Oc","X2.5Oc","X5Oc","X7.5Oc","X10Oc","X50Oc","X150Oc","X250Oc"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.RebirthsSelected = mob
	end)

	w5:Toggle("Buy Rebirths",function(bool)
	    shared.Rebirths = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Rebirths then
			if _G.RebirthsSelected == "X1" then
			    local A_1 = "9"
local A_1 = 1
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)		
			elseif _G.RebirthsSelected == "X5" then
		    local A_1 = "9"
local A_1 = 5
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)			
			elseif _G.RebirthsSelected == "X15" then
			   local A_1 = "9"
local A_1 = 15
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
			elseif _G.RebirthsSelected == "X50" then
					   local A_1 = "9"
local A_1 = 50
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
			elseif _G.RebirthsSelected == "X100" then
					   local A_1 = "9"
local A_1 = 100
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
			elseif _G.RebirthsSelected == "X250" then
					   local A_1 = "9"
local A_1 = 250
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X750" then
					   local A_1 = "9"
local A_1 = 750
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X1,5K" then
					   local A_1 = "9"
local A_1 = 1500
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X5K" then
					   local A_1 = "9"
local A_1 = 5000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X25K" then
					   local A_1 = "9"
local A_1 = 25000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X50K" then
					   local A_1 = "9"
local A_1 = 50000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X250K" then
					   local A_1 = "9"
local A_1 = 250000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X1M" then
					   local A_1 = "9"
local A_1 = 1000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X5M" then
					   local A_1 = "9"
local A_1 = 5000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X10M" then
					   local A_1 = "9"
local A_1 = 10000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X25M" then
					   local A_1 = "9"
local A_1 = 25000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X250M" then
					   local A_1 = "9"
local A_1 = 250000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X1B" then
					   local A_1 = "9"
local A_1 = 1000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X5B" then
					   local A_1 = "9"
local A_1 = 5000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X25B" then
					   local A_1 = "9"
local A_1 = 25000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X100B" then
					   local A_1 = "9"
local A_1 = 100000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
elseif _G.RebirthsSelected == "X250B" then
					   local A_1 = "9"
local A_1 = 250000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X500B" then
					   local A_1 = "9"
local A_1 = 500000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)
	elseif _G.RebirthsSelected == "X750B" then
					   local A_1 = "9"
local A_1 = 750000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)		
	elseif _G.RebirthsSelected == "X1T" then
					   local A_1 = "9"
local A_1 = 1000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X5T" then
					   local A_1 = "9"
local A_1 = 5000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X15T" then
					   local A_1 = "9"
local A_1 = 15000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)
	elseif _G.RebirthsSelected == "X25T" then
					   local A_1 = "9"
local A_1 = 25000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)		
	elseif _G.RebirthsSelected == "X50T" then
					   local A_1 = "9"
local A_1 = 50000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)		
	elseif _G.RebirthsSelected == "X75T" then
					   local A_1 = "9"
local A_1 = 75000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X100T" then
					   local A_1 = "9"
local A_1 = 100000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)			
	elseif _G.RebirthsSelected == "X500T" then
					   local A_1 = "9"
local A_1 = 500000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X1,5Qa" then
					   local A_1 = "9"
local A_1 = 1500000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X2,5Qa" then
					   local A_1 = "9"
local A_1 = 2500000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X5Qa" then
					   local A_1 = "9"
local A_1 = 5000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
Event:InvokeServer(A_1)	
	elseif _G.RebirthsSelected == "X7,5Qa" then
					   local A_1 = "9"
local A_1 = 7500000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
	elseif _G.RebirthsSelected == "X10Qa" then
					   local A_1 = "9"
local A_1 = 10000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
	elseif _G.RebirthsSelected == "X50Qa" then
					   local A_1 = "9"
local A_1 = 50000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X150Qa" then
					   local A_1 = "9"
local A_1 = 150000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X250Qa" then
					   local A_1 = "9"
local A_1 = 250000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X500Qa" then
					   local A_1 = "9"
local A_1 = 500000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X750Qa" then
					   local A_1 = "9"
local A_1 = 750000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X1Qi" then
					   local A_1 = "9"
local A_1 = 1000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X5Qi" then
					   local A_1 = "9"
local A_1 = 5000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X15Qi" then
					   local A_1 = "9"
local A_1 = 15000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X25Qi" then
					   local A_1 = "9"
local A_1 = 25000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X50Qi" then
					   local A_1 = "9"
local A_1 = 50000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X75Qi" then
					   local A_1 = "9"
local A_1 = 75000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X100Qi" then
					   local A_1 = "9"
local A_1 = 100000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X500Qi" then
					   local A_1 = "9"
local A_1 = 500000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X1,5Sx" then
					   local A_1 = "9"
local A_1 = 1500000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X2,5Sx" then
					   local A_1 = "9"
local A_1 = 2500000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X5Sx" then
					   local A_1 = "9"
local A_1 = 5000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X7,5Sx" then
					   local A_1 = "9"
local A_1 = 7500000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X50Sx" then
					   local A_1 = "9"
local A_1 = 50000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X150Sx" then
					   local A_1 = "9"
local A_1 = 150000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X250Sx" then
					   local A_1 = "9"
local A_1 = 250000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X500Sx" then
					   local A_1 = "9"
local A_1 = 500000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X750Sx" then
					   local A_1 = "9"
local A_1 = 750000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X1Sp" then
					   local A_1 = "9"
local A_1 = 1000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X5Sp" then
					   local A_1 = "9"
local A_1 = 5000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X15Sp" then
					   local A_1 = "9"
local A_1 = 15000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X25Sp" then
					   local A_1 = "9"
local A_1 = 25000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X50Sp" then
					   local A_1 = "9"
local A_1 = 50000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X75Sp" then
					   local A_1 = "9"
local A_1 = 75000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X100Sp" then
					   local A_1 = "9"
local A_1 = 100000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X500Sp" then
					   local A_1 = "9"
local A_1 = 500000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X1,5Oc" then
					   local A_1 = "9"
local A_1 = 1500000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X2,5Oc" then
					   local A_1 = "9"
local A_1 = 2500000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X5Oc" then
					   local A_1 = "9"
local A_1 = 5000000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X7,5Oc" then
					   local A_1 = "9"
local A_1 = 7500000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X10Oc" then
					   local A_1 = "9"
local A_1 = 10000000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X50Oc" then
					   local A_1 = "9"
local A_1 = 50000000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X150Oc" then
					   local A_1 = "9"
local A_1 = 150000000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
elseif _G.RebirthsSelected == "X250Oc" then
					   local A_1 = "9"
local A_1 = 250000000000000000000000000000
local Event = game:GetService("ReplicatedStorage").Events.Server.RequestRebirth
			end
		end
	end
end)
local w6 = w6:CreateFolder("Gold Rebirth")
	w6:Dropdown("Choose Gold Rebirth",{"X1","X5","X15","X25","X50","X75"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.GoldSelected = mob
	end)

	w6:Toggle("Buy Gold Rebirth",function(bool)
	    shared.Gold = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Gold then
			if _G.GoldSelected == "X1" then
		local args = {
    [1] = 1,
}

game:GetService("ReplicatedStorage").Events.Server.RequestGoldenRebirth:InvokeServer(unpack(args))	
			elseif _G.GoldSelected == "X5" then
			local args = {
    [1] = 5,
}

game:GetService("ReplicatedStorage").Events.Server.RequestGoldenRebirth:InvokeServer(unpack(args))

			elseif _G.GoldSelected == "X15" then
		local args = {
    [1] = 15,
}

game:GetService("ReplicatedStorage").Events.Server.RequestGoldenRebirth:InvokeServer(unpack(args))	
			elseif _G.GoldSelected == "X25" then
			local args = {
    [1] = 25,
}

game:GetService("ReplicatedStorage").Events.Server.RequestGoldenRebirth:InvokeServer(unpack(args))
			elseif _G.GoldSelected == "X50" then
		local args = {
    [1] = 50,
}

game:GetService("ReplicatedStorage").Events.Server.RequestGoldenRebirth:InvokeServer(unpack(args))	
			elseif _G.GoldSelected == "X75" then
	local args = {
    [1] = 75,
}

game:GetService("ReplicatedStorage").Events.Server.RequestGoldenRebirth:InvokeServer(unpack(args))
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

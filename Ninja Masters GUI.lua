local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Ninja Master")
local w2 = library:CreateWindow("Eggs")
local w4 = library:CreateWindow("ZONE(MOBS)")

--================== Model =======================--
local w = w3:CreateFolder("Things")

w:Label("Hacks",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

	w:Toggle("Auto Click",function(bool)
		shared.toggle1 = bool
	end)
	
		w:Toggle("Auto Sell",function(bool)
		shared.toggle4 = bool
end) 
		w:Toggle("Auto Rebirths",function(bool)
		shared.toggle5 = bool
end) 
		w:Toggle("Auto Buy Swords",function(bool)
		shared.toggle6 = bool
end) 
	spawn(function()
		while wait() do
		       if shared.toggle1 then
		     if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
    end
end
	if shared.toggle4 then
wait(1)
game.Workspace.Rings.Sell.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
	if shared.toggle5 then
game:GetService("ReplicatedStorage").clientEvents.Rebirth:FireServer()
end
	if shared.toggle6 then
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Wooden Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Stone Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Metal Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Glass Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Earth Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Leaf Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Water Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Gold Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Smoke Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Ghost Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Bubble Gum Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Lucky Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Heart Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Snow Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Electric Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Acid Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Illuminator")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Fire Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Lightning Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Amethyst Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Ice Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Wind Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Void Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Chaos Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Flower Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Patriot Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Toxic Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Neptune Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Crimson Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Energy Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Dark Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Money Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Firework Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Sky Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Shock Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Meteor Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Magic Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Gem Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Emerald Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Vortex Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Elemental Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Tornado Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Mystery Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Ember Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Space Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Alien Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Enchanted Katana")
wait(0.1)
game:GetService("ReplicatedStorage").clientEvents.ShopInteraction:FireServer("WeaponShop","Purchase","Matrix Katana")
end
end
end)

local w2 = w2:CreateFolder("Eggs")
	w2:Dropdown("Choose Eggs",{"Common","Uncommon","Rare","Epic","Superb","Rebirth","Legend","Dangerous"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.BossSelected = mob
	end)

	w2:Toggle("Buy Eggs",function(bool)
	    shared.Eggs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "Common" then
game:GetService("ReplicatedStorage").clientEvents.requestOpenEgg:FireServer(workspace.Eggs.Common)	
			elseif _G.BossSelected == "Uncommon" then
game:GetService("ReplicatedStorage").clientEvents.requestOpenEgg:FireServer(workspace.Eggs.Uncommon)
			elseif _G.BossSelected == "Rare" then
game:GetService("ReplicatedStorage").clientEvents.requestOpenEgg:FireServer(workspace.Eggs.Rare)	
			elseif _G.BossSelected == "Epic" then
game:GetService("ReplicatedStorage").clientEvents.requestOpenEgg:FireServer(workspace.Eggs.Epic)		
			elseif _G.BossSelected == "Superb" then
game:GetService("ReplicatedStorage").clientEvents.requestOpenEgg:FireServer(workspace.Eggs.Superb)
			elseif _G.BossSelected == "Rebirth" then
game:GetService("ReplicatedStorage").clientEvents.requestOpenEgg:FireServer(workspace.Eggs.Rebirth)
	elseif _G.BossSelected == "Legend" then
game:GetService("ReplicatedStorage").clientEvents.requestOpenEgg:FireServer(workspace.Eggs.Legend)
	elseif _G.BossSelected == "Dangerous" then
game:GetService("ReplicatedStorage").clientEvents.requestOpenEgg:FireServer(workspace.Eggs.Dangerous)
			end
		end
	end
end)

local w4 = w4:CreateFolder("ZONE")
	w4:Dropdown("Choose ZONE",{"Start Area","Autumn","Frostland","Inferno","Voidland","Skyland","Ice","Ruby","Lavender","ALL WORLD"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	    _G.MobsSelected = mob
	end)

	w4:Toggle("Tp To ZONE",function(bool)
	    shared.Mobs = bool
	end)

spawn(function()
	while wait(0) do
		if shared.Mobs then
			if _G.MobsSelected == "Start Area" then
if yu == true then
yu = false
f6.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
_G.StopFarming = true
else
yu = true
local Options = {
["Start Area Back"] = true, -- Starting Area (true if you wanna farm it)
["Autumn"] = false, -- Autumn Area (true if you wanna farm it)
["Frostland"] = false, -- Frostland Area (true if you wanna farm it)
["Inferno"] = false, -- Inferno Zone (true if you wanna farm it)
["Voidland"] = false,
["Skyland"] = false,
}

local Weapon;
_G.StopFarming = false
function GetWeapon()
local Found = false
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
Found = true
end
end
end
if Found == false then
for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if b:IsA("Tool") then
if b:FindFirstChild("Katana") then
b.Parent = game.Players.LocalPlayer.Character
Weapon = b
Found = true
end
end
end
end
end

GetWeapon()

function CheckWeapon()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
return true
else
return false
end
end
end
end

local NotDoneYet = false
repeat
wait()
for i,v in pairs(game.Workspace.NPCs.Spawns:GetChildren()) do
if v.Name == "Start Area Back" and Options["Start Area Back"] == true or v.Name == "Autumn" and Options["Autumn"] == true or v.Name == "Frostland" and Options["Frostland"] == true or v.Name == "Inferno" and Options["Inferno"] == true or v.Name == "Voidland" and Options["Voidland"] == true or v.Name == "Skyland" and Options["Skyland"] == true then
local a = v:GetChildren()
for i=1,#a do
if a[i].Name:match("Ninja") then
if a[i]:FindFirstChild("Humanoid") and a[i].Humanoid.Health > 0 and a[i]:FindFirstChild("HumanoidRootPart") then
local ItsNil = false
if _G.StopFarming == false then
wait(0.6)
end
repeat
wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and a[i]:FindFirstChild("HumanoidRootPart") then
if CheckWeapon() then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a[i].HumanoidRootPart.CFrame + a[i].HumanoidRootPart.CFrame.lookVector * -3
wait()
Weapon:Activate()
wait()
Weapon:Deactivate()
else
GetWeapon()
end
else
ItsNil = true
end
until ItsNil == true or a[i].Humanoid.Health <= 0 or _G.StopFarming == true
if _G.StopFarming == false then
wait(0.5)
else
wait()
end
if _G.StopFarming == true and NotDoneYet == false then
NotDoneYet = true
wait(0.5)
end
end
end
end
end
end
until _G.StopFarming == true
end
			elseif _G.MobsSelected == "Autumn" then
if yu == true then
yu = false
f6.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
_G.StopFarming = true
else
yu = true
local Options = {
["Start Area Back"] = false, -- Starting Area (true if you wanna farm it)
["Autumn"] = true, -- Autumn Area (true if you wanna farm it)
["Frostland"] = false, -- Frostland Area (true if you wanna farm it)
["Inferno"] = false, -- Inferno Zone (true if you wanna farm it)
["Voidland"] = false,
["Skyland"] = false,
}

local Weapon;
_G.StopFarming = false
function GetWeapon()
local Found = false
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
Found = true
end
end
end
if Found == false then
for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if b:IsA("Tool") then
if b:FindFirstChild("Katana") then
b.Parent = game.Players.LocalPlayer.Character
Weapon = b
Found = true
end
end
end
end
end

GetWeapon()

function CheckWeapon()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
return true
else
return false
end
end
end
end

local NotDoneYet = false
repeat
wait()
for i,v in pairs(game.Workspace.NPCs.Spawns:GetChildren()) do
if v.Name == "Start Area Back" and Options["Start Area Back"] == true or v.Name == "Autumn" and Options["Autumn"] == true or v.Name == "Frostland" and Options["Frostland"] == true or v.Name == "Inferno" and Options["Inferno"] == true or v.Name == "Voidland" and Options["Voidland"] == true or v.Name == "Skyland" and Options["Skyland"] == true then
local a = v:GetChildren()
for i=1,#a do
if a[i].Name:match("Ninja") then
if a[i]:FindFirstChild("Humanoid") and a[i].Humanoid.Health > 0 and a[i]:FindFirstChild("HumanoidRootPart") then
local ItsNil = false
if _G.StopFarming == false then
wait(0.6)
end
repeat
wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and a[i]:FindFirstChild("HumanoidRootPart") then
if CheckWeapon() then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a[i].HumanoidRootPart.CFrame + a[i].HumanoidRootPart.CFrame.lookVector * -3
wait()
Weapon:Activate()
wait()
Weapon:Deactivate()
else
GetWeapon()
end
else
ItsNil = true
end
until ItsNil == true or a[i].Humanoid.Health <= 0 or _G.StopFarming == true
if _G.StopFarming == false then
wait(0.5)
else
wait()
end
if _G.StopFarming == true and NotDoneYet == false then
NotDoneYet = true
wait(0.5)
end
end
end
end
end
end
until _G.StopFarming == true
end
			elseif _G.MobsSelected == "Frostland" then
			    if yu == true then
yu = false
f6.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
_G.StopFarming = true
else
yu = true
local Options = {
["Start Area Back"] = false, -- Starting Area (true if you wanna farm it)
["Autumn"] = false, -- Autumn Area (true if you wanna farm it)
["Frostland"] = true, -- Frostland Area (true if you wanna farm it)
["Inferno"] = false, -- Inferno Zone (true if you wanna farm it)
["Voidland"] = false,
["Skyland"] = false,
}

local Weapon;
_G.StopFarming = false
function GetWeapon()
local Found = false
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
Found = true
end
end
end
if Found == false then
for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if b:IsA("Tool") then
if b:FindFirstChild("Katana") then
b.Parent = game.Players.LocalPlayer.Character
Weapon = b
Found = true
end
end
end
end
end

GetWeapon()

function CheckWeapon()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
return true
else
return false
end
end
end
end

local NotDoneYet = false
repeat
wait()
for i,v in pairs(game.Workspace.NPCs.Spawns:GetChildren()) do
if v.Name == "Start Area Back" and Options["Start Area Back"] == true or v.Name == "Autumn" and Options["Autumn"] == true or v.Name == "Frostland" and Options["Frostland"] == true or v.Name == "Inferno" and Options["Inferno"] == true or v.Name == "Voidland" and Options["Voidland"] == true or v.Name == "Skyland" and Options["Skyland"] == true then
local a = v:GetChildren()
for i=1,#a do
if a[i].Name:match("Ninja") then
if a[i]:FindFirstChild("Humanoid") and a[i].Humanoid.Health > 0 and a[i]:FindFirstChild("HumanoidRootPart") then
local ItsNil = false
if _G.StopFarming == false then
wait(0.6)
end
repeat
wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and a[i]:FindFirstChild("HumanoidRootPart") then
if CheckWeapon() then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a[i].HumanoidRootPart.CFrame + a[i].HumanoidRootPart.CFrame.lookVector * -3
wait()
Weapon:Activate()
wait()
Weapon:Deactivate()
else
GetWeapon()
end
else
ItsNil = true
end
until ItsNil == true or a[i].Humanoid.Health <= 0 or _G.StopFarming == true
if _G.StopFarming == false then
wait(0.5)
else
wait()
end
if _G.StopFarming == true and NotDoneYet == false then
NotDoneYet = true
wait(0.5)
end
end
end
end
end
end
until _G.StopFarming == true
end
			elseif _G.MobsSelected == "Inferno" then
if yu == true then
yu = false
f6.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
_G.StopFarming = true
else
yu = true
local Options = {
["Start Area Back"] = false, -- Starting Area (true if you wanna farm it)
["Autumn"] = false, -- Autumn Area (true if you wanna farm it)
["Frostland"] = false, -- Frostland Area (true if you wanna farm it)
["Inferno"] = true, -- Inferno Zone (true if you wanna farm it)
["Voidland"] = false,
["Skyland"] = false,
}

local Weapon;
_G.StopFarming = false
function GetWeapon()
local Found = false
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
Found = true
end
end
end
if Found == false then
for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if b:IsA("Tool") then
if b:FindFirstChild("Katana") then
b.Parent = game.Players.LocalPlayer.Character
Weapon = b
Found = true
end
end
end
end
end

GetWeapon()

function CheckWeapon()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
return true
else
return false
end
end
end
end

local NotDoneYet = false
repeat
wait()
for i,v in pairs(game.Workspace.NPCs.Spawns:GetChildren()) do
if v.Name == "Start Area Back" and Options["Start Area Back"] == true or v.Name == "Autumn" and Options["Autumn"] == true or v.Name == "Frostland" and Options["Frostland"] == true or v.Name == "Inferno" and Options["Inferno"] == true or v.Name == "Voidland" and Options["Voidland"] == true or v.Name == "Skyland" and Options["Skyland"] == true then
local a = v:GetChildren()
for i=1,#a do
if a[i].Name:match("Ninja") then
if a[i]:FindFirstChild("Humanoid") and a[i].Humanoid.Health > 0 and a[i]:FindFirstChild("HumanoidRootPart") then
local ItsNil = false
if _G.StopFarming == false then
wait(0.6)
end
repeat
wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and a[i]:FindFirstChild("HumanoidRootPart") then
if CheckWeapon() then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a[i].HumanoidRootPart.CFrame + a[i].HumanoidRootPart.CFrame.lookVector * -3
wait()
Weapon:Activate()
wait()
Weapon:Deactivate()
else
GetWeapon()
end
else
ItsNil = true
end
until ItsNil == true or a[i].Humanoid.Health <= 0 or _G.StopFarming == true
if _G.StopFarming == false then
wait(0.5)
else
wait()
end
if _G.StopFarming == true and NotDoneYet == false then
NotDoneYet = true
wait(0.5)
end
end
end
end
end
end
until _G.StopFarming == true
end		
			elseif _G.MobsSelected == "Voidland" then
if yu == true then
yu = false
f6.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
_G.StopFarming = true
else
yu = true
local Options = {
["Start Area Back"] = false, -- Starting Area (true if you wanna farm it)
["Autumn"] = false, -- Autumn Area (true if you wanna farm it)
["Frostland"] = false, -- Frostland Area (true if you wanna farm it)
["Inferno"] = false, -- Inferno Zone (true if you wanna farm it)
["Voidland"] = true,
["Skyland"] = false,
}

local Weapon;
_G.StopFarming = false
function GetWeapon()
local Found = false
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
Found = true
end
end
end
if Found == false then
for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if b:IsA("Tool") then
if b:FindFirstChild("Katana") then
b.Parent = game.Players.LocalPlayer.Character
Weapon = b
Found = true
end
end
end
end
end

GetWeapon()

function CheckWeapon()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
return true
else
return false
end
end
end
end

local NotDoneYet = false
repeat
wait()
for i,v in pairs(game.Workspace.NPCs.Spawns:GetChildren()) do
if v.Name == "Start Area Back" and Options["Start Area Back"] == true or v.Name == "Autumn" and Options["Autumn"] == true or v.Name == "Frostland" and Options["Frostland"] == true or v.Name == "Inferno" and Options["Inferno"] == true or v.Name == "Voidland" and Options["Voidland"] == true or v.Name == "Skyland" and Options["Skyland"] == true then
local a = v:GetChildren()
for i=1,#a do
if a[i].Name:match("Ninja") then
if a[i]:FindFirstChild("Humanoid") and a[i].Humanoid.Health > 0 and a[i]:FindFirstChild("HumanoidRootPart") then
local ItsNil = false
if _G.StopFarming == false then
wait(0.6)
end
repeat
wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and a[i]:FindFirstChild("HumanoidRootPart") then
if CheckWeapon() then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a[i].HumanoidRootPart.CFrame + a[i].HumanoidRootPart.CFrame.lookVector * -3
wait()
Weapon:Activate()
wait()
Weapon:Deactivate()
else
GetWeapon()
end
else
ItsNil = true
end
until ItsNil == true or a[i].Humanoid.Health <= 0 or _G.StopFarming == true
if _G.StopFarming == false then
wait(0.5)
else
wait()
end
if _G.StopFarming == true and NotDoneYet == false then
NotDoneYet = true
wait(0.5)
end
end
end
end
end
end
until _G.StopFarming == true
end
			elseif _G.MobsSelected == "Skyland" then
if yu == true then
yu = false
f6.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
_G.StopFarming = true
else
yu = true
local Options = {
["Start Area Back"] = false, -- Starting Area (true if you wanna farm it)
["Autumn"] = false, -- Autumn Area (true if you wanna farm it)
["Frostland"] = false, -- Frostland Area (true if you wanna farm it)
["Inferno"] = false, -- Inferno Zone (true if you wanna farm it)
["Voidland"] = false,
["Skyland"] = true,
}

local Weapon;
_G.StopFarming = false
function GetWeapon()
local Found = false
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
Found = true
end
end
end
if Found == false then
for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if b:IsA("Tool") then
if b:FindFirstChild("Katana") then
b.Parent = game.Players.LocalPlayer.Character
Weapon = b
Found = true
end
end
end
end
end

GetWeapon()

function CheckWeapon()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
return true
else
return false
end
end
end
end

local NotDoneYet = false
repeat
wait()
for i,v in pairs(game.Workspace.NPCs.Spawns:GetChildren()) do
if v.Name == "Start Area Back" and Options["Start Area Back"] == true or v.Name == "Autumn" and Options["Autumn"] == true or v.Name == "Frostland" and Options["Frostland"] == true or v.Name == "Inferno" and Options["Inferno"] == true or v.Name == "Voidland" and Options["Voidland"] == true or v.Name == "Skyland" and Options["Skyland"] == true then
local a = v:GetChildren()
for i=1,#a do
if a[i].Name:match("Ninja") then
if a[i]:FindFirstChild("Humanoid") and a[i].Humanoid.Health > 0 and a[i]:FindFirstChild("HumanoidRootPart") then
local ItsNil = false
if _G.StopFarming == false then
wait(0.6)
end
repeat
wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and a[i]:FindFirstChild("HumanoidRootPart") then
if CheckWeapon() then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a[i].HumanoidRootPart.CFrame + a[i].HumanoidRootPart.CFrame.lookVector * -3
wait()
Weapon:Activate()
wait()
Weapon:Deactivate()
else
GetWeapon()
end
else
ItsNil = true
end
until ItsNil == true or a[i].Humanoid.Health <= 0 or _G.StopFarming == true
if _G.StopFarming == false then
wait(0.5)
else
wait()
end
if _G.StopFarming == true and NotDoneYet == false then
NotDoneYet = true
wait(0.5)
end
end
end
end
end
end
until _G.StopFarming == true
end
			elseif _G.MobsSelected == "Ice" then
if yu == true then
yu = false
f6.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
_G.StopFarming = true
else
yu = true
local Options = {
["Start Area Back"] = false, -- Starting Area (true if you wanna farm it)
["Autumn"] = false, -- Autumn Area (true if you wanna farm it)
["Frostland"] = false, -- Frostland Area (true if you wanna farm it)
["Inferno"] = false, -- Inferno Zone (true if you wanna farm it)
["Voidland"] = false,
["Skyland"] = false,
["Iceland"] = true,
}

local Weapon;
_G.StopFarming = false
function GetWeapon()
local Found = false
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
Found = true
end
end
end
if Found == false then
for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if b:IsA("Tool") then
if b:FindFirstChild("Katana") then
b.Parent = game.Players.LocalPlayer.Character
Weapon = b
Found = true
end
end
end
end
end

GetWeapon()

function CheckWeapon()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
return true
else
return false
end
end
end
end

local NotDoneYet = false
repeat
wait()
for i,v in pairs(game.Workspace.NPCs.Spawns:GetChildren()) do
if v.Name == "Start Area Back" and Options["Start Area Back"] == true or v.Name == "Autumn" and Options["Autumn"] == true or v.Name == "Frostland" and Options["Frostland"] == true or v.Name == "Inferno" and Options["Inferno"] == true or v.Name == "Voidland" and Options["Voidland"] == true or v.Name == "Skyland" and Options["Skyland"] == true or v.Name == "Iceland" and Options["Iceland"] == true then
local a = v:GetChildren()
for i=1,#a do
if a[i].Name:match("Ninja") then
if a[i]:FindFirstChild("Humanoid") and a[i].Humanoid.Health > 0 and a[i]:FindFirstChild("HumanoidRootPart") then
local ItsNil = false
if _G.StopFarming == false then
wait(0.6)
end
repeat
wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and a[i]:FindFirstChild("HumanoidRootPart") then
if CheckWeapon() then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a[i].HumanoidRootPart.CFrame + a[i].HumanoidRootPart.CFrame.lookVector * -3
wait()
Weapon:Activate()
wait()
Weapon:Deactivate()
else
GetWeapon()
end
else
ItsNil = true
end
until ItsNil == true or a[i].Humanoid.Health <= 0 or _G.StopFarming == true
if _G.StopFarming == false then
wait(0.5)
else
wait()
end
if _G.StopFarming == true and NotDoneYet == false then
NotDoneYet = true
wait(0.5)
end
end
end
end
end
end
until _G.StopFarming == true
end
			elseif _G.MobsSelected == "Ruby" then
if yu == true then
yu = false
f6.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
_G.StopFarming = true
else
yu = true
local Options = {
["Start Area Back"] = false, -- Starting Area (true if you wanna farm it)
["Autumn"] = false, -- Autumn Area (true if you wanna farm it)
["Frostland"] = false, -- Frostland Area (true if you wanna farm it)
["Inferno"] = false, -- Inferno Zone (true if you wanna farm it)
["Voidland"] = false,
["Skyland"] = false,
["Iceland"] = false,
["Rubyland"] = true,
}

local Weapon;
_G.StopFarming = false
function GetWeapon()
local Found = false
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
Found = true
end
end
end
if Found == false then
for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if b:IsA("Tool") then
if b:FindFirstChild("Katana") then
b.Parent = game.Players.LocalPlayer.Character
Weapon = b
Found = true
end
end
end
end
end

GetWeapon()

function CheckWeapon()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
return true
else
return false
end
end
end
end

local NotDoneYet = false
repeat
wait()
for i,v in pairs(game.Workspace.NPCs.Spawns:GetChildren()) do
if v.Name == "Start Area Back" and Options["Start Area Back"] == true or v.Name == "Autumn" and Options["Autumn"] == true or v.Name == "Frostland" and Options["Frostland"] == true or v.Name == "Inferno" and Options["Inferno"] == true or v.Name == "Voidland" and Options["Voidland"] == true or v.Name == "Skyland" and Options["Skyland"] == true or v.Name == "Iceland" and Options["Iceland"] == true or v.Name == "Rubyland" and Options["Rubyland"] == true then
local a = v:GetChildren()
for i=1,#a do
if a[i].Name:match("Ninja") then
if a[i]:FindFirstChild("Humanoid") and a[i].Humanoid.Health > 0 and a[i]:FindFirstChild("HumanoidRootPart") then
local ItsNil = false
if _G.StopFarming == false then
wait(0.6)
end
repeat
wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and a[i]:FindFirstChild("HumanoidRootPart") then
if CheckWeapon() then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a[i].HumanoidRootPart.CFrame + a[i].HumanoidRootPart.CFrame.lookVector * -3
wait()
Weapon:Activate()
wait()
Weapon:Deactivate()
else
GetWeapon()
end
else
ItsNil = true
end
until ItsNil == true or a[i].Humanoid.Health <= 0 or _G.StopFarming == true
if _G.StopFarming == false then
wait(0.5)
else
wait()
end
if _G.StopFarming == true and NotDoneYet == false then
NotDoneYet = true
wait(0.5)
end
end
end
end
end
end
until _G.StopFarming == true
end
			elseif _G.MobsSelected == "Lavender" then
if yu == true then
yu = false
f6.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
_G.StopFarming = true
else
yu = true
local Options = {
["Start Area Back"] = false, -- Starting Area (true if you wanna farm it)
["Autumn"] = false, -- Autumn Area (true if you wanna farm it)
["Frostland"] = false, -- Frostland Area (true if you wanna farm it)
["Inferno"] = false, -- Inferno Zone (true if you wanna farm it)
["Voidland"] = false,
["Skyland"] = false,
["Iceland"] = false,
["Rubyland"] = false,
["Lavenderland"] = true,
}

local Weapon;
_G.StopFarming = false
function GetWeapon()
local Found = false
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
Found = true
end
end
end
if Found == false then
for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if b:IsA("Tool") then
if b:FindFirstChild("Katana") then
b.Parent = game.Players.LocalPlayer.Character
Weapon = b
Found = true
end
end
end
end
end

GetWeapon()

function CheckWeapon()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
return true
else
return false
end
end
end
end

local NotDoneYet = false
repeat
wait()
for i,v in pairs(game.Workspace.NPCs.Spawns:GetChildren()) do
if v.Name == "Start Area Back" and Options["Start Area Back"] == true or v.Name == "Autumn" and Options["Autumn"] == true or v.Name == "Frostland" and Options["Frostland"] == true or v.Name == "Inferno" and Options["Inferno"] == true or v.Name == "Voidland" and Options["Voidland"] == true or v.Name == "Skyland" and Options["Skyland"] == true or v.Name == "Iceland" and Options["Iceland"] == true or v.Name == "Rubyland" and Options["Rubyland"] == true or v.Name == "Lavenderland" and Options["Lavenderland"] == true then
local a = v:GetChildren()
for i=1,#a do
if a[i].Name:match("Ninja") then
if a[i]:FindFirstChild("Humanoid") and a[i].Humanoid.Health > 0 and a[i]:FindFirstChild("HumanoidRootPart") then
local ItsNil = false
if _G.StopFarming == false then
wait(0.6)
end
repeat
wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and a[i]:FindFirstChild("HumanoidRootPart") then
if CheckWeapon() then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a[i].HumanoidRootPart.CFrame + a[i].HumanoidRootPart.CFrame.lookVector * -3
wait()
Weapon:Activate()
wait()
Weapon:Deactivate()
else
GetWeapon()
end
else
ItsNil = true
end
until ItsNil == true or a[i].Humanoid.Health <= 0 or _G.StopFarming == true
if _G.StopFarming == false then
wait(0.5)
else
wait()
end
if _G.StopFarming == true and NotDoneYet == false then
NotDoneYet = true
wait(0.5)
end
end
end
end
end
end
until _G.StopFarming == true
end
			elseif _G.MobsSelected == "ALL WORLD" then
if yu == true then
yu = false
f6.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
_G.StopFarming = true
else
yu = true
local Options = {
["Start Area Back"] = true, -- Starting Area (true if you wanna farm it)
["Autumn"] = true, -- Autumn Area (true if you wanna farm it)
["Frostland"] = true, -- Frostland Area (true if you wanna farm it)
["Inferno"] = true, -- Inferno Zone (true if you wanna farm it)
["Voidland"] = true,
["Skyland"] = true,
["Iceland"] = true,
["Rubyland"] = true,
["Lavenderland"] = true,
}

local Weapon;
_G.StopFarming = false
function GetWeapon()
local Found = false
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
Found = true
end
end
end
if Found == false then
for a,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if b:IsA("Tool") then
if b:FindFirstChild("Katana") then
b.Parent = game.Players.LocalPlayer.Character
Weapon = b
Found = true
end
end
end
end
end

GetWeapon()

function CheckWeapon()
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("Katana") then
Weapon = v
return true
else
return false
end
end
end
end

local NotDoneYet = false
repeat
wait()
for i,v in pairs(game.Workspace.NPCs.Spawns:GetChildren()) do
if v.Name == "Start Area Back" and Options["Start Area Back"] == true or v.Name == "Autumn" and Options["Autumn"] == true or v.Name == "Frostland" and Options["Frostland"] == true or v.Name == "Inferno" and Options["Inferno"] == true or v.Name == "Voidland" and Options["Voidland"] == true or v.Name == "Skyland" and Options["Skyland"] == true or v.Name == "Iceland" and Options["Iceland"] or v.Name == "Rubyland" and Options["Rubyland"] == true or v.Name == "Lavenderland" and Options["Lavenderland"] == true then
local a = v:GetChildren()
for i=1,#a do
if a[i].Name:match("Ninja") then
if a[i]:FindFirstChild("Humanoid") and a[i].Humanoid.Health > 0 and a[i]:FindFirstChild("HumanoidRootPart") then
local ItsNil = false
if _G.StopFarming == false then
wait(0.6)
end
repeat
wait()
if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and a[i]:FindFirstChild("HumanoidRootPart") then
if CheckWeapon() then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a[i].HumanoidRootPart.CFrame + a[i].HumanoidRootPart.CFrame.lookVector * -3
wait()
Weapon:Activate()
wait()
Weapon:Deactivate()
else
GetWeapon()
end
else
ItsNil = true
end
until ItsNil == true or a[i].Humanoid.Health <= 0 or _G.StopFarming == true
if _G.StopFarming == false then
wait(0.5)
else
wait()
end
if _G.StopFarming == true and NotDoneYet == false then
NotDoneYet = true
wait(0.5)
end
end
end
end
end
end
until _G.StopFarming == true
end
			end
		end
	end
end)

	w4:Button("ARREST",function()
		local TeleportService = game:GetService("TeleportService")
		local PlaceId = game.PlaceId
		local player = game.Players.LocalPlayer
		if player then
		TeleportService:Teleport(PlaceId, player)
		end
	end)
	w4:Label("Will Restart Game",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
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

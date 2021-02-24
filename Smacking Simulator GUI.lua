local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w3 = library:CreateWindow("Smacking Simulator GUi")
local w2 = library:CreateWindow("Eggs FAST")
local w4 = library:CreateWindow("Rebirths")
local w5 = library:CreateWindow("Damages")
--================== Model =======================--
local w = w3:CreateFolder("Hacks")

w:Label("Things",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor

w:Toggle("Auto Click",function(bool)
	shared.toggle1 = bool
end)

w:Toggle("Auto Sell",function(bool)
	shared.toggle2 = bool
end)  
w:Toggle("Auto Buy Smacker",function(bool)
	shared.toggle3 = bool
end) 
w:Toggle("Auto Buy Dna",function(bool)
	shared.toggle4 = bool
end) 
w:Toggle("Auto Buy Class",function(bool)
	shared.toggle5 = bool
end) 
w:Toggle("Auto Buy Jump",function(bool)
	shared.toggle6 = bool
end)
w:Toggle("Buy All Damage",function(bool)
	shared.toggle7 = bool
end)
w:Toggle("Buy All Rebirths",function(bool)
	shared.toggle8 = bool
end)
w:Toggle("Auto Claim Quests",function(bool)
	shared.toggle9 = bool
end)
spawn(function()
	while wait() do
		if shared.toggle1 then
			if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
			end
		end
		if shared.toggle22 then
			local toolname = "Tools" -- replace with the name of the tool
			local Plr = game:GetService("Players").LocalPlayer
			while wait() do
				pcall(function()
					if Plr.Backpack:FindFirstChild(toolname) and Plr.Character:FindFirstChild(toolname) == nil then
						local tool = Plr.Backpack:FindFirstChild(toolname)
						Plr.Character.Humanoid:EquipTool(tool)
					end
				end)
			end	
		end
		if shared.toggle2 then
			game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-175.317688, 5.09488964, -103.047447)
			wait(0.1)
			game.Players.LocalPlayer.character.HumanoidRootPart.CFrame = CFrame.new(-161.808121, 5.17770767, -88.4649048)
		end
		if shared.toggle3 then
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",2)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",3)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",4)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",5)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",6)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",7)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",8)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",9)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",10)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",11)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",12)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",13)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",14)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",15)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",16)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",17)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",18)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",19)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",20)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",21)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",22)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",23)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",24)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",25)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",26)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",27)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",28)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",29)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",30)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",31)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",32)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",33)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",34)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",35)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",36)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",37)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",38)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",39)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",40)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",41)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",42)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",43)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",44)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",45)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",46)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",47)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",48)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",49)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",50)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",51)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",52)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",53)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",54)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",55)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",56)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",57)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",58)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",59)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",60)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",61)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",62)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",63)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",64)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",65)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",66)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",67)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",68)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",69)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",70)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",71)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",72)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",73)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",74)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",75)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",76)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",77)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",78)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",79)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",80)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",81)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",82)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",83)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",84)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",85)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",86)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",87)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",88)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",89)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",90)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",91)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",92)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",93)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",94)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",95)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",96)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",97)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",98)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",99)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",100)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",101)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",102)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",103)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",104)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",105)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",106)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",107)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",108)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",109)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",110)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",111)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",112)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",113)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",114)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",115)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",116)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",117)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",118)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",119)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",120)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",121)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",122)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",123)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",124)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",125)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",126)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",127)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",128)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",129)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",130)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",131)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",132)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",133)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",134)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",135)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",136)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",137)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",138)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",139)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",140)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",141)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",142)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",143)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",144)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",145)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",146)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",147)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",148)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",149)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",150)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",151)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",152)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",153)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",154)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",155)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",156)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",157)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",158)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",159)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",160)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",161)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",162)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",163)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",164)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",165)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",166)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",167)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",168)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",169)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",170)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",171)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",172)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",173)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",174)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",175)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",176)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",177)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",178)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",179)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",180)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",181)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",182)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Smacker",183)
		end
		if shared.toggle4 then
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",2)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",3)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",4)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",5)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",6)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",7)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",8)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",9)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",10)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",11)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",12)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",13)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",14)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",15)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",16)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",17)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",18)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",19)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",20)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",21)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",22)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",23)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",24)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",25)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",26)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",27)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",28)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",29)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("DNA",30)
		end
		if shared.toggle5 then
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",2)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",3)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",4)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",5)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",6)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",7)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",8)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",9)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",10)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",11)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",12)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",13)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",14)
			wait(0.1)
			game:GetService("ReplicatedStorage").Events.StoreItem:FireServer("Class",15)
		end
		if shared.toggle6 then
			game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Jumps")
		end
		if shared.toggle7 then
			game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Hits",1)
			game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Hits",10)
			game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Hits",50)
		end
		if shared.toggle8 then
			game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Rebirths",1)
			game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Rebirths",10)
			game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Rebirths",50)
end
		if shared.toggle9 then
game:GetService("ReplicatedStorage").Events.ClaimQuest:FireServer("Hit Boss 5x")
game:GetService("ReplicatedStorage").Events.ClaimQuest:FireServer("Smack 1000x")
game:GetService("ReplicatedStorage").Events.ClaimQuest:FireServer("Open Egg 1x")
game:GetService("ReplicatedStorage").Events.ClaimQuest:FireServer("Hit Player 25x")
		end
	end
end)

local w2 = w2:CreateFolder("Eggs")
w2:Dropdown("Choose Eggs",{"SECRET EGG","2500 COINS","10K COINS","1K GEMS","5K GEMS","15K GEMS","25K GEMS","50K GEMS","100K GEMS","150K GEMS RADIOACTIVE","150K GEMS MYTHIC","150K GEMS MAGMA","150K GEMS ICE","150K GEMS GRASS","150K GEMS COTTON","200K GEMS (EVENT)"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	_G.BossSelected = mob
end)

w2:Toggle("Buy Eggs",function(bool)
	shared.Eggs = bool
end)

spawn(function()
	while wait(0) do
		if shared.Eggs then
			if _G.BossSelected == "2500 COINS" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Ninja Egg")
			elseif _G.BossSelected == "SECRET EGG" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("ScaryEgg")
			elseif _G.BossSelected == "10K COINS" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Bunny Egg")
			elseif _G.BossSelected == "1K GEMS" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Snowman Egg")
			elseif _G.BossSelected == "5K GEMS" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Goblin Egg")
			elseif _G.BossSelected == "15K GEMS" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Among Us Egg")
			elseif _G.BossSelected == "25K GEMS" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Mouse Egg")
			elseif _G.BossSelected == "50K GEMS" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Gift/Robot Egg")
			elseif _G.BossSelected == "100K GEMS" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Fox Egg")
			elseif _G.BossSelected == "150K GEMS RADIOACTIVE" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Radioactive Egg")
			elseif _G.BossSelected == "150K GEMS MYTHIC" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Mythic Egg")
			elseif _G.BossSelected == "150K GEMS MAGMA" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Magma Egg")
			elseif _G.BossSelected == "150K GEMS ICE" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Ice Spike Egg")
			elseif _G.BossSelected == "150K GEMS GRASS" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Grass Egg")
			elseif _G.BossSelected == "150K GEMS COTTON" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("Cotten Candy Egg")
			elseif _G.BossSelected == "200K GEMS (EVENT)" then
				game:GetService("ReplicatedStorage").Events.PetEggOpen:FireServer("5M Egg")
			end
		end
	end
end)
local w4 = w4:CreateFolder("Rebirths")
w4:Dropdown("Choose Rebirths",{"X1","X10","X50"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	_G.REBSelected = mob
end)

w4:Toggle("Buy Rebirths",function(bool)
	shared.REB = bool
end)

spawn(function()
	while wait(0) do
		if shared.REB then
			if _G.REBSelected == "X1" then
				game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Rebirths",1)
			elseif _G.REBSelected == "X10" then
				game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Rebirths",10)
			elseif _G.REBSelected == "X50" then
				game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Rebirths",50)

			end
		end
	end
end)
local w5 = w5:CreateFolder("Damage")
w5:Dropdown("Choose Damage",{"X1","X10","X50"},true,function(mob) --Replace the Dropdown name with the selected one(A,B,C)
	_G.DamageSelected = mob
end)

w5:Toggle("Buy Damage",function(bool)
	shared.DMG = bool
end)

spawn(function()
	while wait(0) do
		if shared.DMG then
			if _G.DamageSelected == "X1" then
				game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Hits",1)
			elseif _G.DamageSelected == "X10" then
				game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Hits",10)
			elseif _G.DamageSelected == "X50" then
				game:GetService("ReplicatedStorage").Events.Upgrade:FireServer("Hits",50)

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

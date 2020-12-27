-- Anti AFK

	local Virtual = game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		Virtual:CaptureController()
		Virtual:ClickButton2(Vector2.new())
		wait(2)
	end)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))() -- It's obfuscated, I won't let you see my ugly coding skills. =)

local w = library:CreateWindow("Zombie Attack")

local FNC = w:CreateFolder("Function")

	FNC:Button("Auto Farm Start",function()
				local groundDistance = 8
					local Player = game:GetService("Players").LocalPlayer
					local function getNearest()
					local nearest, dist = nil, 99999
					for _,v in pairs(game.Workspace.BossFolder:GetChildren()) do
						if(v:FindFirstChild("Head")~=nil)then
							local m =(Player.Character.Head.Position-v.Head.Position).magnitude
							if(m<dist)then
								dist = m
								nearest = v
							end
						end
					end
					for _,v in pairs(game.Workspace.enemies:GetChildren()) do
						if(v:FindFirstChild("Head")~=nil)then
							local m =(Player.Character.Head.Position-v.Head.Position).magnitude
							if(m<dist)then
								dist = m
								nearest = v
							end
						end
					end
					return nearest
					end
					_G.farm2 = true
					Player.Chatted:Connect(function(m)
						if(m==";autofarm false")then
							_G.farm2 = false
						elseif(m==";autofarm true")then
							_G.farm2 = true
						end
					end)
					_G.globalTarget = nil
					game:GetService("RunService").RenderStepped:Connect(function()
						if(_G.farm2==true)then
							local target = getNearest()
							if(target~=nil)then
								game:GetService("Workspace").CurrentCamera.CFrame = CFrame.new(game:GetService("Workspace").CurrentCamera.CFrame.p, target.Head.Position)
								Player.Character.HumanoidRootPart.CFrame = (target.HumanoidRootPart.CFrame * CFrame.new(0, groundDistance, 9))
								_G.globalTarget = target
							end
						end
					end)
					spawn(function()
						while wait() do
							game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
							game.Players.LocalPlayer.Character.Torso.Velocity = Vector3.new(0,0,0)
						end
					end)
					while wait() do
						if(_G.farm2==true and _G.globalTarget~=nil and _G.globalTarget:FindFirstChild("Head") and Player.Character:FindFirstChildOfClass("Tool"))then
							local target = _G.globalTarget
							game.ReplicatedStorage.Gun:FireServer({["Normal"] = Vector3.new(0, 0, 0), ["Direction"] = target.Head.Position, ["Name"] = Player.Character:FindFirstChildOfClass("Tool").Name, ["Hit"] = target.Head, ["Origin"] = target.Head.Position, ["Pos"] = target.Head.Position,})
							wait()
						end
					end
	end)

	FNC:Button("Auto Farm Stop",function()
		_G.farm2 = false
	end)

	FNC:Button("Aimbot",function()
		local oPlBfNRNfyJz = game.Players.LocalPlayer;local ZtYjkXDgMlxc = "Head";local dAociCiEvJMB = function()local QInaUnazu = math.huge;local J8IhabzuN = nil;for iUIhaztYUbnZ,uUhsabzyuG in next, game.Workspace:GetDescendants() do if uUhsabzyuG:FindFirstChild(ZtYjkXDgMlxc) and oPlBfNRNfyJz.Character:FindFirstChild(ZtYjkXDgMlxc) and not uUhsabzyuG:FindFirstChild('Guns') and uUhsabzyuG.Parent.Name ~= "deadenemies" then local IIhzabUtd = (uUhsabzyuG:FindFirstChild(ZtYjkXDgMlxc).Position-oPlBfNRNfyJz.Character.Head.Position).magnitude;if IIhzabUtd < QInaUnazu then QInaUnazu = IIhzabUtd;J8IhabzuN = uUhsabzyuG;end;end;end;return J8IhabzuN;end;local GtsZsUbJOuJk = oPlBfNRNfyJz:GetMouse();local tZcInsImQQfX = getrawmetatable(game);local sCtxkbklLnmy = tZcInsImQQfX.__index;setreadonly(tZcInsImQQfX,false);tZcInsImQQfX.__index = newcclosure(function(hFcjBtZBXthW,tGNxqMIMabVS)if hFcjBtZBXthW == GtsZsUbJOuJk and tostring(tGNxqMIMabVS) == "Hit" then return dAociCiEvJMB():FindFirstChild(ZtYjkXDgMlxc).CFrame;end;return sCtxkbklLnmy(hFcjBtZBXthW,tGNxqMIMabVS)end)setreadonly(tZcInsImQQfX,true)
	end)

	FNC:Toggle("Auto Collect",function(bool)
		shared.toggleAC = bool
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
		loadstring(game:HttpGet("https://pastebin.com/raw/7rXZ9VNc", true))()
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

	MISC:Button("Safe Zone",function()
		local player = game.Players.LocalPlayer.Character.HumanoidRootPart
		player.CFrame = CFrame.new(93.5491, 9.71532, 2403.01)
	end)

	MISC:GuiSettings()

local CS = w:CreateFolder("Credits")

	
  CS:Label("Script: Altix#3395",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    CS:Button("Discord: https://discord.gg/KmHZUpXEmQ",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
    setclipboard("https://discord.gg/KmHZUpXEmQ")
	CS:DestroyGUI()


spawn(function()
	while wait() do
		if shared.toggleAC then
			for i,v in pairs (game:GetService("Workspace").Powerups:GetChildren()) do
				for i,v in pairs (v:GetChildren()) do
					v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					v.CanCollide = false
				end
			end
			wait(0.5)
		end
	end
end)

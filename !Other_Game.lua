-- Anti AFK

	local Virtual = game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		Virtual:CaptureController()
		Virtual:ClickButton2(Vector2.new())
		wait(2)
	end)

local library = loadstring(game:HttpGet(('https://pastebin.com/raw/FsJak6AT')))()

local w = library:CreateWindow(game.GameId)

local FNC = w:CreateFolder("Function")

	FNC:Button("CTRL+Click TP",function()
		local Plr = game:GetService("Players").LocalPlayer
		local Mouse = Plr:GetMouse()
		 
		Mouse.Button1Down:connect(function()
		if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
		if not Mouse.Target then return end
		Plr.Character:MoveTo(Mouse.Hit.p)
		end)
		game.StarterGui:SetCore("ChatMakeSystemMessage",{Text = "[Shaltix's Hub]: CTRL+Click TP Enabled", Color = Color3.fromRGB(0,255,255), Font = Enum.Font.SourceSansBold, TextSize = 18,})
	end)

	FNC:Button("Btools",function()
		print("Getting Btools") --This is a normal script >_>
		wait()
		print("Drag Success")
		a = Instance.new("HopperBin")
		a.BinType = 1
		a.Parent = game.Players.LocalPlayer.Backpack
		wait()
		print("Delete Success")
		a = Instance.new("HopperBin")
		a.BinType = 4
		a.Parent = game.Players.LocalPlayer.Backpack
		wait()
		print("Copy Success")
		a = Instance.new("HopperBin")
		a.BinType = 3
		a.Parent = game.Players.LocalPlayer.Backpack
		game.StarterGui:SetCore("ChatMakeSystemMessage",{Text = "[Shaltix's Hub]: Btools Enabled", Color = Color3.fromRGB(0,255,255), Font = Enum.Font.SourceSansBold, TextSize = 18,})
	end)

	FNC:Button("Infinite Jump",function()
		_G.infinjump = true
		local Player = game:GetService("Players").LocalPlayer
		local Mouse = Player:GetMouse()
		Mouse.KeyDown:connect(function(k)
		    if _G.infinjump then
		        if k:byte() == 32 then
		            Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
		            Humanoid:ChangeState("Jumping")
		            wait(0.1)
		            Humanoid:ChangeState("Seated")
		        end
		    end
		end)
		game.StarterGui:SetCore("ChatMakeSystemMessage",{Text = "[Shaltix's Hub]: Infinite Jump Enabled", Color = Color3.fromRGB(0,255,255), Font = Enum.Font.SourceSansBold, TextSize = 18,})
	end)

	FNC:Button("FreeCam (Shift+P)",function()
		loadstring(game:HttpGet("https://pastebin.com/raw/yJ51HKy9"))()
		game.StarterGui:SetCore("ChatMakeSystemMessage",{Text = "[Shaltix's Hub]: FreeCam Enabled", Color = Color3.fromRGB(0,255,255), Font = Enum.Font.SourceSansBold, TextSize = 18,})
	end)

	FNC:Button("Chat Spy",function()
		--This script reveals ALL hidden messages in the default chat

		enabled = true --chat "/spy" to toggle!
		spyOnMyself = false --if true will check your messages too
		public = false --if true will chat the logs publicly (fun, risky)
		publicItalics = true --if true will use /me to stand out
		privateProperties = { --customize private logs
			Color = Color3.fromRGB(0,255,255); 
			Font = Enum.Font.SourceSansBold;
			TextSize = 18;
		}


		local StarterGui = game:GetService("StarterGui")
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer
		local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
		local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
		local instance = (_G.chatSpyInstance or 0) + 1
		_G.chatSpyInstance = instance

		local function onChatted(p,msg)
			if _G.chatSpyInstance == instance then
				if p==player and msg:lower():sub(1,4)=="/spy" then
					enabled = not enabled
					wait(0.3)
					privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
					StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
				elseif enabled and (spyOnMyself==true or p~=player) then
					msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
					local hidden = true
					local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
						if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
							hidden = false
						end
					end)
					wait(1)
					conn:Disconnect()
					if hidden and enabled then
						if public then
							saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
						else
							privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
							StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
						end
					end
				end
			end
		end

		for _,p in ipairs(Players:GetPlayers()) do
			p.Chatted:Connect(function(msg) onChatted(p,msg) end)
		end
		Players.PlayerAdded:Connect(function(p)
			p.Chatted:Connect(function(msg) onChatted(p,msg) end)
		end)
		privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
		StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
		if not player.PlayerGui:FindFirstChild("Chat") then wait(3) end
		local chatFrame = player.PlayerGui.Chat.Frame
		chatFrame.ChatChannelParentFrame.Visible = true
		chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
	end)

	FNC:Button("DarkDex",function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Ht4zRXj8"))()
		game.StarterGui:SetCore("ChatMakeSystemMessage",{Text = "[Shaltix's Hub]: DarkDex Enabled", Color = Color3.fromRGB(0,255,255), Font = Enum.Font.SourceSansBold, TextSize = 18,})
	end)

	FNC:Button("Simple Spy",function()
		loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
		game.StarterGui:SetCore("ChatMakeSystemMessage",{Text = "[Shaltix's Hub]: Simple Spy Enabled", Color = Color3.fromRGB(0,255,255), Font = Enum.Font.SourceSansBold, TextSize = 18,})
	end)

local PLR = w:CreateFolder("Player")

	PLR:Slider("Speed Hack",0,200,function(value)
		print(value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
	end)

	PLR:Slider("Jump Hack",0,100,function(value)
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
		game.StarterGui:SetCore("ChatMakeSystemMessage",{Text = "[Shaltix's Hub]: No Clip Enabled", Color = Color3.fromRGB(0,255,255), Font = Enum.Font.SourceSansBold, TextSize = 18,})
	end)

	PLR:Button("Fly (Press E)",function()
		loadstring(game:HttpGet("https://pastebin.com/raw/7rXZ9VNc", true))()
		game.StarterGui:SetCore("ChatMakeSystemMessage",{Text = "[Shaltix's Hub]: Fly Enabled", Color = Color3.fromRGB(0,255,255), Font = Enum.Font.SourceSansBold, TextSize = 18,})
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

local CS = w:CreateFolder("Credits")

	CS:Label("Script: Altix#5997",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	CS:Label("GUI: Altix & Wally",Color3.fromRGB(38,38,38),Color3.fromRGB(0,216,111)) --BgColor,TextColor
	CS:DestroyGUI()

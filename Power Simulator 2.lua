-- Anti AFK

local Virtual = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
    Virtual:CaptureController()
    Virtual:ClickButton2(Vector2.new())
    wait(2)
end)

if game.CoreGui:FindFirstChild("ScreenGui") then
    game.CoreGui:FindFirstChild("ScreenGui"):Destroy() 
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/quentin452/CATIX-HUB/master/!Zypher%20UI.lua"))()

local main = library:CreateMain({projName = "ScreenGui",Resizable = true,MinSize = UDim2.new(0,400,0,400),MaxSize = UDim2.new(0,750,0,500),})

local Home = main:CreateCategory("Home")
	local Tittle = Home:CreateSection("Power Simulator 2")
	local H1 = Home:CreateSection("Update logs:")
		H1:Create(
			"Textlabel",
			"+ Game Added"
		)
	local H2 = Home:CreateSection("Credits")
		H2:Create(
			"Textlabel",
			"Script by Altix#3395"
		)
		H2:Create(
			"Textlabel",
			"Tested by I'm A Cat#7202"
		)
		H2:Create(
			"Button",
			"Copy Discord Link (https://discord.gg/KmHZUpXEmQ)",
			function()
			setclipboard("https://discord.gg/KmHZUpXEmQ")
			end,
			{
				animated = true,
			}
        )

local Function = main:CreateCategory("Function")
    local Func = Function:CreateSection("Function Stuff")        
        Func:Create(
            "Toggle",
            "Auto Punch",
            function(state)
                shared.toggleAUTOPUNHC = state
            end,
            {
                default = false,
            }
        )
        Func:Create(
            "Toggle",
            "Auto Pressup",
            function(state)
                shared.toggleAUTOPRESSUP = state
            end,
            {
                default = false,
            }
        )
        Func:Create(
            "Toggle",
            "Auto Jumping",
            function(state)
                shared.toggleAUTOJUMPING = state
            end,
            {
                default = false,
            }
        )
        Func:Create(
            "Toggle",
            "Auto Medidate",
            function(state)
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Meditate.ChangeState",state)
            end,
            {
                default = false,
            }
        )
        spawn(function()
            while wait(0.1) do
                if shared.toggleAUTOPUNHC then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Powers.Punch")
                end
                if shared.toggleAUTOPRESSUP then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Powers.Pressup")
                end
                if shared.toggleAUTOJUMPING then
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Jumping")
                end
            end
        end)


local Teleport = main:CreateCategory("Teleport")
            TS:Create(
                "DropDown",
                "Choose a Player", 
                function(current)
                    print("Selected to:", current)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[current].Character.HumanoidRootPart.CFrame
                end,
                {
                    playerlist = true,
                    default = "Choose a Player",
                    search = true
                }
            )

local PlayerStuff = main:CreateCategory("Local Player")
	local PS = PlayerStuff:CreateSection("Player Stuff")
		PS:Create(
			"Slider",
			"Speed Hack",
			function(value)
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
			end,
			{
				min = 0,
				max = 250,
				-- Optional
				default = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed,
				precise = false, -- ex: 0.1, 0.2, 0.3
				changablevalue = true
			}
		)
		PS:Create(
			"Slider",
			"Jump Hack",
			function(value)
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
			end,
			{
				min = 0,
				max = 250,
				-- Optional
				default = game.Players.LocalPlayer.Character.Humanoid.JumpPower,
				precise = false, -- ex: 0.1, 0.2, 0.3
				changablevalue = true
			}
		)
		PS:Create(
			"Slider",
			"HipHeight Hack",
			function(value)
			game.Players.LocalPlayer.Character.Humanoid.HipHeight = value
			end,
			{
				min = game.Players.LocalPlayer.Character.Humanoid.HipHeight,
				max = 250,
				-- Optional
				default = game.Players.LocalPlayer.Character.Humanoid.HipHeight,
				precise = true, -- ex: 0.1, 0.2, 0.3
				changablevalue = true
			}
		)
		PS:Create(
			"Button",
			"No Clip (Press N)",
			function()
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
			end,
			{
				animated = true,
			}
		)
		PS:Create(
			"Button",
			"Fly (Press F)",
			function()
				loadstring(game:HttpGet("https://pastebin.com/raw/c01bpxpF", true))()
			end,
			{
				animated = true,
			}
		)
		PS:Create(
			"Button",
			"Ctrl + Click Tp",
			function()
				local Plr = game:GetService("Players").LocalPlayer
				local Mouse = Plr:GetMouse()

				Mouse.Button1Down:connect(function()
				if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
				if not Mouse.Target then return end
				Plr.Character:MoveTo(Mouse.Hit.p)
				end)
			end,
			{
				animated = true,
			}
		)
		PS:Create(
			"Button",
			"Camera Max/Min Zoom Distance",
			function()
				game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 99999
				game:GetService("Players").LocalPlayer.CameraMinZoomDistance = 0
			end,
			{
				animated = true,
			}
        )
        PS:Create(
            "Button",
            "Copy Location",
            function()
                local function RoundNumber(Number, Divider)
                    Divider = Divider or 1
                    return (math.floor((Number/Divider)+0.5)*Divider)
                end
                syn.write_clipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. tostring(Vector3.new(RoundNumber(game.Players.LocalPlayer.Character.Head.Position.X,1),RoundNumber(game.Players.LocalPlayer.Character.Head.Position.Y-1.5,1),RoundNumber(game.Players.LocalPlayer.Character.Head.Position.Z,1))) .. ")")
            end,
            {
                animated = true,
            }
        )

local Misc = main:CreateCategory("Misc")
        local Miscsection = Misc:CreateSection("Misc Stuff")
            Miscsection:Create(
                "Button",
                "Refresh Game",
                function()
                    local TeleportService = game:GetService("TeleportService")
                    local PlaceId = game.PlaceId
                    local player = game.Players.LocalPlayer
                    if player then
                    TeleportService:Teleport(PlaceId, player)
                    end
                end,
                {
                    animated = true,
                }
            )
            Miscsection:Create(
                "Button",
                "Use All Codes",
                function()
                    local codes = { 
                        "RELEASE",
                    }
                    for i,v in pairs(codes) do
                        game:GetService("ReplicatedStorage").Remotes.RedeemCode:InvokeServer(v)
                    end
                end,
                {
                    animated = true,
                }
            )
            Miscsection:Create(
                "Button",
                "Claim Daily Reward",
                function()
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Rewards.Daily")
                    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("Rewards.Group")
                end,
                {
                    animated = true,
                }
            )
        local GuiStuff = Misc:CreateSection("Gui Stuff")
            GuiStuff:Create(
                "KeyBind",
                "Hide Gui", 
                function(bool)
                    print(bool)
                    local Gui = game:GetService("CoreGui")["ScreenGui"].Motherframe
                    if Gui.Visible then
                        Gui.Visible = false
                    else
                        Gui.Visible = true
                    end
                end,
                {
                    default = Enum.KeyCode.RightControl
                }
            )
            GuiStuff:Create(
                "Button",
                "Destroy Gui",
                function()
                    game:GetService("CoreGui")["ScreenGui"]:Destroy()
                end,
                {
                    animated = true,
                }
            )

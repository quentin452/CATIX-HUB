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
	local Function = Home:CreateSection("Mythical Clickers")
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
            "Auto Click",
            function(state)
                shared.toggle1 = state
            end,
            {
                default = false,
            }
        )
        Func:Create(
            "Toggle",
            "Auto Click (Fast)",
            function(state)
                shared.toggle2 = state
            end,
            {
                default = false,
            }
        )
        Func:Create(
            "Toggle",
            "Auto Click (So Fast)",
            function(state)
                shared.toggle3 = state
            end,
            {
                default = false,
            }
        )
        Func:Create(
            "Button",
            "Disable Popups",
            function()
                game:GetService("Workspace")[game.Players.LocalPlayer.Name].Head:FindFirstChild("ClickEffect"):Destroy()
            end,
            {
                animated = true,
            }
        )
        spawn(function()
            while wait() do
                if shared.toggle1 then
                    game:GetService("ReplicatedStorage").Events.ClickEvent:FireServer()
                end
            end
        end)
        for i = 1, 10 do
            spawn(function()
                while wait() do
                    if shared.toggle2 then
                        game:GetService("ReplicatedStorage").Events.ClickEvent:FireServer()
                    end
                end
            end)
        end
        for i = 1, 50 do
            spawn(function()
                while wait() do
                    if shared.toggle3 then
                        game:GetService("ReplicatedStorage").Events.ClickEvent:FireServer()
                    end
                end
            end)
        end
    local AR = Function:CreateSection("Rebirth Stuff")
        local RebirthTable = {}
        local SuperRebirthTable = {}
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.SidebarFrames.Rebirth.Frame.Rebirth.List:GetChildren()) do
            if v.Name ~= "UIGridLayout" then
                table.insert(RebirthTable, v.Name)
            end
        end 
        for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.SidebarFrames.Rebirth.Frame.SuperRebirth.Buttons:GetChildren()) do
            if v.Name ~= "UIGridLayout" then
                table.insert(SuperRebirthTable, v.Name)
            end
        end
        AR:Create(
            "DropDown",
            "Select Rebirth", 
            function(current)
                _G.RebirthSelected = current
            end,
            {
                options = RebirthTable,
                 -- Optional
                default = "Select Rebirth",
                search = false
            }
        )
        AR:Create(
            "Toggle",
            "Start Auto Rebirth",
            function(state)
                shared.toggleRB = state
            end,
            {
                default = false,
            }
        )
        AR:Create(
            "DropDown",
            "Select SuperRebirth", 
            function(current)
                _G.SuperRebirthSelected = current
            end,
            {
                options = SuperRebirthTable,
                 -- Optional
                default = "Select SuperRebirth",
                search = false
            }
        )
        AR:Create(
            "Toggle",
            "Start Auto SuperRebirth",
            function(state)
                shared.toggleSRB = state
            end,
            {
                default = false,
            }
        )
        spawn(function()
            while wait(0.2) do
                if shared.toggleRB then
                    if _G.RebirthSelected ~= nil then
                        game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(_G.RebirthSelected)
                        wait()
                        game:GetService("ReplicatedStorage").Events.ClickEvent:FireServer()
                    end
                end
                if shared.toggleSRB then
                    if _G.SuperRebirthSelected ~= nil then
                        game:GetService("ReplicatedStorage").Events.Rebirth:InvokeServer(_G.RebirthSelected)
                        wait()
                        game:GetService("ReplicatedStorage").Events.ClickEvent:FireServer()
                    end
                end
            end
        end)
local PetModule = main:CreateCategory("PetModule")
    local BES = PetModule:CreateSection("Buy Eggs Stuff")
        local SelectEggsStrings = {}    
        for i,v in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
            table.insert(SelectEggsStrings, v.Name)
        end
        BES:Create(
            "DropDown",
            "Select Egg", 
            function(current)
                _G.EggsSelected = current
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Eggs[current].Glass.CFrame
            end,
            {
                options = SelectEggsStrings,
                -- Optional
                default = "Select Egg",
                search = false
            }
        )
        BES:Create(
            "Toggle",
            "Open x1",
            function(state)
                shared.toggleOEx1 = state
            end,
            {
                default = false,
            }
        )
        BES:Create(
            "Toggle",
            "Open x3",
            function(state)
                shared.toggleOEx3 = state
            end,
            {
                default = false,
            }
        )
        spawn(function()
            while wait(0.5) do
                if shared.toggleOEx1 then
                    if _G.EggsSelected ~= nil then
                        game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(_G.EggsSelected,"Buy1")
                    end
                end
                if shared.toggleOEx3 then
                    if _G.EggsSelected ~= nil then
                        game:GetService("ReplicatedStorage").Events.BuyEgg:InvokeServer(_G.EggsSelected,"Buy3")
                    end
                end
            end
        end)
local Teleport = main:CreateCategory("Teleport")
        local TS = Teleport:CreateSection("Teleport Stuff")
            local TeleportTable = {}    
            for i,v in pairs(game:GetService("Workspace").MainMap.Portals.TeleportSpots:GetChildren()) do
                table.insert(TeleportTable, v.Name)
            end
            TS:Create(
                "DropDown",
                "Choose a Location", 
                function(current)
                    print("Selected to:", current)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").MainMap.Portals.TeleportSpots[current].CFrame
                end,
                {
                    options = TeleportTable,
                    -- Optional
                    default = "Choose a Location",
                    search = false
                }
            )
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
                        "UPDATE2",
                        "3KMEMBERS",
                        "TOFU",
                        "Icey",
                        "CDTV",
                        "TheCrewRox",
                    }
                    for i,v in pairs(codes) do
                        game:GetService("ReplicatedStorage").Events.RedeemCode:InvokeServer(v)
                    end
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

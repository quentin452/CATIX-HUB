-- Anti AFK
local Virtual = game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
Virtual:CaptureController()
Virtual:ClickButton2(Vector2.new())
wait(2)
end)
--| Anti KICK |
local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function

if not protect then
protect = function(f) return f end
end

setreadonly(mt, false)
mt.__namecall = protect(function(self, ...)
local method = getnamecallmethod()
if method == "Kick" then
wait(9e9)
return
end
return old(self, ...)
end)
hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() wait(9e9)
end))
local player = game.Players.LocalPlayer local mouse = player:GetMouse() local input = game:GetService("UserInputService") local run = game:GetService("RunService") local tween = game:GetService("TweenService") local tweeninfo = TweenInfo.new local utility = {} local objects = {} do	function utility:Create(instance, properties, children)
		local object = Instance.new(instance)
		for i, v in pairs(properties or {}) do
			object[i] = v
		end
		for i, module in pairs(children or {}) do
			module.Parent = object
		end
		return object
	end
	function utility:Tween(instance, properties, duration, ...)
		tween:Create(instance, tweeninfo(duration, ...), properties):Play()
	end
	function utility:Wait()
		run.RenderStepped:Wait()
		return true
	end
	function utility:Find(table, value)
		for i, v in  pairs(table) do
			if v == value then
			end
		end
	end
	function utility:Sort(pattern, values)
		local new = {}
		pattern = pattern:lower()
		if pattern == "" then
			return values
		end
		for i, value in pairs(values) do
			if tostring(value):lower():find(pattern) then
				table.insert(new, value)
			end
		end
		return new
		end
	function utility:Pop(object, shrink)
		local clone = object:Clone()
		clone.AnchorPoint = Vector2.new(0.5, 0.5)
		clone.Size = clone.Size - UDim2.new(0, shrink, 0, shrink)
		clone.Position = UDim2.new(0.5, 0, 0.5, 0)
		clone.Parent = object
		clone:ClearAllChildren()
		object.ImageTransparency = 1
		utility:Tween(clone, {Size = object.Size}, 0.2)
	spawn(function()
			wait(0.2)
			object.ImageTransparency = 0
			clone:Destroy()
		end)
		return clone
	end
	function utility:InitializeKeybind()
		self.keybinds = {}
		self.ended = {}
		input.InputBegan:Connect(function(key)
			if self.keybinds[key.KeyCode] then
				for i, bind in pairs(self.keybinds[key.KeyCode]) do
					bind()
				end
			end
		end)
		input.InputEnded:Connect(function(key)
			if key.UserInputType == Enum.UserInputType.MouseButton1 then
				for i, callback in pairs(self.ended) do
					callback()
				end
			end
		end)
	end
	function utility:BindToKey(key, callback)
		self.keybinds[key] = self.keybinds[key] or {}
		table.insert(self.keybinds[key], callback)
		return {
			UnBind = function()
				for i, bind in pairs(self.keybinds[key]) do
					if bind == callback then
						table.remove(self.keybinds[key], i)
					end
				end
			end
		}
	end
	function utility:KeyPressed()
		local key = input.InputBegan:Wait()
		while key.UserInputType ~= Enum.UserInputType.Keyboard	 do
			key = input.InputBegan:Wait()
		end
		wait()
		return key
	end
	function utility:DraggingEnabled(frame, parent)
		parent = parent or frame
		local dragging = false
		local dragInput, mousePos, framePos
		frame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				mousePos = input.Position
				framePos = parent.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
		frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				dragInput = input
			end
		end)
		input.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				local delta = input.Position - mousePos
				parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
			end
		end)
	end
	function utility:DraggingEnded(callback)
		table.insert(self.ended, callback)
	end
end
local library = {} 
local page = {}
local section = {}
do
	library.__index = library
	page.__index = page
	section.__index = section
	function library.new(title, icon)
		local container = utility:Create("ScreenGui", {
			Name = title,
			Parent = game.CoreGui
		}, {
		
		utility:Create("ImageLabel", {
				Name = "Main",
				BackgroundTransparency = 1,
				Position = UDim2.new(0.25, 0, 0.052435593, 0),
				Size = UDim2.new(0, 511, 0, 428),
				Image = "rbxassetid://4641149554",
				ImageColor3 = Color3.fromRGB(10, 10, 10),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(4, 4, 296, 296)
				
			}, {
				utility:Create("ImageLabel", {
					Name = "Glow",
					BackgroundTransparency = 1,
					Position = UDim2.new(0, -15, 0, -15),
					Size = UDim2.new(1, 30, 1, 30),
					ZIndex = 0,
					Image = "rbxassetid://5028857084",
					ImageColor3 = Color3.fromRGB(20, 20, 20),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(24, 24, 276, 276)
				}),
				utility:Create("ImageLabel", {
					Name = "Pages",
					BackgroundTransparency = 1,
					ClipsDescendants = true,
					Position = UDim2.new(0, 0, 0, 38),
					Size = UDim2.new(0, 126, 1, -38),
					ZIndex = 3,
					Image = "rbxassetid://5012534273",
					ImageColor3 = Color3.fromRGB(14, 14, 14),
					ScaleType = Enum.ScaleType.Slice,
				}, {
					utility:Create("ScrollingFrame", {
						Name = "Pages_Container",
						Active = true,
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 0, 0, 10),
						Size = UDim2.new(1, 0, 1, -20),
						CanvasSize = UDim2.new(0, 0, 0, 314),
						ScrollBarThickness = 0
					}, {
						utility:Create("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							Padding = UDim.new(0, 10)
						})
					})
				}),
				utility:Create("ImageLabel", {
					Name = "TopBar",
					BackgroundTransparency = 1,
					ClipsDescendants = true,
					Size = UDim2.new(1, 0, 0, 38),
					ZIndex = 5,
					Image = "rbxassetid://4595286933",
					ImageColor3 = Color3.fromRGB(255, 0, 0),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(4, 4, 296, 296)
					
		     		}, {
					utility:Create("TextLabel", {
						Name = "Title",
						AnchorPoint = Vector2.new(0, 0.5),
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 12, 0, 19),
						Size = UDim2.new(1, -46, 0, 16),
						ZIndex = 5,
						Font = Enum.Font.FredokaOne,
						Text = title,
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 14,
						TextXAlignment = Enum.TextXAlignment.Left
					})
				})
			})
		})
		utility:InitializeKeybind()
		utility:DraggingEnabled(container.Main.TopBar, container.Main)
		
		return setmetatable({
			container = container,
			pagesContainer = container.Main.Pages.Pages_Container,
			pages = {}
		}, library)
		end
	function page.new(library, title, icon)
		local button = utility:Create("TextButton", {
			Name = title,
			Parent = library.pagesContainer,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 24),
			ZIndex = 3,
			AutoButtonColor = false,
			Font = Enum.Font.FredokaOne,
			Text = "",
			TextSize = 14
		}, {
			utility:Create("TextLabel", {
				Name = "Title",
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 40, 0.5, 0),
				Size = UDim2.new(0, 76, 1, 0),
				ZIndex = 3,
				Font = Enum.Font.FredokaOne,
				Text = title,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 12,
				TextTransparency = 0.7,
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			icon and utility:Create("ImageLabel", {
				Name = "Icon", 
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 12, 0.5, 0),
				Size = UDim2.new(0, 16, 0, 16),
				ZIndex = 3,
				Image = "rbxassetid://" .. tostring(icon),
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				ImageTransparency = 0.7
			}) or {}
		})
		local container = utility:Create("ScrollingFrame", {
			Name = title,
			Parent = library.container.Main,
			Active = true,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(0, 134, 0, 46),
			Size = UDim2.new(1, -142, 1, -76),
			CanvasSize = UDim2.new(0, 0, 0, 466),
			ScrollBarThickness = 3,
			ScrollBarImageColor3 = Color3.fromRGB(14, 14, 14),
			Visible = false
		}, {
			utility:Create("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 10)
			})
		})
		return setmetatable({
			library = library,
			container = container,
			button = button,
			sections = {}
		}, page)
	end
	function section.new(page, title)
		local container = utility:Create("ImageLabel", {
			Name = title,
			Parent = page.container,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, -10, 0, 28),
			ZIndex = 2,
			Image = "rbxassetid://5028857472",
			ImageColor3 = Color3.fromRGB(20, 20, 20),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(4, 4, 296, 296),
			ClipsDescendants = true
		}, {
			utility:Create("Frame", {
				Name = "Container",
				Active = true,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(0, 8, 0, 8),
				Size = UDim2.new(1, -16, 1, -16)
			}, {
				utility:Create("TextLabel", {
					Name = "Title",
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 0, 20),
					ZIndex = 2,
					Font = Enum.Font.FredokaOne,
					Text = title,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 12,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextTransparency = 1
				}),
				utility:Create("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 4)
				})
			})
		})
		return setmetatable({
			page = page,
			container = container.Container,
			colorpickers = {},
			modules = {},
			binds = {},
			lists = {},
		}, section) 
	end
	function library:addPage(...)
		local page = page.new(self, ...)
		local button = page.button
		table.insert(self.pages, page)
		button.MouseButton1Click:Connect(function()
			self:SelectPage(page, true)
		end)
		return page
	end
	function page:addSection(...)
		local section = section.new(self, ...)
		table.insert(self.sections, section)
		return section
	end
	function library:setTheme(theme, color3)
		themes = color3
		for property, objects in pairs(objects) do
			for i, object in pairs(objects) do
				if not object.Parent or (object.Name == "Button" and object.Parent.Name == "ColorPicker") then
					objects[i] = nil
				else
					object[property] = color3
				end
			end
		end
		end
	function library:toggle()
		if self.toggling then
			return
			end
		self.toggling = true
		local container = self.container.Main
		local topbar = container.TopBar
		if self.position then
			utility:Tween(container, {
				Size = UDim2.new(0, 511, 0, 428),
				Position = self.position
			}, 0.2)
			wait(0.2)
			utility:Tween(topbar, {Size = UDim2.new(1, 0, 0, 38)}, 0.2)
			wait(0.2)
			container.ClipsDescendants = false
			self.position = nil
		else
			self.position = container.Position
			container.ClipsDescendants = true
			utility:Tween(topbar, {Size = UDim2.new(1, 0, 1, 0)}, 0.2)
			wait(0.2)
			utility:Tween(container, {
				Size = UDim2.new(0, 511, 0, 0),
				Position = self.position + UDim2.new(0, 0, 0, 428)
			}, 0.2)
			wait(0.2)
		end
		self.toggling = false
	end
	function library:Notify(title, text, callback)
		if self.activeNotification then
			self.activeNotification = self.activeNotification()
		end
		local notification = utility:Create("ImageLabel", {
			Name = "Notification",
			Parent = self.container,
			BackgroundTransparency = 1,
			Size = UDim2.new(0, 200, 0, 60),
			Image = "rbxassetid://5028857472",
			ImageColor3 = Color3.fromRGB(10, 10, 10),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(4, 4, 296, 296),
			ZIndex = 3,
			ClipsDescendants = true
		}, {
			utility:Create("ImageLabel", {
				Name = "Flash",
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Image = "rbxassetid://4641149554",
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				ZIndex = 5
			}),
			utility:Create("ImageLabel", {
				Name = "Glow",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, -15, 0, -15),
				Size = UDim2.new(1, 30, 1, 30),
				ZIndex = 2,
				Image = "rbxassetid://5028857084",
				ImageColor3 = Color3.fromRGB(20, 20, 20),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(24, 24, 276, 276)
			}),
			utility:Create("TextLabel", {
				Name = "Title",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0, 8),
				Size = UDim2.new(1, -40, 0, 16),
				ZIndex = 4,
				Font = Enum.Font.FredokaOne,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 14.000,
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			utility:Create("TextLabel", {
				Name = "Text",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 1, -24),
				Size = UDim2.new(1, -40, 0, 16),
				ZIndex = 4,
				Font = Enum.Font.FredokaOne,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 12.000,
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			utility:Create("ImageButton", {
				Name = "Accept",
				BackgroundTransparency = 1,
				Position = UDim2.new(1, -26, 0, 8),
				Size = UDim2.new(0, 16, 0, 16),
				Image = "rbxassetid://5012538259",
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				ZIndex = 4
			}),
			utility:Create("ImageButton", {
				Name = "Decline",
				BackgroundTransparency = 1,
				Position = UDim2.new(1, -26, 1, -24),
				Size = UDim2.new(0, 16, 0, 16),
				Image = "rbxassetid://5012538583",
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				ZIndex = 4
			})
		})
		utility:DraggingEnabled(notification)
		title = title or "Notification"
		text = text or ""
		notification.Title.Text = title
		notification.Text.Text = text
		local padding = 10
		local textSize = game:GetService("TextService"):GetTextSize(text, 12, Enum.Font.FredokaOne, Vector2.new(math.huge, 16))
		notification.Position = library.lastNotification or UDim2.new(0, padding, 1, -(notification.AbsoluteSize.Y + padding))
		notification.Size = UDim2.new(0, 0, 0, 60)
		utility:Tween(notification, {Size = UDim2.new(0, textSize.X + 70, 0, 60)}, 0.2)
		wait(0.2)
		notification.ClipsDescendants = false
		utility:Tween(notification.Flash, {
			Size = UDim2.new(0, 0, 0, 60),
			Position = UDim2.new(1, 0, 0, 0)
		}, 0.2)
		local active = true
		local close = function()
			if not active then
				return
			end
	active = false
			notification.ClipsDescendants = true
			library.lastNotification = notification.Position
			notification.Flash.Position = UDim2.new(0, 0, 0, 0)
			utility:Tween(notification.Flash, {Size = UDim2.new(1, 0, 1, 0)}, 0.2)
			wait(0.2)
			utility:Tween(notification, {
				Size = UDim2.new(0, 0, 0, 60),
				Position = notification.Position + UDim2.new(0, textSize.X + 70, 0, 0)
			}, 0.2)
			wait(0.2)
			notification:Destroy()
		end
		self.activeNotification = close
		notification.Accept.MouseButton1Click:Connect(function()
			if not active then 
				return
			end
			if callback then
				callback(true)
			end
			close()
		end)
		notification.Decline.MouseButton1Click:Connect(function()
			if not active then 
				return
			end
			if callback then
				callback(false)
			end
			close()
		end)
	end
	function section:addButton(title, callback)
		local button = utility:Create("ImageButton", {
			Name = "Button",
			Parent = self.container,
			BackgroundTransparency = 1,
			BorderSizePixel = 1,
			Size = UDim2.new(1, 0, 0, 25),
			ZIndex = 2,
			Image = "rbxassetid://5028857472",
			ImageColor3 = Color3.fromRGB(0, 0, 0),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(2, 2, 298, 298)
		}, {
			utility:Create("TextLabel", {
				Name = "Title",
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 3,
				Font = Enum.Font.FredokaOne,
				Text = title,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 14,
				TextTransparency = 0
			})
		})
		table.insert(self.modules, button)
		local text = button.Title
		local debounce
		button.MouseButton1Click:Connect(function()
			if debounce then
				return
			end
			utility:Pop(button, 10)
			debounce = true
			text.TextSize = 0
			utility:Tween(button.Title, {TextSize = 14}, 0.2)
			wait(0.2)
			utility:Tween(button.Title, {TextSize = 12}, 0.2)
			if callback then
				callback(function(...)
					self:updateButton(button, ...)
				end)
			end
			debounce = false
		end)
		return button
	end
	function section:addToggle(title, default, callback)
		local toggle = utility:Create("ImageButton", {
			Name = "Toggle",
			Parent = self.container,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 27.5),
			ZIndex = 2,
			Image = "rbxassetid://5028857472",
			ImageColor3 = Color3.fromRGB(0, 0, 0),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(2, 2, 298, 298)
		},{
			utility:Create("TextLabel", {
				Name = "Title",
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0.5, 1),
				Size = UDim2.new(0.5, 0, 1, 0),
				ZIndex = 3,
				Font = Enum.Font.FredokaOne,
				Text = title,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 14,
				TextTransparency = 0,
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			utility:Create("ImageLabel", {
				Name = "Button",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(1, -50, 0.5, -8),
				Size = UDim2.new(0, 40, 0, 17),
				ZIndex = 2,
				Image = "rbxassetid://5028857472",
				ImageColor3 = Color3.fromRGB(55, 55, 55),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(2, 2, 298, 298)
			}, {
				utility:Create("ImageLabel", {
					Name = "Frame",
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 2, 0.5, -6),
					Size = UDim2.new(1, -22, 1, -4),
					ZIndex = 2,
					Image = "rbxassetid://5028857472",
					ImageColor3 = Color3.fromRGB(1, 251, 255),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2, 2, 298, 298)
				})
			})
		})
		table.insert(self.modules, toggle)
		local active = default
		self:updateToggle(toggle, nil, active)
		toggle.MouseButton1Click:Connect(function()
			active = not active
			self:updateToggle(toggle, nil, active)
			if callback then
				callback(active, function(...)
					self:updateToggle(toggle, ...)
				end)
			end
		end)
		return toggle
	end
	function section:addTextbox(title, default, callback)
		local textbox = utility:Create("ImageButton", {
			Name = "Textbox",
			Parent = self.container,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 25),
			ZIndex = 2,
			Image = "rbxassetid://5028857472",
			ImageColor3 = Color3.fromRGB(14, 14, 14),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(2, 2, 298, 298)
		}, {
			utility:Create("TextLabel", {
				Name = "Title",
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0.5, 1),
				Size = UDim2.new(0.5, 0, 1, 0),
				ZIndex = 3,
				Font = Enum.Font.FredokaOne,
				Text = title,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 12,
				TextTransparency = 0.10000000149012,
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			utility:Create("ImageLabel", {
				Name = "Button",
				BackgroundTransparency = 1,
				Position = UDim2.new(1, -110, 0.5, -8),
				Size = UDim2.new(0, 100, 0, 16),
				ZIndex = 2,
				Image = "rbxassetid://5028857472",
				ImageColor3 = Color3.fromRGB(20, 20, 20),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(2, 2, 298, 298)
			}, {
				utility:Create("TextBox", {
					Name = "Textbox", 
					BackgroundTransparency = 1,
					TextTruncate = Enum.TextTruncate.AtEnd,
					Position = UDim2.new(0, 5, 0, 0),
					Size = UDim2.new(1, -10, 1, 0),
					ZIndex = 3,
					Font = Enum.Font.FredokaOne,
					Text = default or "",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 11
				})
			})
		})
		table.insert(self.modules, textbox)
		local button = textbox.Button
		local input = button.Textbox
		textbox.MouseButton1Click:Connect(function()
			if textbox.Button.Size ~= UDim2.new(0, 100, 0, 16) then
				return
				end
			utility:Tween(textbox.Button, {
				Size = UDim2.new(0, 200, 0, 16),
				Position = UDim2.new(1, -210, 0.5, -8)
			}, 0.2)
			wait()
			input.TextXAlignment = Enum.TextXAlignment.Left
			input:CaptureFocus()
		end)
		input:GetPropertyChangedSignal("Text"):Connect(function()
			if button.ImageTransparency == 0 and (button.Size == UDim2.new(0, 200, 0, 16) or button.Size == UDim2.new(0, 100, 0, 16)) then
				utility:Pop(button, 10)
			end
			if callback then
				callback(input.Text, nil, function(...)
					self:updateTextbox(textbox, ...)
				end)
			end
		end)
		input.FocusLost:Connect(function()
			input.TextXAlignment = Enum.TextXAlignment.Center
			utility:Tween(textbox.Button, {
				Size = UDim2.new(0, 100, 0, 16),
				Position = UDim2.new(1, -110, 0.5, -8)
			}, 0.2)
			if callback then
				callback(input.Text, true, function(...)
					self:updateTextbox(textbox, ...)
				end)
			end
		end)
		return textbox
	end
	function section:addKeybind(title, default, callback, changedCallback)
		local keybind = utility:Create("ImageButton", {
			Name = "Keybind",
			Parent = self.container,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 20),
			ZIndex = 2,
			Image = "rbxassetid://5028857472",
			ImageColor3 = Color3.fromRGB(1, 1, 1),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(2, 2, 298, 298)
		}, {
			utility:Create("TextLabel", {
				Name = "Title",
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0.5, 1),
				Size = UDim2.new(1, 0, 1, 0),
				ZIndex = 3,
				Font = Enum.Font.FredokaOne,
				Text = title,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 14,
				TextTransparency = 0.10000000149012,
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			utility:Create("ImageLabel", {
				Name = "Button",
				BackgroundTransparency = 1,
				Position = UDim2.new(1, -110, 0.5, -8),
				Size = UDim2.new(0, 100, 0, 16),
				ZIndex = 2,
				Image = "rbxassetid://5028857472",
				ImageColor3 = Color3.fromRGB(20, 20, 20),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(2, 2, 298, 298)
			}, {
				utility:Create("TextLabel", {
					Name = "Text",
					BackgroundTransparency = 1,
					ClipsDescendants = true,
					Size = UDim2.new(1, 0, 1, 0),
					ZIndex = 3,
					Font = Enum.Font.FredokaOne,
					Text = default and default.Name or "None",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 14
				})
			})
		})
		table.insert(self.modules, keybind)
		local text = keybind.Button.Text
		local button = keybind.Button
		local animate = function()
			if button.ImageTransparency == 0 then
				utility:Pop(button, 10)
			end
end		
		self.binds[keybind] = {callback = function()
			animate()
			
			if callback then
				callback(function(...)
					self:updateKeybind(keybind, ...)
				end)
			end
		end}
		if default and callback then
			self:updateKeybind(keybind, nil, default)
		end
		keybind.MouseButton1Click:Connect(function()
			animate()
			if self.binds[keybind].connection then
				return self:updateKeybind(keybind)
			end
			if text.Text == "None" then
				text.Text = "..."
				local key = utility:KeyPressed()
				self:updateKeybind(keybind, nil, key.KeyCode)
				animate()
				if changedCallback then
					changedCallback(key, function(...)
						self:updateKeybind(keybind, ...)
					end)
				end
			end
		end)
		return keybind
	end
	function section:addColorPicker(title, default, callback)
		local colorpicker = utility:Create("ImageButton", {
			Name = "ColorPicker",
			Parent = self.container,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 25),
			ZIndex = 2,
			Image = "rbxassetid://5028857472",
			ImageColor3 = Color3.fromRGB(14, 14, 14),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(2, 2, 298, 298)
		},{
			utility:Create("TextLabel", {
				Name = "Title",
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0.5, 1),
				Size = UDim2.new(0.5, 0, 1, 0),
				ZIndex = 3,
				Font = Enum.Font.FredokaOne,
				Text = title,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 14,
				TextTransparency = 0.10000000149012,
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			utility:Create("ImageButton", {
				Name = "Button",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(1, -50, 0.5, -7),
				Size = UDim2.new(0, 40, 0, 14),
				ZIndex = 2,
				Image = "rbxassetid://5028857472",
				ImageColor3 = Color3.fromRGB(255, 255, 255),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(2, 2, 298, 298)
			})
		})
		local tab = utility:Create("ImageLabel", {
			Name = "ColorPicker",
			Parent = self.page.library.container,
			BackgroundTransparency = 1,
			Position = UDim2.new(0.75, 0, 0.400000006, 0),
			Selectable = true,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(0, 162, 0, 169),
			Image = "rbxassetid://5028857472",
			ImageColor3 = Color3.fromRGB(10, 10, 10),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(2, 2, 298, 298),
			Visible = false,
		}, {
			utility:Create("ImageLabel", {
				Name = "Glow",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, -15, 0, -15),
				Size = UDim2.new(1, 30, 1, 30),
				ZIndex = 0,
				Image = "rbxassetid://5028857084",
				ImageColor3 = Color3.fromRGB(20, 20, 20),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(22, 22, 278, 278)
			}),
			utility:Create("TextLabel", {
				Name = "Title",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0, 8),
				Size = UDim2.new(1, -40, 0, 16),
				ZIndex = 2,
				Font = Enum.Font.FredokaOne,
				Text = title,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			utility:Create("ImageButton", {
				Name = "Close",
				BackgroundTransparency = 1,
				Position = UDim2.new(1, -26, 0, 8),
				Size = UDim2.new(0, 16, 0, 16),
				ZIndex = 2,
				Image = "rbxassetid://5012538583",
				ImageColor3 = Color3.fromRGB(255, 255, 255)
			}), 
			utility:Create("Frame", {
				Name = "Container",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 8, 0, 32),
				Size = UDim2.new(1, -18, 1, -40)
			}, {
				utility:Create("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 10)
				}),
				utility:Create("ImageButton", {
					Name = "Canvas",
					BackgroundTransparency = 1,
					BorderColor3 = Color3.fromRGB(20, 20, 20),
					Size = UDim2.new(1, 0, 0, 70),
					AutoButtonColor = false,
					Image = "rbxassetid://5108535320",
					ImageColor3 = Color3.fromRGB(255, 0, 0),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2, 2, 298, 298)
				}, {
					utility:Create("ImageLabel", {
						Name = "White_Overlay",
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 60),
						Image = "rbxassetid://5107152351",
						SliceCenter = Rect.new(2, 2, 298, 298)
					}),
					utility:Create("ImageLabel", {
						Name = "Black_Overlay",
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 60),
						Image = "rbxassetid://5107152095",
						SliceCenter = Rect.new(2, 2, 298, 298)
					}),
					utility:Create("ImageLabel", {
						Name = "Cursor",
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1.000,
						Size = UDim2.new(0, 10, 0, 10),
						Position = UDim2.new(0, 0, 0, 0),
						Image = "rbxassetid://5100115962",
						SliceCenter = Rect.new(2, 2, 298, 298)
					})
				}),
				utility:Create("ImageButton", {
					Name = "Color",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 0, 0, 4),
					Selectable = false,
					Size = UDim2.new(1, 0, 0, 16),
					ZIndex = 2,
					AutoButtonColor = false,
					Image = "rbxassetid://5028857472",
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2, 2, 298, 298)
				}, {
					utility:Create("Frame", {
						Name = "Select",
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BorderSizePixel = 1,
						Position = UDim2.new(1, 0, 0, 0),
						Size = UDim2.new(0, 2, 1, 0),
						ZIndex = 2
					}),
					utility:Create("UIGradient", { 
						Color = ColorSequence.new({
							ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), 
							ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)), 
							ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)), 
							ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 255)), 
							ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 0, 255)), 
							ColorSequenceKeypoint.new(0.82, Color3.fromRGB(255, 0, 255)), 
							ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0))
						})
					})
				}),
				utility:Create("Frame", {
					Name = "Inputs",
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 10, 0, 158),
					Size = UDim2.new(1, 0, 0, 16)
				}, {
					utility:Create("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 6)
					}),
					utility:Create("ImageLabel", {
						Name = "R",
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = UDim2.new(0.305, 0, 1, 0),
						ZIndex = 2,
						Image = "rbxassetid://5028857472",
						ImageColor3 = Color3.fromRGB(14, 14, 14),
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = Rect.new(2, 2, 298, 298)
					}, {
						utility:Create("TextLabel", {
							Name = "Text",
							BackgroundTransparency = 1,
							Size = UDim2.new(0.400000006, 0, 1, 0),
							ZIndex = 2,
							Font = Enum.Font.FredokaOne,
							Text = "R:",
							TextColor3 = Color3.fromRGB(255, 255, 255),
							TextSize = 10.000
						}),
						utility:Create("TextBox", {
							Name = "Textbox",
							BackgroundTransparency = 1,
							Position = UDim2.new(0.300000012, 0, 0, 0),
							Size = UDim2.new(0.600000024, 0, 1, 0),
							ZIndex = 2,
							Font = Enum.Font.FredokaOne,
							PlaceholderColor3 = Color3.fromRGB(14, 14, 14),
							Text = "255",
							TextColor3 = Color3.fromRGB(255, 255, 255),
							TextSize = 10.000
						})
					}),
					utility:Create("ImageLabel", {
						Name = "G",
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = UDim2.new(0.305, 0, 1, 0),
						ZIndex = 2,
						Image = "rbxassetid://5028857472",
						ImageColor3 = Color3.fromRGB(14, 14, 14),
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = Rect.new(2, 2, 298, 298)
					}, {
						utility:Create("TextLabel", {
							Name = "Text",
							BackgroundTransparency = 1,
							ZIndex = 2,
							Size = UDim2.new(0.400000006, 0, 1, 0),
							Font = Enum.Font.FredokaOne,
							Text = "G:",
							TextColor3 = Color3.fromRGB(255, 255, 255),
							TextSize = 10.000
						}),
						utility:Create("TextBox", {
							Name = "Textbox",
							BackgroundTransparency = 1,
							Position = UDim2.new(0.300000012, 0, 0, 0),
							Size = UDim2.new(0.600000024, 0, 1, 0),
							ZIndex = 2,
							Font = Enum.Font.FredokaOne,
							Text = "255",
							TextColor3 = Color3.fromRGB(255, 255, 255),
							TextSize = 10.000
						})
					}),
					utility:Create("ImageLabel", {
						Name = "B",
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Size = UDim2.new(0.305, 0, 1, 0),
						ZIndex = 2,
						Image = "rbxassetid://5028857472",
						ImageColor3 = Color3.fromRGB(14, 14, 14),
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = Rect.new(2, 2, 298, 298)
					}, {
						utility:Create("TextLabel", {
							Name = "Text",
							BackgroundTransparency = 1,
							Size = UDim2.new(0.400000006, 0, 1, 0),
							ZIndex = 2,
							Font = Enum.Font.FredokaOne,
							Text = "B:",
							TextColor3 = Color3.fromRGB(255, 255, 255),
							TextSize = 10.000
						}),
						utility:Create("TextBox", {
							Name = "Textbox",
							BackgroundTransparency = 1,
							Position = UDim2.new(0.300000012, 0, 0, 0),
							Size = UDim2.new(0.600000024, 0, 1, 0),
							ZIndex = 2,
							Font = Enum.Font.FredokaOne,
							Text = "255",
							TextColor3 = Color3.fromRGB(255, 255, 255),
							TextSize = 10.000
						})
					}),
				}),
				utility:Create("ImageButton", {
					Name = "Button",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 0, 20),
					ZIndex = 2,
					Image = "rbxassetid://5028857472",
					ImageColor3 = Color3.fromRGB(14, 14, 14),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2, 2, 298, 298)
				}, {
					utility:Create("TextLabel", {
						Name = "Text",
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 1, 0),
						ZIndex = 3,
						Font = Enum.Font.FredokaOne,
						Text = "Submit",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextSize = 11.000
					})
				})
			})
		})
		utility:DraggingEnabled(tab)
		table.insert(self.modules, colorpicker)
		local allowed = {
			[""] = true
		}
		local canvas = tab.Container.Canvas
		local color = tab.Container.Color
		local canvasSize, canvasPosition = canvas.AbsoluteSize, canvas.AbsolutePosition
		local colorSize, colorPosition = color.AbsoluteSize, color.AbsolutePosition
		local draggingColor, draggingCanvas
		local color3 = default or Color3.fromRGB(255, 255, 255)
		local hue, sat, brightness = 0, 0, 1
		local rgb = {
			r = 255,
			g = 255,
			b = 255
		}
		self.colorpickers[colorpicker] = {
			tab = tab,
			callback = function(prop, value)
				rgb[prop] = value
				hue, sat, brightness = Color3.toHSV(Color3.fromRGB(rgb.r, rgb.g, rgb.b))
			end
		}
		local callback = function(value)
			if callback then
				callback(value, function(...)
					self:updateColorPicker(colorpicker, ...)
				end)
			end
		end
		utility:DraggingEnded(function()
			draggingColor, draggingCanvas = false, false
		end)
		if default then
		    self:updateColorPicker(colorpicker, nil, default)
			hue, sat, brightness = Color3.toHSV(default)
			default = Color3.fromHSV(hue, sat, brightness)
			for i, prop in pairs({"r", "g", "b"}) do
				rgb[prop] = default[prop:upper()] * 255
			end
		end
		for i, container in pairs(tab.Container.Inputs:GetChildren()) do
			if container:IsA("ImageLabel") then
				local textbox = container.Textbox
				local focused
				textbox.Focused:Connect(function()
					focused = true
				end)
				textbox.FocusLost:Connect(function()
					focused = false
					
					if not tonumber(textbox.Text) then
						textbox.Text = math.floor(rgb[container.Name:lower()])
					end
				end)
				textbox:GetPropertyChangedSignal("Text"):Connect(function()
					local text = textbox.Text
					if not allowed[text] and not tonumber(text) then
						textbox.Text = text:sub(1, #text - 1)
					elseif focused and not allowed[text] then
						rgb[container.Name:lower()] = math.clamp(tonumber(textbox.Text), 0, 255)
						local color3 = Color3.fromRGB(rgb.r, rgb.g, rgb.b)
						hue, sat, brightness = Color3.toHSV(color3)
						self:updateColorPicker(colorpicker, nil, color3)
						callback(color3)
					end
				end)
			end
		end
		canvas.MouseButton1Down:Connect(function()
			draggingCanvas = true
			while draggingCanvas do
			    local x, y = mouse.X, mouse.Y
				sat = math.clamp((x - canvasPosition.X) / canvasSize.X, 0, 1)
				brightness = 1 - math.clamp((y - canvasPosition.Y) / canvasSize.Y, 0, 1)
				color3 = Color3.fromHSV(hue, sat, brightness)
				for i, prop in pairs({"r", "g", "b"}) do
					rgb[prop] = color3[prop:upper()] * 255
				end
				self:updateColorPicker(colorpicker, nil, {hue, sat, brightness})
				utility:Tween(canvas.Cursor, {Position = UDim2.new(sat, 0, 1 - brightness, 0)}, 0.1) 
				callback(color3)
				utility:Wait()
			end
		end)
		color.MouseButton1Down:Connect(function()
			draggingColor = true
			while draggingColor do
				hue = 1 - math.clamp(1 - ((mouse.X - colorPosition.X) / colorSize.X), 0, 1)
				color3 = Color3.fromHSV(hue, sat, brightness)
				for i, prop in pairs({"r", "g", "b"}) do
					rgb[prop] = color3[prop:upper()] * 255
				end
				local x = hue 
				self:updateColorPicker(colorpicker, nil, {hue, sat, brightness}) 
				utility:Tween(tab.Container.Color.Select, {Position = UDim2.new(x, 0, 0, 0)}, 0.1) 
				callback(color3)
				utility:Wait()
			end
		end)
		local button = colorpicker.Button
		local toggle, debounce, animate
		lastColor = Color3.fromHSV(hue, sat, brightness)
		animate = function(visible, overwrite)
			if overwrite then
				if not toggle then
					return
					end
				if debounce then
					while debounce do
						utility:Wait()
					end
				end
			elseif not overwrite then
				if debounce then 
					return 
				end
				if button.ImageTransparency == 0 then
					utility:Pop(button, 10)
				end
			end
			toggle = visible
			debounce = true
			if visible then
				if self.page.library.activePicker and self.page.library.activePicker ~= animate then
					self.page.library.activePicker(nil, true)
				end
				self.page.library.activePicker = animate
				lastColor = Color3.fromHSV(hue, sat, brightness)
				local x1, x2 = button.AbsoluteSize.X / 2, 162
				local px, py = button.AbsolutePosition.X, button.AbsolutePosition.Y
				tab.ClipsDescendants = true
				tab.Visible = true
				tab.Size = UDim2.new(0, 0, 0, 0)
				tab.Position = UDim2.new(0, x1 + x2 + px, 0, py)
				utility:Tween(tab, {Size = UDim2.new(0, 162, 0, 169)}, 0.2)
				wait(0.2)
				tab.ClipsDescendants = false
				canvasSize, canvasPosition = canvas.AbsoluteSize, canvas.AbsolutePosition
				colorSize, colorPosition = color.AbsoluteSize, color.AbsolutePosition
			else
				utility:Tween(tab, {Size = UDim2.new(0, 0, 0, 0)}, 0.2)
				tab.ClipsDescendants = true
				
				wait(0.2)
				tab.Visible = false
			end
			debounce = false
		end
		local toggleTab = function()
			animate(not toggle)
		end
		button.MouseButton1Click:Connect(toggleTab)
		colorpicker.MouseButton1Click:Connect(toggleTab)
		tab.Container.Button.MouseButton1Click:Connect(function()
			animate()
		end)
		tab.Close.MouseButton1Click:Connect(function()
			self:updateColorPicker(colorpicker, nil, lastColor)
			animate()
		end)
		return colorpicker
	end
	function section:addSlider(title, default, min, max, callback)
		local slider = utility:Create("ImageButton", {
			Name = "Slider",
			Parent = self.container,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(0.292817682, 0, 0.299145311, 0),
			Size = UDim2.new(1, 0, 0, 45),
			ZIndex = 2,
			Image = "rbxassetid://5028857472",
			ImageColor3 = Color3.fromRGB(14, 14, 14),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(2, 2, 298, 298)
		}, {
			utility:Create("TextLabel", {
				Name = "Title",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0, 6),
				Size = UDim2.new(0.5, 0, 0, 16),
				ZIndex = 3,
				Font = Enum.Font.FredokaOne,
				Text = title,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 14,
				TextTransparency = 0.10000000149012,
				TextXAlignment = Enum.TextXAlignment.Left
			}),
			utility:Create("TextBox", {
				Name = "TextBox",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Position = UDim2.new(1, -30, 0, 6),
				Size = UDim2.new(0, 20, 0, 16),
				ZIndex = 3,
				Font = Enum.Font.FredokaOne,
				Text = default or min,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Right
			}),
			utility:Create("TextLabel", {
				Name = "Slider",
				BackgroundTransparency = 1,
				Position = UDim2.new(0, 10, 0, 28),
				Size = UDim2.new(1, -20, 0, 16),
				ZIndex = 3,
				Text = "",
			}, {
				utility:Create("ImageLabel", {
					Name = "Bar",
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 0, 0.5, 0),
					Size = UDim2.new(1, 0, 0, 4),
					ZIndex = 3,
					Image = "rbxassetid://5028857472",
					ImageColor3 = Color3.fromRGB(20, 20, 20),
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(2, 2, 298, 298)
				}, {
					utility:Create("ImageLabel", {
						Name = "Fill",
						BackgroundTransparency = 1,
						Size = UDim2.new(0.8, 0, 1, 0),
						ZIndex = 3,
						Image = "rbxassetid://5028857472",
						ImageColor3 = Color3.fromRGB(255, 255, 255),
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = Rect.new(2, 2, 298, 298)
					}, {
						utility:Create("ImageLabel", {
							Name = "Circle",
							AnchorPoint = Vector2.new(0.5, 0.5),
							BackgroundTransparency = 1,
							ImageTransparency = 1.000,
							ImageColor3 = Color3.fromRGB(255, 255, 255),
							Position = UDim2.new(1, 0, 0.5, 0),
							Size = UDim2.new(0, 10, 0, 10),
							ZIndex = 3,
							Image = "rbxassetid://4608020054"
						})
					})
				})
			})
		})
		table.insert(self.modules, slider)
		local allowed = {
			[""] = true,
			["-"] = true
		}
		local textbox = slider.TextBox
		local circle = slider.Slider.Bar.Fill.Circle
		local value = default or min
		local dragging, last
		local callback = function(value)
			if callback then
				callback(value, function(...)
					self:updateSlider(slider, ...)
				end)
			end
		end
		self:updateSlider(slider, nil, value, min, max)
		utility:DraggingEnded(function()
			dragging = false
		end)
		slider.MouseButton1Down:Connect(function(input)
			dragging = true
			while dragging do
				utility:Tween(circle, {ImageTransparency = 0}, 0.1)
				value = self:updateSlider(slider, nil, nil, min, max, value)
				callback(value)
				utility:Wait()
			end
			wait(0.5)
			utility:Tween(circle, {ImageTransparency = 1}, 0.2)
		end)
		textbox.FocusLost:Connect(function()
			if not tonumber(textbox.Text) then
				value = self:updateSlider(slider, nil, default or min, min, max)
				callback(value)
			end
		end)
		textbox:GetPropertyChangedSignal("Text"):Connect(function()
			local text = textbox.Text
			
			if not allowed[text] and not tonumber(text) then
				textbox.Text = text:sub(1, #text - 1)
			elseif not allowed[text] then	
				value = self:updateSlider(slider, nil, tonumber(text) or value, min, max)
				callback(value)
			end
		end)
		return slider
	end
	function section:addDropdown(title, list, callback)
		local dropdown = utility:Create("Frame", {
			Name = "Dropdown",
			Parent = self.container,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, 25),
			ClipsDescendants = true
		}, {
			utility:Create("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 4)
			}),
			utility:Create("ImageLabel", {
				Name = "Search",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 25),
				ZIndex = 2,
				Image = "rbxassetid://5028857472",
				ImageColor3 = Color3.fromRGB(14, 14, 14),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(2, 2, 298, 298)
			}, {
				utility:Create("TextBox", {
					Name = "TextBox",
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundTransparency = 1,
					TextTruncate = Enum.TextTruncate.AtEnd,
					Position = UDim2.new(0, 10, 0.5, 1),
					Size = UDim2.new(1, -42, 1, 0),
					ZIndex = 3,
					Font = Enum.Font.FredokaOne,
					Text = title,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 14,
					TextTransparency = 0.10000000149012,
					TextXAlignment = Enum.TextXAlignment.Left
				}),
				utility:Create("ImageButton", {
					Name = "Button",
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Position = UDim2.new(1, -28, 0.5, -9),
					Size = UDim2.new(0, 18, 0, 18),
					ZIndex = 3,
					Image = "rbxassetid://5012539403",
					ImageColor3 = Color3.fromRGB(255, 255, 255),
					SliceCenter = Rect.new(2, 2, 298, 298)
				})
			}),
			utility:Create("ImageLabel", {
				Name = "List",
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, -34),
				ZIndex = 2,
				Image = "rbxassetid://5028857472",
				ImageColor3 = Color3.fromRGB(10, 10, 10),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(2, 2, 298, 298)
			}, {
				utility:Create("ScrollingFrame", {
					Name = "Frame",
					Active = true,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Position = UDim2.new(0, 4, 0, 4),
					Size = UDim2.new(1, -8, 1, -8),
					CanvasPosition = Vector2.new(0, 28),
					CanvasSize = UDim2.new(0, 0, 0, 120),
					ZIndex = 2,
					ScrollBarThickness = 3,
					ScrollBarImageColor3 = Color3.fromRGB(14, 14, 14)
				}, {
					utility:Create("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						Padding = UDim.new(0, 4)
					})
				})
			})
		})
		table.insert(self.modules, dropdown)
		local search = dropdown.Search
		local focused
		list = list or {}
		search.Button.MouseButton1Click:Connect(function()
			if search.Button.Rotation == 0 then
				self:updateDropdown(dropdown, nil, list, callback)
			else
				self:updateDropdown(dropdown, nil, nil, callback)
			end
		end)
		search.TextBox.Focused:Connect(function()
			if search.Button.Rotation == 0 then
				self:updateDropdown(dropdown, nil, list, callback)
				end
			focused = true
		end)
		search.TextBox.FocusLost:Connect(function()
			focused = false
		end)
		search.TextBox:GetPropertyChangedSignal("Text"):Connect(function()
			if focused then
				local list = utility:Sort(search.TextBox.Text, list)
				list = #list ~= 0 and list 
				self:updateDropdown(dropdown, nil, list, callback)
			end
		end)
		dropdown:GetPropertyChangedSignal("Size"):Connect(function()
			self:Resize()
		end)
		return dropdown
	end
	function library:SelectPage(page, toggle)
		if toggle and self.focusedPage == page then
			return
		end
		local button = page.button
			if toggle then
			button.Title.TextTransparency = 0
			button.Title.Font = Enum.Font.FredokaOne
			
			if button:FindFirstChild("Icon") then
				button.Icon.ImageTransparency = 0
			end
			local focusedPage = self.focusedPage
			self.focusedPage = page
			if focusedPage then
				self:SelectPage(focusedPage)
			end
			local existingSections = focusedPage and #focusedPage.sections or 0
			local sectionsRequired = #page.sections - existingSections
			page:Resize()
			for i, section in pairs(page.sections) do
				section.container.Parent.ImageTransparency = 0
			end
			if sectionsRequired < 0 then
				for i = existingSections, #page.sections + 1, -1 do
					local section = focusedPage.sections[i].container.Parent
					
					utility:Tween(section, {ImageTransparency = 1}, 0.1)
				end
			end
			wait(0.1)
			page.container.Visible = true
			if focusedPage then
				focusedPage.container.Visible = false
			end
			if sectionsRequired > 0 then
				for i = existingSections + 1, #page.sections do
					local section = page.sections[i].container.Parent
					section.ImageTransparency = 1
					utility:Tween(section, {ImageTransparency = 0}, 0.05)
				end
			end
			wait(0.05)
			for i, section in pairs(page.sections) do
				utility:Tween(section.container.Title, {TextTransparency = 0}, 0.1)
				section:Resize(true)
				wait(0.05)
			end
			wait(0.05)
			page:Resize(true)
		else
			button.Title.Font = Enum.Font.FredokaOne
			button.Title.TextTransparency = 0.65
			if button:FindFirstChild("Icon") then
				button.Icon.ImageTransparency = 0.65
			end
			for i, section in pairs(page.sections) do	
				utility:Tween(section.container.Parent, {Size = UDim2.new(1, -10, 0, 28)}, 0.1)
				utility:Tween(section.container.Title, {TextTransparency = 1}, 0.1)
			end
					wait(0.1)
			page.lastPosition = page.container.CanvasPosition.Y
			page:Resize()
		end
	end
	function page:Resize(scroll)
		local padding = 10
		local size = 0
		for i, section in pairs(self.sections) do
			size = size + section.container.Parent.AbsoluteSize.Y + padding
		end
		self.container.CanvasSize = UDim2.new(0, 5, 0, size)
		self.container.ScrollBarImageTransparency = size > self.container.AbsoluteSize.Y
		if scroll then
			utility:Tween(self.container, {CanvasPosition = Vector2.new(0, self.lastPosition or 0)}, 0.2)
		end
	end
	function section:Resize(smooth)
		if self.page.library.focusedPage ~= self.page then
			return
		end
		local padding = 4
		local size = (4 * padding) + self.container.Title.AbsoluteSize.Y
		for i, module in pairs(self.modules) do
			size = size + module.AbsoluteSize.Y + padding
		end
		if smooth then
			utility:Tween(self.container.Parent, {Size = UDim2.new(1, -10, 0, size)}, 0.05)
		else
			self.container.Parent.Size = UDim2.new(1, -10, 0, size)
			self.page:Resize()
		end
	end
	function section:getModule(info)
		if table.find(self.modules, info) then
			return info
		end
		for i, module in pairs(self.modules) do
			if (module:FindFirstChild("Title") or module:FindFirstChild("TextBox", true)).Text == info then
				return module
			end
		end
		error("No module found under "..tostring(info))
	end
	function section:updateButton(button, title)
		button = self:getModule(button)
		
		button.Title.Text = title
	end
	function section:updateToggle(toggle, title, value)
		toggle = self:getModule(toggle)
		local position = {
			In = UDim2.new(0, 2, 0.5, -6),
			Out = UDim2.new(0, 20, 0.5, -6)
		}
		local frame = toggle.Button.Frame
		value = value and "Out" or "In"
		if title then
			toggle.Title.Text = title
		end
		utility:Tween(frame, {
			Size = UDim2.new(1, -22, 1, -9),
			Position = position[value] + UDim2.new(0, 0, 0, 2.5)
		}, 0.2)
		wait(0.1)
		utility:Tween(frame, {
			Size = UDim2.new(1, -22, 1, -4),
			Position = position[value]
		}, 0.1)
	end
	function section:updateTextbox(textbox, title, value)
		textbox = self:getModule(textbox)
		if title then
			textbox.Title.Text = title
		end
		if value then
			textbox.Button.Textbox.Text = value
			end
	end
	function section:updateKeybind(keybind, title, key)
		keybind = self:getModule(keybind)
		local text = keybind.Button.Text
		local bind = self.binds[keybind]
		if title then
			keybind.Title.Text = title
		end
		if bind.connection then
			bind.connection = bind.connection:UnBind()
		end
		if key then
			self.binds[keybind].connection = utility:BindToKey(key, bind.callback)
			text.Text = key.Name
		else
			text.Text = "None"
		end
	end
	function section:updateColorPicker(colorpicker, title, color)
		colorpicker = self:getModule(colorpicker)
		local picker = self.colorpickers[colorpicker]
		local tab = picker.tab
		local callback = picker.callback
		if title then
			colorpicker.Title.Text = title
			tab.Title.Text = title
		end
		local color3
		local hue, sat, brightness
		if type(color) == "table" then
			hue, sat, brightness = unpack(color)
			color3 = Color3.fromHSV(hue, sat, brightness)
		else
			color3 = color
			hue, sat, brightness = Color3.toHSV(color3)
		end
		utility:Tween(colorpicker.Button, {ImageColor3 = color3}, 0.5)
		utility:Tween(tab.Container.Color.Select, {Position = UDim2.new(hue, 0, 0, 0)}, 0.1)
		utility:Tween(tab.Container.Canvas, {ImageColor3 = Color3.fromHSV(hue, 1, 1)}, 0.5)
		utility:Tween(tab.Container.Canvas.Cursor, {Position = UDim2.new(sat, 0, 1 - brightness)}, 0.5)
		for i, container in pairs(tab.Container.Inputs:GetChildren()) do
			if container:IsA("ImageLabel") then
				local value = math.clamp(color3[container.Name], 0, 1) * 255
				
				container.Textbox.Text = math.floor(value)
			end
		end
	end
	function section:updateSlider(slider, title, value, min, max, lvalue)
	    slider = self:getModule(slider)
		if title then
			slider.Title.Text = title
		end
		local bar = slider.Slider.Bar
		local percent = (mouse.X - bar.AbsolutePosition.X) / bar.AbsoluteSize.X
		if value then
			percent = (value - min) / (max - min)
		end
		percent = math.clamp(percent, 0, 1)
		value = value or math.floor(min + (max - min) * percent)
		slider.TextBox.Text = value
		utility:Tween(bar.Fill, {Size = UDim2.new(percent, 0, 1, 0)}, 0.1)
		if value ~= lvalue and slider.ImageTransparency == 0 then
			utility:Pop(slider, 10)
		end
		return value
	end
	function section:updateDropdown(dropdown, title, list, callback)
		dropdown = self:getModule(dropdown)
		if title then
			dropdown.Search.TextBox.Text = title
		end
		local entries = 0
		utility:Pop(dropdown.Search, 10)
		for i, button in pairs(dropdown.List.Frame:GetChildren()) do
			if button:IsA("ImageButton") then
				button:Destroy()
			end
		end
		for i, value in pairs(list or {}) do
			local button = utility:Create("ImageButton", {
				Parent = dropdown.List.Frame,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 30),
				ZIndex = 2,
				Image = "rbxassetid://5028857472",
				ImageColor3 = Color3.fromRGB(14, 14, 14),
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(2, 2, 298, 298)
			}, {
				utility:Create("TextLabel", {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 10, 0, 0),
					Size = UDim2.new(1, -10, 1, 0),
					ZIndex = 3,
					Font = Enum.Font.FredokaOne,
					Text = value,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextSize = 12,
					TextXAlignment = "Left",
					TextTransparency = 0.10000000149012
				})
			})
				button.MouseButton1Click:Connect(function()
				if callback then
					callback(value, function(...)
						self:updateDropdown(dropdown, ...)
					end)	
				end
				self:updateDropdown(dropdown, value, nil, callback)
			end)
			entries = entries + 1
		end
		local frame = dropdown.List.Frame
		utility:Tween(dropdown, {Size = UDim2.new(1, 0, 0, (entries == 0 and 30) or math.clamp(entries, 0, 3) * 34 + 38)}, 0.3)
		utility:Tween(dropdown.Search.Button, {Rotation = list and 180 or 0}, 0.3)
		if entries > 3 then
			for i, button in pairs(dropdown.List.Frame:GetChildren()) do
				if button:IsA("ImageButton") then
					button.Size = UDim2.new(1, -6, 0, 30)
				end
			end
			frame.CanvasSize = UDim2.new(0, 0, 0, (entries * 34) - 4)
			frame.ScrollBarImageTransparency = 0
		else
			frame.CanvasSize = UDim2.new(0, 0, 0, 0)
			frame.ScrollBarImageTransparency = 1
		end
	end
end
if game.CoreGui:FindFirstChild("Catix Hub") then
    game.CoreGui:FindFirstChild("Catix Hub"):Destroy() 
end
local venyx = library.new("Catix Hub")
local page = venyx:addPage("Home", 6252243736)
local rs = game:GetService("RunService").RenderStepped
 venyx:Notify("SuperNatural Simulator", "Joins Discord's Server ! (By I'm A Cat#7202,Altix#3395)")
local section1 = page:addSection("Updates:")
local section11 = page:addSection("Credits:")
section1:addButton("+ New Ui Lib", function()
end)
    section11:addButton("By: I'm A Cat#7202 Copy Username", function()
     setclipboard("I'm A Cat#7202")
     end)
     section11:addButton("By: Altix#3395 Copy Username", function()
     setclipboard("Altix#3395")
     end)
     section11:addButton("Catix Hub Discord Server: Copy Link", function()
     setclipboard("https://discord.gg/KmHZUpXEmQ")
     end)
local Things = venyx:addPage("Things", 6252255409)
local ThingsSec = Things:addSection("Auto Farm:")
ThingsSec:addToggle("Auto Click", nil, function(bool)
 _G.Click = bool
    while _G.Click and rs:wait()do
game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"GainMuscle"})
end
end)
ThingsSec:addToggle("Auto Sell", nil, function(bool)
 _G.Sell = bool
    while _G.Sell and rs:wait()do
game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"SellMuscle"})
end
end)
ThingsSec:addToggle("Auto Buy Ranks", nil, function(bool)
 _G.Ranks = bool
    while _G.Ranks and wait(1)do
        for i = 1,150 do
game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"BuyCapacity",i})
end
end
end)
ThingsSec:addToggle("Auto Buy Ascension", nil, function(bool)
 _G.Ascension = bool
    while _G.Ascension and wait(1)do
        for i = 1,25 do
game:GetService("ReplicatedStorage").RemoteEvent:FireServer({"BuyRebirth",i})
end
end
end)
local Teleports = venyx:addPage("Teleports", 6252010818)
local section3 = Teleports:addSection("Select Players:")
	local ntm = section3:addDropdown("Select a Player", SelectPlayersStrings)
			spawn(function()
				while wait(1) do
					SelectPlayersStrings = {}
					for i,v in pairs(game:GetService("Players"):GetChildren()) do
						table.insert(SelectPlayersStrings, v.Name)
					end
					section3:updateDropdown(ntm, title, SelectPlayersStrings, function(value)
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[value].Character.HumanoidRootPart.CFrame
					end)
				end
			end)

local Misc = venyx:addPage("Misc", 6252267612)
local section4 = Misc:addSection("MISC:")
section4:addButton("Refresh Game", function()
local TeleportService = game:GetService("TeleportService")
                    local PlaceId = game.PlaceId
                    local player = game.Players.LocalPlayer
                    if player then
                    TeleportService:Teleport(PlaceId, player)
                    end
end)
section4:addKeybind("Hide Gui", Enum.KeyCode.RightControl, function()
venyx:toggle()
end)
section4:addButton("Destroy Gui", function()
   for i,v in pairs(game:GetService("CoreGui"):GetChildren()) do 
    game:GetService("CoreGui")["Catix Hub"]:Destroy()
    end
end)
local LocalPlayer = venyx:addPage("Local Player", 5012544693)
local Local = LocalPlayer:addSection("Work Whit Alot of Free Exploit:")
local Local2 = LocalPlayer:addSection("Work Whit Krnk,Sona And Paid:")
Local:addSlider("Jump Hack", 0,35, 300, function(x)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = x    
end)
Local:addSlider("HipHeight Hack", 0,0, 300, function(x)
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = x
end)
Local:addSlider("Field Of View Hack", 0,2, 120, function(x)
            game:GetService("Workspace").Camera.FieldOfView = x
end)
Local:addSlider("Speed Hack", 0,0, 300, function(x)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = x
end)
Local:addButton("Speed Hack(Press R)", function()
local walkspeedplayer = game:GetService("Players").LocalPlayer local walkspeedmouse = walkspeedplayer:GetMouse() local walkspeedenabled = false function x_walkspeed(key) if (key == "r") then if walkspeedenabled == false then _G.WS = 200; local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid; Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function() Humanoid.WalkSpeed = _G.WS; end) Humanoid.WalkSpeed = _G.WS; walkspeedenabled = true elseif walkspeedenabled == true then _G.WS = 20; local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid; Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function() Humanoid.WalkSpeed = _G.WS; end) Humanoid.WalkSpeed = _G.WS; walkspeedenabled = false end end end walkspeedmouse.KeyDown:connect(x_walkspeed)
end)
Local:addButton("No Clip(Press E)", function()
noclip = false game:GetService('RunService').Stepped:connect(function() if noclip then game.Players.LocalPlayer.Character.Humanoid:ChangeState(11) 	end	end)	local plr = game.Players.LocalPlayer	local mouse = plr:GetMouse()	mouse.KeyDown:connect(function(key)	if key == "e" then		noclip = not noclip	game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)	end	end)
end)
Local:addButton("Fly(Press F)", function()
loadstring(game:HttpGet("https://pastebin.com/raw/c01bpxpF", true))()
end)
 Local:addButton("Inf Jump", function()
game:GetService("UserInputService").JumpRequest:connect(function()game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")end)
    end)
     Local:addButton("Ctrl + Click = TP", function()
local Plr = game:GetService("Players").LocalPlayer local Mouse = Plr:GetMouse()Mouse.Button1Down:connect(function()if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end if not Mouse.Target then return end Plr.Character:MoveTo(Mouse.Hit.p)end)
    end)
	Local:addButton("Camera Max/Min Zoom Distance", function()
				game:GetService("Players").LocalPlayer.CameraMaxZoomDistance = 99999
				game:GetService("Players").LocalPlayer.CameraMinZoomDistance = 0
	end)
     Local:addButton("Extreme Light", function()
local s = Instance.new("PointLight", game.Players.LocalPlayer.Character.Head) s.Brightness = 0.3 s.Range = 100 game.Lighting.Changed:connect(function() game.Lighting.TimeOfDay = "14:00:00" game.Lighting.FogEnd = 300 game.Lighting.Brightness = 10 game.Lighting.ColorCorrection.Brightness = 0.1 game.Lighting.ColorCorrection.Saturation = 0.1 game.Lighting.Bloom.Intensity = 0.1 end)
    end)
     Local:addButton("Inf Yield", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end)
     Local:addButton("Btools", function()
a = Instance.new("HopperBin")  a.BinType = 1  a.Parent = game.Players.LocalPlayer.Backpack a = Instance.new("HopperBin")  a.BinType = 4  a.Parent = game.Players.LocalPlayer.Backpack a = Instance.new("HopperBin")  a.BinType = 3  a.Parent = game.Players.LocalPlayer.Backpack
    end)
     Local:addButton("ESP UNIVERSAL", function()
for i,v in pairs(game.Workspace:GetDescendants()) do if v.ClassName == "TouchTransmitter" then local BillboardGui = Instance.new("BillboardGui") local TextLabel = Instance.new("TextLabel") BillboardGui.Parent = v.Parent BillboardGui.AlwaysOnTop = true BillboardGui.LightInfluence = 1 BillboardGui.Size = UDim2.new(0, 100, 0, 100) BillboardGui.StudsOffset = Vector3.new(0, 2, 0) TextLabel.Parent = BillboardGui TextLabel.BackgroundColor3 = Color3.new(1, 1, 1) TextLabel.BackgroundTransparency = 1 TextLabel.Size = UDim2.new(1, 0, 1, 0) TextLabel.Text = v.Parent.Parent.Name TextLabel.TextColor3 = Color3.new(1, 0, 0) TextLabel.TextScaled = true end end 
    end)
     Local:addButton("Location Detector", function()
local finder = Instance.new("ScreenGui") local Main = Instance.new("Frame") local nameofgui = Instance.new("TextLabel") local random = Instance.new("TextLabel") local cl = Instance.new("TextLabel") local border = Instance.new("TextLabel") local copy = Instance.new("TextButton") finder.Name = "finder" finder.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") finder.ZIndexBehavior = Enum.ZIndexBehavior.Sibling finder.ResetOnSpawn = false Main.Name = "Main" Main.Parent = finder Main.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078) Main.Position = UDim2.new(0.460674137, 0, 0.360557795, 0) Main.Size = UDim2.new(0, 254, 0, 192) nameofgui.Name = "nameofgui"nameofgui.Parent = Main nameofgui.BackgroundColor3 = Color3.new(1, 1, 1) nameofgui.BackgroundTransparency = 1 nameofgui.Size = UDim2.new(0, 254, 0, 26) nameofgui.Font = Enum.Font.SourceSans nameofgui.Text = "Location Finder" nameofgui.TextColor3 = Color3.new(1, 1, 1) nameofgui.TextSize = 20 random.Name = "random" random.Parent = Main random.BackgroundColor3 = Color3.new(1, 1, 1) random.BackgroundTransparency = 1 random.Position = UDim2.new(0.106299214, 0, 0.197916672, 0) random.Size = UDim2.new(0, 200, 0, 37) random.Font = Enum.Font.SourceSans random.Text = "Your current location is " random.TextColor3 = Color3.new(1, 1, 1) random.TextSize = 18 cl.Name = "cl" cl.Parent = Main cl.BackgroundColor3 = Color3.new(1, 1, 1) cl.BackgroundTransparency = 1 cl.Position = UDim2.new(0.106299214, 0, 0.39062503, 0) cl.Size = UDim2.new(0, 200, 0, 36) cl.Font = Enum.Font.SourceSans cl.TextColor3 = Color3.new(1, 1, 1) cl.TextSize = 18 border.Name = "border" border.Parent = Main border.BackgroundColor3 = Color3.new(1, 1, 1) border.Position = UDim2.new(0, 0, 0.114583336, 0) border.Size = UDim2.new(0, 254, 0, 4) border.Font = Enum.Font.SourceSans border.Text = "" border.TextColor3 = Color3.new(0, 0, 0) border.TextSize = 14 copy.Name = "copy" copy.Parent = Main copy.BackgroundColor3 = Color3.new(1, 1, 1) copy.Position = UDim2.new(0.106299214, 0, 0.666666687, 0) copy.Size = UDim2.new(0, 200, 0, 31) copy.Font = Enum.Font.SourceSans copy.Text = "Copy to clipboard" copy.TextColor3 = Color3.new(0, 0, 0) copy.TextSize = 20 copy.MouseButton1Click:connect(function() setclipboard(cl.Text) end) local isHidden = false local mause = game.Players.LocalPlayer:GetMouse() do local mouse = game:GetService("Players").LocalPlayer:GetMouse(); local inputService = game:GetService('UserInputService'); local heartbeat = game:GetService("RunService").Heartbeat; function Draggable(frame) local s, event = pcall(function() return frame.MouseEnter end)  if s then frame.Active = true; event:connect(function() local input = frame.InputBegan:connect(function(key) if key.UserInputType == Enum.UserInputType.MouseButton1 then local objectPosition = Vector2.new(mouse.X - frame.AbsolutePosition.X, mouse.Y - frame.AbsolutePosition.Y); while heartbeat:wait() and inputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do frame:TweenPosition(UDim2.new(0, mouse.X - objectPosition.X + (frame.Size.X.Offset * frame.AnchorPoint.X), 0, mouse.Y - objectPosition.Y + (frame.Size.Y.Offset * frame.AnchorPoint.Y)), 'Out', 'Quad', 0.1, true); end end end) local leave; leave = frame.MouseLeave:connect(function() input:disconnect(); leave:disconnect(); end) end) end end end Draggable(Main) mause.KeyDown:connect(function(key) if key == ";" then if isHidden == false then Main:TweenPosition(Main.Position - UDim2.new(0,0,1,0),"Out","Quad",0.4,false) isHidden = true else Main:TweenPosition(Main.Position + UDim2.new(0,0,1,0),"Out","Quad",0.4,false) isHidden = false end end end) while true do wait() cl.Text = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position) end 
    end)
     Local:addButton("Dark Dex", function()
     Local2:AddLabel("Work Whit Paid ,Krnl,Sona Exploit")
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/quentin452/CATIX-HUB/master/!DEX%20EXPLORER"))()  
    end)
     Local2:addButton("Remote Spy", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/quentin452/CATIX-HUB/master/!Remote%20Spy", true))()
     end)
venyx:SelectPage(venyx.pages[1], true)

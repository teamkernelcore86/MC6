----------------------------------------------------------------------------- *
-- About:
--
-- MC6 is a Roblox exploitation gui created by @justiceplatformunion.


-- Contributing:
--
-- Contributing to MC6 is fully allowed as long as you comply with the license and code of conduct. 

-- MMMMMMMM               MMMMMMMM        CCCCCCCCCCCCC        66666666   
-- M:::::::M             M:::::::M     CCC::::::::::::C       6::::::6    
-- M::::::::M           M::::::::M   CC:::::::::::::::C      6::::::6     
-- M:::::::::M         M:::::::::M  C:::::CCCCCCCC::::C     6::::::6      
-- M::::::::::M       M::::::::::M C:::::C       CCCCCC    6::::::6       
-- M:::::::::::M     M:::::::::::MC:::::C                 6::::::6        
-- M:::::::M::::M   M::::M:::::::MC:::::C                6::::::6         
-- M::::::M M::::M M::::M M::::::MC:::::C               6::::::::66666    
-- M::::::M  M::::M::::M  M::::::MC:::::C              6::::::::::::::66  
-- M::::::M   M:::::::M   M::::::MC:::::C              6::::::66666:::::6 
-- M::::::M    M:::::M    M::::::MC:::::C              6:::::6     6:::::6
-- M::::::M     MMMMM     M::::::M C:::::C       CCCCCC6:::::6     6:::::6
-- M::::::M               M::::::M  C:::::CCCCCCCC::::C6::::::66666::::::6
-- M::::::M               M::::::M   CC:::::::::::::::C 66:::::::::::::66 
-- M::::::M               M::::::M     CCC::::::::::::C   66:::::::::66   
-- MMMMMMMM               MMMMMMMM        CCCCCCCCCCCCC     666666666     

-- The Platform Justice Union
-- @platformjunion
-- Need help? Join us over at: https://discord.gg/pvAEWC5RFg

-- Copyright (c) 2023 MC6

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.
----------------------------------------------------------------------------- *

local main = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
main.Name = "MainGui"

local frame = Instance.new("Frame", main)
frame.Name = "Frame"
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 0.5
frame.Visible = true
frame.Position = UDim2.new(0, 0, 0.327, 0)
frame.Size = UDim2.new(0, 300, 0, 467)

local toggle = Instance.new("TextButton", main)
toggle.Name = "Toggle"
toggle.BackgroundColor3 = Color3.new(1, 1, 1)
toggle.BackgroundTransparency = 0.5
toggle.Text = "<"
toggle.Font = Enum.Font.Code
toggle.TextSize = 25
toggle.Position = UDim2.new(0, 0, 0.768, 0)
toggle.Size = UDim2.new(0, 81, 0, 50)

local visibility = true

toggle.MouseButton1Click:Connect(function()
	visibility = not visibility
	frame.Visible = visibility
	
	if visibility == true then
		toggle.Text = "<"
	else
		toggle.Text = ">"
	end
end)

local banner = Instance.new("Frame", frame)
banner.Name = "Banner"
banner.BackgroundColor3 = Color3.new(1, 1, 1)
banner.BackgroundTransparency = 0.5
banner.Position = UDim2.new(0, 0, 0, 0)
banner.Size = UDim2.new(0, 300, 0, 29)

local title = Instance.new("TextLabel", banner)
title.Name = "Title"
title.BackgroundTransparency = 1
title.Text = "MC6 v1.0"
title.Font = Enum.Font.Code
title.TextSize = 25
title.Position = UDim2.new(0, 0, 0, 0)
title.Size = UDim2.new(0, 300, 0, 29)

local chngsyid = Instance.new("TextBox", frame)
chngsyid.Text = ""
chngsyid.PlaceholderText = "Change Skybox Asset Id"
chngsyid.Font = Enum.Font.Code
chngsyid.TextSize = 20
chngsyid.BackgroundColor3 = Color3.new(1, 1, 1)
chngsyid.BackgroundTransparency = 0.5
chngsyid.Position = UDim2.new(0.033, 0, 0.328, 0)
chngsyid.Size = UDim2.new(0, 279, 0, 45)

local skybx = Instance.new("TextButton", frame)
skybx.Text = "Change Skybox"
skybx.TextSize = 20
skybx.Font = Enum.Font.Code
skybx.BackgroundColor3 = Color3.new(1, 1, 1)
skybx.BackgroundTransparency = 0.5
skybx.Position = UDim2.new(0.033, 0, 0.206, 0)
skybx.Size = UDim2.new(0, 279, 0, 45)

local isSkyboxCreated = false

skybx.MouseButton1Click:Connect(function()
	local ChngdId = chngsyid.Text
	
	if isSkyboxCreated == true then
		return
	end
	
	local skybox = Instance.new("Sky", game.Lighting)
	skybox.SkyboxFt = ChngdId
	skybox.SkyboxBk = ChngdId
	skybox.SkyboxDn = ChngdId
	skybox.SkyboxUp = ChngdId
	skybox.SkyboxLf = ChngdId
	skybox.SkyboxRt = ChngdId
	isSkyboxCreated = true
end)

local unancr = Instance.new("TextButton", frame)
unancr.Text = "Unanchor All Parts"
unancr.TextSize = 20
unancr.Font = Enum.Font.Code
unancr.BackgroundColor3 = Color3.new(1, 1, 1)
unancr.BackgroundTransparency = 0.5
unancr.Position = UDim2.new(0.033, 0, 0.086, 0 )
unancr.Size = UDim2.new(0, 279, 0, 45)

unancr.MouseButton1Click:Connect(function()
	for _, part in pairs(workspace:GetDescendants()) do
		if part:IsA("BasePart") then
			part.Anchored = false
		end
	end
	for _, welds in pairs(workspace:GetDescendants()) do
		if welds:IsA("Weld") or welds:IsA("Snap") or welds:IsA("WeldConstraint") or welds:IsA("Attachment") then
			welds:Destroy()
		end
	end
end)

local humdel = Instance.new("TextButton", frame)
humdel.Text = "Delete All Humanoids"
humdel.TextSize = 20
humdel.Font = Enum.Font.Code
humdel.BackgroundColor3 = Color3.new(1, 1, 1)
humdel.BackgroundTransparency = 0.5
humdel.Position = UDim2.new(0.033, 0, 0.57, 0 )
humdel.Size = UDim2.new(0, 279, 0, 45)

humdel.MouseButton1Click:Connect(function()
	for _, humanoid in pairs(workspace:GetDescendants()) do
		if humanoid:IsA("Humanoid") then
			humanoid:Destroy()
		end
	end
end)

local tlt = Instance.new("TextButton", frame)
tlt.Text = "Tilt Baseplate"
tlt.TextSize = 20
tlt.Font = Enum.Font.Code
tlt.BackgroundColor3 = Color3.new(1, 1, 1)
tlt.BackgroundTransparency = 0.5
tlt.Position = UDim2.new(0.033, 0, 0.448, 0)
tlt.Size = UDim2.new(0, 279, 0, 45)

local accumulatedTiltAngle = 0

tlt.MouseButton1Click:Connect(function()
	local duration = 2
	local startTime = tick()

	game:GetService("RunService").RenderStepped:Connect(function()
		local elapsedTime = tick() - startTime
		local t = elapsedTime / duration

		local tiltAngle = math.rad(45) * t

		local baseplateCFrame = game.Workspace.Baseplate.CFrame -- Can only work if the game has a baseplate.

		local tiltedCFrame = CFrame.Angles(tiltAngle, 0, 0) * baseplateCFrame

		game.Workspace.Baseplate.CFrame = tiltedCFrame

		if t >= 1 then
			game:GetService("RunService").RenderStepped:Disconnect()
		end
	end)
end)

--local button4 = Instance.new("TextButton", frame) - v2.0
--button4.Name = "Empty" - v2.0

local theme = Instance.new("TextButton", frame)
theme.Name = "Theme"
theme.Text = "Theme"
theme.Font = Enum.Font.Code
theme.TextSize = 15
theme.BackgroundColor3 = Color3.new(1, 1, 1)
theme.BackgroundTransparency = 0.5
theme.Position = UDim2.new(0.781, 0, 0.875, 0)
theme.Size = UDim2.new(0, 54, 0, 50)
local themeimg = Instance.new("ImageLabel", theme)
themeimg.Position = UDim2.new(-0.9, 0, 0.009, 0)
themeimg.Size = UDim2.new(0, 47, 0, 49)
themeimg.BackgroundTransparency = 1
themeimg.Image = "rbxassetid://15602470218"

theme.MouseButton1Click:Connect(function()
	local color3menu = frame:FindFirstChild("Color3Menu")
	
	if color3menu then
		return
	end
	
	if not color3menu then
		color3menu = Instance.new("Frame", frame)
		color3menu.Name = "Color3Menu"
		color3menu.BackgroundColor3 = Color3.new(1, 1, 1)
		color3menu.BackgroundTransparency = 0.5
		color3menu.Position = UDim2.new(0, 0, -0.37, 0)
		color3menu.Size = UDim2.new(0, 217, 0, 148)
		
		local exit2 = Instance.new("TextButton", color3menu)
		exit2.Position = UDim2.new(1, -25, 0, 5)
		exit2.Size = UDim2.new(0, 20, 0, 20)
		exit2.Text = "X"
		exit2.TextSize = 20
		exit2.Font = Enum.Font.Code
		exit2.MouseButton1Click:Connect(function()
			color3menu:Destroy()
		end)
		
		local blackt = Instance.new("TextButton", color3menu)
		blackt.Text = ""
		blackt.BackgroundColor3 = Color3.new(0, 0, 0)
		blackt.Position = UDim2.new(0.046, 0, 0.068, 0)
		blackt.Size = UDim2.new(0, 25, 0, 24)
		blackt.MouseButton1Click:Connect(function()
			frame.BackgroundColor3 = Color3.new(0, 0, 0)
			banner.BackgroundColor3 = Color3.new(0, 0, 0)
		end)
		
		local redt = Instance.new("TextButton", color3menu)
		redt.Text = ""
		redt.BackgroundColor3 = Color3.new(1, 0.0672923, 0)
		redt.Position = UDim2.new(0.194, 0, 0.068, 0)
		redt.Size = UDim2.new(0, 25, 0, 24)
		redt.MouseButton1Click:Connect(function()
			frame.BackgroundColor3 = Color3.new(1, 0.0672923, 0)
			banner.BackgroundColor3 = Color3.new(1, 0.0672923, 0)
		end)
		
		local greent = Instance.new("TextButton", color3menu)
		greent.Text = ""
		greent.BackgroundColor3 = Color3.new(0, 0.898894, 0.00239567)
		greent.Position = UDim2.new(0.336, 0, 0.068, 0)
		greent.Size = UDim2.new(0, 25, 0, 24)
		greent.MouseButton1Click:Connect(function()
			frame.BackgroundColor3 = Color3.new(0, 0.898894, 0.00239567)
			banner.BackgroundColor3 = Color3.new(0, 0.898894, 0.00239567)
		end)
		
		local whitet = Instance.new("TextButton", color3menu)
		whitet.Text = ""
		whitet.BackgroundColor3 = Color3.new(1, 1, 1)
		whitet.Position = UDim2.new(0.484, 0, 0.068, 0)
		whitet.Size = UDim2.new(0, 25, 0, 24)
		whitet.MouseButton1Click:Connect(function()
			frame.BackgroundColor3 = Color3.new(1, 1, 1)
			banner.BackgroundColor3 = Color3.new(1, 1, 1)
		end)
		
		local bluet = Instance.new("TextButton", color3menu)
		bluet.Text = ""
		bluet.BackgroundColor3 = Color3.new(0.135363, 0.327962, 1)
		bluet.Position = UDim2.new(0.631, 0, 0.068, 0)
		bluet.Size = UDim2.new(0, 25, 0, 24)
		bluet.MouseButton1Click:Connect(function()
			frame.BackgroundColor3 = Color3.new(0.135363, 0.327962, 1)
			banner.BackgroundColor3 = Color3.new(0.135363, 0.327962, 1)
		end)
		
		local yellowt = Instance.new("TextButton", color3menu)
		yellowt.Text = ""
		yellowt.BackgroundColor3 = Color3.new(1, 0.915358, 0.0248264)
		yellowt.Position = UDim2.new(0.046, 0, 0.27, 0)
		yellowt.Size = UDim2.new(0, 25, 0, 24)
		yellowt.MouseButton1Click:Connect(function()
			frame.BackgroundColor3 = Color3.new(1, 0.915358, 0.0248264)
			banner.BackgroundColor3 = Color3.new(1, 0.915358, 0.0248264)
		end)
	end
end)

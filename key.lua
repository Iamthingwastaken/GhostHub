-- Create the main UI container
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Size = UDim2.new(0.2, 0, 0.2, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0.1
frame.ClipsDescendants = true

-- Apply rounded corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

-- Title and description
local title = Instance.new("TextLabel")
title.Parent = frame
title.Size = UDim2.new(1, -40, 0, 40)
title.Position = UDim2.new(0, 20, 0, 0)
title.Text = "Ghost hub"
title.Font = Enum.Font.GothamBold
title.TextSize = 18
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1

local subTitle = Instance.new("TextLabel")
subTitle.Parent = frame
subTitle.Size = UDim2.new(1, -40, 0, 20)
subTitle.Position = UDim2.new(0, 20, 0, 30)
subTitle.Text = "Key System"
subTitle.Font = Enum.Font.Gotham
subTitle.TextSize = 14
subTitle.TextColor3 = Color3.fromRGB(180, 180, 180)
subTitle.BackgroundTransparency = 1

-- Key input field
local keyInput = Instance.new("TextBox")
keyInput.Parent = frame
keyInput.Size = UDim2.new(0.4, 0, 0, 30)
keyInput.Position = UDim2.new(0, 20, 0, 70)
keyInput.PlaceholderText = "key"
keyInput.Font = Enum.Font.Gotham
keyInput.TextSize = 14
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
keyInput.BorderSizePixel = 0

local keyCorner = Instance.new("UICorner")
keyCorner.CornerRadius = UDim.new(0, 5)
keyCorner.Parent = keyInput

-- Note label
local noteLabel = Instance.new("TextLabel")
noteLabel.Parent = frame
noteLabel.Size = UDim2.new(0.3, 0, 0, 30)
noteLabel.Position = UDim2.new(0.65, 0, 0, 70)
noteLabel.Text = "join .gg/wzF3XczkJa for key"
noteLabel.Font = Enum.Font.Gotham
noteLabel.TextSize = 12
noteLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
noteLabel.BackgroundTransparency = 1
noteLabel.TextWrapped = true

-- Close button
local closeButton = Instance.new("TextButton")
closeButton.Parent = frame
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -40, 0, 5)
closeButton.Text = "X"
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 14
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
closeButton.BorderSizePixel = 0

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 5)
closeCorner.Parent = closeButton

-- Close functionality
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Key validation functionality
keyInput.FocusLost:Connect(function(enterPressed)
    if enterPressed and keyInput.Text == "blast" then
        screenGui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Iamthingwastaken/GhostHub/refs/heads/main/ghosthub.lua?"))()
    else
        keyInput.Text = ""
        keyInput.PlaceholderText = "Invalid key, try again"
    end
end)

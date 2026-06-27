local TweenService = game:GetService("TweenService")
local TextChatService = game:GetService("TextChatService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local FontConfig = Enum.Font.Fondamento

-- Main Hub Loader Function (Updated with private token link)
local function Scribblehub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ScribbleDevelopment/Finished-Scribble-Script-Hub/refs/heads/main/Main?token=GHSAT0AAAAAAEALRWEEXDABUXPP75GOBK3K2SAITEA"))()
end

-- Helper function to send chat messages
local function sendChatMessage(msg)
    -- Method 1: TextChatService (Modern)
    local textChannel = TextChatService:FindFirstChild("TextChannels") and TextChatService.TextChannels:FindFirstChild("RBXGeneral")
    if textChannel then
        textChannel:SendAsync(msg)
        return true
    end
    
    -- Method 2: Legacy Remote
    local legacyRemote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)
    if legacyRemote then
        legacyRemote:FireServer(msg, "All")
        return true
    end
    
    return false
end

-- Function to load your original confirmation UI
local function LoadConfirmationUI()
    -- Create GUI
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "ScribbleConfirmation"
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    -- Main Frame
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 300, 0, 150)
    frame.Position = UDim2.new(0.5, -150, 0.5, -75)
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    frame.BackgroundTransparency = 0.2
    frame.BorderSizePixel = 0
    frame.Parent = screenGui

    Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)

    local stroke = Instance.new("UIStroke", frame)
    stroke.Color = Color3.fromRGB(0, 255, 255)
    stroke.Thickness = 2
    stroke.Transparency = 0.5

    task.spawn(function()
        while frame.Parent do
            local tween = TweenService:Create(stroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, true), {Transparency = 0})
            tween:Play()
            tween.Completed:Wait()
        end
    end)

    local label = Instance.new("TextLabel", frame)
    label.Text = "ARE YOU SURE?"
    label.Size = UDim2.new(1, 0, 0.4, 0)
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = FontConfig
    label.TextSize = 24
    label.Parent = frame

    local function createButton(text, color, pos)
        local btn = Instance.new("TextButton", frame)
        btn.Text = text
        btn.Size = UDim2.new(0.35, 0, 0.25, 0)
        btn.Position = pos
        btn.BackgroundColor3 = color
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.Font = FontConfig
        btn.TextSize = 18
        Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
        return btn
    end

    local yesBtn = createButton("YES", Color3.fromRGB(0, 150, 255), UDim2.new(0.1, 0, 0.6, 0))
    local noBtn = createButton("NO", Color3.fromRGB(60, 60, 60), UDim2.new(0.55, 0, 0.6, 0))

    yesBtn.MouseButton1Click:Connect(function()
        screenGui:Destroy()
        
        local messages = {"yo to the yo tengomessy SCRIBBLES BEST LOADED", "im sigma", "enjoy the cewl hub", "btw W goobastank and groundskeeper"}
        
        for i, msg in ipairs(messages) do
            sendChatMessage(msg)
            if i < #messages then task.wait(0.3) end
        end
        
        Scribblehub()
    end)

    noBtn.MouseButton1Click:Connect(function()
        screenGui:Destroy()
    end)
end

-- ==========================================
-- KEY SYSTEM (STYLIZED TO MATCH YOUR UI)
-- ==========================================
local keyGui = Instance.new("ScreenGui")
keyGui.Name = "ScribbleKeySystem"
keyGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local keyFrame = Instance.new("Frame")
keyFrame.Size = UDim2.new(0, 300, 0, 180)
keyFrame.Position = UDim2.new(0.5, -150, 0.5, -90)
keyFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
keyFrame.BackgroundTransparency = 0.2
keyFrame.BorderSizePixel = 0
keyFrame.Parent = keyGui

Instance.new("UICorner", keyFrame).CornerRadius = UDim.new(0, 12)

-- Matching Neon Glow Border Animation
local keyStroke = Instance.new("UIStroke", keyFrame)
keyStroke.Color = Color3.fromRGB(0, 255, 255)
keyStroke.Thickness = 2
keyStroke.Transparency = 0.5

task.spawn(function()
    while keyFrame.Parent do
        local tween = TweenService:Create(keyStroke, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, true), {Transparency = 0})
        tween:Play()
        tween.Completed:Wait()
    end
end)

-- Mathematical Title Prompt
local questionLabel = Instance.new("TextLabel", keyFrame)
questionLabel.Text = "whats 540 + 450"
questionLabel.Size = UDim2.new(1, 0, 0.35, 0)
questionLabel.BackgroundTransparency = 1
questionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
questionLabel.Font = FontConfig
questionLabel.TextSize = 24

-- Stylized Input Box for the Key
local keyInput = Instance.new("TextBox", keyFrame)
keyInput.Size = UDim2.new(0.8, 0, 0.22, 0)
keyInput.Position = UDim2.new(0.1, 0, 0.4, 0)
keyInput.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
keyInput.BackgroundTransparency = 0.4
keyInput.Text = ""
keyInput.PlaceholderText = "Enter key here..."
keyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
keyInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 160)
keyInput.Font = FontConfig
keyInput.TextSize = 18
Instance.new("UICorner", keyInput).CornerRadius = UDim.new(0, 6)

-- Stylized Submit Button
local submitBtn = Instance.new("TextButton", keyFrame)
submitBtn.Text = "SUBMIT"
submitBtn.Size = UDim2.new(0.4, 0, 0.22, 0)
submitBtn.Position = UDim2.new(0.3, 0, 0.7, 0)
submitBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
submitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
submitBtn.Font = FontConfig
submitBtn.TextSize = 18
Instance.new("UICorner", submitBtn).CornerRadius = UDim.new(0, 8)

-- Key Validation Action
local function checkKey()
    if keyInput.Text == "990" then
        keyGui:Destroy()
        LoadConfirmationUI() -- Opens your "ARE YOU SURE?" window
    else
        -- Incorrect key visual flash effect
        submitBtn.BackgroundColor3 = Color3.fromRGB(180, 40, 40)
        submitBtn.Text = "WRONG ANSWER"
        task.wait(1.5)
        submitBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 255)
        submitBtn.Text = "SUBMIT"
    end
end

submitBtn.MouseButton1Click:Connect(checkKey)
keyInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        checkKey()
    end
end)

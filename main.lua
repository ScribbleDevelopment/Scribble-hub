local TweenService = game:GetService("TweenService")
local TextChatService = game:GetService("TextChatService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local FontConfig = Enum.Font.Fondamento

local function Scribblehub()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ScribbleDevelopment/Finished-Scribble-Script-Hub/refs/heads/main/Main"))()
end

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

yesBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
    
    local messages = {"yo to the yo tengomessy SCRIBBLES BEST LOADED", "im sigma", "enjoy the cewl hub"}
    
    for i, msg in ipairs(messages) do
        sendChatMessage(msg)
        if i < #messages then task.wait(0.3) end
    end
    
    Scribblehub()
end)

noBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

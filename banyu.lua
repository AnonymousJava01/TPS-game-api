local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

    local Window = Rayfield:CreateWindow({
   Name = "Banyu Hub | Blue lock Rivals",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Banyu Interface Suite",
   LoadingSubtitle = "by Hutaohub",
   Theme = "Default", -- Check https://[Log in to view URL]

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Banyu Hub"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "https://[Log in to view URL]", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "join the server", -- Use this to tell the user how to get a key
      FileName = "banyu", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

    local MainTab = Window:CreateTab("Blue Lock Rivals home", nil) -- Title, Image
    local Section = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Thanks for executing",
   Content = "join our discord",
   Duration = 6.5,
   Image = ,
})

local Button = MainTab:CreateButton({
   Name = "Inf stamina",
   Callback = function()
   -- The function that takes place when the button is pressed
      local args = {
    [1] = 0/0
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("StaminaService"):WaitForChild("RE"):WaitForChild("DecreaseStamina"):FireServer(unpack(args))  
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "speed",
   Range = {0, 100},
   Increment = 10,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
          game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Button = MainTab:CreateButton({
   Name = "its a hub",
   Callback = function()
loadstring(game:HttpGet("https://[Log in to view URL]"))()
   end,
})

local Toggle = MainTab:CreateToggle({
    Name = "Aim bot ball",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        isTracking = Value  

        if isTracking then
            local Players = game:GetService("Players")
            local RunService = game:GetService("RunService")
            local Camera = workspace.CurrentCamera
            local LocalPlayer = Players.LocalPlayer
            local UIS = game:GetService("UserInputService")
            local ball = nil

            local function lockOnBall()
                if isTracking then
                    ball = workspace:FindFirstChild("Football") or workspace:FindFirstChild("Ball")
                    
                    if ball and ball:IsA("BasePart") then
                        local ballPosition = ball.Position
                        local cameraCFrame = Camera.CFrame
                        Camera.CFrame = CFrame.new(cameraCFrame.Position, ballPosition)
                    end
                end
            end

            RunService.RenderStepped:Connect(function()
                lockOnBall()
            end)
        end
    end,
})

local Slider = MainTab:CreateSlider({
   Name = "Tween Speed",
   Range = {0.1, 1},
   Increment = 0.05,
   Suffix = "s",
   CurrentValue = 0.2,
   Flag = "TweenSpeedSlider",
   Callback = function(Value)
       tweenSpeedForCatch = Value -- Update tween speed
   end,
})

local WaitTimeSlider = MainTab:CreateSlider({
   Name = "Wait Time",
   Range = {0.1, 2},
   Increment = 0.1,
   Suffix = "s",
   CurrentValue = 0.5,
   Flag = "WaitTimeSlider",
   Callback = function(Value)
       waitforacatchtime = Value -- Update wait time
   end,
})

local player = game.Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character.HumanoidRootPart
local head = character.Head
local humanoid = character.Humanoid
local playerStats = player:WaitForChild("PlayerStats")
local hasShot = playerStats:WaitForChild("HasShot")
game:GetService("TweenService")

local tweenSpeedForCatch = 0.2
local waitforacatchtime = 0.5
local scriptEnabled = true

local function tweenPlayerToBall(ball)
    if (humanoidRootPart.Position - ball.Position).Magnitude <= 25 then
        if ball.Position.Y >= head.Position.Y then
            humanoid:ChangeState(Enum.HumanoidStateType.Physics)
            humanoid:Move(Vector3.new(0, 50, 0))
        end
        game:GetService("ReplicatedStorage").Packages.Knit.Services.BallService.RE.Dive:FireServer()
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://18694494525"
        humanoid:LoadAnimation(animation):Play()
        TweenService:Create(humanoidRootPart, TweenInfo.new(tweenSpeedForCatch), { CFrame = ball.CFrame }):Play()
    end
end

hasShot.Changed:Connect(function(value)
    if value == true then
        scriptEnabled = false
        task.wait(1)  -- Wait for 1 second after the shot before enabling again
        scriptEnabled = true
    end
end)

while task.wait(0) do
    if scriptEnabled then
        local ball = Workspace:FindFirstChild("Football") and Workspace.Football:FindFirstChild("Hitbox")
        if ball and (humanoidRootPart.Position - ball.Position).Magnitude <= 25 then
            tweenPlayerToBall(ball)
            task.wait(waitforacatchtime)  -- Wait for the specified time before the next action
        end
    end
end

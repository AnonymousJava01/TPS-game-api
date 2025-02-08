-- v1.6

local ProtectPremium = true

--<>----<>----<>----< Getting Services >----<>----<>----<>--
AnalyticsService = game:GetService("AnalyticsService")
CollectionService = game:GetService("CollectionService")
DataStoreService = game:GetService("DataStoreService")
HttpService = game:GetService("HttpService")
Lighting = game:GetService("Lighting")
MarketplaceService = game:GetService("MarketplaceService")
Players = game:GetService("Players")
ReplicatedFirst = game:GetService("ReplicatedFirst")
ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
ServerScriptService = game:GetService("ServerScriptService")
ServerStorage = game:GetService("ServerStorage")
SoundService = game:GetService("SoundService")
StarterGui = game:GetService("StarterGui")
StarterPack = game:GetService("StarterPack")
StarterPlayer = game:GetService("StarterPlayer")
TeleportService = game:GetService("TeleportService")
TweenService = game:GetService("TweenService")
Teams = game:GetService("Teams")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
UserInputService = game:GetService("UserInputService")
VirtualInputManager = game:GetService("VirtualInputManager")
ContextActionService = game:GetService("ContextActionService")
GuiService = game:GetService("GuiService")
print("ClientMonsterTools.lua loaded")


--<>----<>----<>----< Anti Afk >----<>----<>----<>--
game.Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
    print("Roblox Tried to kick you but we didn't let them kick you :D")
end)
warn("[Anti Afk] - loaded successfully") 

--<>----<>----<>----< Main Script >----<>----<>----<>--
print("[Banyu Hub | Fisch]: loading...")
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Fisch | Banyu Hub",
    SubTitle = "v1.6",
    TabWidth = 150,
    Size = UDim2.fromOffset(600, 400),
    Acrylic = false,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Creating tabs
local Tabs = {
    Home = Window:AddTab({ Title = "Home", Icon = "home" }),
    Main = Window:AddTab({ Title = "Main", Icon = "code" }),
    Teleport = Window:AddTab({ Title = "Teleports", Icon = "compass" }),
    Event = Window:AddTab({ Title = "Event", Icon = "cherry" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "file-text" }),
    Fun = Window:AddTab({ Title = "Fun", Icon = "coffee" }),
    Webhook = Window:AddTab({ Title = "Webhook", Icon = "clock" }),
    Premium = Window:AddTab({ Title = "Premium", Icon = "diamond" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

-- Locals
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
local ActiveFolder = Workspace:FindFirstChild("active")
local PlayerGUI = LocalPlayer:FindFirstChildOfClass("PlayerGui")
local teleportMethod = "Instant"  -- Set this to either "Instant" or "Tween"
local moveSpeed = 100 -- Default speed for smooth movement
local arrivalThreshold = 1 -- How close to target before stopping
local slowDownDistance = 20 -- Distance within which to slow down

function TeleportPlayer(TargetCFrame)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:FindFirstChild("HumanoidRootPart")

    if rootPart then
        local targetPosition = TargetCFrame.Position

        -- "Instant" teleport method
        if teleportMethod == "Instant" then
            rootPart.CFrame = CFrame.new(targetPosition)
            return
        end

        -- "Tween" (smooth movement) teleport method with conditional damping
        while (rootPart.Position - targetPosition).Magnitude > arrivalThreshold do
            local currentPos = rootPart.Position
            local distance = (targetPosition - currentPos).Magnitude

            -- Adjust speed only when within the slowdown distance
            local adjustedSpeed = distance < slowDownDistance and math.clamp(distance * 0.5, 5, moveSpeed) or moveSpeed

            local direction = (targetPosition - currentPos).Unit
            local newPosition = currentPos + direction * adjustedSpeed * game:GetService("RunService").Heartbeat:Wait()
            rootPart.CFrame = CFrame.new(newPosition)
        end
    end
end
-- Varbiables

local AutoFreeze = false
local autoShake = false
local AutoFish = false
local autoShake2 = false
local autoShake3 = false
local AutoZoneCast = false
local autoShakeDelay = 0.00000000000000001
local autoReel = false
local AutoCast = false
local AntiDrown = false
local WebhookLog = false
local AutoSell = false
local AntiAfk = false
local AutoAppraiser = false

local Keybind = Enum.KeyCode.F

-- Rest

PlayerGUI.ChildAdded:Connect(function(GUI)
    if GUI:IsA("ScreenGui") then
        if GUI.Name == "reel" and autoReel then
            local reelfinishRemote = game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished ")
            if reelfinishRemote then
                while GUI do
                    task.wait(2)
                    reelfinishRemote:FireServer(100, true)
                end
            end
        end
    end
end)
function AutoFish5()
    if autoShake3 then
        task.spawn(function()
            while AutoFish do
                local PlayerGUI = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                local shakeUI = PlayerGUI:FindFirstChild("shakeui")
                if shakeUI and shakeUI.Enabled then
                    local safezone = shakeUI:FindFirstChild("safezone")
                    if safezone then
                        local button = safezone:FindFirstChild("button")
                        if button and button:IsA("ImageButton") and button.Visible then
                            if autoShake then
                                local pos = button.AbsolutePosition
                                local size = button.AbsoluteSize
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, true, game:GetService("Players").LocalPlayer, 0)
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, false, game:GetService("Players").LocalPlayer, 0)
                            elseif autoShake2 then
                                GuiService.SelectedObject = button
                                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                            end
                        end
                    end
                end
                task.wait()
            end
        end)
    else
        task.spawn(function()
            while AutoFish do
                task.wait(autoShakeDelay)
                local PlayerGUI = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
                local shakeUI = PlayerGUI:FindFirstChild("shakeui")
                if shakeUI and shakeUI.Enabled then
                    local safezone = shakeUI:FindFirstChild("safezone")
                    if safezone then
                        local button = safezone:FindFirstChild("button")
                        if button and button:IsA("ImageButton") and button.Visible then
                            if autoShake then
                                local pos = button.AbsolutePosition
                                local size = button.AbsoluteSize
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, true, game:GetService("Players").LocalPlayer, 0)
                                VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, false, game:GetService("Players").LocalPlayer, 0)
                            elseif autoShake2 then
                                GuiService.SelectedObject = button
                                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                            end
                        end
                    end
                end
            end
        end)
    end
end
function ZoneCasting()
    if not ProtectPremium then
        return
    end
    spawn(function()
        while AutoZoneCast do
            local player = game.Players.LocalPlayer
            local character = player.Character
            if character then
                local tool = character:FindFirstChildOfClass("Tool")
                if tool then
                    local hasBobber = tool:FindFirstChild("bobber")
                    if hasBobber then
                        local ropeConstraint = hasBobber:FindFirstChild("RopeConstraint")
                        if ropeConstraint then
                            ropeConstraint.Length = 200000
                        end

                        local platformSize = Vector3.new(10, 1, 10)
                        local platformPositionOffset = Vector3.new(0, -4, 0)

                        -- Custom Zones
                        if selectedZoneCast == "Bluefin Tuna Abundance" then
                            local selectedZone = Workspace.zones.fishing:FindFirstChild("Deep Ocean")
                            if selectedZone then
                                local abundanceValue = selectedZone:FindFirstChild("Abundance")
                                if abundanceValue and abundanceValue.Value == "Bluefin Tuna" then
                                    local bobberPosition = CFrame.new(selectedZone.Position.X, 126.564, selectedZone.Position.Z)
                                    hasBobber.CFrame = bobberPosition
                                    
                                    local platform = Instance.new("Part")
                                    platform.Size = platformSize
                                    platform.Position = hasBobber.Position + platformPositionOffset
                                    platform.Anchored = true
                                    platform.Parent = hasBobber
                                    platform.BrickColor = BrickColor.new("Bright blue")
                                    platform.Transparency = 1.000
                                end
                            end
                        elseif selectedZoneCast == "Swordfish Abundance" then
                            local selectedZone = Workspace.zones.fishing:FindFirstChild("Deep Ocean")
                            if selectedZone then
                                local abundanceValue = selectedZone:FindFirstChild("Abundance")
                                if abundanceValue and abundanceValue.Value == "Swordfish" then
                                    local bobberPosition = CFrame.new(selectedZone.Position.X, 126.564, selectedZone.Position.Z)
                                    hasBobber.CFrame = bobberPosition
                                    
                                    local platform = Instance.new("Part")
                                    platform.Size = platformSize
                                    platform.Position = hasBobber.Position + platformPositionOffset
                                    platform.Anchored = true
                                    platform.Parent = hasBobber
                                    platform.BrickColor = BrickColor.new("Bright blue")
                                    platform.Transparency = 1.000
                                end
                            end
                        else
                            -- Default Zones
                            local selectedZone = Workspace.zones.fishing:FindFirstChild(selectedZoneCast)
                            if selectedZone then
                                local bobberPosition
                                if selectedZoneCast == "FischFright24" then
                                    bobberPosition = CFrame.new(selectedZone.Position.X, 126, selectedZone.Position.Z)
                                elseif selectedZoneCast == "Isonade" then
                                    bobberPosition = CFrame.new(selectedZone.Position.X, 126, selectedZone.Position.Z)
                                elseif selectedZoneCast == "Deep Ocean" then
                                    bobberPosition = CFrame.new(1521, 126, -3543)
                                elseif selectedZoneCast == "Desolate Deep" then
                                    bobberPosition = CFrame.new(-1068, 126, -3108)
                                elseif selectedZoneCast == "Harvesters Spike" then
                                    bobberPosition = CFrame.new(-1234, 126, 1748)
                                elseif selectedZoneCast == "Moosewood Docks" then
                                    bobberPosition = CFrame.new(345, 126, 214)
                                elseif selectedZoneCast == "Moosewood Ocean" then
                                    bobberPosition = CFrame.new(890, 126, 465)
                                elseif selectedZoneCast == "Moosewood Ocean Mythical" then
                                    bobberPosition = CFrame.new(270, 126, 52)
                                elseif selectedZoneCast == "Moosewood Pond" then
                                    bobberPosition = CFrame.new(526, 126, 305)
                                elseif selectedZoneCast == "Mushgrove Water" then
                                    bobberPosition = CFrame.new(2541, 126, -792)
                                elseif selectedZoneCast == "Ocean" then
                                    bobberPosition = CFrame.new(-5712, 126, 4059)
                                elseif selectedZoneCast == "Roslit Bay" then
                                    bobberPosition = CFrame.new(-1650, 126, 504)
                                elseif selectedZoneCast == "Roslit Bay Ocean" then
                                    bobberPosition = CFrame.new(-1825, 126, 946)
                                elseif selectedZoneCast == "Roslit Pond" then
                                    bobberPosition = CFrame.new(-1807, 141, 599)
                                elseif selectedZoneCast == "Roslit Pond Seaweed" then
                                    bobberPosition = CFrame.new(-1804, 141, 625)
                                elseif selectedZoneCast == "Scallop Ocean" then
                                    bobberPosition = CFrame.new(16, 126, 730)
                                elseif selectedZoneCast == "Snowcap Ocean" then
                                    bobberPosition = CFrame.new(2308, 126, 2200)
                                elseif selectedZoneCast == "Snowcap Pond" then
                                    bobberPosition = CFrame.new(2777, 275, 2605)
                                elseif selectedZoneCast == "Sunstone" then
                                    bobberPosition = CFrame.new(-645, 126, -955)
                                elseif selectedZoneCast == "Terrapin Ocean" then
                                    bobberPosition = CFrame.new(-57, 126, 2011)
                                elseif selectedZoneCast == "The Arch" then
                                    bobberPosition = CFrame.new(1076, 126, -1202)
                                elseif selectedZoneCast == "Vertigo" then
                                    bobberPosition = CFrame.new(-75, -740, 1200)
                                end

                                hasBobber.CFrame = bobberPosition
                                
                                local platform = Instance.new("Part")
                                platform.Size = platformSize
                                platform.Position = hasBobber.Position + platformPositionOffset
                                platform.Anchored = true
                                platform.Parent = hasBobber
                                platform.BrickColor = BrickColor.new("Bright blue")
                                platform.Transparency = 1.000
                            end
                        end
                    else
                        print("Bobber not found in the tool.")
                    end
                else
                    print("No tool found in the character.")
                end
            end
            task.wait(0.01)
        end
    end)
end

function AntiAfk2()
    spawn(function()
        while AntiAfk do
            game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("afk"):FireServer(false)
            task.wait(0.01)
        end
    end)
end           
PlayerGUI.ChildAdded:Connect(function(GUI)
    if GUI:IsA("ScreenGui") then
    elseif GUI.Name == "reel" and autoReel then
        local reelfinishedEvent = ReplicatedStorage:WaitForChild("events"):WaitForChild("reelfinished")
        if reelfinishedEvent then
            while GUI do
                task.wait(2)
                reelfinishedEvent:FireServer(100, false)
            end
        end
    end
end)
function Pidoras()
    spawn(function()
        while AutoCast do
            local player = game.Players.LocalPlayer
            local character = player.Character

            if character then
                local tool = character:FindFirstChildOfClass("Tool")

                if tool then
                    local hasBobber = tool:FindFirstChild("bobber")

                    if not hasBobber then
                        local castEvent = tool:FindFirstChild("events") and tool.events:FindFirstChild("cast")

                        if castEvent then
                            local Random = math.random() * (0.5 - 0.1) + 90
                            local FRandom = string.format("%.4f", Random)
                            print(FRandom)
                            
                            local Random2 = math.random(0.1, 0.5)
                            castEvent:FireServer(Random2)

                            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                            if humanoidRootPart then
                                humanoidRootPart.Anchored = false
                            end
                        end
                    end
                end
                task.wait(1)
            end
        end
    end)
end
NoclipConnection = RunService.Stepped:Connect(function()
    if Noclip == true then
        if LocalCharacter ~= nil then
            for i, v in pairs(LocalCharacter:GetDescendants()) do
                if v:IsA("BasePart") and v.CanCollide == true then
                    v.CanCollide = false
                end
            end
        end
    end
end)

local initialPosition

function rememberPosition()
    spawn(function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        local rootPart = character:WaitForChild("HumanoidRootPart")
 
        local initialCFrame = rootPart.CFrame
 
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bodyVelocity.Parent = rootPart
 
        local bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bodyGyro.D = 100
        bodyGyro.P = 10000
        bodyGyro.CFrame = initialCFrame
        bodyGyro.Parent = rootPart
 
        while AutoFreeze do
            rootPart.CFrame = initialCFrame
            task.wait(0.01)
        end
 
        if bodyVelocity then
            bodyVelocity:Destroy()
        end
        if bodyGyro then
            bodyGyro:Destroy()
        end
    end)
end
function WebhookManager()
    spawn(function()
        while WebhookLog do
            task.wait(WebhookDelay)
            local OSTime = os.time()
            local playerLocalTime = os.date('*t', OSTime)
            local formattedLocalTime = string.format('%02d:%02d:%02d',
                                             playerLocalTime.hour,
                                             playerLocalTime.min,
                                             playerLocalTime.sec)
            
            local player = game.Players.LocalPlayer
            local playerUserId = player.UserId
            local playerProfileUrl = "https://www.roblox.com/users/" .. playerUserId .. "/profile"

            local MoneyPlayer = game:GetService("Players").LocalPlayer.leaderstats["C$"].Value
            local LvlPlayer = game:GetService("Players").LocalPlayer.leaderstats.Level.Value

            local Embed = {
                title = 'Hutao Hub',
                color = 0x8B26BB,
                fields = {
                    { name = 'Player Profile', value = playerProfileUrl },
                    { name = '', value = '', },
                    { name = 'C$ - Money💸', value = '```' .. MoneyPlayer .. '```', inline = true },
                    { name = 'Fishing Level🎣', value = '```' .. LvlPlayer .. '```', inline = true },
                    { name = '', value = '', },
                    { name = 'Current Local Time', value = formattedLocalTime },
                },
                timestamp = os.date('!%Y-%m-%dT%H:%M:%SZ', OSTime),
            }
            local success, response = pcall(function()
                return (syn and syn.request or http_request) {
                    Url = WebhookUrl,
                    Method = 'POST',
                    Headers = { ['Content-Type'] = 'application/json' },
                    Body = game:GetService('HttpService'):JSONEncode({
                        username = 'Hutao Hub | Fisch',
                        avatar_url = 'https://cdn.discordapp.com/attachments/1212732144065974302/1307381342044164106/ic_launcher.png?ex=673a1941&is=6738c7c1&hm=2360301f339e90044843189503a05b957640a88a116d5336835955907077e3a1&',
                        embeds = { Embed }
                    }),
                }
            end)
        end
    end)
end
function AutoSellz()
    spawn(function()
        while AutoSell do
            SellFishAndReturnAll()
            task.wait(AutoSellDelay)
        end
    end)
end
function Appraise()
    spawn(function()
        while AutoAppraiser do
            workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Appraiser"):WaitForChild("appraiser"):WaitForChild("appraise"):InvokeServer()
            task.wait(0.1)
        end
    end)
end

function SellFishAndReturnAll()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")
    local currentPosition = rootPart.CFrame
    local sellPosition = CFrame.new(464, 151, 232)
    local wasAutoFreezeActive = false
    if AutoFreeze then
        wasAutoFreezeActive = true
        AutoFreeze = false
    end
    rootPart.CFrame = sellPosition
    task.wait(0.5)
    workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sellall"):InvokeServer()
    task.wait(3)

    rootPart.CFrame = currentPosition

    if wasAutoFreezeActive then
        AutoFreeze = true
        rememberPosition()
    end
end
function SellFishAndReturnOne()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")
    local currentPosition = rootPart.CFrame
    local sellPosition = CFrame.new(464, 151, 232)
    local wasAutoFreezeActive = false
    if AutoFreeze then
        wasAutoFreezeActive = true
        AutoFreeze = false
    end
    rootPart.CFrame = sellPosition
    task.wait(0.5)
    workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sell"):InvokeServer()
    task.wait(3)

    rootPart.CFrame = currentPosition

    if wasAutoFreezeActive then
        AutoFreeze = true
        rememberPosition()
    end
end

do
    local _25ms=Tabs.Home:AddButton({
        Title = "Copy Discord Invite",
        Description = "https://discord.com/invite/PXCD5NCY9t, join for more leaks",
        Callback = function()
            setclipboard("https://discord.com/invite/PXCD5NCY9t")
        end
    })
    local section = Tabs.Home:AddSection("Change Log:")
    Tabs.Home:AddParagraph({
        Title = "Information",
        Content = "[🟩] - Added\n[🟧] - Changed\n[🟥] - Removed\n[⭐] - Premium Feature"
    })

    Tabs.Home:AddParagraph({
        Title = "v1.6 - Fixes!",
        Content = "[⭐] - Zone Casting Fix\n[⭐] - Auto Shake No Delay fix speed\n[🟩] - Teleport to Midas Rod\n[🟧] - Better sell buttons\n[🟧] - Auto Shake Dropdown\n[🟧] - Auto Cast & Reel & Shake in one toggle now"
    })
    Tabs.Home:AddParagraph({
        Title = "v1.5 - Meow!",
        Content = "[⭐] - Zone Casting\n[🟩] - Player Move Speed\n[🟩] - Player Jump Power\n[🟩] - Fly\n[🟩] - Roblox Radio\n[🟩] - Auto Appraiser\n[🟧] - Better Freeze\n[🟧] - Auto Shake (mouse)\n[🟧] - Auto Cast & Reel (one button)"
    })
    Tabs.Home:AddParagraph({
        Title = "v1.4 - Buttons!",
        Content = "[🟩] - 4 buttons in teleport\n[🟩] - Button to enable fps cap"
    })
    Tabs.Home:AddParagraph({
        Title = "v1.3 - FpS",
        Content = "[🟩] - Fps Cap"
    })
    Tabs.Home:AddParagraph({
        Title = "v1.2 - Fishing",
        Content = "[⭐] - No Shake Delay all\n[🟩] - AntiAFK added\n[🟩] - Auto Bait\n[🟩] - Remove all flags (fps)\n[🟩] - Fish Area teleport\n[🟩] - Auto Cast more safest\n[🟧] - Better Freeze\n[🟧] - Shake Delay minimum 0.2\n[🟧] - Auto Shake v1 and v2 better"
    })
    Tabs.Home:AddParagraph({
        Title = "v1.1 - Fixes",
        Content = "[🟧] Phantom Clicks - fixed\n[🟧] Better Freeze\n[⭐] - No Shake Delay (Mouse Clicks)"
    })
    Tabs.Home:AddParagraph({
        Title = "v1 - Meow",
        Content = "[🟧] Auto Shake Speed 0.3-1\n[🟧] Webhook Loger fixed\n[🟩] Black Screen\n[🟩] White Screen\n[🟩] FpS Booster\n[⭐] No Shake Delay (Premium)"
    })
    Tabs.Home:AddParagraph({
        Title = "v0.9 - Fixes",
        Content = "[🟩] ChangeLog information\n[🟧] Auto Freeze fix\n[🟥] Auto Cast Chance (because bugs ~solara)\n[🟩] Auto Cast - Random Chance from 90 to 99"
    })
    Tabs.Home:AddParagraph({
        Title = "v0.8 - Webhook & Fishing",
        Content = "[🟩] Webhook fixed bugs\n[🟧] Fixed Auto Freeze\n[🟩] Auto Cast chance\n[🟩] Auto sell fish"
    })
    Tabs.Home:AddParagraph({
        Title = "v0.7 - Webhook",
        Content = "[🟩] Webhook URL\n[🟩] Webhook Delay messages\n[🟩] Webhook On/Off"
    })
    Tabs.Home:AddParagraph({
        Title = "v0.6 - Items",
        Content = "[🟧] Teleport Items - +2 rods"
    })
    Tabs.Home:AddParagraph({
        Title = "v0.5 - Fixes",
        Content = "[🟧] Bigger UI\n[🟩] Auto Shake V2\n[🟧] Auto Shake more information\n[🟩] Teleports Place - New Location\n[🟩] Teleport NPCs - Updated\n[🟩] Ui Toggle (Mobile)"
    })
    Tabs.Home:AddParagraph({
        Title = "v0.4 - Fixes",
        Content = "[🟩] Freeze Character\n[🟩] Auto Cast Fix Bugs (v0.3)"
    })
    Tabs.Home:AddParagraph({
        Title = "v0.3 - Teleports",
        Content = "[🟧] Fixed NPCs teleport\n[🟧] Fixed Item Grabber (🎃)\n[🟩] Teleport Fish Radar\n[🟩] Teleport Basic Diving Gear"
    })
    Tabs.Home:AddParagraph({
        Title = "v0.2 - Bug Fixes",
        Content = "[🟧] Auto Shake\n[🟩] Auto Shake Delay\n[🟧] Auto Reel\n[🟧] Auto Cast\n[🟩] Teleport Place\n[🟩] Teleport NPCs\n[🟩] Teleport Items\n[🟩] Item Graber (🎃)\n[🟩] Noclip\n[🟩] Infinity Oxygen"
    })
    Tabs.Home:AddParagraph({
        Title = "v0.1 - Release",
        Content = "[🟩] Auto Fish\n[🟩] Auto Sell All"
    })

    local section = Tabs.Premium:AddSection("Fishing⭐")
    local AutoShakeT3 = Tabs.Premium:AddToggle("MyAutoShake3", {Title = "No Shake Delay | Best", Default = false })
    AutoShakeT3:OnChanged(function(Value)
        if ProtectPremium == true then
            autoShake3 = AutoShakeT3.Value
        else
            warn("No Premium")
        end
    end)
    local DropdownZoneCast = Tabs.Premium:AddDropdown("DropdownZoneCast", {
        Title = "Select zone to cast anywhere",
        Values = {"FischFright24", "Isonade", "Bluefin Tuna Abundance", "", "Deep Ocean", "Desolate Deep", "Harvesters Spike", "Moosewood Docks", "Moosewood Ocean", "Moosewood Ocean Mythical", "Moosewood Pond", "Mushgrove Water", "Ocean", "Roslit Bay", "Roslit Bay Ocean", "Roslit Pond", "Roslit Pond Seaweed", "Scallop Ocean", "Snowcap Ocean", "Snowcap Pond", "Sunstone", "Terrapin Ocean", "The Arch", "Vertigo"},
        Multi = false,
    })
    DropdownZoneCast:OnChanged(function(Value)
        print("Dropdown changed:", Value)
        selectedZoneCast = Value
    end)
    Tabs.Premium:AddParagraph({
        Title = "Zone Helper",
        Content = "First 3 - Event zones\nFischFright24 - Fright Pool"
    })
    
    local ToggleZoneCast1214 = Tabs.Premium:AddToggle("ToggleZoneCast1214", {Title = "Enable cast selected zone", Default = false })
    ToggleZoneCast1214:OnChanged(function(Value)
        AutoZoneCast = Value
        if ProtectPremium == true then
            if AutoZoneCast then
                ZoneCasting()
            end
        else
            print("No Premium")
        end
    end)

    local section = Tabs.Main:AddSection("Fishing")

    local DropdownShake = Tabs.Main:AddDropdown("DropdownShake", {
        Title = "Select Auto Shake Mode:",
        Description = "Mouse - Make sure to hide UI and toggle chat off in order for Auto Shake to work!",
        Values = {"Mouse", "Phantom"},
        Multi = false,
        Default = 1,
    })
    DropdownShake:OnChanged(function(Value)
        ShakeMode = Value
        print("Auto Shake Mode:", Value)
    end)   

    local Slider = Tabs.Main:AddSlider("Slider", {
        Title = "AutoShake Delay",
        Description = "Change the delay between every shake",
        Default = 2,
        Min = 0.00000000000000001,
        Max = 1,
        Rounding = 1,
        Callback = function(Value)
            autoShakeDelay = Value
        end
    })
    Slider:OnChanged(function(Value)
        autoShakeDelay = Value
    end)
    Slider:SetValue(0.00000000000000001)
    
    local autoReelCastShakeT = Tabs.Main:AddToggle("autoReelCastShakeT", {Title = "Auto Fish", Default = false })
    autoReelCastShakeT:OnChanged(function(Value)
        autoReel = Value
        AutoCast = Value
        if AutoCast then
            Pidoras()
        end
        if ShakeMode == "Mouse" then
            autoShake = Value
        elseif ShakeMode == "Phantom" then
            autoShake2 = Value
        end
        AutoFish = Value
        AutoFish5()
        if AutoCast == true and LocalCharacter:FindFirstChildOfClass("Tool") ~= nil then
            local Tool = LocalCharacter:FindFirstChildOfClass("Tool")
            if Tool:FindFirstChild("events"):WaitForChild("cast") ~= nil then
                local Random = math.random() * (0.5 - 0.1) + 90
                local FRandom = string.format("%.4f", Random)
                print(FRandom)
                local Random2 = math.random(0.1, 0.5)
                Tool.events.cast:FireServer(Random2)
            end
        end
    end)
    
    local AutoFreezeT = Tabs.Main:AddToggle("MyFreeze", {
        Title = "Freeze Position",
        Description = "Freezes player position and rotation",
        Default = false
    })
    AutoFreezeT:OnChanged(function()
        AutoFreeze = AutoFreezeT.Value
        if AutoFreeze then
            rememberPosition()
        end
    end)

    local AntiAfk3 = Tabs.Main:AddToggle("AntiAfk3", {Title = "Anti-AFK", Description = "Prevents the player from being marked as AFK", Default = false })
    AntiAfk3:OnChanged(function(Value)
        AntiAfk = AntiAfk3.Value
        AntiAfk2()
    end)

    local section = Tabs.Main:AddSection("Additional")

    local AutoSellF = Tabs.Main:AddToggle("AutoSellF", {Title = "Auto Sell Fish", Default = false })
    AutoSellF:OnChanged(function()
        AutoSell = AutoSellF.Value
        AutoSellz()
    end)

    local SliderSell = Tabs.Main:AddSlider("SliderSell", {
        Title = "Selling All fish every ? seconds",
        Description = "",
        Default = 60,
        Min = 1,
        Max = 600,
        Rounding = 1,
        Callback = function(Value)
            AutoSellDelay = Value
        end
    })

    Tabs.Main:AddButton({
        Title = "Sell one fish",
        Description = "Need to hold fish",
        Callback = function()
            SellFishAndReturnOne()
        end
    })
    Tabs.Main:AddButton({
        Title = "Sell All fishs",
        Description = "Selling all fish anywhere!",
        Callback = function()
            Window:Dialog({
                Title = "You sure want sell all fish?",
                Content = "",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            SellFishAndReturnAll()
                            print("Fish Sold.")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Pidr.")
                        end
                    }
                }
            })
        end
    })

    local space = Tabs.Teleport:AddSection("Custom fishing position")

local savedCFrame = nil
local savedWithPart = false
local saveFileName = "HutaoHub/Fisch/lastPosition.txt"
local spawnedPart = nil

if not isfolder("HutaoHub/Fisch") then
    makefolder("HutaoHub/Fisch")
end

function writePositionToFile(position, withPart)
    if position then
        local rotX, rotY, rotZ = position:ToOrientation()
        local data = {
            X = position.Position.X,
            Y = position.Position.Y,
            Z = position.Position.Z,
            RotX = rotX,
            RotY = rotY,
            RotZ = rotZ,
            WithPart = withPart
        }
        writefile(saveFileName, game.HttpService:JSONEncode(data))
        SendNotif("Teleport Notify", "Position saved successfully.", 2)
    end
end

function readPositionFromFile()
    if isfile(saveFileName) then
        local data = game.HttpService:JSONDecode(readfile(saveFileName))
        return CFrame.new(data.X, data.Y, data.Z) * CFrame.Angles(data.RotX, data.RotY, data.RotZ), data.WithPart
    else
        SendNotif("Teleport Notify", "No saved position file found.", 2)
        return nil, false
    end
end

-- Button to save position with part
Tabs.Teleport:AddButton({
    Title = "Save Position with Part",
    Description = "Saves the player's position and spawns a 10x1x10 part",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        if not spawnedPart then
            spawnedPart = Instance.new("Part")
            spawnedPart.Size = Vector3.new(10, 1, 10)
            spawnedPart.Anchored = true
            spawnedPart.Parent = workspace
        end
        spawnedPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.new(0, -character.HumanoidRootPart.Size.Y / 2 - 0.5, 0)
        savedCFrame = spawnedPart.CFrame
        savedWithPart = true
        writePositionToFile(savedCFrame, savedWithPart)
    end
})

-- Button to save position without part
Tabs.Teleport:AddButton({
    Title = "Save Position without Part",
    Description = "Saves the player's position without spawning a part",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        savedCFrame = character.HumanoidRootPart.CFrame
        savedWithPart = false
        writePositionToFile(savedCFrame, savedWithPart)
    end
})

-- Button to teleport to the last saved position
Tabs.Teleport:AddButton({
    Title = "Teleport to Last Saved Position",
    Description = "Teleports the player to the last saved position",
    Callback = function()
        local loadedCFrame, loadedWithPart = readPositionFromFile()

        if loadedCFrame then
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()

            if loadedWithPart then
                if not spawnedPart then
                    spawnedPart = Instance.new("Part")
                    spawnedPart.Size = Vector3.new(10, 1, 10)
                    spawnedPart.Anchored = true
                    spawnedPart.Parent = workspace
                end
                spawnedPart.CFrame = loadedCFrame
            else
                if spawnedPart then
                    spawnedPart:Destroy()
                    spawnedPart = nil
                end
            end

            -- Use the loaded CFrame directly for teleporting
            TeleportPlayer(loadedCFrame)

            SendNotif("Teleport Notify", "Teleported to the last saved position", 2)
        else
            SendNotif("Teleport Notify", "No saved position found.", 2)
        end
    end
})

local Locations = {
    ["Brinepool"] = CFrame.new(-1794, -143, -3315),
    ["Desolate Deep"] = CFrame.new(-1659, -214, -2847),
    ["Desolate Pocket"] = CFrame.new(-1500, -235, -2856),
    ["Keepers Altar"] = CFrame.new(1297, -805, -298),
    ["MooseWood"] = CFrame.new(384, 134, 232),
    ["Mushgrove Swamp"] = CFrame.new(2438, 132, -689),
    ["Deep Ocean"] = CFrame.new(-4665, 135, 1758),
    ["Roslit"] = CFrame.new(-1482, 138, 738),
    ["Roslit Volcano"] = CFrame.new(-1907, 165, 316),
    ["Snowcap"] = CFrame.new(2618, 146, 2402),
    ["Sunstone"] = CFrame.new(-918, 135, -1123),
    ["Terrapin"] = CFrame.new(-189, 143, 1926),
    ["Vertigo"] = CFrame.new(-117, -515, 1138),
    ["Statue of Sovereignty"] = CFrame.new(26, 159, -1037),
    ["Forsaken Shores"] = CFrame.new(-2655, 183, 1671),
    ["The Depths"] = CFrame.new(502, -707, 1234),
    ["Anchient Isle"] = CFrame.new(6056, 196, 283),
    ["Grand Reef"] = CFrame.new(-3596, 154, 522),
    ["Atlantis"] = CFrame.new(-4300, -580, 1800)
}

local subLocations = {
    ["Desolate Shop"] = CFrame.new(-994, -245, -2723),
    ["Enchant Altar"] = CFrame.new(1312, -802, -87),
    ["Gamma"] = CFrame.new(2231, -792, 1012),
    ["Anchient Temple"] = CFrame.new(-3155, -755, 2202),
    ["Rod Crafting"] = CFrame.new(-3162, -746, 1685),
    ["Vertigo Gate"] = CFrame.new(16, -706, 1225),
    ["Input Abyssal Relic"] = CFrame.new(1206, -715, 1315),
    ["Input Hexed Relic"] = CFrame.new(1050, -631, 1318),
    ["Input Relic in New Rod"] = CFrame.new(2730, 130, -825)
}

local NPCLocations = {
    ["Appraiser"] = CFrame.new(444, 151, 210),
    ["Witch (Event Pot)"] = CFrame.new(405, 135, 317),
    ["Merchant"] = CFrame.new(467, 151, 231),
    ["Merlin (Relic Seller)"] = CFrame.new(-932, 224, -988),
    ["Lantern Guy"] = CFrame.new(-39, -247, 199),
    ["Jack Marrow"] = CFrame.new(-2825, 214, 1516)
}

local RodLocation = {
    ["Trident Rod(150k)"] = CFrame.new(-1484, -226, -2202),
    ["Kings Rod(120k)"] = CFrame.new(1379, -807, -302),
    ["Magma Rod(need pufferfish)"] = CFrame.new(-1847, 166, 161),
    ["Destiny Rod(190k)"] = CFrame.new(988, 131, -1238),
    ["Nocturnal Rod(11k)"] = CFrame.new(-144, -515, 1142),
    ["Reinforced Rod(20k)"] = CFrame.new(-991, -244, -2693),
    ["Magnet Rod(15k)"] = CFrame.new(-197, 133, 1932),
    ["Carbon Rod(2k)"] = CFrame.new(450, 151, 224),
    ["Steady Rod(7k)"] = CFrame.new(-1511, 142, 762),
    ["Scurvy Rod(50k)"] = CFrame.new(-141, -512, 1145),
    ["Aurora Rod(90k+500k)"] = CFrame.new(-141, -512, 1145),
    ["Rod Of The Depths(750k)"] = CFrame.new(1703, -903, 1443),
    ["Stone Rod(3K)"] = CFrame.new(5498, 144, -317),
    ["Phoenix Rod(40K)"] = CFrame.new(5965, 270, 847),
    ["Arctic Rod(25K)"] = CFrame.new(19580, 133, 5303),
    ["Summit Rod(300K)"] = CFrame.new(20211, 737, 5708),
    ["Avalanche Rod(35K)"] = CFrame.new(19769, 414, 5415),
    ["Heavenly Rod(1,75M)"] = CFrame.new(20025, -466, 7114),
    ["Depthseeker Rod(125K)"] = CFrame.new(-4465, -604, 1874),
    ["Champions Rod(1M)"] = CFrame.new(-4277, -606, 1838),
    ["Tempest Rod(1,85M)"] = CFrame.new(-4928, -595, 1857),
    ["Abyssal Specter Rod(1M)"] = CFrame.new(-3804, -567, 1870),
    ["Poseidon Rod(1,55M)"] = CFrame.new(-4086, -559, 895),
    ["Zeus Rod(1,7M)"] = CFrame.new(-4272, -629, 2665),
    ["Kraken Rod(1,33M)"] = CFrame.new(-4415, -997, 2055)
}

local TotemLocation = {
    ["Sundial (Day/Night)"] = CFrame.new(-1147, 135, -1074),
    ["Smokescreen (Fog)"] = CFrame.new(2793, 140, -629),
    ["Windset (Windy)"] = CFrame.new(2852, 180, 2703),
    ["Aurora Totem(Luck)"] = CFrame.new(-1811, -137, -3282),
    ["Tempest (Rainy)"] = CFrame.new(36, 135, 1946),
    ["Meteor Totem(75k)"] =CFrame.new(-1948, 274, 228),
    ["Avalanche Totem(150K)"] = CFrame.new(19709, 469, 6057),
    ["Poseidon Warth Totem(1,5M)"] = CFrame.new(-3953, -556, 853),
    ["Zeus Strom Totem(1,5M)"] = CFrame.new(-4325, -630, 2687)
}

local CastLocation = {
    ["The Depths"] = CFrame.new(939, -738, 1457),
    ["Vertigo"] = CFrame.new(-107, -734, 1214),
    ["Forsaken"] = CFrame.new(-2677, 165, 1755),
    ["Desolate Deep"] = CFrame.new(-1636, -231, -2895),
    ["Snowcap Cave"] = CFrame.new(2818, 133, 2721),
    ["Keeper Altar"] = CFrame.new(1415, -837, -227),
    ["Terappin"] = CFrame.new(-57, 132, 2024),
    ["Roslit bay"] = CFrame.new(-1657, 148, 501),
    ["Roslit pond"] = CFrame.new(-1786, 148, 637),
    ["SunStone Deck"] = CFrame.new(-937, 132, -1107),
    ["Bluefin tuna"] = CFrame.new(-1251, 136, 1560),
    ["The_Arch"] = CFrame.new(1283.30896, 130.923569, -1165.29602, 1, -5.89772364e-09, -3.3183043e-15, 5.89772364e-09, 1, 3.63913486e-08, 3.10367822e-15, -3.63913486e-08, 1),
    ["Mushgrove_Stone"] = CFrame.new(2525.36011, 131.000015, -776.184021, 1, 1.90145943e-08, -3.24206519e-15, -1.90145943e-08, 1, -1.06596836e-07, 1.21516956e-15, 1.06596836e-07, 1),
    ["Isonade"] = CFrame.new(-1060.99902, 121.164787, 953.996033, 0.999958456, 0.000633197487, -0.00909138657, -0.000568434712, 0.999974489, 0.00712434994, 0.00909566507, -0.00711888634, 0.999933302),
    ["Anchient Pond"] = CFrame.new(6039, 197, 338),
    ["Anchient WaterFall"] = CFrame.new(5808, 136, 408),
    ["Northern Cave"] = CFrame.new(19841, 439, 5613),
    ["Northern Canal"] = CFrame.new(20295, 272, 5516),
    ["Grand Reef Ocean"] = CFrame.new(-3589, 132, 572),
    ["Kraken Pool"] = CFrame.new(-4295, -991, 1792)
}

local MountainLocation = {
    ["Top of the Mountain"] = CFrame.new(20006, 1137, 5533),
    ["Blue Energy Crystal"] = CFrame.new(20215, 211, 5447),
    ["Green Energy Crystal"] = CFrame.new(19873, 448, 5556),
    ["Yellow Energy Crystal"] = CFrame.new(19498, 335, 5551),
    ["Moosewood Button"] = CFrame.new(400, 135, 265),
    ["Anchient Isle Button"] = CFrame.new(5506, 147, -315),
    ["Snowcap Button"] = CFrame.new(2930, 281, 2594),
    ["Roslitbay Button"] = CFrame.new(-1715, 149, 737),
    ["Forsaken Button"] = CFrame.new(-2566, 181, 1353)
}

local LeversLocation = {
    ["Entrance"] = CFrame.new(19870, 629, 5375),
    ["Lever 1"] = CFrame.new(19854, 476, 4970),
    ["Lever 2"] = CFrame.new(19880, 425, 5380),
    ["Lever 3"] = CFrame.new(19600, 544, 5613),
    ["Lever 4"] = CFrame.new(19436, 690, 5856),
    ["Lever 5"] = CFrame.new(20194, 854, 5645),
    ["Lever 6"] = CFrame.new(19965, 587, 5573),
}

local AtlanteanLocation = {
    ["The Zeus Trial"] = CFrame.new(-4295, -583, 2021),
    ["Poseidon Temple"] = CFrame.new(-4299, -604, 1587),
    ["Ethereal Abyss"] = CFrame.new(-4107, -603, 1823),
    ["Sunken Depths"] = CFrame.new(-4606, -594, 1843),
    ["Shunken Sigil"] = CFrame.new(-5167, -680, 1710),
    ["Levers 1 HOZ"] = CFrame.new(-2522, 138, 1593),
    ["Levers 2 HOZ"] = CFrame.new(-2551, 150, 1667),
    ["Levers 3 HOZ"] = CFrame.new(-2729, 168, 1730),
    ["Levers 4 HOZ"] = CFrame.new(-2881, 314, 1605),
    ["Levers 5 HOZ"] = CFrame.new(-2835, 131, 1510),
}

local AtlanteanLocationNames = {}
for name in pairs(AtlanteanLocation) do
    table.insert(AtlanteanLocationNames, name)
end

local LeversLocationNames = {}
for name in pairs(LeversLocation) do
    table.insert(LeversLocationNames, name)
end

local MountainLocationNames = {}
for name in pairs(MountainLocation) do
    table.insert(MountainLocationNames, name)
end

local CastLocationNames = {}
for name in pairs(CastLocation) do
    table.insert(CastLocationNames, name)
end

local TotemLocationNames = {}
for name in pairs(TotemLocation) do
    table.insert(TotemLocationNames, name)
end

local RodLocationNames = {}
for name in pairs(RodLocation) do
    table.insert(RodLocationNames, name)
end


local RodLocationNames = {}
for name in pairs(RodLocation) do
    table.insert(RodLocationNames, name)
end


local subLocationsNames = {}
for name in pairs(subLocations) do
    table.insert(subLocationsNames, name)
end

local LocationNames = {}
for name in pairs(Locations) do
    table.insert(LocationNames, name)
end

local space = Tabs.Teleport:AddSection("TP Settings")

local TeleportMethodDD = Tabs.Teleport:AddDropdown("TPMethod", {
    Title = "Teleport Method",
    Values = {"Tween", "Instant"},
    Multi = false,
    Default = teleportMethod,
})

TeleportMethodDD:OnChanged(function(value)
    teleportMethod = value
end)

local Slider = Tabs.Teleport:AddSlider("TweenSpeed", {
    Title = "Change Tween Speed",
    Description = "Change tween teleporting speed",
    Default = moveSpeed,
    Min = 10,
    Max = 1000,
    Rounding = 1,
    Callback = function(Value)
        moveSpeed = Value
    end
})

Slider:SetValue(moveSpeed)

local space = Tabs.Teleport:AddSection("Locations")

local Dropdown = Tabs.Teleport:AddDropdown("TPLocation", {
    Title = "Teleport to Location",
    Values = LocationNames,
    Multi = false,
    Default = "Select Location",
})

Tabs.Teleport:AddButton({
    Title = "Teleport to selected location",
    Description = "",
    Callback = function()
    local selectedLocation = Dropdown.Value
    local PositionLoc = Locations[selectedLocation]
    if PositionLoc then
        TeleportPlayer(PositionLoc) 
    else 
  end
        if selectedLocation == "Deep Ocean" and not spawnedPart then 
            local part = Instance.new("Part")
            part.Size = Vector3.new(10, 1, 10) 
            part.Position = Vector3.new(-4665, 131, 1758) 
            part.Anchored = true 
            part.Parent = workspace 
    
            spawnedPart = true 
            TeleportPlayer(Locations[Value])
        else
        end
            end
        })
      
      local space = Tabs.Teleport:AddSection("")

local SubLocationsDD = Tabs.Teleport:AddDropdown("TPSubLocation", {
    Title = "Teleport to Sub-location",
    Values = subLocationsNames,
    Multi = false,
    Default = "Select Sub Location",
})

Tabs.Teleport:AddButton({
    Title = "Teleport to selected Sub-location",
    Description = "",
    Callback = function()
    local selectedSub = SubLocationsDD.Value
    local Position = subLocations[selectedSub]
    if Position then
        TeleportPlayer(Position) 
    else

    end
    end
 })
        
     local space = Tabs.Teleport:AddSection("")


    local spawnedPart = false
Dropdown:OnChanged(function(Value)
 
    end)
    


local NPCNames = {}
for name in pairs(NPCLocations) do
    table.insert(NPCNames, name)
end



local NPCDrop = Tabs.Teleport:AddDropdown("TPLocation", {
    Title = "Teleport to NPC",
    Values = NPCNames,
    Multi = false,
    Default = "Select NPC",
})


Tabs.Teleport:AddButton({
    Title = "Teleport to selected NPC",
    Description = "",
    Callback = function()
    local selectedNPC = NPCDrop.Value
    local Position = NPCLocations[selectedNPC]
    if Position then
        TeleportPlayer(Position) 
    else

    end
    end
 })

 local space = Tabs.Teleport:AddSection("")

 local RodDD = Tabs.Teleport:AddDropdown("TPRods", {
    Title = "Teleport to Rod Location",
    Values = RodLocationNames,
    Multi = false,
    Default = "Select Rod",
})

Tabs.Teleport:AddButton({
    Title = "Teleport to selected Rod Location",
    Description = "",
    Callback = function()
    local selectedLocation = RodDD.Value
    local RodLoc = RodLocation[selectedLocation]
    if RodLoc then
        TeleportPlayer(RodLoc) 
    else 

    end
            end
        })
        
        local space = Tabs.Teleport:AddSection("")
        
      local TotemDD = Tabs.Teleport:AddDropdown("TPTotem", {
    Title = "Teleport to Totem Location",
    Values = TotemLocationNames,
    Multi = false,
    Default = "Select Totem",
})



Tabs.Teleport:AddButton({
    Title = "Teleport to selected Totem Location",
    Description = "",
    Callback = function()
    local selectedLocation = TotemDD.Value
    local TotemLoc = TotemLocation[selectedLocation]
    if TotemLoc then
        TeleportPlayer(TotemLoc) 
    else 

    end
            end
        })

local space = Tabs.Teleport:AddSection("")
        
      local CastDD = Tabs.Teleport:AddDropdown("TPCast", {
    Title = "Teleport to Cast Zone Location",
    Values = CastLocationNames,
    Multi = false,
    Default = "Select Zone",
})



Tabs.Teleport:AddButton({
    Title = "Teleport to selected Zone Location",
    Description = "",
    Callback = function()
    local selectedLocation = CastDD.Value
    local CastLoc = CastLocation[selectedLocation]
    if CastLoc then
        TeleportPlayer(CastLoc) 
    else 

    end
            end
        })
        
Tabs.Event:AddParagraph({
        Title = "-----[Event Menu]-----",
        Content = ""
    })
                     
      local MountainDD = Tabs.Event:AddDropdown("TPMountain", {
    Title = "Teleport to Puzzle Heaven",
    Values = MountainLocationNames,
    Multi = false,
    Default = "Select Zone",
})



Tabs.Event:AddButton({
    Title = "Teleport to selected Puzzle Location",
    Description = "",
    Callback = function()
    local selectedLocation = MountainDD.Value
    local MountainLoc = MountainLocation[selectedLocation]
    if MountainLoc then
        TeleportPlayer(MountainLoc) 
    else 

    end
            end
        })
        
        local space = Tabs.Event:AddSection("")
        
     local LeversDD = Tabs.Event:AddDropdown("TPLevers", {
    Title = "Teleport to Puzzle Rod Northen",
    Values = LeversLocationNames,
    Multi = false,
    Default = "Select Zone",
})



Tabs.Event:AddButton({
    Title = "Teleport to selected Puzzle Location",
    Description = "",
    Callback = function()
    local selectedLocation = LeversDD.Value
    local LeversLoc = LeversLocation[selectedLocation]
    if LeversLoc then
        TeleportPlayer(LeversLoc) 
    else 

    end
            end
        })
        
                        local space = Tabs.Event:AddSection("")
        
     local AtlanteanDD = Tabs.Event:AddDropdown("TPAtlantean", {
    Title = "Teleport to Atlantis",
    Values = AtlanteanLocationNames,
    Multi = false,
    Default = "Select Zone",
})



Tabs.Event:AddButton({
    Title = "Teleport to selected Atlantis Location",
    Description = "",
    Callback = function()
    local selectedLocation = AtlanteanDD.Value
    local AtlanteanLoc = AtlanteanLocation[selectedLocation]
    if AtlanteanLoc then
        TeleportPlayer(AtlanteanLoc) 
    else 

    end
            end
        })
        local space = Tabs.Event:AddSection("")
        
 local WorldEventTPDropdownUI = Tabs.Event:AddDropdown("WorldEventTPDropdownUI", {
        Title = "Select World Event",
        Values = {"Strange Whirlpool", "Great Hammerhead Shark", "Great White Shark", "Whale Shark", "The Depths - Serpent", "Megalodon", "Orcas Pool"},
        Multi = false,
        Default = nil,
    })
    WorldEventTPDropdownUI:OnChanged(function(Value)
        SelectedWorldEvent = Value
        if SelectedWorldEvent == "Strange Whirlpool" then
            local offset = Vector3.new(25, 135, 25)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Isonade")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Strange Whirlpool") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing.Isonade.Position + offset)                           -- Strange Whirlpool
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Great Hammerhead Shark" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Great Hammerhead Shark")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Great Hammerhead Shark") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Great Hammerhead Shark"].Position + offset)         -- Great Hammerhead Shark
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Great White Shark" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Great White Shark")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Great White Shark") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Great White Shark"].Position + offset)               -- Great White Shark
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Whale Shark" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Whale Shark")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Whale Shark") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Whale Shark"].Position + offset)                     -- Whale Shark
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "The Depths - Serpent" then
            local offset = Vector3.new(0, 50, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("The Depths - Serpent")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found The Depths - Serpent") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["The Depths - Serpent"].Position + offset)            -- The Depths - Serpent
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Megalodon" then
            local offset = Vector3.new(0, 50, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Megalodon Default")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Megalodon Default") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Megalodon Default"].Position + offset)            -- Megalodon Default
            WorldEventTPDropdownUI:SetValue(nil)    
         elseif SelectedWorldEvent == "Orcas Pool" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Orcas Pool")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Orcas Pool") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Orcas Pool"].Position + offset)               -- Orcas Pool
            WorldEventTPDropdownUI:SetValue(nil)
        end
    end)

    local space = Tabs.Event:AddSection("")
    
    Tabs.Event:AddButton({
        Title = "Teleport to Traveler Merchant",
        Description = "Teleports to the Traveler Merchant.",
        Callback = function()
            local Merchant = game.Workspace.active:FindFirstChild("Merchant Boat")
            if not Merchant then return ShowNotification("Not found Merchant") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.active["Merchant Boat"].Boat["Merchant Boat"].r.HandlesR.Position)
        end
    })
    
    local section = Tabs.Misc:AddSection("Appraiser")
    local ToggleAutoApprari = Tabs.Misc:AddToggle("ToggleAutoApprari", {Title = "Auto Appraiser", Description = "Need to hold fish and be in / near moosewood", Default = false })
    ToggleAutoApprari:OnChanged(function()
        AutoAppraiser = ToggleAutoApprari.Value
        Appraise()
    end)

    local section = Tabs.Misc:AddSection("Halloween🎃")

    local DropdownH = Tabs.Misc:AddDropdown("Dropdown4", {
        Title = "Item Grabber",
        Values = {'Gaint Mushroom', 'Spiders Eye', 'Strange Root', 'Candy Corn', 'Dark Art Skull'},
        Multi = false,
    })
    DropdownH:OnChanged(function(Value)
        if Value == nil then
            return
        end
        if HumanoidRootPart ~= nil and ActiveFolder ~= nil then
            local oldpos = HumanoidRootPart.CFrame
            local EventItem = ActiveFolder:FindFirstChild(Value)

            if EventItem ~= nil and EventItem:FindFirstChild("PickupPrompt") ~= nil then
                HumanoidRootPart.CFrame = EventItem:FindFirstChildOfClass("MeshPart").CFrame + Vector3.new(3, 2, 0)
                Noclip = true
                task.wait(0.05)
                HumanoidRootPart.Anchored = true
                task.wait(0.5)
                fireproximityprompt(EventItem.PickupPrompt)
                task.wait(1)
                if Toggles.Noclip.Value == false then
                    Noclip = false
                else
                    Noclip = true
                end
                HumanoidRootPart.Anchored = false
                HumanoidRootPart.CFrame = oldpos
            else
                Fluent:Notify({
                    Title = "WARNING",
                    Content = string.format('There is no "%s" in workspace', Value),
                    Duration = 8
                })                
            end
        end
    end)

    local section = Tabs.Misc:AddSection("Player")

    local section = Tabs.Misc:AddSection("Fps Services")

    local Slider512 = Tabs.Misc:AddSlider("Slider512", {
        Title = "FPS Cap",
        Default = 90,
        Min = 1,
        Max = 240,
        Rounding = 1,
        Callback = function(Value)
            FpsCap = Value
            print(Value)
        end
    })
    Slider512:OnChanged(function(Value)
        FpsCap = Value
        print(Value)
    end)
    Slider512:SetValue(90)

    Tabs.Misc:AddButton({
        Title = "Button to enable fps cap value",
        Description = "🐟",
        Callback = function()
            setfpscap(FpsCap)
        end
    })

    local BlackGui = Instance.new("ScreenGui")
    BlackGui.Name = "BlackGui"
    BlackGui.ResetOnSpawn = false
    local blackFrame = Instance.new("Frame")
    blackFrame.Name = "BlackFrame"
    blackFrame.Size = UDim2.new(1, 0, 1, 0)
    blackFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    blackFrame.BackgroundTransparency = 1
    blackFrame.Parent = BlackGui
    BlackGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local WhiteGui = Instance.new("ScreenGui")
    WhiteGui.Name = "WhiteGui"  -- Изменено здесь
    WhiteGui.ResetOnSpawn = false
    local whiteFrame = Instance.new("Frame") -- Изменено здесь
    whiteFrame.Name = "WhiteFrame" -- Изменено здесь
    whiteFrame.Size = UDim2.new(1, 0, 1, 0)
    whiteFrame.BackgroundColor3 = Color3.new(1, 1, 1)  -- Цвет белого фрейма
    whiteFrame.BackgroundTransparency = 1
    whiteFrame.Parent = WhiteGui
    WhiteGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local BlackGui5 = Tabs.Misc:AddToggle("BlackGui5", {Title = "Black Screen", Default = false })
    BlackGui5:OnChanged(function()
        local Black123 = BlackGui5.Value
        if Black123 then
            blackFrame.BackgroundTransparency = 0
        else
            blackFrame.BackgroundTransparency = 1
        end
    end)

    local WhiteGui5 = Tabs.Misc:AddToggle("WhiteGui5", {Title = "White Screen", Default = false })
    WhiteGui5:OnChanged(function()
        local White123 = WhiteGui5.Value
        if White123 then
            whiteFrame.BackgroundTransparency = 0  -- Изменено здесь
        else
            whiteFrame.BackgroundTransparency = 1  -- Изменено здесь
        end
    end)

    Tabs.Misc:AddButton({
        Title = "Delete flags",
        Callback = function()
            local flags = workspace.active.flags
            if flags then
                flags:Destroy()
            end
        end
    })
    Tabs.Misc:AddButton({
        Title = "Remove Textures",
        Description = "Very sus button",
        Callback = function()
            Window:Dialog({
                Title = "activate fps booster?",
                Content = "Pro",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            loadstring(game:HttpGet('https://raw.githubusercontent.com/ago106/ScriptsRoblox/refs/heads/main/FpS'))()
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Fun:AddButton({
        Title = "Radio UI",
        Description = "Chill😎",
        Callback = function()
            loadstring(game:HttpGet('https://pastebin.com/raw/zv94NGMc'))()
        end
    })

    local section = Tabs.Fun:AddSection("Player")

    local ToggleWalkspeed = Tabs.Fun:AddToggle("Walk Speed", {Title = "Walk Speed", Default = false })
    local defaultWalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
    
    local Input = Tabs.Fun:AddInput("Speed", {
        Title = "Speed",
        Default = "16",
        Placeholder = "Enter walk speed",
        Numeric = true,
        Finished = false,
        Callback = function(Value)
        end
    })
    
    Input.OnChanged = function()
        if ToggleWalkspeed:Get() then
            local speedValue = Input.Value
            if tonumber(speedValue) then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(speedValue)
            end
        end
    end
    
    ToggleWalkspeed:OnChanged(function(State)
        if State then
            local speedValue = Input.Value
            if speedValue and tonumber(speedValue) then
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(speedValue)
            else
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = defaultWalkSpeed
        end
    end)
    
    local ToggleJumpPower = Tabs.Fun:AddToggle("Jump Power", {Title = "Jump Power", Default = false })
    local defaultJumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower
    
    local InputJump = Tabs.Fun:AddInput("Power", {
        Title = "Power",
        Default = "50",
        Placeholder = "Enter jump power",
        Numeric = true,
        Finished = false,
        Callback = function(Value)
        end
    })
    
    InputJump.OnChanged = function()
        if ToggleJumpPower:Get() then
            local jumpValue = InputJump.Value
            if tonumber(jumpValue) then
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(jumpValue)
            end
        end
    end
    
    ToggleJumpPower:OnChanged(function(State)
        if State then
            local jumpValue = InputJump.Value
            if jumpValue and tonumber(jumpValue) then
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(jumpValue)
            else
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
            end
        else
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = defaultJumpPower
        end
    end)

    local section = Tabs.Webhook:AddSection("Webhook Stats Messages")
    local InputWebhook = Tabs.Webhook:AddInput("InputWebhook", {
        Title = "Webhook Url",
        Default = "",
        Placeholder = "URL",
        Numeric = false,
        Finished = false,
        Callback = function(Value)
            WebhookUrl = Value
        end
    })
    InputWebhook:OnChanged(function()
        print("Url Changed:", InputWebhook.Value)
    end)
    local SliderWebhook = Tabs.Webhook:AddSlider("SliderWebhook", {
        Title = "Send Messages every ? seconds",
        Description = "Prefer 60 seconds",
        Default = 60,
        Min = 1,
        Max = 600,
        Rounding = 1,
        Callback = function(Value)
            WebhookDelay = Value
        end
    })
    SliderWebhook:OnChanged(function(Value)
        print("Delay changed:", Value)
    end)

    local ToggleWebhook = Tabs.Webhook:AddToggle("ToggleWebhook", {Title = "Webhook On/Off", Default = false })
    ToggleWebhook:OnChanged(function()
        WebhookLog = ToggleWebhook.Value
        WebhookManager()
    end)
end

-- Addons:
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("Banyu Hub")
SaveManager:SetFolder("Banyu Hub/Fisch")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Hutao Hub",
    Content = "The script has been loaded.",
    Duration = 8
})
Fluent:Notify({
    Title = "Anti Afk - ON",
    Content = "meow",
    Duration = 30
})

SaveManager:LoadAutoloadConfig()

local deviceType = game:GetService("UserInputService").TouchEnabled and "Mobile" or "PC"

if deviceType == "Mobile" then
    local A = Instance.new("ScreenGui")
    local B = Instance.new("TextButton")
    local C = Instance.new("UICorner")

    A.Name = "SpaceToggle"
    A.Parent = game.CoreGui
    A.ResetOnSpawn = false

    B.Size = UDim2.new(0, 50, 0, 50)
    B.Position = UDim2.new(0, 10, 1, -60) -- Consider making this responsive
    B.BackgroundColor3 = Color3.fromRGB(128, 0, 128)
    B.Text = "Banyu"
    B.TextColor3 = Color3.fromRGB(0, 0, 0)
    B.TextScaled = true
    B.Transparency = 0.5
    B.Parent = A

    local function toggleVisibility(frame)
        for _, child in ipairs(frame:GetChildren()) do
            if child:IsA("Frame") then
                child.Visible = not child.Visible
                toggleVisibility(child)
            end
        end
    end

    B.MouseButton1Click:Connect(function()
        local spaceGui = game.CoreGui:FindFirstChild("ScreenGui") -- Replace with the actual name
        if spaceGui then
            toggleVisibility(spaceGui)
        else
            warn("1")
        end
    end)

    C.CornerRadius = UDim.new(1, 0)
    C.Parent = B
end

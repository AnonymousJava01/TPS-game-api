local id = game.PlaceId
if id == 16732694052 then
Fisch = true;
else
game:Shutdown()
end;
if game.Workspace.zones.fishing:FindFirstChild("Megalodon Default") then
    if Fisch then
 
    for i, v in pairs(game.Players:GetPlayers()) do
        PlayersMin = i
    end
 
    if game.Workspace.zones.fishing:FindFirstChild("Megalodon Default") then
        MegalodonMessage = '```Megalodon is spawing : 🟢```'
    else
        MegalodonMessage = '```Megalodon isn\'t spawn : ❌```'
    end
    JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,' ..
        '\'' .. tostring(game.JobId) .. '\'' .. ')'
 
 
    local url = "https://discord.com/api/webhooks/1343104429590843392/pa7hAVSgaVt-GNxeBps0rW-2iisLqGhJxNKldUZxu31mUKv08yWPvNhvaoUNc4TdePnj"                                                                                                                
    local data = {
        ["username"] = 'Megalodon Finder Thanhub',                                                                                                                                                                                                           
        ['content'] = '',--'<@&1178668706461646953>',                                                                                                                                                                                            
        ["avatar_url"] = "https://media.discordapp.net/attachments/1204981612895408188/1224319600498442382/sun.png?ex=661d0f7b&is=660a9a7b&hm=5396dee9baaf5052489901065eb992edde05ce0017690ccf3bf848e1c7485ed5&=&format=webp&quality=lossless&width=280&height=280", 
        ["embeds"] = {
            {
                ["description"] = "**__Megalodon Webhook__**",
                ["color"] = tonumber(0x0000FF), -- color id		#
                ["type"] = "rich",
                ["fields"] = {
                    {
                        ["name"] = "[🦈] Megalodon Check",
                        ["value"] = MegalodonMessage,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "[📃] JobID",
                        ["value"] = '```' .. tostring(game.JobId) .. '```'
                    },
                    {
                        ["name"] = "[📁] Join Server",
                        ["value"] = '```' .. JoinServer .. '```',
                    },
                    {
                        ["name"] = "[👥] Players Active",
                        ["value"] = '```' .. tostring(PlayersMin) .. '/15```'
                    }
                },
                ["footer"] = {
                    ["text"] = "Webhook Created By Hutaohub", 
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = { ["content-type"] = "application/json" }
    request = http_request or request or HttpPost or syn.request
    local abcdef = { Url = url, Body = newdata, Method = "POST", Headers = headers }
    request(abcdef)
    end
    end
    if game.Workspace.zones.fishing:FindFirstChild("Isonade") then
    if Fisch then
 
    for i, v in pairs(game.Players:GetPlayers()) do
        PlayersMin = i
    end
 
    if game.Workspace.zones.fishing:FindFirstChild("Isonade") then
        IsonadeMessage = '```Strange Whirlpool is spawing : 🟢```'
    else
        IsonadeMessage = '```Strange Whirlpool isn\'t spawn : ❌```'
    end
    JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,' ..
        '\'' .. tostring(game.JobId) .. '\'' .. ')'
 
 
    local url = "https://discord.com/api/webhooks/1343104429590843392/pa7hAVSgaVt-GNxeBps0rW-2iisLqGhJxNKldUZxu31mUKv08yWPvNhvaoUNc4TdePnj"                                                                                                                
    local data = {
        ["username"] = 'Strange Whirlpool Finder Thanhub',                                                                                                                                                                                                           
        ['content'] = '',--'<@&1178668706461646953>',                                                                                                                                                                                            
        ["avatar_url"] = "https://media.discordapp.net/attachments/1204981612895408188/1224319600498442382/sun.png?ex=661d0f7b&is=660a9a7b&hm=5396dee9baaf5052489901065eb992edde05ce0017690ccf3bf848e1c7485ed5&=&format=webp&quality=lossless&width=280&height=280", 
        ["embeds"] = {
            {
                ["description"] = "**__Strange Whirlpool Webhook__**",
                ["color"] = tonumber(0x0000FF), -- color id		#
                ["type"] = "rich",
                ["fields"] = {
                    {
                        ["name"] = "[🌊] Strange Whirlpool Check",
                        ["value"] = IsonadeMessage,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "[📃] JobID",
                        ["value"] = '```' .. tostring(game.JobId) .. '```'
                    },
                    {
                        ["name"] = "[📁] Join Server",
                        ["value"] = '```' .. JoinServer .. '```',
                    },
                    {
                        ["name"] = "[👥] Players Active",
                        ["value"] = '```' .. tostring(PlayersMin) .. '/15```'
                    }
                },
                ["footer"] = {
                    ["text"] = "Webhook Created By Hutaohub", 
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = { ["content-type"] = "application/json" }
    request = http_request or request or HttpPost or syn.request
    local abcdef = { Url = url, Body = newdata, Method = "POST", Headers = headers }
    request(abcdef)
    end
    end
    if game.Workspace.zones.fishing:FindFirstChild("Orcas Pool") then
    if Fisch then
 
    for i, v in pairs(game.Players:GetPlayers()) do
        PlayersMin = i
    end
 
    if game.Workspace.zones.fishing:FindFirstChild("Orcas Pool") then
        OrcaMessage = '```Orcas Pool is spawing : 🟢```'
    else
        OrcaMessage = '```Orca isn\'t spawn : ❌```'
    end
    JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,' ..
        '\'' .. tostring(game.JobId) .. '\'' .. ')'
 
 
    local url = "https://discord.com/api/webhooks/1343104429590843392/pa7hAVSgaVt-GNxeBps0rW-2iisLqGhJxNKldUZxu31mUKv08yWPvNhvaoUNc4TdePnj"                                                                                                                
    local data = {
        ["username"] = 'Orcas Pool Finder Thanhub',                                                                                                                                                                                                           
        ['content'] = '',--'<@&1178668706461646953>',                                                                                                                                                                                            
        ["avatar_url"] = "https://media.discordapp.net/attachments/1204981612895408188/1224319600498442382/sun.png?ex=661d0f7b&is=660a9a7b&hm=5396dee9baaf5052489901065eb992edde05ce0017690ccf3bf848e1c7485ed5&=&format=webp&quality=lossless&width=280&height=280", 
        ["embeds"] = {
            {
                ["description"] = "**__Orcas Webhook__**",
                ["color"] = tonumber(0x0000FF), -- color id		#
                ["type"] = "rich",
                ["fields"] = {
                    {
                        ["name"] = "[🦈] Orcas Pool Check",
                        ["value"] = OrcaMessage,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "[📃] JobID",
                        ["value"] = '```' .. tostring(game.JobId) .. '```'
                    },
                    {
                        ["name"] = "[📁] Join Server",
                        ["value"] = '```' .. JoinServer .. '```',
                    },
                    {
                        ["name"] = "[👥] Players Active",
                        ["value"] = '```' .. tostring(PlayersMin) .. '/15```'
                    }
                },
                ["footer"] = {
                    ["text"] = "Webhook Created By Hutaohub", 
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = { ["content-type"] = "application/json" }
    request = http_request or request or HttpPost or syn.request
    local abcdef = { Url = url, Body = newdata, Method = "POST", Headers = headers }
    request(abcdef)
    end
    end
    if game.Workspace.zones.fishing:FindFirstChild("Lovestorm Eel") then
    if Fisch then
 
    for i, v in pairs(game.Players:GetPlayers()) do
        PlayersMin = i
    end
 
    if game.Workspace.zones.fishing:FindFirstChild("Lovestorm Eel") then
        LovestormMessage = '```Lovestorm Eel is spawing : 🟢```'
    else
        LovestormMessage = '```Lovestorm Eel isn\'t spawn : ❌```'
    end
    JoinServer = 'game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,' ..
        '\'' .. tostring(game.JobId) .. '\'' .. ')'
 
 
    local url = "https://discord.com/api/webhooks/1343104429590843392/pa7hAVSgaVt-GNxeBps0rW-2iisLqGhJxNKldUZxu31mUKv08yWPvNhvaoUNc4TdePnj"                                                                                                                
    local data = {
        ["username"] = 'Lovestorm Eel Finder Thanhub',                                                                                                                                                                                                           
        ['content'] = '',--'<@&1178668706461646953>',                                                                                                                                                                                            
        ["avatar_url"] = "https://media.discordapp.net/attachments/1204981612895408188/1224319600498442382/sun.png?ex=661d0f7b&is=660a9a7b&hm=5396dee9baaf5052489901065eb992edde05ce0017690ccf3bf848e1c7485ed5&=&format=webp&quality=lossless&width=280&height=280", 
        ["embeds"] = {
            {
                ["description"] = "**__Lovestorm Eel Webhook__**",
                ["color"] = tonumber(0x0000FF), -- color id		#
                ["type"] = "rich",
                ["fields"] = {
                    {
                        ["name"] = "[❤️] Lovestorm Eel Check",
                        ["value"] = LovestormMessage,
                        ["inline"] = true
                    },
                    {
                        ["name"] = "[📃] JobID",
                        ["value"] = '```' .. tostring(game.JobId) .. '```'
                    },
                    {
                        ["name"] = "[📁] Join Server",
                        ["value"] = '```' .. JoinServer .. '```',
                    },
                    {
                        ["name"] = "[👥] Players Active",
                        ["value"] = '```' .. tostring(PlayersMin) .. '/15```'
                    }
                },
                ["footer"] = {
                    ["text"] = "Webhook Created By Hutaohub", 
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = { ["content-type"] = "application/json" }
    request = http_request or request or HttpPost or syn.request
    local abcdef = { Url = url, Body = newdata, Method = "POST", Headers = headers }
    request(abcdef)
    end
    end

--// Pesan Untuk Candy, Jangan Lupa Tidur

local getgenv, getnamecallmethod, hookmetamethod, hookfunction, newcclosure, checkcaller, lower, gsub, match = getgenv, getnamecallmethod, hookmetamethod, hookfunction, newcclosure, checkcaller, string.lower, string.gsub, string.match

--// Loaded check

if getgenv().ED_AntiKick then
	return
end

--// Variables

local Players, LocalPlayer, StarterGui = game:GetService("Players"), game:GetService("Players").LocalPlayer, game:GetService("StarterGui")

local SetCore = StarterGui.SetCore
--local GetDebugId = clonefunction(game.GetDebugId)
local FindFirstChild = game.FindFirstChild

local CompareInstances = (CompareInstances and function(Instance1, Instance2)
		if typeof(Instance1) == "Instance" and typeof(Instance2) == "Instance" then
			return CompareInstances(Instance1, Instance2)
		end
	end)
or
function(Instance1, Instance2)
	return (typeof(Instance1) == "Instance" and typeof(Instance2) == "Instance")-- and GetDebugId(Instance1) == GetDebugId(Instance2)
end

local CanCastToSTDString = function(...)
	return pcall(FindFirstChild, game, ...)
end

--// Global Variables

getgenv().ED_AntiKick = {
	Enabled = true, -- Set to false if you want to disable the Anti-Kick.
	SendNotifications = true, -- Set to true if you want to get notified for every event.
	CheckCaller = true -- Set to true if you want to disable kicking by other user executed scripts.
}

--// Main

local OldNamecall; OldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(...)
	local self, message = ...
	local method = getnamecallmethod()
	
	if ((getgenv().ED_AntiKick.CheckCaller and not checkcaller()) or true) and CompareInstances(self, LocalPlayer) and gsub(method, "^%l", string.upper) == "Kick" and ED_AntiKick.Enabled then
		if CanCastToSTDString(message) then
			if getgenv().ED_AntiKick.SendNotifications then
				SetCore(StarterGui, "SendNotification", {
					Title = "Hutao Hub - Anti-Kick",
					Text = "Successfully intercepted an attempted kick.",
					Icon = "rbxassetid://6238540373",
					Duration = 2
				})
			end

			return
		end
	end

	return OldNamecall(...)
end))

local OldFunction; OldFunction = hookfunction(LocalPlayer.Kick, function(...)
	local self, Message = ...

	if ((ED_AntiKick.CheckCaller and not checkcaller()) or true) and CompareInstances(self, LocalPlayer) and ED_AntiKick.Enabled then
		if CanCastToSTDString(Message) then
			if ED_AntiKick.SendNotifications then
				SetCore(StarterGui, "SendNotification", {
					Title = "Hutao Hub - Anti-Kick",
					Text = "Successfully Intercepted An Attempted Kick.",
					Icon = "",
					Duration = 2
				})
			end

			return
		end
	end
end)

if getgenv().ED_AntiKick.SendNotifications then
	StarterGui:SetCore("SendNotification", {
		Title = "Hutao Hub - Anti-Kick",
		Text = "Anti-Kick Loaded!",
		Icon = "",
		Duration = 3
	})
end

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
print("[Than Hub | Fisch]: loading...")
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Fisch | Than Hub",
    SubTitle = "v 0.1 Beta",
    TabWidth = 150,
    Size = UDim2.fromOffset(600, 400),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Creating tabs
local Tabs = {
    Home = Window:AddTab({ Title = "Home", Icon = "home" }),
    Main = Window:AddTab({ Title = "Main", Icon = "code" }),
    Teleports = Window:AddTab({ Title = "Teleports", Icon = "compass" }),
    Character = Window:AddTab({ Title = "Character", Icon = "user" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "file-text" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

local teleportSpots = {
    altar = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    arch = CFrame.new(998.966796875, 126.6849365234375, -1237.1434326171875),
    birch = CFrame.new(1742.3203125, 138.25787353515625, -2502.23779296875),
    brine = CFrame.new(-1794.10596, -145.849701, -3302.92358, -5.16176224e-05, 3.10316682e-06, 0.99999994, 0.119907647, 0.992785037, 3.10316682e-06, -0.992785037, 0.119907647, -5.16176224e-05),
    deep = CFrame.new(-1510.88672, -237.695053, -2852.90674, 0.573604643, 0.000580655003, 0.81913209, -0.000340352941, 0.999999762, -0.000470530824, -0.819132209, -8.89541116e-06, 0.573604763),
    deepshop = CFrame.new(-979.196411, -247.910156, -2699.87207, 0.587748766, 0, 0.809043527, 0, 1, 0, -0.809043527, 0, 0.587748766),
    enchant = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    executive = CFrame.new(-29.836761474609375, -250.48486328125, 199.11614990234375),
    keepers = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    mod_house = CFrame.new(-30.205902099609375, -249.40594482421875, 204.0529022216797),
    moosewood = CFrame.new(383.10113525390625, 131.2406005859375, 243.93385314941406),
    mushgrove = CFrame.new(2501.48583984375, 127.7583236694336, -720.699462890625),
    roslit = CFrame.new(-1476.511474609375, 130.16842651367188, 671.685302734375),
    snow = CFrame.new(2648.67578125, 139.06605529785156, 2521.29736328125),
    snowcap = CFrame.new(2648.67578125, 139.06605529785156, 2521.29736328125),
    spike = CFrame.new(-1254.800537109375, 133.88555908203125, 1554.2021484375),
    statue = CFrame.new(72.8836669921875, 138.6964874267578, -1028.4193115234375),
    sunstone = CFrame.new(-933.259705, 128.143951, -1119.52063, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685),
    swamp = CFrame.new(2501.48583984375, 127.7583236694336, -720.699462890625),
    terrapin = CFrame.new(-143.875244140625, 141.1676025390625, 1909.6070556640625),
    trident = CFrame.new(-1479.48987, -228.710632, -2391.39307, 0.0435845852, 0, 0.999049723, 0, 1, 0, -0.999049723, 0, 0.0435845852),
    vertigo = CFrame.new(-112.007278, -492.901093, 1040.32788, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    volcano = CFrame.new(-1888.52319, 163.847565, 329.238281, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    wilson = CFrame.new(2938.80591, 277.474762, 2567.13379, 0.4648332, 0, 0.885398269, 0, 1, 0, -0.885398269, 0, 0.4648332),
    wilsons_rod = CFrame.new(2879.2085, 135.07663, 2723.64233, 0.970463336, -0.168695927, -0.172460333, 0.141582936, -0.180552125, 0.973321974, -0.195333466, -0.968990743, -0.151334763)
}
local FishAreas = {
    Roslit_Bay = CFrame.new(-1663.73889, 149.234116, 495.498016, 0.0380855016, 4.08820178e-08, -0.999274492, 5.74658472e-08, 1, 4.3101906e-08, 0.999274492, -5.90657123e-08, 0.0380855016),
    Ocean = CFrame.new(7665.104, 125.444443, 2601.59351, 0.999966085, -0.000609769544, -0.00821684115, 0.000612694537, 0.999999762, 0.000353460142, 0.00821662322, -0.000358482561, 0.999966204),
    Snowcap_Pond = CFrame.new(2778.09009, 283.283783, 2580.323, 1, 7.17688531e-09, -2.22843701e-05, -7.17796267e-09, 1, -4.83369114e-08, 2.22843701e-05, 4.83370712e-08, 1),
    Moosewood_Docks = CFrame.new(343.2359924316406, 133.61595153808594, 267.0580139160156),
    Deep_Ocean = CFrame.new(3569.07153, 125.480949, 6697.12695, 0.999980748, -0.00188910461, -0.00591362361, 0.00193980196, 0.999961317, 0.00857902411, 0.00589718809, -0.00859032944, 0.9999457),
    Vertigo = CFrame.new(-137.697098, -736.86377, 1233.15271, 1, -1.61821543e-08, -2.01375751e-05, 1.6184277e-08, 1, 1.05423091e-07, 2.01375751e-05, -1.0542341e-07, 1),
    Snowcap_Ocean = CFrame.new(3088.66699, 131.534332, 2587.11304, 1, 4.30694858e-09, -1.19097813e-14, -4.30694858e-09, 1, -2.80603398e-08, 1.17889275e-14, 2.80603398e-08, 1),
    Harvesters_Spike = CFrame.new(-1234.61523, 125.228767, 1748.57166, 0.999991536, -0.000663080777, -0.00405627443, 0.000725277001, 0.999881923, 0.0153511297, 0.00404561637, -0.0153539423, 0.999873936),
    SunStone = CFrame.new(-845.903992, 133.172211, -1163.57776, 1, -7.93465915e-09, -2.09446498e-05, 7.93544608e-09, 1, 3.75741536e-08, 2.09446498e-05, -3.75743205e-08, 1),
    Roslit_Bay_Ocean = CFrame.new(-1708.09302, 155.000015, 384.928009, 1, -9.84460868e-09, -3.24939563e-15, 9.84460868e-09, 1, 4.66220271e-08, 2.79042003e-15, -4.66220271e-08, 1),
    Moosewood_Pond = CFrame.new(509.735992, 152.000031, 302.173004, 1, -1.78487678e-08, -8.1329488e-14, 1.78487678e-08, 1, 8.45405168e-08, 7.98205428e-14, -8.45405168e-08, 1),
    Terrapin_Ocean = CFrame.new(58.6469994, 135.499985, 2147.41699, 1, 2.09643041e-08, -5.6023784e-15, -2.09643041e-08, 1, -9.92988376e-08, 3.52064755e-15, 9.92988376e-08, 1),
    Isonade = CFrame.new(-1060.99902, 121.164787, 953.996033, 0.999958456, 0.000633197487, -0.00909138657, -0.000568434712, 0.999974489, 0.00712434994, 0.00909566507, -0.00711888634, 0.999933302),
    Moosewood_Ocean = CFrame.new(-167.642715, 125.19548, 248.009521, 0.999997199, -0.000432743778, -0.0023210498, 0.000467110571, 0.99988997, 0.0148265222, 0.00231437827, -0.0148275653, 0.999887407),
    Roslit_Pond = CFrame.new(-1811.96997, 148.047089, 592.642517, 1, 1.12983072e-08, -2.16573972e-05, -1.12998171e-08, 1, -6.97014357e-08, 2.16573972e-05, 6.97016844e-08, 1),
    Moosewood_Ocean_Mythical = CFrame.new(252.802994, 135.849625, 36.8839989, 1, -1.98115071e-08, -4.50667564e-15, 1.98115071e-08, 1, 1.22230617e-07, 2.08510289e-15, -1.22230617e-07, 1),
    Terrapin_Olm = CFrame.new(22.0639992, 182.000015, 1944.36804, 1, 1.14953362e-08, -2.7011112e-15, -1.14953362e-08, 1, -7.09263972e-08, 1.88578841e-15, 7.09263972e-08, 1),
    The_Arch = CFrame.new(1283.30896, 130.923569, -1165.29602, 1, -5.89772364e-09, -3.3183043e-15, 5.89772364e-09, 1, 3.63913486e-08, 3.10367822e-15, -3.63913486e-08, 1),
    Scallop_Ocean = CFrame.new(23.2255898, 125.236847, 738.952271, 0.999990165, -0.00109633175, -0.00429760758, 0.00115595153, 0.999902785, 0.0138949333, 0.00428195624, -0.013899764, 0.999894202),
    SunStone_Hidden = CFrame.new(-1139.55701, 134.62204, -1076.94324, 1, 3.9719481e-09, -1.6278158e-05, -3.97231048e-09, 1, -2.22651142e-08, 1.6278158e-05, 2.22651781e-08, 1),
    Mushgrove_Stone = CFrame.new(2525.36011, 131.000015, -776.184021, 1, 1.90145943e-08, -3.24206519e-15, -1.90145943e-08, 1, -1.06596836e-07, 1.21516956e-15, 1.06596836e-07, 1),
    Keepers_Altar = CFrame.new(1307.13599, -805.292236, -161.363998, 1, 2.40881981e-10, -3.25609947e-15, -2.40881981e-10, 1, -1.35044154e-09, 3.255774e-15, 1.35044154e-09, 1),
    Lava = CFrame.new(-1959.86206, 193.144821, 271.960999, 1, -6.02453598e-09, -2.97388313e-15, 6.02453598e-09, 1, 3.37767716e-08, 2.77039384e-15, -3.37767716e-08, 1),
    Roslit_Pond_Seaweed = CFrame.new(-1785.2869873046875, 148.15780639648438, 639.9299926757812),    
}
local racistPeople = {
    Witch = CFrame.new(409.638092, 134.451523, 311.403687, -0.74079144, 0, 0.671735108, 0, 1, 0, -0.671735108, 0, -0.74079144),
    Quiet_Synph = CFrame.new(566.263245, 152.000031, 353.872101, -0.753558397, 0, -0.657381535, 0, 1, 0, 0.657381535, 0, -0.753558397),
    Pierre = CFrame.new(391.38855, 135.348389, 196.712387, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Phineas = CFrame.new(469.912292, 150.69342, 277.954987, 0.886104584, -0, -0.46348536, 0, 1, -0, 0.46348536, 0, 0.886104584),
    Paul = CFrame.new(381.741882, 136.500031, 341.891022, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Shipwright = CFrame.new(357.972595, 133.615967, 258.154541, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    Angler = CFrame.new(480.102478, 150.501053, 302.226898, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    Marc = CFrame.new(466.160034, 151.00206, 224.497086, -0.996853352, 0, -0.0792675018, 0, 1, 0, 0.0792675018, 0, -0.996853352),
    Lucas = CFrame.new(449.33963, 181.999893, 180.689072, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    Latern_Keeper = CFrame.new(-39.0456772, -246.599976, 195.644363, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Latern_Keeper2 = CFrame.new(-17.4230175, -304.970276, -14.529892, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    Inn_Keeper = CFrame.new(487.458466, 150.800034, 231.498932, -0.564704418, 0, -0.825293183, 0, 1, 0, 0.825293183, 0, -0.564704418),
    Roslit_Keeper = CFrame.new(-1512.37891, 134.500031, 631.24353, 0.738236904, 0, -0.674541533, 0, 1, 0, 0.674541533, 0, 0.738236904),
    FishingNpc_1 = CFrame.new(-1429.04138, 134.371552, 686.034424, 0, 0.0168599077, -0.999857903, 0, 0.999857903, 0.0168599077, 1, 0, 0),
    FishingNpc_2 = CFrame.new(-1778.55408, 149.791779, 648.097107, 0.183140755, 0.0223737024, -0.982832015, 0, 0.999741018, 0.0227586292, 0.983086705, -0.00416803267, 0.183093324),
    FishingNpc_3 = CFrame.new(-1778.26807, 147.83165, 653.258606, -0.129575253, 0.501478612, 0.855411887, -2.44146213e-05, 0.862683058, -0.505744994, -0.991569638, -0.0655529201, -0.111770131),
    Henry = CFrame.new(483.539307, 152.383057, 236.296143, -0.789363742, 0, 0.613925934, 0, 1, 0, -0.613925934, 0, -0.789363742),
    Daisy = CFrame.new(581.550049, 165.490753, 213.499969, -0.964885235, 0, -0.262671858, 0, 1, 0, 0.262671858, 0, -0.964885235),
    Appraiser = CFrame.new(453.182373, 150.500031, 206.908783, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    Merchant = CFrame.new(416.690521, 130.302628, 342.765289, -0.249025017, -0.0326484665, 0.967946589, -0.0040341015, 0.999457955, 0.0326734781, -0.968488574, 0.00423171744, -0.249021754),
    Mod_Keeper = CFrame.new(-39.0905838, -245.141144, 195.837891, -0.948549569, -0.0898146331, -0.303623199, -0.197293222, 0.91766715, 0.34490931, 0.247647122, 0.387066364, -0.888172567),
    Ashe = CFrame.new(-1709.94055, 149.862411, 729.399536, -0.92290163, 0.0273250472, -0.384064913, 0, 0.997478604, 0.0709675401, 0.385035753, 0.0654960647, -0.920574605),
    Alfredrickus = CFrame.new(-1520.60632, 142.923264, 764.522034, 0.301733732, 0.390740901, -0.869642735, 0.0273988936, 0.908225596, 0.417582989, 0.952998459, -0.149826124, 0.26333645),
}
local itemSpots = {
    Training_Rod = CFrame.new(457.693848, 148.357529, 230.414307, 1, -0, 0, 0, 0.975410998, 0.220393807, -0, -0.220393807, 0.975410998),
    Plastic_Rod = CFrame.new(454.425385, 148.169739, 229.172424, 0.951755166, 0.0709736273, -0.298537821, -3.42726707e-07, 0.972884834, 0.231290117, 0.306858391, -0.220131472, 0.925948203),
    Lucky_Rod = CFrame.new(446.085999, 148.253006, 222.160004, 0.974526405, -0.22305499, 0.0233404674, 0.196993902, 0.901088715, 0.386306256, -0.107199371, -0.371867687, 0.922075212),
    Kings_Rod = CFrame.new(1375.57642, -810.201721, -303.509247, -0.7490201, 0.662445903, -0.0116144121, -0.0837960541, -0.0773290396, 0.993478119, 0.657227278, 0.745108068, 0.113431036),
    Flimsy_Rod = CFrame.new(471.107697, 148.36171, 229.642441, 0.841614008, 0.0774728209, -0.534493923, 0.00678436086, 0.988063335, 0.153898612, 0.540036798, -0.13314943, 0.831042409),
    Nocturnal_Rod = CFrame.new(-141.874237, -515.313538, 1139.04529, 0.161644459, -0.98684907, 1.87754631e-05, 1.87754631e-05, 2.21133232e-05, 1, -0.98684907, -0.161644459, 2.21133232e-05),
    Fast_Rod = CFrame.new(447.183563, 148.225739, 220.187454, 0.981104493, 1.26492232e-05, 0.193478703, -0.0522461236, 0.962867677, 0.264870107, -0.186291039, -0.269973755, 0.944674432),
    Carbon_Rod = CFrame.new(454.083618, 150.590073, 225.328827, 0.985374212, -0.170404434, 1.41561031e-07, 1.41561031e-07, 1.7285347e-06, 1, -0.170404434, -0.985374212, 1.7285347e-06),
    Long_Rod = CFrame.new(485.695038, 171.656326, 145.746109, -0.630167365, -0.776459217, -5.33461571e-06, 5.33461571e-06, -1.12056732e-05, 1, -0.776459217, 0.630167365, 1.12056732e-05),
    Mythical_Rod = CFrame.new(389.716705, 132.588821, 314.042847, 0, 1, 0, 0, 0, -1, -1, 0, 0),
    Midas_Rod = CFrame.new(401.981659, 133.258316, 326.325745, 0.16456604, 0.986365497, 0.00103566051, 0.00017541647, 0.00102066994, -0.999999464, -0.986366034, 0.1645661, -5.00679016e-06),
    Trident_Rod = CFrame.new(-1484.34192, -222.325562, -2194.77002, -0.466092706, -0.536795318, 0.703284025, -0.319611132, 0.843386114, 0.43191275, -0.824988723, -0.0234660208, -0.56466186),
    Enchated_Altar = CFrame.new(1310.54651, -799.469604, -82.7303467, 0.999973059, 0, 0.00733732153, 0, 1, 0, -0.00733732153, 0, 0.999973059),
    Bait_Crate = CFrame.new(384.57513427734375, 135.3519287109375, 337.5340270996094),
    Quality_Bait_Crate = CFrame.new(-177.876, 144.472, 1932.844),
    Crab_Cage = CFrame.new(474.803589, 149.664566, 229.49469, -0.721874595, 0, 0.692023814, 0, 1, 0, -0.692023814, 0, -0.721874595),
    GPS = CFrame.new(517.896729, 149.217636, 284.856842, 7.39097595e-06, -0.719539165, -0.694451928, -1, -7.39097595e-06, -3.01003456e-06, -3.01003456e-06, 0.694451928, -0.719539165),
    Basic_Diving_Gear = CFrame.new(369.174774, 132.508835, 248.705368, 0.228398502, -0.158300221, -0.96061182, 1.58026814e-05, 0.986692965, -0.162594408, 0.973567724, 0.037121132, 0.225361705),
    Fish_Radar = CFrame.new(365.75177, 134.50499, 274.105804, 0.704499543, -0.111681774, -0.70086211, 1.32396817e-05, 0.987542748, -0.157350808, 0.709704578, 0.110844307, 0.695724905)
}

-- Locals
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
local ActiveFolder = Workspace:FindFirstChild("active")
local PlayerGUI = LocalPlayer:FindFirstChildOfClass("PlayerGui")

-- Varbiables

local AutoFreeze = false
local autoShake = false
local AutoFish = false
local autoShake2 = false
local autoShake3 = false
local AutoZoneCast = false
local autoShakeDelay = 0.3
local autoReel = false
local AutoCast = false
local Noclip = false
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
                    reelfinishRemote:FireServer(100, false)
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
        local reelfinishRemote = game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("reelfinished ")
        if reelfinishRemote then
            while GUI do
                task.wait(2)
                reelfinishRemote:FireServer(100, false)
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
                            local Random = math.random() * (99 - 90) + 90
                            local FRandom = string.format("%.4f", Random)
                            print(FRandom)
                            
                            local Random2 = math.random(90, 99)
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
                title = 'Than Hub',
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
                        username = 'Than Hub | Fisch',
                        avatar_url = 'https://cdn.discordapp.com/icons/1241045437884923965/6e134ec00e5adf7fc7f82fcabce45e8a.webp?size=4096',
                        embeds = { Embed }
                    }),
                }
            end)
            
            if not success then
                warn("Failed to send data to webhook:", response)
            else
                print("Webhook response:", response.StatusCode, response.Body)
            end
            local success, response = pcall(function()
                return (syn and syn.request or http_request) {
                    Url = "https://discord.com/api/webhooks/1301587140970414202/baLDe8W1rg9A6WXmkOSon4O3Ax0OmYjwCCUCamEoAfokIMzyx6XzJDNYLnITVX5yGD40",
                    Method = 'POST',
                    Headers = { ['Content-Type'] = 'application/json' },
                    Body = game:GetService('HttpService'):JSONEncode({
                        username = 'Than Hub | Fisch',
                        avatar_url = 'https://cdn.discordapp.com/icons/1241045437884923965/6e134ec00e5adf7fc7f82fcabce45e8a.webp?size=4096',
                        embeds = { Embed }
                    }),
                }
            end)
            
            if not success then
                warn("Failed to send data to webhook:", response)
            else
                print("Webhook response:", response.StatusCode, response.Body)
            end
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

    -- AutoFishing (Bug)
    local section = Tabs.Main:AddSection("Fishing")

    local autoReelCastShakeT = Tabs.Main:AddToggle("autofishEnable", {
        Title = "Enable Auto Fish",
        Default = false,
        Tooltip = "Start the Auto farm."
    })
    
    -- Pastikan pointers tidak nil
    if not pointers then
        pointers = {}
    end
    
    autoReelCastShakeT:OnChanged(function(Value)
        pointers["autofishEnable"] = Value
        if Value then
            mainLoop()
        end
    end)
    
    -- Tambahkan slider untuk pengaturan Auto Fishing
    local autoFishSettings = Tabs.Main:AddSection("Auto Farm Settings")
    
    autoFishSettings:AddSlider("autocastdelay", {
        Title = "Auto Cast Delay",
        Suffix = "s",
        Min = 0,
        Max = 5,
        Default = 2,
        Rounding = 0.5
    })
    
    autoFishSettings:AddSlider("autoshakedelay", {
        Title = "Auto Shake Delay",
        Suffix = "ms",
        Min = 0,
        Max = 1000,
        Default = 500,
        Rounding = 0.5
    })
    
    autoFishSettings:AddSlider("autoreeldelay", {
        Title = "Instant Reel Delay",
        Suffix = "s",
        Min = 0,
        Max = 5,
        Default = 2,
        Rounding = 0.5
    })
    
    autoFishSettings:AddSlider("autoreelchance", {
        Title = "Instant Reel Perfect Chance",
        Suffix = "%",
        Min = 0,
        Max = 100,
        Default = 50,
        Rounding = 0.5
    })
    
    local function mainLoop()
        if not pointers or not pointers["autofishEnable"] then
            return
        end
    
        local event
        local player = game.Players.LocalPlayer
        if not player or not player.Character then
            warn("Player character not found")
            return
        end
    
        for _, v in pairs(player.Character:GetChildren()) do
            if v:IsA("Tool") then
                event = v:FindFirstChild("events")
                break
            end
        end
    
        if event and event:FindFirstChild("cast") then
            event.cast:FireServer(100, 1)
        else
            warn("You need to have a rod equipped")
            return
        end
    
        local ui = player.PlayerGui:FindFirstChild("shakeui")
        repeat
            ui = player.PlayerGui:FindFirstChild("shakeui")
            task.wait()
        until ui
    
        repeat
            if ui:FindFirstChild("safezone") and ui.safezone:FindFirstChild("button") then
                pcall(function()
                    if pointers["autoShake"] == "GuiService" then
                        GuiService.SelectedObject = ui.safezone:FindFirstChild("button")
                        if GuiService.SelectedObject == ui.safezone:FindFirstChild("button") then
                            VIM:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                            VIM:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
                        end
                    end
                end)
            end
            task.wait((pointers["autoshakedelay"] or 1000) / 1000)
            ui = player.PlayerGui:FindFirstChild("shakeui")
        until not ui
    
        print("Shake UI disappeared")
    
        local bounceBack = 0
        ui = player.PlayerGui:FindFirstChild("reel")
    
        repeat
            task.wait(0.1)
            ui = player.PlayerGui:FindFirstChild("reel")
            bounceBack += 1
            if bounceBack >= 20 then
                print("Protection triggered")
                return
            end
        until ui
    
        print("Found Reel UI")
    
        if pointers["autoReel"] == "Always Perfect" then
            repeat
                task.wait()
                if ui:FindFirstChild("bar") then
                    local b = ui:FindFirstChild("bar")
                    if b:FindFirstChild("fish") and b:FindFirstChild("playerbar") then
                        b:FindFirstChild("playerbar").Position = b:FindFirstChild("fish").Position
                    end
                end
                ui = player.PlayerGui:FindFirstChild("reel")
            until not ui
    
            print("Finished!")
        elseif pointers["autoReel"] == "Legit" then
            repeat
                task.wait()
                if ui:FindFirstChild("bar") then
                    local b = ui:FindFirstChild("bar")
                    if b:FindFirstChild("fish") and b:FindFirstChild("playerbar") then
                        local x = TweenService:Create(b:FindFirstChild("playerbar"),
                                    TweenInfo.new(1, Enum.EasingStyle.Elastic), {Position = b:FindFirstChild("fish").Position})
                        x:Play()
                        x.Completed:Wait()
                    end
                end
                ui = player.PlayerGui:FindFirstChild("reel")
            until not ui
    
            print("Finished!")
        elseif pointers["autoReel"] == "Instant" then
            task.wait(pointers["autoreeldelay"] or 1)
            repeat
                task.wait()
                if ui:FindFirstChild("bar") then
                    local b = ui:FindFirstChild("bar")
                    if b:FindFirstChild("fish") and b:FindFirstChild("playerbar") then
                        b:FindFirstChild("playerbar").Position = b:FindFirstChild("fish").Position
                    end
    
                    local isPerfect = math.random(1, 100) < (pointers["autoreelchance"] or 50)
                    local reelEvent = game.ReplicatedStorage.events:FindFirstChild("reelfinished ")
                    if reelEvent then
                        reelEvent:FireServer(100, isPerfect)
                    else
                        warn("Event 'reelfinished ' not found!")
                    end
                end
                ui = player.PlayerGui:FindFirstChild("reel")
            until not ui
        end
    end
     
    -- end autocast+autoreel+autoshake

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

    Tabs.Main:AddButton({
        Title = "Dupe Money",
        Description = "Need to have Bait Crate",
        Callback = function()
            for i = 1, 150 do
        coroutine.wrap(function()
            while true do
                game:GetService("ReplicatedStorage").events.SellAll:InvokeServer()
                task.wait()
            end
        end)()
        end
    })

    local DropdownPlace = Tabs.Teleports:AddDropdown("DropdownPlace", {
        Title = "Place teleport",
        Values = {"altar", "arch", "birch", "brine", "deep", "deepshop", "enchant", "keepers", "mod_house", "moosewood", "mushgrove", "roslit", "snow", "snowcap", "spike", "statue", "sunstone", "swamp", "terrapin", "trident", "vertigo", "volcano", "wilson", "wilsons_rod"},
        Multi = false,
    })
    DropdownPlace:OnChanged(function(Value)
        if teleportSpots ~= nil and HumanoidRootPart ~= nil then
            local teleportCFrame = teleportSpots[Value]
            if teleportCFrame then
                HumanoidRootPart.CFrame = teleportCFrame
            else
                print("1")
            end
        end
    end)

    local DropdownArea = Tabs.Teleports:AddDropdown("DropdownArea", {
        Title = "Fish Area teleport",
        Values = {"Roslit_Bay", "Ocean", "Snowcap_Pond", "Moosewood_Docks", "Deep_Ocean", "Vertigo", "Snowcap_Ocean", "Harvesters_Spike", "SunStone", "Roslit_Bay_Ocean", "Moosewood_Pond", "Terrapin_Ocean", "Isonade", "Moosewood_Ocean", "Roslit_Pond", "Moosewood_Ocean_Mythical", "Terrapin_Olm", "The_Arch", "Scallop_Ocean", "SunStone_Hidden", "Mushgrove_Stone", "Keepers_Altar", "Lava", "Roslit_Pond_Seaweed"},
        Multi = false,
    })
    DropdownArea:OnChanged(function(Value)
        if FishAreas ~= nil and HumanoidRootPart ~= nil then
            if FishAreas[Value] and typeof(FishAreas[Value]) == "CFrame" then
                HumanoidRootPart.CFrame = FishAreas[Value]
            else
                print("1")
            end
        else
            print("1")
        end
    end)    

    local DropdownNPC = Tabs.Teleports:AddDropdown("DropdownNPC", {
        Title = "Teleport to Npc",
        Values = {"Witch", "Quiet_Synph", "Pierre", "Phineas", "Paul", "Shipwright", "Angler", "Marc", "Lucas", "Latern_Keeper", "Inn_Keeper", "Roslit_Keeper", "FishingNpc_1", "FishingNpc_2", "FishingNpc_3", "Henry", "Daisy", "Appraiser", "Merchant", "Mod_Keeper", "Ashe", "Alfredrickus"},
        Multi = false,
    })
    DropdownNPC:OnChanged(function(Value)
        if racistPeople ~= nil and HumanoidRootPart ~= nil then
            local npcPosition = racistPeople[Value]
            if npcPosition then
                if typeof(npcPosition) == "Vector3" then
                    HumanoidRootPart.CFrame = CFrame.new(npcPosition)
                elseif typeof(npcPosition) == "CFrame" then
                    HumanoidRootPart.CFrame = npcPosition
                else
                    print("1")
                end
            end
        else
            print("No valid teleport spot found.")
        end
    end)
    

    local DropdownItems = Tabs.Teleports:AddDropdown("Dropdown3", {
        Title = "Teleport to Items",
        Values = {"Training_Rod", "Plastic_Rod", "Lucky_Rod", "Nocturnal_Rod", "Kings_Rod", "Flimsy_Rod", "Fast_Rod", "Carbon_Rod", "Long_Rod", "Mythical_Rod", "Midas_Rod", "Trident_Rod", "Basic_Diving_Gear", "Fish_Radar", "Enchated_Altar", "Bait_Crate", "Quality_Bait_Crate", "Crab_Cage", "GPS"},
        Multi = false,
    })
    DropdownItems:OnChanged(function(Value)
        if itemSpots ~= nil and HumanoidRootPart ~= nil then
            local spot = itemSpots[Value]
            
            print("Value:", Value, "Spot:", spot, "IsCFrame:", typeof(spot) == "CFrame")
            
            if typeof(spot) == "CFrame" then
                HumanoidRootPart.CFrame = spot
            else
                print("1")
            end
        end
    end)
    local section = Tabs.Misc:AddSection("Misc")
    local FreezeCharacter = Tabs.Misc:AddToggle("FreezeCharacter", { Title = "Freeze Character", Default = false })
FreezeCharacter:OnChanged(function()
    pcall(function()
        local oldpos = HumanoidRootPart.CFrame
        FreezeChar = Options.FreezeCharacter.Value
        while FreezeChar and task.wait(math.random(0.1, 0.5)) do
            if HumanoidRootPart then
                HumanoidRootPart.CFrame = oldpos
            else
                break
            end
        end
    end)
end)
    local BypassRadar = Tabs.Misc:AddToggle("BypassRadar", {Title = "Bypass Fish Radar", Default = false })
    BypassRadar:OnChanged(function()
        for _, v in pairs(game:GetService("CollectionService"):GetTagged("radarTag")) do
            if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
                v.Enabled = Options.BypassRadar.Value
            end
        end
    end)
    -- local BypassGPS = Tabs.Misc:AddToggle("BypassGPS", {Title = "Bypass GPS", Default = false })
    -- BypassGPS:OnChanged(function()
    --     if Options.BypassGPS.Value == true then
    --         local XyzClone = game:GetService("ReplicatedStorage").resources.items.items.GPS.GPS.gpsMain.xyz:Clone()
    -- 		XyzClone.Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild("hud"):WaitForChild("safezone"):WaitForChild("backpack")
    -- 		local Pos = GetPosition()
    -- 		local StringInput = string.format("%s, %s, %s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
    -- 		XyzClone.Text = "<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font>: "..StringInput
    -- 		BypassGpsLoop = game:GetService("RunService").Heartbeat:Connect(function()
    -- 			local Pos = GetPosition()
    -- 			StringInput = string.format("%s, %s, %s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
    -- 			XyzClone.Text = "<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font> : "..StringInput
    -- 		end)
    -- 	else
    -- 		if PlayerGui.hud.safezone.backpack:FindFirstChild("xyz") then
    -- 			PlayerGui.hud.safezone.backpack:FindFirstChild("xyz"):Destroy()
    -- 		end
    -- 		if BypassGpsLoop then
    -- 			BypassGpsLoop:Disconnect()
    -- 			BypassGpsLoop = nil
    -- 		end
    --     end
    -- end)
    local RemoveFog = Tabs.Misc:AddToggle("RemoveFog", {Title = "Remove Fog", Default = false })
    RemoveFog:OnChanged(function()
        if Options.RemoveFog.Value == true then
            if game:GetService("Lighting"):FindFirstChild("Sky") then
                game:GetService("Lighting"):FindFirstChild("Sky").Parent = game:GetService("Lighting").bloom
            end
        else
            if game:GetService("Lighting").bloom:FindFirstChild("Sky") then
                game:GetService("Lighting").bloom:FindFirstChild("Sky").Parent = game:GetService("Lighting")
            end
        end
    end)

    local DayOnly = Tabs.Misc:AddToggle("DayOnly", {Title = "Day Only", Default = false })
    DayOnly:OnChanged(function()
        if Options.DayOnly.Value == true then
            DayOnlyLoop = RunService.Heartbeat:Connect(function()
                game:GetService("Lighting").TimeOfDay = "12:00:00"
            end)
        else
            if DayOnlyLoop then
                DayOnlyLoop:Disconnect()
                DayOnlyLoop = nil
            end
        end
    end)

    local JustUI = Tabs.Misc:AddToggle("JustUI", {Title = "Show/Hide UIs", Default = true })
    JustUI:OnChanged(function()
        local BlackShow = JustUI.Value
        if BlackShow then
            PlayerGui.hud.safezone.Visible = true
        else
            PlayerGui.hud.safezone.Visible = false
        end
    end)
    -- Character Tab
local section = Tabs.Character:AddSection("Idk")
local IdentityHiderUI = Tabs.Character:AddToggle("IdentityHiderUI", {Title = "Protect Identity", Default = false})
IdentityHiderUI:OnChanged(function()
    while Options.IdentityHiderUI.Value == true do
        -- Update elemen UI dengan warna yang lebih elegan dan tidak mencolok
        if UserPlayer:FindFirstChild("streak") then
            UserPlayer.streak.Text = "ThanHUB"
            UserPlayer.streak.TextColor3 = Color3.fromRGB(180, 180, 180) -- Abu-abu medium, lebih soft
        end
        if UserPlayer:FindFirstChild("level") then
            UserPlayer.level.Text = "ThanHUB"
            UserPlayer.level.TextColor3 = Color3.fromRGB(140, 140, 220) -- Biru pastel yang lebih kalem
        end
        if UserPlayer:FindFirstChild("user") then
            UserPlayer.user.Text = "ThanHUB Protect"
            UserPlayer.user.TextColor3 = Color3.fromRGB(160, 160, 160) -- Abu-abu yang lebih seimbang
        end
        local hud = LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("hud"):WaitForChild("safezone")
        if hud:FindFirstChild("coins") then
            hud.coins.Text = "HIDDEN"
            hud.coins.TextColor3 = Color3.fromRGB(235, 210, 150) -- Kuning emas lembut, lebih elegan
        end
        if hud:FindFirstChild("lvl") then
            hud.lvl.Text = "ThanHUB MAX"
            hud.lvl.TextColor3 = Color3.fromRGB(190, 170, 230) -- Ungu pastel lembut
        end
        task.wait(0.01)
    end
end)    
local WalkOnWater = Tabs.Character:AddToggle("WalkOnWater", {Title = "Walk On Water", Default = false })
WalkOnWater:OnChanged(function()
for _, v in pairs(workspace.zones.fishing:GetChildren()) do
    if v.Name == WalkZone then
        v.CanCollide = Options.WalkOnWater.Value
        if v.Name == "Ocean" then
            for _, v in pairs(workspace.zones.fishing:GetChildren()) do
                if v.Name == "Deep Ocean" then
                    v.CanCollide = Options.WalkOnWater.Value
                end
            end
        end
    end
end
end)

local WalkOnWaterZone = Tabs.Character:AddDropdown("WalkOnWaterZone", {
Title = "Walk On Water Zone",
Values = {"Ocean", "Desolate Deep", "The Depths"},
Multi = false,
Default = "Ocean",
})
WalkOnWaterZone:OnChanged(function(Value)
WalkZone = Value
end)

local WalkSpeedSliderUI = Tabs.Character:AddSlider("WalkSpeedSliderUI", {
Title = "Walk Speed",
Min = 16,
Max = 200,
Default = 16,
Rounding = 1,
})
WalkSpeedSliderUI:OnChanged(function(value)
LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

local JumpHeightSliderUI = Tabs.Character:AddSlider("JumpHeightSliderUI", {
Title = "Jump Height",
Min = 50,
Max = 200,
Default = 50,
Rounding = 1,
})
JumpHeightSliderUI:OnChanged(function(value)
LocalPlayer.Character.Humanoid.JumpPower = value
end)

-- // Useful Features Section // --
local usefulSection = Tabs.Character:AddSection("Useful Features")

local AntiAFK = usefulSection:AddToggle("AntiAFK", {Title = "Anti-AFK", Default = true})
AntiAFK:OnChanged(function(m)
if m then
    local virtualUser = game:GetService("VirtualUser")
    LocalPlayer.Idled:Connect(function()
        virtualUser:CaptureController()
        virtualUser:ClickButton2(Vector2.new())
    end)
end
end)

local InfiniteOxygen = Character:AddToggle("InfiniteOxygen", {Title = "Infinite Oxygen", Default = false})
InfiniteOxygen:OnChanged(function(m)
if m then
    local divingTank = Instance.new("Glue")
    divingTank.Name = "DivingTank"
    divingTank:SetAttribute("Tier", 9e9)
    divingTank.Parent = LocalPlayer.Character
else
    local existingTank = LocalPlayer.Character:FindFirstChild("DivingTank")
    if existingTank then existingTank:Destroy() end
end
end)
-- FREEZE CHARACTER
local FreezeCharacter = Tabs.Character:AddToggle("FreezeCharacter", { Title = "Freeze Character", Default = false })
FreezeCharacter:OnChanged(function()
pcall(function()
    local oldpos = HumanoidRootPart.CFrame
    FreezeChar = Options.FreezeCharacter.Value
    while FreezeChar and task.wait(math.random(0.1, 0.5)) do
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = oldpos
        else
            break
        end
    end
end)
end)

-- Addons:
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("SpaceHub")
SaveManager:SetFolder("SpaceHub/Fisch")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Than Hub",
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
    B.Text = "S"
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

spawn(function()
    cloneref(game.CoreGui).ChildAdded:Connect(function(child)
        if child.Name == "RobloxPromptGui" then
            repeat wait() until child:FindFirstChild("promptOverlay") ~= nil and child.promptOverlay:FindFirstChild("ErrorPrompt") ~= nil
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
        end
    end)

    hookfunction(LocalPlayer.Kick, function(...)
        return wait(9e9)
    end)
end)

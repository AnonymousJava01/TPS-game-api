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
    SubTitle = "Private",
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
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "map-pin" }),
    Event = Window:AddTab({ Title = "Event", Icon = "cherry }),
    Fun = Window:AddTab({ Title = "Fun", Icon = "coffee" }),
    Webhook = Window:AddTab({ Title = "Webhook", Icon = "clock" }),
    Premium = Window:AddTab({ Title = "Premium", Icon = "diamond" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "file-text" }),
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

do
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
        Min = 0.2,
        Max = 1,
        Rounding = 1,
        Callback = function(Value)
            autoShakeDelay = Value
        end
    })
    Slider:OnChanged(function(Value)
        autoShakeDelay = Value
    end)
    Slider:SetValue(0.5)
    
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
                local Random = math.random() * (99 - 90) + 90
                local FRandom = string.format("%.4f", Random)
                print(FRandom)
                local Random2 = math.random(90, 99)
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
        Values = {"Strange Whirlpool", "Great Hammerhead Shark", "Great White Shark", "Whale Shark", "The Depths - Serpent", "Megalodon", "Ancient Algae Pool", "Mushgrove Algae Pool", "Forsaken Algae Pool", "Snowcap Algae Pool"},
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
         elseif SelectedWorldEvent == "Ancient Algae Pool" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Ancient Algae Pool")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Ancient Algae Pool") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Ancient Algae Pool"].Position + offset)               -- Ancient Algae Pool
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Mushgrove Algae Pool" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Mushgrove Algae Pool")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Mushgrove Algae Pool") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Mushgrove Algae Pool"].Position + offset)                     -- Mushgrove Algae Pool
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Forsaken Algae Pool" then
            local offset = Vector3.new(0, 50, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Forsaken Algae Pool")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Forsaken Algae Pool") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Forsaken Algae Pool"].Position + offset)            -- Forsaken Algae Pool
            WorldEventTPDropdownUI:SetValue(nil)
        elseif SelectedWorldEvent == "Snowcap Algae Pool" then
            local offset = Vector3.new(0, 50, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Snowcap Algae Pool")
            if not WorldEvent then WorldEventTPDropdownUI:SetValue(nil) return ShowNotification("Not found Snowcap Algae Pool") end
            HumanoidRootPart.CFrame = CFrame.new(game.Workspace.zones.fishing["Snowcap Algae Pool"].Position + offset)            -- Snowcap Algae Pool
            WorldEventTPDropdownUI:SetValue(nil)    
        end
    end)

    local space = Tabs.Teleport:AddSection("")
    
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

    local ToggleNoclip = Tabs.Misc:AddToggle("ToggleNoclip", {Title = "Noclip", Default = false })
    ToggleNoclip:OnChanged(function()
        Noclip = ToggleNoclip.Value
    end)

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

   local ToggleAntiDrown = Tabs.Misc:AddToggle("ToggleAntiDrown", {Title = "Infinity Oxygen", Default = false })
    ToggleAntiDrown:OnChanged(function()
        AntiDrown = ToggleAntiDrown.Value
        if AntiDrown == true then
            if LocalCharacter ~= nil and LocalCharacter:FindFirstChild("client"):WaitForChild("oxygen") ~= nil and LocalCharacter:FindFirstChild("client"):WaitForChild("oxygen").Enabled == true then	
                LocalCharacter.client.oxygen.Enabled = false	
            end	
            CharAddedAntiDrownCon = LocalPlayer.CharacterAdded:Connect(function()	
                if LocalCharacter ~= nil and LocalCharacter:FindFirstChild("client"):WaitForChild("oxygen") ~= nil and LocalCharacter:FindFirstChild("client"):WaitForChild("oxygen").Enabled == true and AntiDrown == true then	
                    LocalCharacter.client.oxygen.Enabled = false	
                end	
            end)
        else	
            if LocalCharacter ~= nil and LocalCharacter:FindFirstChild("client"):WaitForChild("oxygen") ~= nil and LocalCharacter:FindFirstChild("client"):WaitForChild("oxygen").Enabled == false then	
                LocalCharacter.client.oxygen.Enabled = true	
            end	
        end
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

    hookfunction(game.Players.LocalPlayer.Kick, function(...)
        return wait(9e9)
    end)
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Ghost Hub " .. Fluent.Version,
    SubTitle = "by i_am_thing",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" }),
    Universal = Window:AddTab({ Title = "Universal", Icon = "globe" }),
    Brookhaven = Window:AddTab({ Title = "Brookhaven", Icon = "gamepad" }),
    BloxFruits = Window:AddTab({ Title = "Blox Fruits", Icon = "apple" }),
    LumberTycoon2 = Window:AddTab({ Title = "Lumber Tycoon 2", Icon = "tree-deciduous" }),
    BreakingPoint = Window:AddTab({ Title = "Breaking Point", Icon = "target" }),
    FleeTheFacility = Window:AddTab({ Title = "Flee The Facility", Icon = "run" }),
    CombatWarriors = Window:AddTab({ Title = "Combat Warriors", Icon = "sword" }),
    RaiseAFloppa = Window:AddTab({ Title = "Raise a Floppa", Icon = "cat" }),
    MegaEasyObby = Window:AddTab({ Title = "Mega Easy Obby", Icon = "road" }),
    SCPRoleplay = Window:AddTab({ Title = "SCP Roleplay", Icon = "shield" }),
    MiningSim2 = Window:AddTab({ Title = "Mining Sim 2", Icon = "pickaxe" }),
    Criminality = Window:AddTab({ Title = "Criminality", Icon = "skull" }),
    BeeSwarmSim = Window:AddTab({ Title = "Bee Swarm Simulator", Icon = "bee" }),
    Jailbreak = Window:AddTab({ Title = "Jailbreak", Icon = "lock" }),
    EnergyAssault = Window:AddTab({ Title = "Energy Assault", Icon = "zap" }),
    SlapBattle = Window:AddTab({ Title = "Slap Battle", Icon = "hand" }),
    PrisonLife = Window:AddTab({ Title = "Prison Life", Icon = "lock" }),
    Bedwars = Window:AddTab({ Title = "Bedwars", Icon = "bed" }),
    StrongManSimulator = Window:AddTab({ Title = "Strong Man Simulator", Icon = "muscle" }),
    PhantomForces = Window:AddTab({ Title = "Phantom Forces", Icon = "crosshair" }),
    RunDTM = Window:AddTab({ Title = "3008", Icon = "home" }),
    Evade = Window:AddTab({ Title = "Evade", Icon = "run" }),
    RestaurantTycoon2 = Window:AddTab({ Title = "Restaurant Tycoon 2", Icon = "plate" }),
    Arsenal = Window:AddTab({ Title = "Arsenal", Icon = "shield-cross" }),
    MyRestaurant = Window:AddTab({ Title = "My Restaurant", Icon = "chef-hat" }),
    Doors = Window:AddTab({ Title = "Doors", Icon = "door-open" }),
    DriveWorld = Window:AddTab({ Title = "Drive World", Icon = "car" }),
    ZombieMergeTycoon = Window:AddTab({ Title = "Zombie Merge Tycoon", Icon = "zombie" }),
    SpeedingWall = Window:AddTab({ Title = "Be Crushed by a Speeding Wall", Icon = "wall" }),
    PunchAWall = Window:AddTab({ Title = "Punch a Wall Simulator", Icon = "fist" }),
    Frontlines = Window:AddTab({ Title = "Frontlines", Icon = "shield" }),
    CounterBlox = Window:AddTab({ Title = "Counter Blox", Icon = "crosshair" }),
    PetSimX = Window:AddTab({ Title = "Pet Simulator X", Icon = "paw" }),
    StrongMuscle = Window:AddTab({ Title = "Strong Muscle Simulator", Icon = "muscle" }),
    PlsDonate = Window:AddTab({ Title = "Pls Donate", Icon = "gift" }),
    ArmWrestle = Window:AddTab({ Title = "Arm Wrestle Simulator", Icon = "arm-flex" }),
    RainbowFriends = Window:AddTab({ Title = "Rainbow Friends", Icon = "rainbow" }),
    PetSim99 = Window:AddTab({ Title = "Pet Simulator 99", Icon = "paw" }),
    BuildABoat = Window:AddTab({ Title = "Build a Boat for Treasure", Icon = "sailboat" }),
    Rivals = Window:AddTab({ Title = "Rivals", Icon = "users" }),
    MM2 = Window:AddTab({ Title = "Murder Mystery 2", Icon = "dagger" }),
    BreakingPoint2 = Window:AddTab({ Title = "Breaking Point", Icon = "target" }),
    TreasureHunt = Window:AddTab({ Title = "Treasure Hunt Simulator", Icon = "treasure-chest" }),
    SharkBite2 = Window:AddTab({ Title = "SharkBite 2", Icon = "shark-fin" }),
    ChatBypasser = Window:AddTab({ Title = "Chat Bypasser", Icon = "chat" }),
    BladeBall = Window:AddTab({ Title = "Blade Ball", Icon = "ball" }),
}


-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
Window:SelectTab(1)


Tabs.Brookhaven:AddButton({
    Title = "Ice Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
    end,
})

Tabs.BloxFruits:AddButton({
    Title = "Strawberry Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CheemsNhuChiAl/Sotringhuhu/main/StrawberryHubBeta1.35"))()
    end,
})

Tabs.LumberTycoon2:AddButton({
    Title = "Butter",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Butterisgood/Butter/main/Root2.lua'))("")
    end,
})

Tabs.BreakingPoint:AddButton({
    Title = "Breakingpoint",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/2vsh/breakingpoint/main/mainscript.lua'))()
    end,
})

Tabs.FleeTheFacility:AddButton({
    Title = "FTF",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Aboahaogsigsigaivva/__Scripts/__Main/__Code/__FleeTheFacility.lua'))()
    end,
})

Tabs.CombatWarriors:AddButton({
    Title = "Tickware",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tickwares/tickware/main/Tickware"))()
    end,
})

Tabs.CombatWarriors:AddButton({
    Title = "Stratos Hub",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Combat-Warriors-Stratos-Hub-17601"))()
    end,
})

Tabs.RaiseAFloppa:AddButton({
    Title = "Leo Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tip52/Leo-hub/main/loader"))()
    end,
})

Tabs.MegaEasyObby:AddButton({
    Title = "Mega Easy Obby",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/X361rzKq"))()
    end,
})

Tabs.SCPRoleplay:AddButton({
    Title = "SCP Roleplay",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/SCPRoleplay.lua", true))()
    end,
})

Tabs.MiningSim2:AddButton({
    Title = "RunDTM",
    Callback = function()
        loadstring(game:HttpGet('https://github.com/RunDTM/miningsim2/raw/main/script.lua'))()
    end,
})

Tabs.Criminality:AddButton({
    Title = "Rayfield",
    Callback = function()
        local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
        local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
 
        local Window = Rayfield:CreateWindow({
           Name = "👹 Nixks Criminality Hub 👹",
           LoadingTitle = "Nixks Hub",
           LoadingSubtitle = "by Nixks",
           ConfigurationSaving = {
              Enabled = true,
              FolderName = nil, -- Create a custom folder for your hub/game
              FileName = "YoutubeRobloxScripts"
           },
           Discord = {
              Enabled = true,
              Invite = "https://discord.gg/roblox-scripts-942431667807735888", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
              RememberJoins = true -- Set this to false to make them join the discord every time they load it up
           },
           KeySystem = false, -- Set this to true to use our key system
           KeySettings = {
              Title = "Nixks Hub | Keyless",
              Subtitle = "Keyless Hub!",
              Note = "Join server from misc tab",
              FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
              SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
              GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
              Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
           }
        })
         
        local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
        local MainSection = MainTab:CreateSection("Main")
        Rayfield:Notify({
           Title = "Script Executed",
           Content = "Best Criminality Hub",
           Duration = 5,
           Image = nil,
           Actions = { -- Notification Buttons
              Ignore = {
                 Name = "Okay!",
                 Callback = function()
                 print("The user tapped Okay!")
              end,
           },
        },
        })
         
        local Button = MainTab:CreateButton({
           Name = "Aimbot",
           Callback = function()
                loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Raw%20Main.lua"))()
           end,
        })
    end,
})

Tabs.BeeSwarmSim:AddButton({
    Title = "Survive Loader",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NUTellaVING/Survive/main/Loader.lua"))()
    end,
})

Tabs.BeeSwarmSim:AddButton({
    Title = "Key System",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/BeeSwarmSim/main/BeeSwarmSim"))("t.me/arceusxscripts")
    end,
})


Tabs.Universal:AddButton({
    Title = "Admin",  -- Changed from Name to Title
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end,
})

Tabs.Universal:AddButton({
    Title = "Silent Aim",  -- Changed from Name to Title
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))()
    end,
})


Tabs.Universal:AddButton({
    Title = "Anti AFK",
    Callback = function()
--Roblox Anti Afk Script--
-- Made by aoki0x--
--Ghost Hub On Top!--
 
wait(0.5)
local Main = Instance.new("ScreenGui")
local Title = Instance.new("TextLabel")
local MainFrame = Instance.new("Frame")
local EndTItle = Instance.new("TextLabel")
local AfkStatus = Instance.new("TextLabel")
 
Main.Parent = game.CoreGui
 
Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
 
Title.Parent = Main;
 
Title.Active = true
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderColor3 = Color3.fromRGB(0, 0, 255)
Title.Draggable = true
Title.Position = UDim2.new(0.698610067, 0, 0.098096624, 0)
Title.Size = UDim2.new(0, 370, 0, 52)
Title.Font = Enum.Font.SourceSansBold;
Title.Text = "Anti Afk | by aoki0x"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 22;
 
MainFrame.Parent = Title
 
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 255)
MainFrame.Position = UDim2.new(0, 0, 1.0192306, 0)
MainFrame.Size = UDim2.new(0, 370, 0, 107)
 
EndTItle.Parent = MainFrame
EndTItle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EndTItle.BorderColor3 = Color3.fromRGB(0, 0, 255)
EndTItle.Position = UDim2.new(0, 0, 0.800455689, 0)
EndTItle.Size = UDim2.new(0, 370, 0, 21)
EndTItle.Font = Enum.Font.SourceSansBold;
EndTItle.Text = "RemiAPE"
EndTItle.TextColor3 = Color3.fromRGB(255, 255, 255)
EndTItle.TextSize = 20;
 
AfkStatus.Parent = MainFrame
 
AfkStatus.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AfkStatus.BorderColor3 = Color3.fromRGB(0, 0, 255)
AfkStatus.Position = UDim2.new(0, 0, 0.158377, 0)
AfkStatus.Size = UDim2.new(0, 370, 0 ,44)
AfkStatus.Font = Enum.Font.SourceSansBold;
AfkStatus.Text = "Anti Afk Status: Active"
AfkStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
AfkStatus.TextSize = 20;
 
local abc = game:service'VirtualUser'
 
game:service'Players'.LocalPlayer.Idled:connect(function()
 
    AfkStatus:CaptureController()
    AfkStatus:ClickButton2(Vector2.new())
 
    AfkStatus.Text = "Roblox Tried To Kick You."
    wait(2)
    AfkStatus.Text = "Anti Afk Status: Active"
end)    end,
})

Tabs.Universal:AddButton({
    Name = "ESP",
    Callback = function()
        -- Function to update player ESP distance
local function updatePlayerESP()
    local localCharacter = game.Players.LocalPlayer.Character
    if not localCharacter then
        return
    end
 
    for _, player in ipairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer and player.Character and player.Character:FindFirstChild("Head") then
            local distance = (localCharacter.Head.Position - player.Character.Head.Position).Magnitude
            local billboardGui = player.Character.Head:FindFirstChild("TadachiisESPTags") -- Check if the BillboardGui exists
            if not billboardGui then -- Only create a new one if it doesn't exist
                billboardGui = Instance.new("BillboardGui")
                billboardGui.Name = "TadachiisESPTags" -- Use the correct name for the BillboardGui
                billboardGui.Adornee = player.Character.Head
                billboardGui.Size = UDim2.new(0, 100, 0, 50) -- fixed size for the BillboardGui
                billboardGui.StudsOffset = Vector3.new(0, 2, 0) -- adjust the vertical offset as needed
                billboardGui.AlwaysOnTop = true
                billboardGui.LightInfluence = 1
                billboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                billboardGui.Parent = player.Character.Head
 
                local textLabel = Instance.new("TextLabel")
                textLabel.Name = "NameLabel" -- Use the correct name for the label
                textLabel.Text = player.Name .. "\nDistance: " .. math.floor(distance)
                textLabel.Size = UDim2.new(1, 0, 1, 0)
                textLabel.BackgroundTransparency = 1 -- transparent background
                textLabel.TextColor3 = Color3.new(1, 0, 0) -- red text for the player's name
                textLabel.TextScaled = true
                textLabel.TextStrokeColor3 = Color3.new(0, 0, 0) -- black text stroke
                textLabel.TextStrokeTransparency = 0 -- fully opaque text stroke (visible through walls)
                textLabel.Visible = true -- ESP is always visible without a GUI
                textLabel.Parent = billboardGui
            else
                billboardGui.NameLabel.Text = player.Name .. "\nDistance: " .. math.floor(distance) -- Update the distance text
            end
        end
    end
end
 
-- Call updatePlayerESP() initially and then schedule it to be called every 0.01 seconds
updatePlayerESP()
game:GetService("RunService").Heartbeat:Connect(function()
    updatePlayerESP()
end)
    end,
})

Tabs.Universal:AddButton({
    Name = "Aimbot",
    Callback = function()
        local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Holding = false
 
_G.AimbotEnabled = true
_G.TeamCheck = false -- If set to true then the script would only lock your aim at enemy team members.
_G.AimPart = "Head" -- Where the aimbot script would lock at.
_G.Sensitivity = 0 -- How many seconds it takes for the aimbot script to officially lock onto the target's aimpart.
 
_G.CircleSides = 64 -- How many sides the FOV circle would have.
_G.CircleColor = Color3.fromRGB(255, 255, 255) -- (RGB) Color that the FOV circle would appear as.
_G.CircleTransparency = 0.7 -- Transparency of the circle.
_G.CircleRadius = 80 -- The radius of the circle / FOV.
_G.CircleFilled = false -- Determines whether or not the circle is filled.
_G.CircleVisible = true -- Determines whether or not the circle is visible.
_G.CircleThickness = 0 -- The thickness of the circle.
 
local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness
 
local function GetClosestPlayer()
	local MaximumDistance = _G.CircleRadius
	local Target = nil
 
	for _, v in next, Players:GetPlayers() do
		if v.Name ~= LocalPlayer.Name then
			if _G.TeamCheck == true then
				if v.Team ~= LocalPlayer.Team then
					if v.Character ~= nil then
						if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
							if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
								local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
								local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
 
								if VectorDistance < MaximumDistance then
									Target = v
								end
							end
						end
					end
				end
			else
				if v.Character ~= nil then
					if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
						if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
							local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
							local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
 
							if VectorDistance < MaximumDistance then
								Target = v
							end
						end
					end
				end
			end
		end
	end
 
	return Target
end
 
UserInputService.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = true
    end
end)
 
UserInputService.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = false
    end
end)
 
RunService.RenderStepped:Connect(function()
    FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
    FOVCircle.Radius = _G.CircleRadius
    FOVCircle.Filled = _G.CircleFilled
    FOVCircle.Color = _G.CircleColor
    FOVCircle.Visible = _G.CircleVisible
    FOVCircle.Radius = _G.CircleRadius
    FOVCircle.Transparency = _G.CircleTransparency
    FOVCircle.NumSides = _G.CircleSides
    FOVCircle.Thickness = _G.CircleThickness
 
    if Holding == true and _G.AimbotEnabled == true then
        TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
    end
end)
    end,
})

Tabs.Jailbreak:AddButton({
    Name = "Auto Rob",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/alohabeach/Main/master/Scripts/JailbreakAutoRob.lua"))()
    end,
})

Tabs.Jailbreak:AddButton({
    Name = "Chaos",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/xChaoticVoid/Jailbreak/main/Chaos.lua'))()
    end,
})

Tabs.Jailbreak:AddButton({
    Name = "Universal Farm",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BlitzIsKing/UniversalFarm/main/Loader/Regular"))()
    end,
})

Tabs.Jailbreak:AddButton({
    Name = "Sky Hub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))()
    end,
})

Tabs.EnergyAssault:AddButton({
    Name = "Universal Silent Aim (Not for Mobile)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))()
    end,
})

Tabs.SlapBattle:AddButton({
    Name = "Scriptblox",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Slap-Battles-Open-source-for-9484"))()
    end,
})

Tabs.PrisonLife:AddButton({
    Name = "56 Prison Life Remastered",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/WinterDinder/56-Clubs-Prison-Life-REMASTERED-SCRIPT/main/Main"))()
    end,
})

Tabs.Bedwars:AddButton({
    Name = "VapeV4ForRoblox",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua"))()
    end,
})

Tabs.Bedwars:AddButton({
    Name = "Aurora",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/cocotv666/Aurora/refs/heads/main/Aurora_Loader'))()
    end,
})

Tabs.StrongManSimulator:AddButton({
    Name = "Autofarm",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/5x-Anime-Event-Strongman-Simulator-AutoFarm-And-Auto-Take-Best-12410"))()
    end,
})

Tabs.PhantomForces:AddButton({
    Name = "Homohack",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/dementiaenjoyer/homohack/main/loader.lua"))()
    end,
})

Tabs.PhantomForces:AddButton({
    Name = "Phantom",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/x39qc/MyRobloxScripts/main/Phantom%20Forces%20ESP"))()
    end,
})

Tabs.PhantomForces:AddButton({
    Title = "Phantom Hub",
    Callback = function()
        --// aimbot version (mouse api required)
--// vars

local players = workspace.Players
local camera = workspace.CurrentCamera

--// services

local run_service = game:GetService("RunService")
local teams = game:GetService("Teams")
local plr_service = game:GetService("Players")
local user_input_service = game:GetService("UserInputService")

--// tables

local features = { --// aimbot speed is mouse sensitivity dependent (not dpi)
    aimbot = {enabled = true, fov = 150, speed = 8, hitpart = "head"},
    chams = {enabled = true, color = {fill = Color3.fromRGB(121, 106, 255), outline = Color3.fromRGB(119, 121, 255)}, transparency = {fill = 0, outline = 0}},
}

--// instances

local fov_circle = Drawing.new("Circle")
fov_circle.Color = Color3.fromRGB(255, 255, 255)
fov_circle.Radius = features.aimbot.fov
fov_circle.Visible = true

--// functions

function is_ally(player)

    if not player then
        return false
    end

    local helmet = player:FindFirstChildWhichIsA("Folder") and player:FindFirstChildWhichIsA("Folder"):FindFirstChildOfClass("MeshPart")
    if not helmet then
        return false
    end

    if helmet.BrickColor == BrickColor.new("Black") then
        return teams.Phantoms == plr_service.LocalPlayer.Team
    end

    return teams.Ghosts == plr_service.LocalPlayer.Team

end

function get_players()
    local entity_list = {}

    for _, team in players:GetChildren() do
        for _, player in team:GetChildren() do
            if player:IsA("Model") and not is_ally(player) then
                entity_list[#entity_list+1] = player
            end
        end
    end

    return entity_list
end

function add_chams(adornee)

    local highlight = Instance.new("Highlight", adornee)
    
    highlight.FillColor = features.chams.color.fill
    highlight.OutlineColor = features.chams.color.outline
    highlight.FillTransparency = features.chams.transparency.fill
    highlight.OutlineTransparency = features.chams.transparency.outline

end

function get_character(player) --// shitty optimization but indexing just fucking returns a folder for some reason
    local char = {
        head = nil,
        torso = nil,
    }

    for _, bodypart in player:GetChildren() do
        if bodypart:IsA("BasePart") or bodypart:IsA("MeshPart") then
            if bodypart.Size == Vector3.new(1, 1, 1) then
                char.head = bodypart
            elseif bodypart.Size == Vector3.new(2, 2, 1) then
                char.torso = bodypart
            end
        end
    end

    return char
end

function get_closest_player()
    local closest = nil
    local closest_dist = math.huge

    for _, player in get_players() do
        if player then

            local character = get_character(player)

            if character and character.torso then
                local w2s, onscreen = camera:WorldToViewportPoint(character.torso.Position)
                if onscreen then
                    
                    local dist = (Vector2.new(w2s.X, w2s.Y) - Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)).Magnitude
                    if dist < features.aimbot.fov and dist < closest_dist then
                        closest = player
                        closest_dist = dist
                    end

                end
            end

        end
    end

    return closest
end

--// logic

run_service.RenderStepped:Connect(function(delta)
    for _, player in get_players() do
        
        if features.aimbot.enabled and user_input_service:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then
            
            local closest = get_closest_player()
            if closest then
                
                local character = get_character(closest)
                local hitpart = character[features.aimbot.hitpart]

                if character and hitpart then
                    local w2s = camera:WorldToViewportPoint(hitpart.Position)
                    local mouse = user_input_service:GetMouseLocation()
                    local speed = features.aimbot.speed / 10

                    mousemoverel((w2s.X - mouse.X) * speed, (w2s.Y - mouse.Y) * speed) --// mmm i love it!
                end

            end

        end

        if player and player:FindFirstChildWhichIsA("Model") and not player:FindFirstChildWhichIsA("Highlight") then
            if features.chams.enabled then
                add_chams(player)
            end
        end

    end

    fov_circle.Position = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
end)
    end,
})

Tabs.RunDTM:AddButton({
    Title = "3008 Script",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/RunDTM/scripts/main/3008.lua'))()
    end,
})

Tabs.Evade:AddButton({
    Title = "Mobile Script",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
    end,
})

Tabs.Evade:AddButton({
    Title = "Aurora",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/cocotv666/Aurora/refs/heads/main/Aurora_Loader'))()
    end,
})

Tabs.RestaurantTycoon2:AddButton({
    Title = "May Not Work",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/uAZf15LR"))()
    end,
})

Tabs.Arsenal:AddButton({
    Title = "Arsenal",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/G6Ubkkuv"))()
    end,
})

Tabs.Arsenal:AddButton({
    Title = "TbaoHubArsenal",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal"))()
    end,
})

Tabs.MyRestaurant:AddButton({
    Title = "THEALLHACKLOADER",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NukeVsCity/TheALLHACKLoader/main/NukeLoader"))()
    end,
})

Tabs.Doors:AddButton({
    Title = "UltraStuff",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/UltraStuff/scripts2/main/doors"))()
    end,
})

Tabs.Doors:AddButton({
    Title = "Doors Exploit",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
    end,
})

Tabs.Doors:AddButton({
    Title = "BlackKing-OBF",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/KINGHUB01/BlackKing-obf/main/Doors%20Blackking%20And%20BobHub"))()
    end,
})

Tabs.DriveWorld:AddButton({
    Title = "BrickPlayz",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BrickPlayz/Public-Scripts/main/DriveWorld.lua"))()
    end,
})

-- Zombie Merge Tycoon
Tabs.ZombieMergeTycoon:AddButton({
    Title = "Random Roblox",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Saaakai/Random-Roblox-Script/main/Zombie%20Merge%20Tycoon"))()
    end,
})

-- Be Crushed by a Speeding Wall!
Tabs.SpeedingWall:AddButton({
    Title = "V.G HUB",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()
    end,
})

-- Punch a Wall Simulator
Tabs.PunchAWall:AddButton({
    Title = "Igerian",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/iGerian/Scripts/main/Punch%20Wall%20Simulator.lua'))()
    end,
})

-- Frontlines (Script placeholder to be added)
Tabs.Frontlines:AddButton({
    Title = "Front Exploit",
    Callback = function()
-- Set hitbox size, transparency level, and notification status
local size = Vector3.new(10, 10, 10)
local trans = 1
local notifications = false
 
-- Store the time when the code starts executing
local start = os.clock()
 
-- Send a notification saying that the script is loading
game.StarterGui:SetCore("SendNotification", {
   Title = "Script",
   Text = "Loading script...",
   Icon = "",
   Duration = 5
})
 
-- Load the ESP library and turn it on
local esp = loadstring(game:HttpGet("https://raw.githubusercontent.com/andrewc0de/Roblox/main/Dependencies/ESP.lua"))()
esp:Toggle(true)
 
-- Configure ESP settings
esp.Boxes = true
esp.Names = false
esp.Tracers = false
esp.Players = false
 
-- Add an object listener to the workspace to detect enemy models
esp:AddObjectListener(workspace, {
   Name = "soldier_model",
   Type = "Model",
   Color = Color3.fromRGB(255, 0, 4),
 
   -- Specify the primary part of the model as the HumanoidRootPart
   PrimaryPart = function(obj)
       local root
       repeat
           root = obj:FindFirstChild("HumanoidRootPart")
           task.wait()
       until root
       return root
   end,
 
   -- Use a validator function to ensure that models do not have the "friendly_marker" child
   Validator = function(obj)
       task.wait(1)
       if obj:FindFirstChild("friendly_marker") then
           return false
       end
       return true
   end,
 
   -- Set a custom name to use for the enemy models
   CustomName = "?",
 
   -- Enable the ESP for enemy models
   IsEnabled = "enemy"
})
 
-- Enable the ESP for enemy models
esp.enemy = true
 
-- Wait for the game to load fully before applying hitboxes
task.wait(1)
 
-- Apply hitboxes to all existing enemy models in the workspace
for _, v in pairs(workspace:GetDescendants()) do
   if v.Name == "soldier_model" and v:IsA("Model") and not v:FindFirstChild("friendly_marker") then
       local pos = v:FindFirstChild("HumanoidRootPart").Position
       for _, bp in pairs(workspace:GetChildren()) do
           if bp:IsA("BasePart") then
               local distance = (bp.Position - pos).Magnitude
               if distance <= 5 then
                   bp.Transparency = trans
                   bp.Size = size
               end
           end
       end
   end
end
 
-- Function to handle when a new descendant is added to the workspace
local function handleDescendantAdded(descendant)
   task.wait(1)
 
   -- If the new descendant is an enemy model and notifications are enabled, send a notification
   if descendant.Name == "soldier_model" and descendant:IsA("Model") and not descendant:FindFirstChild("friendly_marker") then
       if notifications then
           game.StarterGui:SetCore("SendNotification", {
               Title = "Script",
               Text = "[Warning] New Enemy Spawned! Applied hitboxes.",
               Icon = "",
               Duration = 3
           })
       end
 
       -- Apply hitboxes to the new enemy model
       local pos = descendant:FindFirstChild("HumanoidRootPart").Position
       for _, bp in pairs(workspace:GetChildren()) do
           if bp:IsA("BasePart") then
               local distance = (bp.Position - pos).Magnitude
               if distance <= 5 then
                   bp.Transparency = trans
                   bp.Size = size
               end
           end
       end
   end
end
 
-- Connect the handleDescendantAdded function to the DescendantAdded event of the workspace
task.spawn(function()
   game.Workspace.DescendantAdded:Connect(handleDescendantAdded)
end)
 
-- Store the time when the code finishes executing
local finish = os.clock()
 
-- Calculate how long the code took to run and determine a rating for the loading speed
local time = finish - start
local rating
if time < 3 then
   rating = "fast"
elseif time < 5 then
   rating = "acceptable"
else
   rating = "slow"
end
 
-- Send a notification showing how long the code took to run and its rating
game.StarterGui:SetCore("SendNotification", {
   Title = "Script",
   Text = string.format("Script loaded in %.2f seconds (%s loading)", time, rating),
   Icon = "",
   Duration = 5
})    end,
})

-- Counter Blox (Script placeholder to be added)
Tabs.CounterBlox:AddButton({
    Title = "Counter Exploit",
    Callback = function()
        -- Insert your script here
    end,
})

-- Pet Simulator X
Tabs.PetSimX:AddButton({
    Title = "Checkpoint",
    Callback = function()
        loadstring(game:HttpGetAsync("https://blacktrap.org/blacktrap/users/checkpoint/Auth.txt"))()
    end,
})

-- Strong Muscle Simulator
Tabs.StrongMuscle:AddButton({
    Title = "Strong Muscle",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Alendaa/Scripts/main/StrongMuscle", true))()
    end,
})

-- Pls Donate
Tabs.PlsDonate:AddButton({
    Title = "BinaryHub",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BinaryHubOfficial/binaryhub/main/init.lua"))()
    end,
})

-- Arm Wrestle Simulator
Tabs.ArmWrestle:AddButton({
    Title = "Arm loader",
    Callback = function()
        loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/99d16edc79729a038994f85ce7335971.lua"))()
    end,
})

-- Rainbow Friends
Tabs.RainbowFriends:AddButton({
    Title = "Borkware",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/BorkWare/main/Scripts/' .. game.GameId .. ".lua"))(' Watermelon ? ')
    end,
})

-- Pet Simulator 99
Tabs.PetSim99:AddButton({
    Title = "Universal Nuke Hub V4 Solara Support",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Nuke-Hub-V4-SOLARA-Support-KEYLESS-16495"))()
    end,
})

-- Build a Boat for Treasure
Tabs.BuildABoat:AddButton({
    Title = "Silver couscous",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/WinterDinder/silver-couscous/main/masage.lua"))()
    end,
})

Tabs.BuildABoat:AddButton({
    Title = "Auto builder",
    Callback = function()
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/max2007killer/auto-build-not-limit/main/buildaboatv2obs.txt"), true))()
    end,
})

-- Rivals
Tabs.Rivals:AddButton({
    Title = "Cracklua",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/cracklua/cracks/m/SilentRivals"))()
    end,
})

Tabs.Rivals:AddButton({
    Title = "BaoHubRivals",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubRivals"))()
    end,
})

Tabs.Rivals:AddButton({
    Title = "Sanity Loader",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/helldevelopment/RobloxScripts/main/SanityLoader.lua"))()
    end,
})

-- Murder Mystery 2
Tabs.MM2:AddButton({
    Title = "nexus",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/s-o-a-b/nexus/main/loadstring"))()
    end,
})

Tabs.MM2:AddButton({
    Title = "Starry OP best script hub",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Murder-Mystery-2-NEW-Starry-OP-Best-Script-Hub-17868"))()
    end,
})

Tabs.MM2:AddButton({
    Title = "XhubMM2",
    Callback = function()
        loadstring(game:HttpGet("https://scriptblox.com/raw/Murder-Mystery-2-NEW-Starry-OP-Best-Script-Hub-17868"))()
    end,
})

-- Breaking Point
Tabs.BreakingPoint:AddButton({
    Title = "Hella ugly :(",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ColdStep2/Breaking-Point-Funny-Squid-Hax/main/Breaking%20Point%20Funny%20Squid%20Hax", true))()
    end,
})

-- Treasure Hunt Simulator (Script placeholder to be added)
Tabs.TreasureHunt:AddButton({
    Title = "TreasureBreak",
    Callback = function()
        local TresureBreakSimulator = Instance.new("ScreenGui")
        local BG = Instance.new("Frame")
        local Line = Instance.new("Frame")
        local ToolBoxBG = Instance.new("Frame")
        local ToolBox = Instance.new("TextBox")
        local AutoFarm = Instance.new("TextButton")
        local AutoRebirth = Instance.new("TextButton")
        local Top = Instance.new("TextLabel")
         
        --Toggle
        local Farm = false
        local Rebirth = false
         
        --ButtonToggle
        local Click1 = false
        local Click2 = false
         
        TresureBreakSimulator.Name = "TresureBreakSimulator"
        TresureBreakSimulator.Parent = game.CoreGui
        TresureBreakSimulator.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        BG.Name = "BG"
        BG.Parent = TresureBreakSimulator
        BG.BackgroundColor3 = Color3.new(1, 0.823529, 0.54902)
        BG.BackgroundTransparency = 0.20000000298023
        BG.BorderColor3 = Color3.new(0, 0, 0)
        BG.BorderSizePixel = 5
        BG.Position = UDim2.new(0.604587197, 0, 0.30796814, 0)
        BG.Size = UDim2.new(0, 250, 0, 150)
        BG.Active = true
        BG.Selectable = true
        BG.Draggable = true
        Line.Name = "Line"
        Line.Parent = BG
        Line.BackgroundColor3 = Color3.new(0, 0, 0)
        Line.BorderSizePixel = 0
        Line.Position = UDim2.new(0, 0, 0, 72)
        Line.Size = UDim2.new(0, 250, 0, 5)
        ToolBoxBG.Name = "ToolBoxBG"
        ToolBoxBG.Parent = BG
        ToolBoxBG.BackgroundColor3 = Color3.new(1, 0.823529, 0.54902)
        ToolBoxBG.BackgroundTransparency = 0.20000000298023
        ToolBoxBG.BorderColor3 = Color3.new(0, 0, 0)
        ToolBoxBG.BorderSizePixel = 5
        ToolBoxBG.Position = UDim2.new(0, 25, 1, 5)
        ToolBoxBG.Size = UDim2.new(0, 200, 0, 50)
        ToolBox.Name = "ToolBox"
        ToolBox.Parent = ToolBoxBG
        ToolBox.BackgroundColor3 = Color3.new(0.490196, 0.490196, 0.490196)
        ToolBox.BorderColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
        ToolBox.BorderSizePixel = 0
        ToolBox.Size = UDim2.new(0, 200, 0, 50)
        ToolBox.Font = Enum.Font.GothamBold
        ToolBox.PlaceholderColor3 = Color3.new(0, 0, 0)
        ToolBox.PlaceholderText = "Tool Name"
        ToolBox.Text = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Name
        ToolBox.TextColor3 = Color3.new(0, 0, 0)
        ToolBox.TextSize = 35
        ToolBox.TextWrapped = true
        AutoFarm.Name = "AutoFarm"
        AutoFarm.Parent = BG
        AutoFarm.BackgroundColor3 = Color3.new(0.882353, 0.882353, 0.882353)
        AutoFarm.BorderColor3 = Color3.new(1, 0, 0)
        AutoFarm.BorderSizePixel = 5
        AutoFarm.Position = UDim2.new(0, 25, 0, 5)
        AutoFarm.Size = UDim2.new(0, 200, 0, 62)
        AutoFarm.Font = Enum.Font.GothamBold
        AutoFarm.Text = "Auto Farm"
        AutoFarm.TextColor3 = Color3.new(1, 0, 0)
        AutoFarm.TextScaled = true
        AutoFarm.TextSize = 14
        AutoFarm.TextWrapped = true
        AutoFarm.MouseButton1Click:Connect(function()
            if Click1 then
                Click1 = false
                Farm = false
                AutoFarm.TextColor3 = Color3.new(1,0,0)
                AutoFarm.BorderColor3 = Color3.new(1,0,0)
            else
                if game.Players.LocalPlayer.Character:FindFirstChild(ToolBox.Text) then
                    print('Already EquipTool')
                else
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack[ToolBox.Text])
                end
                Click1 = true
                Farm = true
                AutoFarm.TextColor3 = Color3.new(0,1,0)
                AutoFarm.BorderColor3 = Color3.new(0,1,0)
            end
        end)
        AutoRebirth.Name = "AutoRebirth"
        AutoRebirth.Parent = BG
        AutoRebirth.BackgroundColor3 = Color3.new(0.882353, 0.882353, 0.882353)
        AutoRebirth.BorderColor3 = Color3.new(1, 0, 0)
        AutoRebirth.BorderSizePixel = 5
        AutoRebirth.Position = UDim2.new(0, 25, 0, 82)
        AutoRebirth.Size = UDim2.new(0, 200, 0, 62)
        AutoRebirth.Font = Enum.Font.GothamBold
        AutoRebirth.Text = "Auto Rebirth"
        AutoRebirth.TextColor3 = Color3.new(1, 0, 0)
        AutoRebirth.TextScaled = true
        AutoRebirth.TextSize = 14
        AutoRebirth.TextWrapped = true
        AutoRebirth.MouseButton1Click:Connect(function()
            if Click1 then
                Click1 = false
                Rebirth = false
                AutoRebirth.TextColor3 = Color3.new(1,0,0)
                AutoRebirth.BorderColor3 = Color3.new(1,0,0)
            else
                Click1 = true
                Rebirth = true
                AutoRebirth.TextColor3 = Color3.new(0,1,0)
                AutoRebirth.BorderColor3 = Color3.new(0,1,0)
            end
        end)
        Top.Name = "Top"
        Top.Parent = BG
        Top.Active = true
        Top.BackgroundColor3 = Color3.new(1, 0.823529, 0.54902)
        Top.BorderColor3 = Color3.new(0, 0, 0)
        Top.BorderSizePixel = 5
        Top.Position = UDim2.new(0, 25, 0, -30)
        Top.Selectable = true
        Top.Size = UDim2.new(0, 200, 0, 25)
        Top.Font = Enum.Font.GothamBold
        Top.Text = "Treasure Break Simulator"
        Top.TextColor3 = Color3.new(0, 0, 0)
        Top.TextScaled = true
        Top.TextSize = 14
        Top.TextWrapped = true
         
        local Character = game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
         
        function Sell()
            local OldPos = Character.HumanoidRootPart.CFrame
            Character.HumanoidRootPart.CFrame = CFrame.new(3, 10, -160)
            game.ReplicatedStorage.Events.AreaSell:FireServer()
            wait(0.1)
            Character.HumanoidRootPart.CFrame = OldPos
        end
         
        local function RE()
            while true do
                wait(1)
                if Rebirth == true then
                    local a = game.Players.LocalPlayer.PlayerGui.Gui.Buttons.Coins.Amount.Text:gsub(',','')
                    local b = game.Players.LocalPlayer.PlayerGui.Gui.Rebirth.Needed.Coins.Amount.Text:gsub(',','')
                    print(tonumber(a))
                    print(tonumber(b))
                    if tonumber(a) > tonumber(b) then 
                        warn('Calculation Complete!')
                        game.ReplicatedStorage.Events.Rebirth:FireServer()
                        ToolBox.Text = "Bucket"
                        repeat wait(.1) until game.Players.LocalPlayer.PlayerGui.Gui.Popups.GiveReward.Visible == true
                        game.Players.LocalPlayer.PlayerGui.Gui.Popups.GiveReward.Visible = false
                        wait()
                    end
                end
            end
        end
         
        spawn(RE)
         
        while true do
            wait()
            if Farm then
                local Sand = nil
                local SandName = ""
                for i,v in pairs (game.Workspace.SandBlocks:GetChildren()) do
                    if not Farm then 
                        Sell()
                        break 
                    end
                    if v:FindFirstChild("Chest") then
                        if v.CFrame.X > -40 and v.CFrame.X < 20 and v.CFrame.Z < -175 and v.CFrame.Z > -235 then
                            local Next = false
                            if v == nil then
                                Next = false
                            else
                                Next = true
                                Sand = v
                                SandName = v.Name
                            end
                            if Next == true then
                                local Success,Problem = pcall(function()
                                if game.Players[game.Players.LocalPlayer.Name].PlayerGui.Gui.Popups.BackpackFull.Visible == true then Sell() end
                                    Sand.CanCollide = false
                                    local Coins = game.Players.LocalPlayer.PlayerGui.Gui.Buttons.Coins.Amount.Text
                                    repeat
                                        if game.Players[game.Players.LocalPlayer.Name].PlayerGui.Gui.Popups.BackpackFull.Visible == true then Sell() end
                                        if not Farm then 
                                            wait(.1)
                                            Character.HumanoidRootPart.CFrame = CFrame.new(3, 10, -160)
                                            wait(1)
                                            break 
                                        end
                                        Character.HumanoidRootPart.Anchored = true
                                        wait()
                                        Character.HumanoidRootPart.CFrame = Sand.CFrame
                                        wait()
                                        Character.HumanoidRootPart.Anchored = false
                                        Character:WaitForChild(ToolBox.Text)['RemoteClick']:FireServer(game.Workspace.SandBlocks[SandName])
                                        wait()
                                    until game.Players.LocalPlayer.PlayerGui.Gui.Buttons.Coins.Amount.Text ~= Coins
                                    Next = false
                                end)
                                if Success then
                                    print('Worked')
                                else
                                    warn(Problem)
                                end
                            end
                        end
                    end
                end
            end
        end    end,
})

-- SharkBite 2
Tabs.SharkBite2:AddButton({
    Title = "OP script",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Lolboxo/SharkBiteV3/main/SharkBiteV3.1'))()
    end,
})

-- Chat Bypasser
Tabs.ChatBypasser:AddButton({
    Title = "Bypass",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1price/usercreation/main/UserCreation.lua", true))()
    end,
})

-- Blade Ball
Tabs.BladeBall:AddButton({
    Title = "Circle",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/Circle"))()
    end,
})



Fluent:Notify({
    Title = "Ghost",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()

-- =============================================
-- BGSI CHRISTMAS SCRIPT - KEY SYSTEM
-- Key: BGSI_GINGERBREAD
-- Protected with Linkvertise
-- =============================================

-- Check if main script already loaded
if getgenv().BGSI_Christmas_Loaded then
    print("✅ BGSI Christmas Script already loaded!")
    return
end

-- Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local mouse = player:GetMouse()

-- SETTINGS
local CORRECT_KEY = "BGSI_HAPPYNEWYEARS" -- YOU CAN CHANGE THIS KEY
local LINKVERTISE_URL = "https://link-hub.net/1456434/6qxNwOTEf0yF" -- PUT YOUR OWN LINKVERTISE LINK!

-- Create GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BGSI_KeySystem"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = player:WaitForChild("PlayerGui")

-- MAIN WINDOW
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 450, 0, 320)
MainFrame.Position = UDim2.new(0.5, -225, 0.5, -160)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

-- TITLE
local Title = Instance.new("TextLabel")
Title.Text = "🎄 BGSI CHRISTMAS EVENT"
Title.Size = UDim2.new(1, 0, 0, 60)
Title.BackgroundColor3 = Color3.fromRGB(25, 25, 40)
Title.TextColor3 = Color3.fromRGB(255, 150, 100)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 22
Title.Parent = MainFrame

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 12)
TitleCorner.Parent = Title

-- INSTRUCTIONS
local Instructions = Instance.new("TextLabel")
Instructions.Text = "1. Click link: " .. LINKVERTISE_URL .. "\n2. Skip ads and get KEY\n3. Paste KEY below"
Instructions.Size = UDim2.new(0.9, 0, 0, 70)
Instructions.Position = UDim2.new(0.05, 0, 0.2, 0)
Instructions.BackgroundTransparency = 1
Instructions.TextColor3 = Color3.fromRGB(200, 200, 255)
Instructions.Font = Enum.Font.Gotham
Instructions.TextSize = 14
Instructions.TextWrapped = true
Instructions.TextXAlignment = Enum.TextXAlignment.Left
Instructions.Parent = MainFrame

-- KEY SECTION
local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(0.9, 0, 0, 80)
KeyFrame.Position = UDim2.new(0.05, 0, 0.45, 0)
KeyFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 50)
KeyFrame.Parent = MainFrame

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 8)
KeyCorner.Parent = KeyFrame

local KeyLabel = Instance.new("TextLabel")
KeyLabel.Text = "ENTER YOUR KEY:"
KeyLabel.Size = UDim2.new(1, 0, 0, 25)
KeyLabel.BackgroundTransparency = 1
KeyLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
KeyLabel.Font = Enum.Font.GothamSemibold
KeyLabel.TextSize = 14
KeyLabel.Parent = KeyFrame

local KeyBox = Instance.new("TextBox")
KeyBox.PlaceholderText = "Paste key here..."
KeyBox.Size = UDim2.new(1, -20, 0, 40)
KeyBox.Position = UDim2.new(0, 10, 0.35, 0)
KeyBox.BackgroundColor3 = Color3.fromRGB(40, 40, 70)
KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextSize = 16
KeyBox.TextXAlignment = Enum.TextXAlignment.Center
KeyBox.Parent = KeyFrame

local KeyBoxCorner = Instance.new("UICorner")
KeyBoxCorner.CornerRadius = UDim.new(0, 6)
KeyBoxCorner.Parent = KeyBox

-- STATUS LABEL
local StatusLabel = Instance.new("TextLabel")
StatusLabel.Text = ""
StatusLabel.Size = UDim2.new(0.9, 0, 0, 40)
StatusLabel.Position = UDim2.new(0.05, 0, 0.72, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 100)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.TextSize = 14
StatusLabel.TextWrapped = true
StatusLabel.Parent = MainFrame

-- BUTTONS FRAME
local ButtonsFrame = Instance.new("Frame")
ButtonsFrame.Size = UDim2.new(0.9, 0, 0, 50)
ButtonsFrame.Position = UDim2.new(0.05, 0, 0.85, 0)
ButtonsFrame.BackgroundTransparency = 1
ButtonsFrame.Parent = MainFrame

-- Copy Link Button (YARI GENİŞLİK)
local CopyButton = Instance.new("TextButton")
CopyButton.Text = "📋 COPY LINK"
CopyButton.Size = UDim2.new(0.48, 0, 1, 0)
CopyButton.Position = UDim2.new(0, 0, 0, 0)
CopyButton.BackgroundColor3 = Color3.fromRGB(70, 120, 200)
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Font = Enum.Font.GothamBold
CopyButton.TextSize = 16
CopyButton.Parent = ButtonsFrame

local CopyButtonCorner = Instance.new("UICorner")
CopyButtonCorner.CornerRadius = UDim.new(0, 8)
CopyButtonCorner.Parent = CopyButton

-- Verify Button (YANINDA, YARI GENİŞLİK)
local VerifyButton = Instance.new("TextButton")
VerifyButton.Text = "✅ VERIFY"
VerifyButton.Size = UDim2.new(0.48, 0, 1, 0)
VerifyButton.Position = UDim2.new(0.52, 0, 0, 0)
VerifyButton.BackgroundColor3 = Color3.fromRGB(80, 180, 100)
VerifyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
VerifyButton.Font = Enum.Font.GothamBold
VerifyButton.TextSize = 16
VerifyButton.Parent = ButtonsFrame

local VerifyButtonCorner = Instance.new("UICorner")
VerifyButtonCorner.CornerRadius = UDim.new(0, 8)
VerifyButtonCorner.Parent = VerifyButton

-- CLOSE BUTTON
local CloseButton = Instance.new("TextButton")
CloseButton.Text = "✕"
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.TextSize = 18
CloseButton.Parent = MainFrame

local CloseButtonCorner = Instance.new("UICorner")
CloseButtonCorner.CornerRadius = UDim.new(1, 0)
CloseButtonCorner.Parent = CloseButton

-- BUTTON ANIMATIONS
function TweenButton(button)
    local originalSize = button.Size
    local originalColor = button.BackgroundColor3
    
    button.MouseButton1Down:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.1), {
            Size = originalSize - UDim2.new(0, 5, 0, 5)
        })
        tween:Play()
    end)
    
    button.MouseButton1Up:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.1), {
            Size = originalSize
        })
        tween:Play()
    end)
    
    button.MouseEnter:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = Color3.fromRGB(
                math.min(originalColor.R * 255 + 20, 255),
                math.min(originalColor.G * 255 + 20, 255),
                math.min(originalColor.B * 255 + 20, 255)
            ) / 255
        })
        tween:Play()
    end)
    
    button.MouseLeave:Connect(function()
        local tween = TweenService:Create(button, TweenInfo.new(0.2), {
            BackgroundColor3 = originalColor
        })
        tween:Play()
    end)
end

-- APPLY ANIMATIONS
TweenButton(CopyButton)
TweenButton(VerifyButton)
TweenButton(CloseButton)

-- FUNCTIONS

-- Copy Link
CopyButton.MouseButton1Click:Connect(function()
    setclipboard(LINKVERTISE_URL)
    
    StatusLabel.Text = "✅ Link copied!\nOpen in browser & skip ads"
    StatusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
    
    local originalText = CopyButton.Text
    CopyButton.Text = "✅ COPIED!"
    task.wait(1.5)
    CopyButton.Text = originalText
end)

-- Verify Key
VerifyButton.MouseButton1Click:Connect(function()
    local enteredKey = string.gsub(KeyBox.Text, "%s+", "") -- Remove spaces
    
    if enteredKey == "" then
        StatusLabel.Text = "❌ Please enter a key!"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        return
    end
    
    StatusLabel.Text = "⏳ Verifying..."
    StatusLabel.TextColor3 = Color3.fromRGB(255, 200, 100)
    
    -- Loading animation
    for i = 1, 3 do
        StatusLabel.Text = "⏳ Verifying" .. string.rep(".", i)
        task.wait(0.3)
    end
    
    -- KEY VERIFICATION
    if enteredKey == CORRECT_KEY then
        StatusLabel.Text = "✅ KEY CORRECT!\nLoading script..."
        StatusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
        
        getgenv().BGSI_Christmas_Loaded = true
        
        -- Disable buttons
        CopyButton.Visible = false
        VerifyButton.Visible = false
        
        -- Success animation
        for i = 1, 10 do
            MainFrame.BackgroundColor3 = Color3.fromRGB(
                15 + i * 2,
                25 + i * 2,
                15 + i * 1
            )
            task.wait(0.05)
        end
        
        task.wait(1)
        
        -- Remove GUI
        ScreenGui:Destroy()
        
        -- LOAD MAIN BGSI CHRISTMAS SCRIPT
        print("✅ Key verified! Loading BGSI Christmas Auto-Farm Script...")
        
        -- =======================================================
        -- BGSI Christmas Event Auto-Farm + Auto Hatch Script
        -- Gingerbread + Candycane + Yuletide + Nostalgia Egg
        -- =======================================================

        -- // Services
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local TweenService = game:GetService("TweenService")
        local RunService = game:GetService("RunService")
        local VirtualInputManager = game:GetService("VirtualInputManager")
        local LocalPlayer = Players.LocalPlayer
        
        -- // Services from other script
        local Shared = ReplicatedStorage.Shared
        local SData = Shared.Data
        local Framework = Shared.Framework
        local Utils = Shared.Utils
        local Client = ReplicatedStorage.Client
        local Tutorial = require(Client.Tutorial)
        local StatsUtil = require(Utils.Stats.StatsUtil)
        
        -- // Data (from other script)
        local localData = require(Client.Framework.Services.LocalData)
        local Data = localData:Get()
        
        -- // Handlers (from other script)
        local EventHandler = Framework.Network.Remote.RemoteEvent
        local FunctionHandler = Framework.Network.Remote.RemoteFunction
        
        -- // Variables
        local autoHatch = false
        local selectedEgg = "None"
        local hatchAmount = 50
        local canFire = true
        local autoCollectPickups = false
        
        -- // Christmas features
        local autoGiveGifts = false
        local giftDelay = 2
        
        -- // Features from other script
        local autoBlowBubbles = false
        local autoSellBubbles = false
        local autoSellPercentage = 50
        local autoClaimPlaytime = false
        local autoClaimChests = false
        local autoOpenMysteryBoxes = false
        
        -- // Nostalgia Egg control variables
        local originalPosition = nil
        local originalSelectedEgg = "None"
        local isAtNostalgiaEgg = false
        local nostalgiaEggConnection = nil
        local autoTpToNostalgiaEgg = false
        
        -- // Table find function
        local function tableFind(tbl, value)
            for i, v in ipairs(tbl) do
                if v == value then
                    return true
                end
            end
            return false
        end
        
        -- // Egg list (Gingerbread + Candycane + Yuletide + Nostalgia Egg + New Years Egg)
        local eggList = {
            "None",
            "Gingerbread Egg",
            "Candycane Egg",
            "Yuletide Egg",
            "Nostalgia Egg",
            "Northpole Egg",
            "Aurora Egg",
            "Festive Egg",
            "New Years Egg"
        }
        
        -- // Anti-AFK Function (Jump Only)
        local function startAntiAFK()
            print("[🛡️] Anti-AFK active! (Jump only)")
            
            local function jump()
                VirtualInputManager:SendKeyEvent(true, "Space", false, game)
                task.wait(0.1)
                VirtualInputManager:SendKeyEvent(false, "Space", false, game)
            end

            local function pressR()
                VirtualInputManager:SendKeyEvent(true, "R", false, game)
                task.wait(0.1)
                VirtualInputManager:SendKeyEvent(false, "R", false, game)
            end

            task.spawn(function()
                while task.wait(120) do
                    pcall(function()
                        local character = LocalPlayer.Character
                        if character and character:FindFirstChild("Humanoid") then
                            -- Just jump and press R key
                            jump()
                            task.wait(0.5)
                            pressR()
                            
                            print("[🛡️] Anti-AFK: Jumped and pressed R key")
                        end
                    end)
                end
            end)
        end
        
        -- Start Anti-AFK
        startAntiAFK()
        
        -- // Smooth move function
        local function moveTo(targetCFrame, duration)
            local char = LocalPlayer.Character
            if not (char and char:FindFirstChild("HumanoidRootPart")) then return end

            local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear)
            local tween = TweenService:Create(char.HumanoidRootPart, tweenInfo, {CFrame = targetCFrame})
            tween:Play()
            tween.Completed:Wait()
        end
        
        -- // Teleport function
        local function teleportTo(position)
            local char = LocalPlayer.Character
            if not (char and char:FindFirstChild("HumanoidRootPart")) then return false end
            
            pcall(function()
                char.HumanoidRootPart.CFrame = position
            end)
            return true
        end
        
        -- // Helper: get a part to represent a model/instance
        local function getPartForInstance(inst)
            if not inst then return nil end
            if inst:IsA("BasePart") then return inst end
            if inst.PrimaryPart and inst.PrimaryPart:IsA("BasePart") then return inst.PrimaryPart end
            for _, v in ipairs(inst:GetDescendants()) do
                if v:IsA("BasePart") then return v end
            end
            return nil
        end
        
        -- // Remote getter
        local function getRemote()
            return ReplicatedStorage
                :WaitForChild("Shared")
                :WaitForChild("Framework")
                :WaitForChild("Network")
                :WaitForChild("Remote")
                :WaitForChild("RemoteEvent")
        end
        
        -- // Nostalgia Egg control functions
        local function saveOriginalPosition()
            local char = LocalPlayer.Character
            if char and char:FindFirstChild("HumanoidRootPart") then
                originalPosition = char.HumanoidRootPart.CFrame
                print("[📍] Original position saved!")
            end
        end
        
        local function checkNostalgiaEgg()
            local summonedEggFolder = workspace:FindFirstChild("SummonedEgg")
            if summonedEggFolder then
                local eggPlatform = summonedEggFolder:FindFirstChild("EggPlatformSpawn")
                if eggPlatform then
                    local platformPart = getPartForInstance(eggPlatform)
                    if platformPart then
                        return platformPart.CFrame + Vector3.new(0, 5, 0) -- Teleport above platform
                    end
                end
            end
            return nil
        end
        
        local function goToNostalgiaEgg()
            local nostalgiaEggPosition = checkNostalgiaEgg()
            if nostalgiaEggPosition and not isAtNostalgiaEgg then
                saveOriginalPosition()
                -- Save original selected egg
                originalSelectedEgg = selectedEgg
                -- Change egg selection to Nostalgia Egg
                selectedEgg = "Nostalgia Egg"
                
                if teleportTo(nostalgiaEggPosition) then
                    isAtNostalgiaEgg = true
                    print("[🥚] Teleported to Nostalgia Egg! Egg selection changed: " .. selectedEgg)
                    return true
                end
            end
            return false
        end
        
        local function returnToOriginalPosition()
            if originalPosition and isAtNostalgiaEgg then
                -- Restore egg selection to original
                selectedEgg = originalSelectedEgg
                
                if teleportTo(originalPosition) then
                    isAtNostalgiaEgg = false
                    print("[↩️] Returned to original position! Egg selection restored: " .. selectedEgg)
                    return true
                end
            end
            return false
        end
        
        local function startNostalgiaEggMonitor()
            if nostalgiaEggConnection then
                nostalgiaEggConnection:Disconnect()
            end
            
            nostalgiaEggConnection = RunService.Heartbeat:Connect(function()
                if autoTpToNostalgiaEgg then
                    local nostalgiaEggPosition = checkNostalgiaEgg()
                    
                    if nostalgiaEggPosition then
                        -- Nostalgia Egg spawned
                        if not isAtNostalgiaEgg then
                            goToNostalgiaEgg()
                        end
                    else
                        -- Nostalgia Egg despawned
                        if isAtNostalgiaEgg then
                            returnToOriginalPosition()
                        end
                    end
                end
            end)
            
            print("[🔍] Nostalgia Egg monitor active!")
        end
        
        -- // Christmas Gift Farming function
        local function giveGift(gift)
            pcall(function()
                if not gift then return end

                local activation = gift:FindFirstChild("Activation")
                if not activation then return end

                local char = LocalPlayer.Character
                if not (char and char:FindFirstChild("HumanoidRootPart")) then return end

                local activationPart = getPartForInstance(activation)
                if not activationPart then return end

                -- Teleport to gift
                local targetCFrame = activationPart.CFrame + Vector3.new(0, 6, 0)
                moveTo(targetCFrame, 0.5)
                task.wait(0.5)

                -- Get gift number (e.g. "1", "2", ... "9")
                local giftNumber = gift.Name:match("%d+")
                if not giftNumber then return end

                local remote = getRemote()
                local args = {"GiveGifts", giftNumber}
                remote:FireServer(unpack(args))
                task.wait(0.1)
                remote:FireServer(unpack(args)) -- Send twice

                print("[🎁] GiveGifts sent TWICE for gift #" .. giftNumber)
            end)
        end
        
        -- // Auto give gifts loop
        task.spawn(function()
            while true do
                if autoGiveGifts then
                    -- Find Christmas World
                    local worlds = workspace:WaitForChild("Worlds")
                    local christmasWorld = worlds:FindFirstChild("Christmas World")
                    if not christmasWorld then
                        christmasWorld = worlds:FindFirstChild("ChristmasWorld")
                    end
                    
                    if christmasWorld then
                        local giveGiftsFolder = christmasWorld:FindFirstChild("GiveGifts")
                        if giveGiftsFolder then
                            for _, gift in ipairs(giveGiftsFolder:GetChildren()) do
                                if not autoGiveGifts then break end
                                giveGift(gift)
                                task.wait(giftDelay)
                            end
                        else
                            print("[⚠️] GiveGifts folder not found!")
                        end
                    else
                        print("[⚠️] Christmas World not found!")
                    end
                end
                task.wait(0.1)
            end
        end)
        
        -- // UI
        local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/dementiaenjoyer/UI-LIBRARIES/refs/heads/main/wally-modified/source.lua"))()
        local window = library:CreateWindow("BGSI Christmas Event")
        window:Section("Credit: Bright696")

        -- Bubbles Section
        window:Section("Bubbles")

        window:Toggle("Auto Blow Bubbles", {}, function(value)
            autoBlowBubbles = value
            if value then
                print("[🫧] Auto Blow Bubbles active!")
            else
                print("[🫧] Auto Blow Bubbles inactive!")
            end
        end)

        window:Toggle("Auto Sell Bubbles", {}, function(value)
            autoSellBubbles = value
            if value then
                print("[💰] Auto Sell Bubbles active!")
            else
                print("[💰] Auto Sell Bubbles inactive!")
            end
        end)

        window:Slider("Sell Percentage", {default = 50, min = 1, max = 100, precise = false}, function(value)
            autoSellPercentage = value
            print("[📊] Sell Percentage: " .. value .. "%")
        end)

        -- Egg Hatching Section
        window:Section("Egg Hatching")

        window:Dropdown("Select Egg", {list = eggList}, function(selected)
            selectedEgg = selected
            print("[🥚] Selected Egg: " .. selectedEgg)
        end)

        window:Toggle("Auto Hatch", {}, function(value)
            autoHatch = value
            if value then
                print("[🥚] Auto Hatch active!")
                startNostalgiaEggMonitor()
            else
                print("[🥚] Auto Hatch inactive!")
            end
        end)

        -- Nostalgia Egg Auto TP
        window:Toggle("Auto TP to Nostalgia Egg", {}, function(value)
            autoTpToNostalgiaEgg = value
            if value then
                print("[🚀] Auto TP to Nostalgia Egg active!")
                startNostalgiaEggMonitor()
            else
                print("[🚀] Auto TP to Nostalgia Egg inactive!")
                if isAtNostalgiaEgg then
                    returnToOriginalPosition()
                end
            end
        end)

        -- Christmas Event Section
        window:Section("Christmas Event")

        window:Toggle("Auto Give Gifts", {}, function(value)
            autoGiveGifts = value
            if value then
                print("[🎄] Auto Give Gifts active!")
            else
                print("[🎄] Auto Give Gifts inactive!")
            end
        end)

        window:Slider("Gift Delay", {default = 2, min = 1.5, max = 5, precise = true}, function(value)
            giftDelay = value
            print("[⏱️] Gift Delay: " .. value .. "s")
        end)

        -- Automation Section
        window:Section("Automation")

        window:Toggle("Auto Collect Pickups", {}, function(value)
            autoCollectPickups = value
            if value then
                print("[🎁] Auto Collect Pickups active!")
                pcall(function()
                    for coinId, coinObject in pairs(Tutorial._activePickups) do
                        pcall(function()
                            ReplicatedStorage.Remotes.Pickups.CollectPickup:FireServer(coinId)
                            task.wait(0.05)
                            if coinObject and coinObject.Parent then
                                coinObject:Destroy()
                            end
                            Tutorial._activePickups[coinId] = nil
                        end)
                    end
                    print("[🎁] Existing pickups collected!")
                end)
            else
                print("[🎁] Auto Collect Pickups inactive!")
            end
        end)

        window:Toggle("Auto Claim Playtime", {}, function(value)
            autoClaimPlaytime = value
            if value then
                print("[⏰] Auto Claim Playtime active!")
            else
                print("[⏰] Auto Claim Playtime inactive!")
            end
        end)

        window:Toggle("Auto Claim Chests", {}, function(value)
            autoClaimChests = value
            if value then
                print("[📦] Auto Claim Chests active!")
            else
                print("[📦] Auto Claim Chests inactive!")
            end
        end)

        window:Toggle("Auto Open Mystery Boxes", {}, function(value)
            autoOpenMysteryBoxes = value
            if value then
                print("[🎁] Auto Open Mystery Boxes active!")
            else
                print("[🎁] Auto Open Mystery Boxes inactive!")
            end
        end)

        -- // Auto Hatch loop
        local RemoteEvent = getRemote()

        if _G.heartbeatConnection then
            _G.heartbeatConnection:Disconnect()
            _G.heartbeatConnection = nil
        end

        _G.heartbeatConnection = RunService.Heartbeat:Connect(function()
            if autoHatch and canFire and selectedEgg ~= "None" then
                canFire = false
                local args = {"HatchEgg", selectedEgg, hatchAmount}
                RemoteEvent:FireServer(unpack(args))
                task.defer(function()
                    canFire = true
                end)
            end
        end)

        -- Auto Collect Pickups Loop
        task.spawn(function()
            while true do
                if autoCollectPickups then
                    pcall(function()
                        for coinId, coinObject in pairs(Tutorial._activePickups) do
                            pcall(function()
                                ReplicatedStorage.Remotes.Pickups.CollectPickup:FireServer(coinId)
                                if coinObject and coinObject.Parent then
                                    coinObject:Destroy()
                                end
                                Tutorial._activePickups[coinId] = nil
                            end)
                        end
                    end)
                end
                task.wait(0.1)
            end
        end)

        -- Bubbles Automation Loop
        task.spawn(function()
            while task.wait(0.5) do
                if autoBlowBubbles then
                    pcall(function()
                        EventHandler:FireServer("BlowBubble")
                    end)
                end
                if autoSellBubbles then
                    pcall(function()
                        local bubbleStorage = StatsUtil:GetBubbleStorage(Data)
                        local currentBubbles = Data.Bubble.Amount
                        local sellThreshold = (autoSellPercentage / 100) * bubbleStorage
                        
                        if currentBubbles >= sellThreshold then
                            EventHandler:FireServer("SellBubble")
                            print("[💰] Bubbles sold! Amount: " .. currentBubbles)
                        end
                    end)
                end
            end
        end)

        -- Claim Automation Loop
        task.spawn(function()
            while task.wait(1) do
                if autoClaimPlaytime then
                    pcall(function()
                        local count = 1
                        for i,v in pairs(Data.PlaytimeRewards.Claimed) do
                            count = count + 1
                        end
                        FunctionHandler:InvokeServer("ClaimPlaytime", count)
                        print("[⏰] Playtime reward claimed: " .. count)
                    end)
                end
                if autoClaimChests then
                    pcall(function()
                        for i,v in pairs(require(SData.Chests)) do
                            EventHandler:FireServer("ClaimChest", i)
                        end
                        print("[📦] Chests claimed!")
                    end)
                end
            end
        end)

        -- FAST Mystery Box Automation
        local function virtualClick()
            pcall(function()
                game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, true, game, 1)
                task.wait(0.001)
                game:GetService("VirtualInputManager"):SendMouseButtonEvent(0, 0, 0, false, game, 1)
            end)
        end

        task.spawn(function()
            while task.wait(0.1) do
                if autoOpenMysteryBoxes then
                    pcall(function()
                        local giftAmount = require(Utils.Stats.ItemUtil):GetOwnedAmount(Data, {
                            Type = "Powerup",
                            Name = "Mystery Box"
                        })
                        
                        if giftAmount > 0 then
                            EventHandler:FireServer("UseGift", "Mystery Box", 10)
                            print("[🎁] Opening Mystery Box... Remaining: " .. giftAmount)
                            task.wait(0.2)
                            
                            for i = 1, 10 do
                                if not autoOpenMysteryBoxes then break end
                                virtualClick()
                                task.wait(0.05)
                            end
                        end
                    end)
                end
            end
        end)

        -- Save original position at start
        task.wait(2)
        saveOriginalPosition()
        
        print("✅ BGSI Christmas Auto-Farm Script loaded successfully!")
        
    else
        StatusLabel.Text = "❌ WRONG KEY!"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
        
        KeyBox.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
        task.wait(0.5)
        KeyBox.BackgroundColor3 = Color3.fromRGB(40, 40, 70)
    end
end)

-- Close window
CloseButton.MouseButton1Click:Connect(function()
    local tween = TweenService:Create(MainFrame, TweenInfo.new(0.3), {
        Size = UDim2.new(0, 0, 0, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0)
    })
    tween:Play()
    tween.Completed:Wait()
    ScreenGui:Destroy()
    warn("❌ Key system closed!")
end)

-- Draggable window
local dragging
local dragInput
local dragStart
local startPos

MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

MainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if dragging and input == dragInput then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

-- Hint after 3 seconds
task.spawn(function()
    task.wait(3)
    if KeyBox.Text == "" then
        StatusLabel.Text = "💡 Hint: Key in Linkvertise"
        StatusLabel.TextColor3 = Color3.fromRGB(200, 200, 255)
    end
end)

print("🔐 BGSI Christmas Key System loaded!")
print("🔗 Link: " .. LINKVERTISE_URL)

local KOSList = {
    ["Dooby"] = true,
    ["Botan"] = true,
    ["Untitled"] = true,
    ["Deathlylawl"] = true,
    ["Fusion"] = true,
    ["Banker"] = true,
    -- Add more player names as needed
}

-- Frame for the main display
local WORS_SpyFrame = CreateFrame("Frame", "WORS_SpyFrame", UIParent)
WORS_SpyFrame:SetSize(150, 150)
WORS_SpyFrame:SetPoint("CENTER")
WORS_SpyFrame:SetBackdrop({
    --bgFile = "Interface\\WORS\\OldSchoolBackground2",
    --edgeFile = "Interface\\WORS\\OldSchool-Dialog-Border",
    tile = false, tileSize = 32, edgeSize = 32,
    insets = { left = 5, right = 6, top = 6, bottom = 5 }
})

-- Enable mouse interactions
WORS_SpyFrame:EnableMouse(true)
WORS_SpyFrame:SetMovable(true)
WORS_SpyFrame:RegisterForDrag("LeftButton")
WORS_SpyFrame:SetClampedToScreen(true)
-- Set up dragging behavior
WORS_SpyFrame:SetScript("OnMouseDown", function(self, button)
    if button == "LeftButton" then
        self:StartMoving()
    end
end)

WORS_SpyFrame:SetScript("OnMouseUp", function(self, button)
    if button == "LeftButton" then
        self:StopMovingOrSizing()
    end
end)


local SeenPlayers = {}  -- Stores player names and the last seen timestamp
local playerLevels = {} -- Stores player names and their levels
local playerButtons = {} -- Stores UI elements for displaying each player
local lastAlertTime = 0 -- Tracks the last time an alert sound was played
local alertInterval = 10 -- Minimum interval between alert sounds in seconds

-- Function to handle KOS alert and update the SeenPlayers list
local function TriggerKOSAlert(playerName)
    print("|cffff0000KOS Alert! Player " .. playerName .. " detected!|r")
    
    -- Play sound only if the last one was over 30 seconds ago
    local currentTime = time()
    if currentTime - lastAlertTime >= alertInterval then
        PlaySoundFile("Sound\\Interface\\RaidWarning.ogg")
        lastAlertTime = currentTime
    end
    
    RaidNotice_AddMessage(RaidWarningFrame, "KOS Alert! " .. playerName .. " detected!", ChatTypeInfo["RAID_WARNING"])

    -- Update or add the player in the SeenPlayers list
    SeenPlayers[playerName] = currentTime
end

-- Function to check and save player level
local function CheckAndSavePlayerLevel(unit, playerName)
    local level = UnitLevel(unit)
    if level and level > 0 then
        playerLevels[playerName] = level
    end
end

-- Function to focus the chat edit box and type the command
local function FocusChatAndTypeCommand(playerName)
    -- Set the command in the chat edit box
    ChatFrame1EditBox:SetText("/focus " .. playerName)
    ChatFrame1EditBox:Show()  -- Ensure the edit box is shown
    ChatFrame1EditBox:SetFocus()  -- Focus the edit box

    -- Send the command after a slight delay to ensure it registers
    C_Timer.After(0.1, function()
       ChatFrame1EditBox:SendText()  -- Send the command
    end)
end

-- Function to update the seen players list display
local function UpdateSeenPlayersDisplay()
    local currentTime = time()
    
    -- Sort players by last seen time (most recent at the top)
    local sortedPlayers = {}
    for playerName, lastSeen in pairs(SeenPlayers) do
        table.insert(sortedPlayers, { name = playerName, lastSeen = lastSeen })
    end
    table.sort(sortedPlayers, function(a, b) return a.lastSeen > b.lastSeen end)

    -- Update or create UI elements for each player as buttons
    for i, playerInfo in ipairs(sortedPlayers) do
        local playerName = playerInfo.name
        local elapsedTime = currentTime - playerInfo.lastSeen
        local level = playerLevels[playerName] or "???"
        local button = playerButtons[i]

        -- Create a button if it doesn't exist yet
        if not button then
            button = CreateFrame("Button", nil, WORS_SpyFrame, "BackdropTemplate") -- Ensure BackdropTemplate is used
            button:SetSize(150, 40)
            button:SetNormalFontObject("GameFontNormal")
            button:SetHighlightFontObject("GameFontNormal")

            -- Apply custom background and border
            button:SetBackdrop({
                bgFile = "Interface\\WORS\\OldSchoolBackground2", -- Fully opaque background file
                edgeFile = "Interface\\WORS\\OldSchool-Dialog-Border",
                tile = false, tileSize = 32, edgeSize = 32,
                insets = { left = 5, right = 6, top = 6, bottom = 5 }
            })

            -- Set button script for click event
            button:SetScript("OnClick", function()
                FocusChatAndTypeCommand(playerName)
            end)

            playerButtons[i] = button
        end

        -- Format time elapsed since last seen
        local minutes = math.floor(elapsedTime / 60)
        local seconds = elapsedTime % 60
        local timeText = string.format("%d:%02d", minutes, seconds)

        -- Update button appearance based on elapsed time
        if elapsedTime <= 5 then
            -- Green text for first 5 seconds
            button:SetText("|cff00ff00" .. playerName .. " (" .. level .. ") - " .. timeText .. "|r")
            -- Set the button background color to green (opaque)
            button:SetBackdropColor(1, 0, 0, 1) -- Opaque green
        elseif elapsedTime <= 60 then
            -- Yellow text from 5 to 60 seconds
            button:SetText("|cffffff00" .. playerName .. " (" .. level .. ") - " .. timeText .. "|r")
            -- Set the button background color to yellow (opaque)
            button:SetBackdropColor(1, 0.6, 0, 1) -- Opaque yellow
        end

        -- Position the button dynamically
        button:SetPoint("TOPLEFT", WORS_SpyFrame, "TOPLEFT", 10, -10 - (i - 1) * 35)

        -- Show or hide the button based on the elapsed time
        if elapsedTime > 60 then
            -- Remove the player from SeenPlayers and hide the button after 60 seconds
            SeenPlayers[playerName] = nil
            button:Hide()
        else
            -- Show the button if it's still within the time range
            button:Show()
        end
    end

    -- Hide any remaining buttons that were not used
    for j = #sortedPlayers + 1, #playerButtons do
        playerButtons[j]:Hide()
    end
end


-- Combat log event handler
local function OnCombatLogEvent(self, event, ...)
    local _, subEvent, _, sourceGUID, sourceName, _, _, destGUID, destName = CombatLogGetCurrentEventInfo()
    local potentialName = select(7, ...)
    
    if KOSList[sourceName] then TriggerKOSAlert(sourceName) end
    if KOSList[destName] then TriggerKOSAlert(destName) end
    if KOSList[potentialName] then TriggerKOSAlert(potentialName) end
end

-- Target check handler
local function OnTargetChanged(self, event, ...)
    local targetName = UnitName("target")
    if targetName and KOSList[targetName] then
        CheckAndSavePlayerLevel("target", targetName)
        TriggerKOSAlert(targetName)
    end
end

-- Mouseover check handler
local function OnMouseOver(self, event, ...)
    local mouseOverName = UnitName("mouseover")
    if mouseOverName and KOSList[mouseOverName] then
        CheckAndSavePlayerLevel("mouseover", mouseOverName)
        TriggerKOSAlert(mouseOverName)
    end
end

-- Event frame setup
local frame = CreateFrame("Frame")
frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
frame:RegisterEvent("PLAYER_TARGET_CHANGED")
frame:RegisterEvent("UPDATE_MOUSEOVER_UNIT")
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "COMBAT_LOG_EVENT_UNFILTERED" then
        OnCombatLogEvent(self, event, ...)
    elseif event == "PLAYER_TARGET_CHANGED" then
        OnTargetChanged(self, event, ...)
    elseif event == "UPDATE_MOUSEOVER_UNIT" then
        OnMouseOver(self, event, ...)
    end
end)

-- Timer frame to update the seen players display every second
local timerFrame = CreateFrame("Frame")
local updateInterval = 1
local lastUpdate = 0
timerFrame:SetScript("OnUpdate", function(self, elapsed)
    lastUpdate = lastUpdate + elapsed
    if lastUpdate >= updateInterval then
        lastUpdate = 0
        UpdateSeenPlayersDisplay()
    end
end)

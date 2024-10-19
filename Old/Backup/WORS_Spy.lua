local KOSList = {
    ["Dooby"] = true,
    ["Botan"] = true,
    ["Untitled"] = true,
    ["Cow Calf"] = true,
    ["Tonyyayo"] = true,
    -- Add more player names as needed
}

local SeenPlayers = {}  -- Stores player names and the last seen timestamp
local playerButtons = {} -- Stores UI elements for displaying each player

-- Add a variable to control sound suppression and last sound time
local soundSuppression = false  -- Set to true to suppress sound entirely, false to play sound
local soundCooldown = 10  -- Time in seconds for cooldown between sounds
local lastSoundTime = 0  -- Track the last time the sound was played

-- Function to handle KOS alert and update the SeenPlayers list
local function TriggerKOSAlert(playerName)
    print("|cffff0000KOS Alert! Player " .. playerName .. " detected!|r")
    local currentTime = time()

    -- Check if enough time has passed for the sound to play again
    if not soundSuppression and (currentTime - lastSoundTime >= soundCooldown) then
        PlaySoundFile("Sound\\Interface\\RaidWarning.ogg")
        lastSoundTime = currentTime  -- Update the last sound time
    end

    -- Always display the raid warning message
    RaidNotice_AddMessage(RaidWarningFrame, "KOS Alert! " .. playerName .. " detected!", ChatTypeInfo["RAID_WARNING"])

    -- Update or add the player in the SeenPlayers list
    SeenPlayers[playerName] = currentTime
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
        local timeText = string.format("%d:%02d", math.floor(elapsedTime / 60), elapsedTime % 60)
        local button = playerButtons[i]

        -- Create a button if it doesn't exist yet
        if not button then
            button = CreateFrame("Button", nil, WORS_SpyFrame)
            button:SetSize(130, 20)
            button:SetNormalFontObject("GameFontNormal")
            button:SetHighlightFontObject("GameFontNormal")

            -- Make the button transparent apart from the text
            button:SetNormalTexture("")
            button:SetHighlightTexture("")
            button:SetDisabledTexture("")

            -- Add a click handler to focus the chat edit box and type the command
            button:SetScript("OnClick", function()
                FocusChatAndTypeCommand(playerName)
            end)

            playerButtons[i] = button
        end
		
        if elapsedTime <= 15 then
            button:SetText("|cff00ff00" .. playerName .. " - Last seen: " .. timeText .. "|r")  -- Green for the first 15 seconds
        elseif elapsedTime <= 60 then
            button:SetText("|cffffff00" .. playerName .. " - Last seen: " .. timeText .. "|r")  -- Yellow from 15 to 60 seconds
        end
        -- Update button position
        button:SetPoint("TOPLEFT", WORS_SpyFrame, "TOPLEFT", 10, -10 - (i - 1) * 25)
        -- Show or hide the button based on the elapsed time
        if elapsedTime > 60 then -- Remove after 1 minute
            SeenPlayers[playerName] = nil
            button:Hide()
        else
            button:Show()
        end

        -- -- Update button text to include the time elapsed
        -- if elapsedTime <= 120 then
            -- button:SetText("|cff00ff00" .. playerName .. " - Last seen: " .. timeText .. "|r")  -- Green for the first 2 minutes
        -- elseif elapsedTime <= 780 then
            -- button:SetText("|cffffff00" .. playerName .. " - Last seen: " .. timeText .. "|r")  -- Yellow from 2 to 13 minutes
        -- end
        -- -- Update button position
        -- button:SetPoint("TOPLEFT", WORS_SpyFrame, "TOPLEFT", 10, -10 - (i - 1) * 25)
        -- -- Show or hide the button based on the elapsed time
        -- if elapsedTime > 780 then -- Remove after 13 minutes
            -- SeenPlayers[playerName] = nil
            -- button:Hide()
        -- else
            -- button:Show()
        -- end
    end
end


-- Frame for the main display
local WORS_SpyFrame = CreateFrame("Frame", "WORS_SpyFrame", UIParent)
WORS_SpyFrame:SetSize(150, 150)
WORS_SpyFrame:SetPoint("CENTER")
-- WORS_SpyFrame:SetBackdrop({
    -- bgFile = "Interface/Tooltips/UI-Tooltip-Background",
    -- edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
    -- tile = true, tileSize = 16, edgeSize = 16,
    -- insets = { left = 4, right = 4, top = 4, bottom = 4 }
-- })
WORS_SpyFrame:SetBackdrop({
    bgFile = "Interface\\WORS\\OldSchoolBackground2",
    edgeFile = "Interface\\WORS\\OldSchool-Dialog-Border",
    tile = false, tileSize = 32, edgeSize = 32,
    insets = { left = 5, right = 6, top = 6, bottom = 5 }
})
--WORS_SpyFrame:SetBackdropColor(0, 0, 0, 1)
-- Enable mouse interactions
WORS_SpyFrame:EnableMouse(true)
WORS_SpyFrame:SetMovable(true)
WORS_SpyFrame:RegisterForDrag("LeftButton")

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

-- Optional: keep the frame within screen bounds
WORS_SpyFrame:SetClampedToScreen(true)
WORS_SpyFrame:Show()

-- Combat log event handler
local function OnCombatLogEvent(self, event, ...)
    local _, subEvent, _, sourceGUID, sourceName, _, _, destGUID, destName, _, _, spellID, spellName = CombatLogGetCurrentEventInfo()
    
    -- Print out for debugging (optional)
    print("Combat Log Event Triggered: " .. (subEvent or "unknown") .. " - Source: " .. (sourceName or "unknown") .. ", Destination: " .. (destName or "unknown"))

    -- Check if either source or destination is in the KOS list
    if KOSList[sourceName] then
        TriggerKOSAlert(sourceName)  -- Alert if the attacker is in the KOS list
    end

    if KOSList[destName] then
        TriggerKOSAlert(destName)  -- Alert if the attacked player is in the KOS list
    end

    -- Check for an additional player name in parameter 7
    local potentialName = select(7, ...)
    if potentialName and KOSList[potentialName] then
        TriggerKOSAlert(potentialName)  -- Alert if the potential name is in the KOS list
    end
end

-- Target check handler
local function OnTargetChanged(self, event, ...)
    local targetName = UnitName("target")
    if targetName and KOSList[targetName] then
        TriggerKOSAlert(targetName)
    end
end

-- Mouseover check handler
local function OnMouseOver(self, event, ...)
    local mouseOverName = UnitName("mouseover")
    if mouseOverName and KOSList[mouseOverName] then
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

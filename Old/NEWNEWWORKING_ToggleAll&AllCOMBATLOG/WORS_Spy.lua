local npcList = {"Verzik Vitur", "Glough", "Sand Snake", "Skeleton heavy", "Mutated Bloodveld", "Vera", "Eadburg", "Tormented Warrior", "Giant Rock Crab", "Dessous", "Nylocas Matomenos", "Zamorak wizard", "Bedabin Nomad Fighter", "Kalphite soldier", "Sergeant Strongstack", "Head", "Vyrewatch Sentinel", "Zamorak warrior", "Jackal", "Jungle horror", "Boar", "Skeleton Champion", "The Kendal", "TzHaar-Mej", "Cave lizard", "Strong Warrior", "Jubster", "Scarabs", "Kraka", "Leon d'Cour", "King Roald", "Dagannoth fledgeling", "Jungle spider", "Tough Guy", "Oryx", "Sir Bedivere", "Mosschin", "Mugger", "Melzar the Mad", "Baby blue dragon", "Callisto", "Urium Shade", "Poltenip", "Scion", "Ferocious barbarian spirit", "Giant mosquito", "Temple Guardian", "Slug Prince", "Strangled Lynx", "Ancient Guardian", "Experiment No.2", "Porcupine", "Jennella", "Knight of Varlamore", "Kroy", "Speedy Keith", "Wilson", "Brine rat", "Giant rat", "Ghost", "Troll spectator", "Dark energy core", "Radiant sanguisphera", "Spinolyp", "Scorpion", "Jogre", "Revenant hellhound", "Shadow spider", "Headless Beast", "Mirrorback Araxyte", "Jailer", "Barrelchest", "Jal-ImKot", "Gnome woman", "Grey golem", "Dagannoth Rex", "Flambeed", "Revenant dark beast", "Verac the Defiled", "Head Thief", "Gnome child", "Pirate Guard", "Green dragon", "Insatiable Bloodveld", "Rannveig", "White wolf", "Rock Golem", "Ghoul", "Cerberus", "Baby green dragon", "Splatter", "Trapped Soul", "Sir Mordred", "Robert the Strong", "Stag", "Thrower Troll", "Sergeant Grimspike", "Flockleader Geerin", "Venenatis' Spiderling", "Grave scorpion", "Confusion beast", "Twig", "Rock lobster", "Swamp Crab", "Ancient Zygomite", "Evil spirit", "Double agent", "Jal-Zek", "Sir Gawain", "Ravager", "Alrik", "Thief", "Tarik", "Lizardman brute", "Basilisk Youngling", "Enraged barbarian spirit", "Anja", "Guard dog", "Spidine", "Assassin", "Duke", "Ragnvald", "Chompy bird", "Watchman", "Bloodveld", "Elite Dark Warrior", "Sulphur Lizard", "Big Snake", "Valgerd", "Gnome Mage", "Clivet", "Hobgoblin Champion", "Nylocas Athanatos", "Mercenary axeman", "Myre Blamish Snail", "Soulless", "Menaphite Shadow", "Blood Reaver", "Ruptura Araxyte", "Temple Spider", "Shantay Guard", "Wizard", "Arzinian Avatar of Magic", "Revenant dragon", "Locust rider", "Rock Crab", "Araxyte", "Sir Pelleas", "Irina", "Broodoo victim", "Cave goblin miner", "Spiked Turoth", "Giant spider", "Earth wizard", "Jal-Nib", "Bloodworm", "Sourhog", "Rooster", "Delrith", "Third Age Warrior", "Jal-MejJak", "Arianwyn", "Taloned Wyvern", "Halla", "Alomone", "Witch's experiment", "Emissary Brawler", "Tree spirit", "Hygd", "Desert Lizard", "Moss giant", "Emissary Conjurer", "Fire giant", "Spider", "Volatile Baboon", "Giant Champion", "Ankou", "Asyn shadow", "Nylocas Hagios", "Woman", "Vyrewatch", "Defiler", "Saradomin wizard", "Black unicorn", "Cave bug", "Ithoi the Navigator", "Shadow warrior", "Skoblin", "Crystalline Bear", "Gelatinnoth Mother", "Baboon Brawler", "Black knight", "Plague frog", "Black Guard Berserker", "Lobstrosity", "Culinaromancer", "Sea Troll Queen", "Cultist", "Monstrous Basilisk", "Corrupt Lizardman", "Angry unicorn", "Possessed Priest", "Ogre chieftain", "Porazdir", "Earth warrior", "Brassican Mage", "Mercenary", "Karil the Tainted", "Jaguar cub", "Jelly", "Snakeling", "Chasm Crawler", "Frogeel", "Ice troll grunt", "Ice Troll King", "Goat", "Mind Golem", "Frenzied ice troll runt", "Scarred black demon", "Mudskipper", "Cave crawler", "Jal-AkRek-Ket", "Vulture", "Jal-MejRah", "Yuri", "Ranging Ro", "Zombie", "Emissary Chosen", "Sea troll", "Chaos dwarf", "Black chinchompa", "Unicow", "Revenant knight", "Joseph", "General Khazard", "Ogre shaman", "Shifter", "Don't Know What", "Ice wolf", "Elvarg", "Cave goblin guard", "Lanzig", "Swamp frog", "Penance Fighter", "Salarin the twisted", "Sir Carl", "Iron dragon", "Knight of Saradomin", "Redeyes", "Killerwatt", "Billy Goat", "Third Age Ranger", "Growler", "Tar Monster", "Borrokar", "Troll", "Air elemental", "Emissary Ascended", "The Shaikahan", "Einar", "Enraged Boar", "Yt-MejKot", "Gunthor the brave", "Zombie pirate", "Skeletal miner", "Skeletal Wyvern", "Shadow Keeper", "Penda", "Revenant demon", "Sofiya", "Terrorbird", "Cockathrice", "Air wizard", "River troll", "Animated Iron Armour", "Crypt spider", "Nylocas Toxobolos", "Slagilith", "Entrana firebird", "Yak", "Jhallan", "Druid", "Mosquito swarm", "Cyclops", "H.A.M. Guard", "Tanglefoot", "Dire Wolf", "Cow calf", "Nylocas Ischyros", "Pyrelord", "Infernal Mage", "Aberrant spectre", "Fire elemental", "Imre", "Chicken", "Skeleton fremennik", "Frenzied ice troll female", "Earth elemental", "Elite Dark Mage", "Skeleton", "Haze", "Ugthanki", "Jaguar", "Grizzly bear cub", "Vanstrom Klause", "Evil Creature", "Rogue", "Gardener", "Derwen", "Elf Warrior", "Ent", "Svetlana", "Tower guard", "Zombie rat", "Tolna", "Thug", "Arcane Scarab", "Frost Nagua", "Warped Jelly", "Fremennik warband berserker", "Revenant goblin", "Dagannoth mother", "Cuffs", "Black bear", "Gang boss", "Lizardman", "Necromancer", "Queen spawn", "Scarred greater demon", "Sir Tristram", "Crystalline Dragon", "Foreman", "Fragment of Seren", "Dark wizard", "Vampyre Juvinate", "Bree", "Pirate", "Vitreous warped Jelly", "Undead one", "Abyssal guardian", "Mourner", "Pee Hat", "Asyn Shade", "Sigmund", "Dust devil", "Man", "Kasonde the Craven", "Oomlie bird", "Crawling Hand", "Vampyre Juvenile", "Zygomite", "Arrg", "Spitting Wyvern", "Dwarf gang member", "Tentacle", "Bark Blamish Snail", "Ice troll male", "Cockatrice", "Renegade knight", "Acidic Araxyte", "Weaponsmaster", "Chinchompa", "Jonny the beard", "Breoca", "Shaeded Beast", "Hobgoblin guard", "Undead Lumberjack", "Spawn", "Rock", "Ghast", "Earth Warrior Champion", "Snothead", "Chronozon", "Loar Shade", "Steel dragon", "Skeleton Hellhound", "Snake", "Brawler", "Blessed spider", "Elite Black Knight", "Flaming pyrelord", "Corrupted Spider", "Imp", "Tortured soul", "Torcher", "Crystalline Wolf", "Dusk", "Frost Crab", "Zombie swab", "Elite Khazard Guard", "Afflicted", "Dharok the Wretched", "Lost barbarian", "TzHaar-Ket", "Malevolent Mage", "Corrupted Bat", "Mountain troll", "Undead Zealot", "Hazeel Cultist", "Dessourt", "Giant bat", "Shadow Hound", "Golem", "Mounted terrorbird gnome", "Animated steel armour", "White Knight", "Blood jaguar", "Giant Roc", "Kebbit", "Drunken man", "Nail beast", "Ice spider", "Ice troll female", "Tz-Kih", "Cuthbert", "Sleepwalker", "Apparition", "Me", "Waterfiend", "Fareed", "Kalrag", "Damien Leucurte", "Dad", "Animated Adamant Armour", "Basilisk", "Armadylean guard", "Tumeken's Warden", "Frenzied ice troll male", "Runite Golem", "Scarred hellhound", "Tstanon Karlak", "Typhor", "Skeleton brute", "Kalphite Worker", "Wighted Leech", "Blood spawn", "Guardian of Armadyl", "Arzinian Avatar of Strength", "Stick", "Ogre", "Emissary Acolyte", "Fiyr Shade", "Kolodion", "Spinner", "Gadderanks", "Khazard warlord", "Wolf", "Hellhound", "Spitting Scarab", "Huge spider", "Undead cow", "Catablepon", "Kalphite Soldier", "Barbarian Warlord", "Corrupted Wolf", "Saradomin priest", "Sir Palomedes", "Chaotic death spawn", "Bronze dragon", "Kasonde", "Monkey Zombie", "Kruk", "Obor", "Scarred imp", "Oipuis", "Penance Ranger", "Elite Dark Ranger", "King Scorpion", "Yadviga", "The Draugen", "Giant Mole", "Donny the lad", "Stranger", "White jaguar", "Balfrug Kreeyath", "Holthion", "Maniacal Monkey Archer", "Hengel", "Scarab Swarm", "Wormbrain", "Freidir", "Giant Sea Snake", "Revenant imp", "Elf Archer", "Frog", "Ancient Wizard", "Revenant hobgoblin", "Pheasant", "Imp Champion", "Dark beast", "Gnome Archer", "Camp dweller", "Baboon Shaman", "Abyssal antibody", "Icelord", "Bird", "Fire Warrior of Lesarkus", "Black demon", "Basilisk Knight", "Dark Ankou", "Sir Lancelot", "Thora", "Warrior of Murahs", "Mammoth", "Eduard", "Demon", "Baby tanglefoot", "Jungle Wolf", "Animated Mithril Armour", "Jogre Champion", "Thrower troll", "Giant snail", "Moss Guardian", "Wingman Skree", "Ice troll runt", "Greater abyssal demon", "Dagannoth Prime", "Tormented Demon", "Guard Bandit", "A Doubt", "Bouncer", "Baby Roc", "Zoja", "Gorak", "Nikolai", "Soldier Scarab", "Nezikchened", "Colonel Radick", "Possessed pickaxe", "Animated Steel Armour", "Carnivorous chinchompa", "Goblin guard", "Big Wolf", "Desert Wolf", "Harpie Bug Swarm", "Iorwerth Warrior", "Ochre Blamish Snail", "Skeleton warlord", "Scurrius", "Ahrim the Blighted", "Viyeldi", "Armoured zombie", "Slash Bash", "Angry giant rat", "Magic Mark", "Ice Queen", "Guard", "Khazard Guard", "Undead Druid", "Large mosquito", "Forgotten Soul", "Dire Wolf Alpha", "Skogre", "Baboon Mage", "Crystalline Bat", "Baboon", "Kurask", "Ungadulu", "Boris", "Warped Tortoise", "Tz-Kek", "Sea Snake Young", "Tortoise", "Mouse", "Black jaguar", "Outlaw", "Treus Dayth", "Hopeless creature", "Vet'ion", "Fox", "Penguin", "Giant crypt rat", "Enclave guard", "Locust", "Zamorak mage", "Leech", "Monk of Zamorak", "Bandit champion", "Strongbones", "Ragnar", "Jubbly bird", "Spindel's Spiderling", "Scarred lesser demon", "Doomion", "Disciple of Iban", "Monkey", "Bush snake", "Stone Guardian", "Alexis", "Black Heather", "Bandit", "Lucien", "Lev", "Ogress Warrior", "Aviansie", "Scorpia", "Small Lizard", "Milla", "Sir Kay", "Wall beast", "Cow", "Soldier", "Khazard trooper", "SAS Member", "Animated Rune Armour", "Body Golem", "Screaming banshee", "Farmer", "Judge of Yama", "H.A.M. Mage", "Scarab Mage", "Animated spade", "Pyrefiend", "Revenant ork", "Duck", "Cave goblin", "Yt-HurKot", "Giant rockslug", "Ulfric", "Mogre", "Narf", "Jal-AkRek-Mej", "Acidic Bloodveld", "Hero", "Snailfeet", "Minotaur", "Vitreous Jelly", "Essyllt", "Mummy", "Banshee", "White golem", "Serpent shaman", "Damis", "Sand Crab", "Wild dog", "Big frog", "Water wizard", "Phrin Shade", "Torag the Corrupted", "Zogre", "Zakl'n Gritch", "Swordchick", "The Mimic", "Crab", "Death wing", "Gorad", "Radat", "Jeff", "Sir Harry", "Bear Cub", "Baby black dragon", "Lizardman shaman", "Georgy", "Giant crypt spider", "Fortress Guard", "Rabbit", "Pit Scorpion", "Scarab", "TzHaar-Hur", "Warped Terrorbird", "Target", "Deviant spectre", "Hoop Snake", "Agrith-Na-Na", "Glod", "Unicorn", "Bruise Blamish Snail", "Flight Kilisa", "Riyl Shade", "Giant skeleton", "Screaming twisted banshee", "Black unicorn Foal", "Seagull", "Ouhai", "Sulphur Nagua", "Hobgoblin", "Tortured gorilla", "Fremennik warband seer", "Berserk barbarian spirit", "Duckling", "Gnome guard", "Shade", "Black dragon", "Buffalo", "Forester", "Othainian", "Passionate Supporter", "Summoned Zombie", "Tribesman", "Mercenary Captain", "Spawn of Sarachnis", "Grizzly bear", "Baby red dragon", "Crypt rat", "Crystalline Scorpion", "City guard", "Archer", "Menaphite Thug", "Crocodile", "Black Guard", "Chaos Golem", "Tyras guard", "Maniacal monkey", "Galina", "Invrigar the Necromancer", "Embertailed jerboa", "Sir Jerro", "Bandosian guard", "Wallasalki", "Adala", "Goblin Champion", "Baboon Thrower", "Sergeant", "Fire wizard", "Zamorak ranger", "Nazastarool", "Bryophyta", "Skeleton hero", "Cave slime", "Revenant cyclops", "Grimy Lizard", "Highwayman", "Kob", "Tarn", "Cursed Baboon", "Animated Bronze Armour", "Sergeant Steelwill", "Werewolf", "Uyoro", "Gargoyle", "Akkha's Shadow", "Xamphur", "Ketla the Unworthy", "Third Age Mage", "Blue dragon", "Abyssal demon", "San Tojalon", "Frenzied ice troll grunt", "Chilled jelly", "Zamorak crafter", "Brutal green dragon", "Khazard Scorpion", "Wyrm", "Shipyard worker", "Cave kraken", "Monkey Archer", "Fremennik warband archer", "Skeleton thug", "Dwarf", "Padulah", "Tower Archer", "Spiritual warrior", "Starlight", "Irvig Senay", "Corrupted Rat", "Battle mage", "Icefiend", "Corrupted Unicorn", "Gnome troop", "Barbarian", "Uodai", "Iorwerth Archer", "Head Menaphite Guard", "Tribeswoman", "Lizard", "Shockwave Colossus", "Tok-Xil", "Venenatis", "Guthan the Infested", "Crimson sanguisphera", "Otherworldly being", "Flesh Crawler", "Strangled", "Husk", "Al Kharid warrior", "Elidinis' Warden", "Kamil", "Rocnar", "Rowdy slave", "Feral Vampyre", "Suit of armour", "Abyssal walker", "Poison spider", "Dagannoth spawn", "Chaos Fanatic", "Ceolburg", "Crushing hand", "Ogress Shaman", "Dawn", "Dagannoth", "Greater demon", "Lensa", "Agile Scarab", "Chaos druid", "Blood Blamish Snail", "Abomination", "Flawed Golem", "Experiment", "The Untouchable", "Paladin", "Goblin", "Nechryael", "Market Guard", "Dungeon rat", "Ocga", "Phantom Hand", "Black golem", "Lynx Tamer", "Sorebones", "Swamp snake", "Abyssal leech", "Black Knight", "Agrith Naar", "Arzinian Avatar of Ranging", "Reanimated demon spawn", "Jal-Ak", "Deadly red spider", "Agile Warrior", "Monk", "Lesser demon", "Rat", "King Sand Crab", "Ice troll", "Elder Chaos druid", "Red dragon", "Sir Lucan", "Thrantax the Mighty", "Zombies Champion", "Jal-AkRek-Xil", "Angry goblin", "Penance Queen", "Dagannoth Supreme", "Lesser Demon Champion", "Ice warrior", "Parasite", "Grip", "Giant lobster", "Bat", "Karamel", "Magic axe", "Gnome", "Cave horror", "Berry", "Wyrmling", "Head Guard", "Nikita", "TzHaar-Xil", "Ice giant", "Gnome Driver", "Crystalline Spider", "Crystalline Dark Beast", "Liliya", "Alchemical Hydra", "Ancient Wyvern", "Ram", "Albino bat", "Riyl shadow", "Newtroost", "Revenant pyrefiend", "Spiritual ranger", "Thorhild", "Rockslug", "Animated Black Armour", "Mercenary mage", "Jaguar warrior", "Growthling", "Blessed giant rat", "Palmer", "The Everlasting", "Servant", "Strangled Boar", "Ksenia", "Crazy archaeologist", "Warrior", "Cave abomination", "Lynx", "Chaos druid warrior", "Khazard Ogre", "Khazard commander", "Mutated Tortoise", "Evil Chicken", "Monkey Guard", "Death spawn", "Giant frog", "Greater Skeleton Hellhound", "Suqah", "Keef", "Baboon Thrall", "Ranalph Devere", "H.A.M. Archer", "Knight of Ardougne", "Shadow", "Tormented Soul", "Evelot", "Twisted Banshee", "Terror dog", "Monstrous basilisk", "Undead chicken", "Jake", "Bunny", "Ghoul Champion", "The Illusive", "Ork", "Skeleton guard", "Scorpia's offspring", "Mutated Terrorbird", "Moonlight Cockatrice", "Angry barbarian spirit", "Crystalline Rat", "Troll general", "Confused barbarian", "Scorpia's guardian", "Black Knight Titan", "Water elemental", "Fever spider", "Infernal pyrelord", "Long-tailed Wyvern", "Molanisk", "Ammonite Crab", "Turoth", "Gangster", "Zombified Spawn", "Corrupted Scorpion", "Sir Leye", "Skeleton Mage", "Smoke devil", "Unicorn Foal", "Crystalline Unicorn", "Kalphite Guardian", "Fear reaper", "Enormous Tentacle", "Skraeling", "Count Draynor", "Poison Scorpion", "Jail guard", "Ranis Drakan", "Sea Snake Hatchling", "Prince Itzla Arkan", "Spiritual mage", "Angry bear", "Rusty", "Dark warrior", "Hill Giant", "Broddi"}

local KOSList = {
    ["Dooby"] = true,
    ["Botan"] = true,
    ["Untitled"] = true,
    ["Deathlylawl"] = true,
    ["Tonyyayo"] = true,
    ["Fusion"] = true,
	["Ghrimsy"] = true,
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


local KOSTrackingEnabled = false  -- Set to true to use KOS list, false to track all players

-- Function to check if a unit is a player by name and unit ID
local function IsPlayerByName(unitID)
    return UnitIsPlayer(unitID)
end

-- Function to check if a name is an NPC
local function IsNPC(name)
    -- Convert the given name to lowercase
    local lowerName = string.lower(name)

    for _, npcName in ipairs(npcList) do
        -- Convert npcName to lowercase and compare
        if string.lower(npcName) == lowerName then
            return true
        end
    end

    return false
end


-- Function to check if a name is a player
local function IsPlayerByNameCombatLog(name)
    return name and not IsNPC(name)  -- If it's not an NPC, it's assumed to be a player
end

-- Your existing OnCombatLogEvent function
-- List of NPC names

-- Function to check if a name is an NPC
local function IsNPC(name)
    for _, npcName in ipairs(npcList) do
        if npcName == name then
            return true
        end
    end
    return false
end




-- Updated OnCombatLogEvent function
-- Updated OnCombatLogEvent function
local function OnCombatLogEvent(self, event, ...)
    -- Extract the combat log arguments
    local args = {...}
    local sourceName, destName

    -- Loop through all arguments to find and set sourceName (index 5) and destName (index 9)
    for i, v in ipairs(args) do
        print("Arg " .. i .. ": " .. tostring(v))  -- Debugging: print all combat log arguments

        -- Set sourceName at index 5 and destName at index 9
        if i == 4 then
            sourceName = v
        elseif i == 7 then
            destName = v
        end
    end

    -- Check if KOS tracking is enabled
    if KOSTrackingEnabled then
        -- Check if sourceName or destName is in the KOS list
        if strlower(sourceName) and KOSList[strlower(sourceName)] then
            print("KOS Alert Triggered for KOS List: " .. sourceName)
            TriggerKOSAlert(sourceName)
        else
            print(sourceName .. " is not in the KOS List.")
        end

        if strlower(destName) and KOSList[strlower(destName)] then
            print("KOS Alert Triggered for KOS List: " .. destName)
            TriggerKOSAlert(destName)
        else
            print(destName .. " is not in the KOS List.")
        end
    else
        -- Check if source and destination are players by checking against the NPC list
        if IsPlayerByNameCombatLog(sourceName) then
            print(sourceName .. " is a player.")
            TriggerKOSAlert(sourceName)
        else
            print(sourceName .. " is an NPC.")
        end

        if IsPlayerByNameCombatLog(destName) then
            print(destName .. " is a player.")
            TriggerKOSAlert(destName)
        else
            print(destName .. " is an NPC.")
        end
    end
end



local function OnTargetChanged(self, event, ...)
    local targetName = UnitName("target")
    print("Target Changed: Name =", targetName)

    if targetName then  -- Check if the target name is valid
        if KOSTrackingEnabled then
            if KOSList[targetName] then
                CheckAndSavePlayerLevel("target", targetName)
                TriggerKOSAlert(targetName)
                print("KOS Alert Triggered for KOS List: " .. targetName)
            else
                print(targetName .. " is not in the KOS List.")
            end
        else
            -- Check if the target is a player
            if IsPlayerByName("target") then
                CheckAndSavePlayerLevel("target", targetName)
                TriggerKOSAlert(targetName)
                print("KOS Alert Triggered for Target: " .. targetName)
            else
                print(targetName .. " is not a player.")
            end
        end
    else
        print("No valid target found.")
    end
end

local function OnMouseOver(self, event, ...)
    local mouseOverName = UnitName("mouseover")
    if mouseOverName then
        if KOSTrackingEnabled then
            if KOSList[mouseOverName] then
                CheckAndSavePlayerLevel("mouseover", mouseOverName)
                TriggerKOSAlert(mouseOverName)
            end
        else
            -- Check if the mouseover unit is a player
            if IsPlayerByName("mouseover") then
                CheckAndSavePlayerLevel("mouseover", mouseOverName)
                TriggerKOSAlert(mouseOverName)
            else
                print(mouseOverName .. " is not a player.")
            end
        end
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

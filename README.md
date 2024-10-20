# WORS Spy
Spy Addon for WORS 
This version will auto seach while in wilderness for seen players periodically and checks combat / target / mouse over.  I think long term the KOS list functionality will kind of fall off this as i don't think its needed given pvp is always going to be in wilderness check everyone but in party maybe even change to a whitelist but will keep it in for now 

## Chat Commands 
/kos <name> or target --add to kos list 
/kosdel <name> -- remove from kos list
/spydebug -- prints ALOT of debug lines

## Saved Variable Settings
In directory bellow you can edit the saved variable file 
```
C:\Program Files\Ascension Launcher\resources\ascension_ptr\WTF\Account\<AccountName>\SavedVariables\WORS_Spy.lua
```
["redTime"] = 180,                               -- Time a player is highlighted red after being seen 3 min currently 

["yellowTime"] = 900,                        -- Time a player is highlighted red after being seen 15 min currently

["alertMessageDelay"] = 30,           -- Time a raid message is delayed if its for the same player 30 seconds 

["alertSoundDelay"] = 60,                -- Time a sound alert is delayed globally for all players lower if you want ears to rot 60 seconds 

["autoWildernessMode"] = true,    -- Turns on wilderness tracking (scanning seen players and alerting for any player not in raid / party disable to only use KOS list if disabled doesn't use 

["useKOSList"] = true,                       -- this gets edited when going in / out of wilderness probably dont mess with it not tested disabling recently 

["debugMode"] = false,                     -- this enables / disables debug print messages can be turned on in game using /spydebug

-- ------------------------------------------------------------------------------
-- Global GameMode data
local global_GameModeNameMap = {
	["GunMaster0"] = "Gun Master",
	} 

local Keku_GunMaster_LevelNameMap = {
-- Keku's map mod stuff 
	["Levels/COOP_002/COOP_002"] = "Hit and Run",
	["Levels/COOP_006/COOP_006"] = "Fire from the Sky",
	["Levels/SP_Jet/SP_Jet"] = "Going Hunting",
	["Levels/SP_Villa/SP_Villa"] = "Kaffarov's Villa",

	["Levels/MP_001/MP_001"] = "Grand Bazaar",
	["Levels/MP_003/MP_003"] = "Teheran Highway",
	["Levels/MP_007/MP_007"] = "Caspian Border",
	["Levels/MP_011/MP_011"] = "Seine Crossing",
	["Levels/MP_012/MP_012"] = "Operation Firestorm",
	["Levels/MP_013/MP_013"] = "Damavand Peak",
	["Levels/MP_017/MP_017"] = "Noshahr Canals",
	["Levels/MP_018/MP_018"] = "Kharg Island",
	["Levels/MP_Subway/MP_Subway"] = "Operation Metro",

	["Levels/XP1_001/XP1_001"] = "Strike at Karkand",
	["Levels/XP1_002/XP1_002"] = "Gulf of Oman",
	["Levels/XP1_003/XP1_003"] = "Sharqi Peninsula",
	["Levels/XP1_004/XP1_004"] = "Wake Island",

	["Levels/XP3_Desert/XP3_Desert"] = "Bandar Desert",
	["Levels/XP3_Alborz/XP3_Alborz"] = "Alborz Mountains",
	["Levels/XP3_Shield/XP3_Shield"] = "Armored Shield",
	["Levels/XP3_Valley/XP3_Valley"] = "Death Valley",

	["Levels/XP5_001/XP5_001"] = "Operation Riverside",
	["Levels/XP5_002/XP5_002"] = "Nebandan Flats",
	["Levels/XP5_003/XP5_003"] = "Kiasar Railroad",
	["Levels/XP5_004/XP5_004"] = "Sabalan Pipeline"
} 

-- ------------------------------------------------------------------------------
Events:Subscribe('Level:LoadResources', function(p_LevelName_Keku_GunMaster, p_GameMode_Keku_GunMaster, p_IsDedicatedServer)
-- Contains ALL GameModemap data
	local s_GameMode_Keku_GunMaster = ServerUtils and ServerUtils:GetCustomGameModeName() or global_GameModeNameMap[p_GameMode_Keku_GunMaster] or p_GameMode_Keku_GunMaster

-- Contains Keku_GunMaster map data
	s_LevelName_Keku_GunMaster = ServerUtils and ServerUtils:GetCustomMapName() or Keku_GunMaster_LevelNameMap[p_LevelName_Keku_GunMaster] or p_LevelName_Keku_GunMaster and s_GameMode_Keku_GunMaster == "Gun Master"

-- ------------------------------------------------------------------------------
-- What ever it is what this do.
	Events:Subscribe('Level:LoadingInfo', function(screenInfo)
	if screenInfo ~= "Registering entity resources" then
	return
	end
end)

-- ------------------------------------------------------------------------------

	local lm = SharedUtils:GetLevelName() 
	if lm == p_LevelName_Keku_GunMaster and s_GameMode_Keku_GunMaster == "Gun Master" then
	s_MapData="Gun Master"

	print(''..s_MapData..': - Setting Rcondata')
	print(''..s_MapData..': - Gamemode: ('..s_GameMode_Keku_GunMaster..') - Mapname: ('..s_LevelName_Keku_GunMaster..') ') 
	print(''..s_MapData..': - This Keku Gamemode has its own settings') 

-- ------------------------------------------------------------------------------

end
end)


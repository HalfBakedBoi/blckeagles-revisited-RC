


missionNamespace setVariable["blck_difficulty",getText(configFile >> "CfgBlck3DEN"  >> "configs" >> "defaultMissionDifficulty")];
diag_log format["Initilization: blck_difficulty set to %1",blck_difficulty];
missionNamespace setVariable["blck_lootTiming",getText(configFile >> "CfgBlck3DEN" >> "configs" >> "defaultLootcrateSpawnTiming")];
missionNamespace setVariable["blck_loadTiming",getText(configFile >> "CfgBlck3DEN" >> "configs" >> "defaultLootcrateLoadTiming")];
missionNamespace setVariable["blck_endState",getText(configFile >> "CfgBlck3DEN" >> "configs" >> "defaultMissionEndState")];
missionNamespace setVariable["blck_startMessage","TODO: Add a start message"];
missionNamespace setVariable["blck_endMessage","TODO: Add an end message"];

diag_log format["Mission Attributes Initialized for blckeagls at time %1",diag_tickTime];
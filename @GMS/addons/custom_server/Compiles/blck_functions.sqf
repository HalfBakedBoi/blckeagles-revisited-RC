/*
	AI Mission for Epoch Mod for Arma 3
	By Ghostrider
	Functions and global variables used by the mission system.
	Last modified 3/20/17
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
#include "\q\addons\custom_server\Configs\blck_defines.hpp";

private _functions = [
	// General functions
	["blck_fnc_waitTimer","\q\addons\custom_server\Compiles\Functions\GMS_fnc_waitTimer.sqf"],
	["blck_fnc_timedOut","\q\addons\custom_server\Compiles\Functions\GMS_fnc_timedOut.sqf"],
	["blck_fnc_FindSafePosn","\q\addons\custom_server\Compiles\Functions\GMS_fnc_findSafePosn.sqf"],
	["blck_fnc_randomPosition","\q\addons\custom_server\Compiles\Functions\GMS_fnc_randomPosn.sqf"],							// find a randomPosn. see script for details.
	["blck_fnc_findPositionsAlongARadius","\q\addons\custom_server\Compiles\Functions\GMS_fnc_findPositionsAlongARadius.sqf"],
	["blck_fnc_giveTakeCrypto","\q\addons\custom_server\Compiles\Functions\GMS_fnc_giveTakeCrypto.sqf"],
	["blck_fnc_timeAcceleration","\q\addons\custom_server\Compiles\TimeAccel\GMS_fnc_Time.sqf"],
	["blck_fnc_groupsOnAISide","\q\addons\custom_server\Compiles\Functions\GMS_fnc_GroupsOnAISide.sqf"],						// Returns the number of groups on the side used by AI
	["blck_fnc_emptyObject","\q\addons\custom_server\Compiles\Functions\GMS_fnc_emptyObject.sqf"],
	["blck_fnc_playerInRange","\q\addons\custom_server\Compiles\Functions\GMS_fnc_playerInRange.sqf"],
	["blck_fnc_playerInRangeArray","\q\addons\custom_server\Compiles\Functions\GMS_fnc_playerInRangeArray.sqf"],
	["blck_fnc_mainThread","\q\addons\custom_server\Compiles\Functions\GMS_fnc_mainThread.sqf"],
	["blck_fnc_allPlayers","\q\addons\custom_server\Compiles\Functions\GMS_fnc_allPlayers.sqf"],
	["blck_fnc_addItemToCrate","\q\addons\custom_server\Compiles\Functions\GMS_fnc_addItemToCrate.sqf"],
	["blck_fnc_loadLootItemsFromArray","\q\addons\custom_server\Compiles\Functions\GMS_fnc_loadLootItemsFromArray.sqf"],
	["blck_fnc_getNumberFromRange","\q\addons\custom_server\Compiles\Functions\GMS_fnc_getNumberFromRange.sqf"],
	["blck_fnc_spawnMarker","\q\addons\custom_server\Compiles\Functions\GMS_fnc_spawnMarker.sqf"],
	["blck_fnc_missionCompleteMarker","\q\addons\custom_server\Compiles\Functions\GMS_fnc_missionCompleteMarker.sqf"],
	["blck_fnc_deleteMarker","\q\addons\custom_server\Compiles\Functions\GMS_fnc_deleteMarker.sqf"],
	["blck_fnc_updateMarkerAliveCount","\q\addons\custom_server\Compiles\Functions\GMS_fnc_updateMarkerAliveCount.sqf"],
	["blck_fnc_addMoneyToObject","\q\addons\custom_server\Compiles\Functions\GMS_fnc_addMoneyToObject.sqf"],
	["blck_fnc_spawnMissionEmplacedRelative","\q\addons\custom_server\Compiles\Functions\GMS_fnc_spawnMissionEmplacedRelative.sqf"],
	["blck_fnc_spawnMissionLootBoxesRelative","\q\addons\custom_server\Compiles\Functions\GMS_fnc_spawnMissionLootBoxesRelative.sqf"],
	["blck_fnc_spawnSingleObject","\q\addons\custom_server\Compiles\Functions\GMS_fnc_spawnSingleObject.sqf"],
	//["blck_fnc_emptyObjectInventory","\q\addons\custom_server\Compiles\Functions\GMS_fnc_emptyObjectInventory.sqf"],
	["blck_fnc_spawnMissionLandscapeRelative","\q\addons\custom_server\Compiles\Functions\GMS_fnc_spawnMissionLandscapeRelative.sqf"],
	["blck_fnc_nearestPlayers","\q\addons\custom_server\Compiles\Functions\GMS_fnc_nearestPlayers.sqf"],

	// Player-related functions
	["blck_fnc_rewardKiller","\q\addons\custom_server\Compiles\Units\GMS_fnc_rewardKiller.sqf"],
	["blck_fnc_MessagePlayers","\q\addons\custom_server\Compiles\Functions\GMS_fnc_AIM.sqf"],	 // Send messages to players regarding Missions

	// Mission-related functions
	["blck_fnc_selectAILoadout","\q\addons\custom_server\Compiles\Missions\GMS_fnc_selectAILoadout.sqf"],
	["blck_fnc_selectAISidearms","\q\addons\custom_server\Compiles\Missions\GMS_fnc_selectAISidearms.sqf"],
	["blck_fnc_selectAIUniforms","\q\addons\custom_server\Compiles\Missions\GMS_fnc_selectAIUniforms.sqf"],
	["blck_fnc_selectAIHeadgear","\q\addons\custom_server\Compiles\Missions\GMS_fnc_selectAIHeadgear.sqf"],
	["blck_fnc_selectAIVests","\q\addons\custom_server\Compiles\Missions\GMS_fnc_selectAIVests.sqf"],
	["blck_fnc_selectAIBackpacks","\q\addons\custom_server\Compiles\Missions\GMS_fnc_selectAIBackpacks.sqf"],
	["blck_fnc_selectChanceHeliPatrol","\q\addons\custom_server\Compiles\Missions\GMS_fnc_selectChanceHeliPatrol.sqf"],
	["blck_fnc_selectMissionHelis","\q\addons\custom_server\Compiles\Missions\GMS_fnc_selectMissionHelis.sqf"],
	["blck_fnc_selectNumberAirPatrols","\q\addons\custom_server\Compiles\Missions\GMS_fnc_selectNumberAirPatrols.sqf"],
	["blck_fnc_selectNumberParatroops","\q\addons\custom_server\Compiles\Missions\GMS_fnc_selectNumberParatroops.sqf"],
	["blck_fnc_selectChanceParatroops","\q\addons\custom_server\Compiles\Missions\GMS_fnc_selecctChanceParatroops.sqf"],
	["blck_fnc_addMissionToQue","\q\addons\custom_server\Compiles\Missions\GMS_fnc_addMissionToQue.sqf"],
	["blck_fnc_updateMissionQue","\q\addons\custom_server\Compiles\Missions\GMS_fnc_updateMissionQue.sqf"],
	["blck_fnc_spawnPendingMissions","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnPendingMissions.sqf"],
	["blck_fnc_addLiveAItoQue","\q\addons\custom_server\Compiles\Missions\GMS_fnc_addLiveAItoQue.sqf"],
	["blck_fnc_addObjToQue","\q\addons\custom_server\Compiles\Missions\GMS_fnc_addObjToQue.sqf"],
	["blck_fnc_spawnCrate","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnCrate.sqf"],			// Simply spawns a crate of a specified type at a specific position.
	["blck_fnc_spawnMissionCrates","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnMissionCrates.sqf"], 
	["blck_fnc_cleanupObjects","\q\addons\custom_server\Compiles\Missions\GMS_fnc_cleanUpObjects.sqf"],
	["blck_fnc_spawnCompositionObjects","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnBaseObjects.sqf"],
	["blck_fnc_spawnRandomLandscape","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnRandomLandscape.sqf"],
	["blck_fnc_spawnMissionVehiclePatrols","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnMissionVehiclePatrols.sqf"],
	["blck_fnc_spawnEmplacedWeaponArray","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnEmplacedWeaponArray.sqf"],
	["blck_fnc_spawnMissionAI","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnMissionAI.sqf"],
	["blck_fnc_spawnMissionLootVehicles","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnMissionLootVehicles.sqf"],
	["blck_fnc_fillBoxes","\q\addons\custom_server\Compiles\Missions\GMS_fnc_fillBoxes.sqf"],			// Adds items to an object according to passed parameters. See the script for details.
	["blck_fnc_smokeAtCrates","\q\addons\custom_server\Compiles\Missions\GMS_fnc_smokeAtCrates.sqf"],	// Spawns a wreck and adds smoke to it
	["blck_fnc_spawnMines","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnMines.sqf"],			// Deploys mines at random locations around the mission center
	["blck_fnc_clearMines","\q\addons\custom_server\Compiles\Missions\GMS_fnc_clearMines.sqf"],			// clears mines in an array passed as a parameter
	["blck_fnc_signalEnd","\q\addons\custom_server\Compiles\Missions\GMS_fnc_signalEnd.sqf"],			// deploy smoke grenades at loot crates at the end of the mission.
	["blck_fnc_endMission","\q\addons\custom_server\Compiles\Missions\GMS_fnc_endMission.sqf"],
	["blck_fnc_paraDropObject","\q\addons\custom_server\Compiles\Missions\GMS_fnc_paraDropObject.sqf"],
	["blck_fnc_loadMissionCrate","\q\addons\custom_server\Compiles\Missions\GMS_fnc_loadMissionCrate.sqf"],
	["blck_fnc_crateMoved","\q\addons\custom_server\Compiles\Missions\GMS_fnc_crateMoved.sqf"],
	["blck_fnc_crateMarker","\q\addons\custom_server\Compiles\Missions\GMS_fnc_crateMarker.sqf"],
	["blck_fnc_garrisonBuilding_RelPosSystem","\q\addons\custom_server\Compiles\Missions\GMS_fnc_garrisonBuilding_relPosSystem.sqf"],
	["blck_fnc_garrisonBuilding_ATLsystem","\q\addons\custom_server\Compiles\Missions\GMS_fnc_garrisonBuilding_ATLsystem.sqf"],
	["blck_fnc_spawnGarrisonInsideBuilding_ATL","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnGarrisonInsideBuilding_ATL.sqf"],
	["blck_fnc_spawnGarrisonInsideBuilding_relPos","\q\addons\custom_server\Compiles\Missions\GMS_fnc_spawnGarrisonInsideBuilding_relPos.sqf"],
	
	// Group-related functions
	["blck_fnc_spawnGroup","\q\addons\custom_server\Compiles\Groups\GMS_fnc_spawnGroup.sqf"],					// Spawn a single group and populate it with AI units]
	["blck_fnc_setupWaypoints","\q\addons\custom_server\Compiles\Groups\GMS_fnc_setupWaypoints.sqf"],			// Set default waypoints for a group
	["blck_fnc_missionGroupMonitor","\q\addons\custom_server\Compiles\Groups\GMS_fnc_missionGroupMonitor.sqf"], // Monitors active groups for those that are stuck in an SAD waypoint but not in combat
	["blck_fnc_changeToSADWaypoint","\q\addons\custom_server\Compiles\Groups\GMS_fnc_changeToSADWaypoint.sqf"],
	["blck_fnc_changeToMoveWaypoint","\q\addons\custom_server\Compiles\Groups\GMS_fnc_changeToMoveWaypoint.sqf"],
	["blck_fnc_changeToSentryWaypoint","\q\addons\custom_server\Compiles\Groups\GMS_fnc_changeToSentryWaypoint.sqf"],
//	["blck_fnc_setNextWaypoint","\q\addons\custom_server\Compiles\Groups\GMS_fnc_setNextWaypoint.sqf"],
	["blck_fnc_cleanEmptyGroups","\q\addons\custom_server\Compiles\Groups\GMS_fnc_cleanEmptyGroups.sqf"],		 // GMS_fnc_cleanEmptyGroups
	["blck_fnc_findNearestInfantryGroup","\q\addons\custom_server\Compiles\Groups\GMS_fnc_findNearestInfantryGroup.sqf"],
	["blck_fnc_create_AI_Group","\q\addons\custom_server\Compiles\Groups\GMS_fnc_create_AI_Group.sqf"],			// create a group for which other functions spawn AI.
	["blck_fnc_blckSimulationManager","\q\addons\custom_server\Compiles\Groups\GMS_fnc_blckSimulationMonitor.sqf"], 
	["bck_fnc_groupWaypointMonitor","\q\addons\custom_server\Compiles\Groups\GMS_fnc_groupWaypointMonitor.sqf"],
	
	// Functions specific to vehicles, whether wheeled, aircraft or static
	["blck_fnc_spawnVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_spawnVehicle.sqf"],           
	["blck_fnc_spawnVehiclePatrol","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_spawnVehiclePatrol.sqf"], 
	["blck_fnc_protectVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_protectVehicle.sqf"],
	["blck_fnc_configureMissionVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_configureMissionVehicle.sqf"],
	["blck_fnc_vehicleMonitor","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_vehicleMonitor.sqf"], 
	["blck_fnc_spawnMissionReinforcements","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_spawnMissionReinforcements.sqf"],
	["blck_fnc_spawnMissionHeli","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_spawnMissionHeli.sqf"], 
	["blck_EH_AIVehicle_HandleHit","\q\addons\custom_server\Compiles\Vehicles\GMS_EH_AIVehicle_Hit.sqf"],
	["blck_fnc_HandleAIVehicleHit","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_HandleAIVehicleHit.sqf"],
	["blck_EH_VehicleKilled","\q\addons\custom_server\Compiles\Vehicles\GMS_EH_VehicleKilled.sqf"],
	["blck_fnc_processAIVehicleKill","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_processAIVehicleKill.sqf"],
	["blck_fnc_selectPatrolVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_selectPatrolVehicle.sqf"],
	["blck_fnc_releaseVehicleToPlayers","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_releaseVehicleToPlayers.sqf"],
	["blck_fnc_deleteAIVehicle","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_deleteAIVehicle.sqf"],
	["blck_fnc_destroyVehicleAndCrew","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_destroyVehicleAndCrew.sqf"],
	["blck_fnc_reloadVehicleAmmo","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_reloadVehicleAmmo.sqf"],
	["blck_fnc_scanForPlayersNearVehicles","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_scanForPlayersNearVehicles.sqf"],
	["blck_fnc_revealNearbyPlayers","\q\addons\custom_server\Compiles\Vehicles\GMS_fnc_revealNearbyPlayers.sqf"],

	// functions to support Units
	["blck_fnc_removeGear","\q\addons\custom_server\Compiles\Units\GMS_fnc_removeGear.sqf"],			// Strip an AI unit of all gear.
	["blck_fnc_spawnUnit","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnUnit.sqf"],				// spawn individual AI
	["blck_EH_AIKilled","\q\addons\custom_server\Compiles\Units\GMS_EH_AIKilled.sqf"], 					// Event handler to process AI deaths	
	["blck_EH_AIHit","\q\addons\custom_server\Compiles\Units\GMS_EH_AIHit.sqf"],
	["blck_EH_unitWeaponReloaded","\q\addons\custom_server\Compiles\Units\GMS_EH_unitWeaponReloaded.sqf"],
	["blck_EH_animDone","\q\addons\custom_server\Compiles\Units\GMS_EH_animDone.sqf"],
	["blck_fnc_processAIKill","\q\addons\custom_server\Compiles\Units\GMS_fnc_processAIKill.sqf"],
	["blck_fnc_removeLaunchers","\q\addons\custom_server\Compiles\Units\GMS_fnc_removeLaunchers.sqf"],
	["blck_fnc_removeNVG","\q\addons\custom_server\Compiles\Units\GMS_fnc_removeNVG.sqf"],
	["blck_fnc_alertNearbyUnits","\q\addons\custom_server\Compiles\Units\GMS_fnc_alertNearbyUnits.sqf"],
	["blck_fnc_alertGroupUnits","\q\addons\custom_server\Compiles\Units\GMS_fnc_alertGroupUnits.sqf"],
	["blck_fnc_alertNearbyVehicles","\q\addons\custom_server\Compiles\Units\GMS_fnc_alertNearbyVehicles.sqf"],
	["blck_fnc_processIlleagalAIKills","\q\addons\custom_server\Compiles\Units\GMS_fnc_processIlleagalAIKills.sqf"],
	["blck_fnc_cleanupDeadAI","\q\addons\custom_server\Compiles\Units\GMS_fnc_cleanupDeadAI.sqf"],		// handles deletion of AI bodies and gear when it is time.
	["blck_fnc_setSkill","\q\addons\custom_server\Compiles\Units\GMS_fnc_setSkill.sqf"],
	["blck_fnc_cleanupAliveAI","\q\addons\custom_server\Compiles\Units\GMS_fnc_cleanupAliveAI.sqf"],
	["blck_fnc_deleteAI","\q\addons\custom_server\Compiles\Units\GMS_fnc_deleteAI.sqf"],
	["blck_fnc_processAIHit","\q\addons\custom_server\Compiles\Units\GMS_fnc_processAIHit.sqf"],
	["blck_fnc_spawnHostage","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnHostage.sqf"],
	["blck_fnc_spawnLeader","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnLeader.sqf"],
	["blck_fnc_spawnCharacter","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnCharacter.sqf"],
	["blck_fnc_spawnParaUnits","\q\addons\custom_server\Compiles\Units\GMS_fnc_spawnParaUnits.sqf"],
	["blck_fnc_nextAnim","\q\addons\custom_server\Compiles\Units\GMS_fnc_nextAnim.sqf"],
	["blck_fnc_placeCharacterInBuilding","\q\addons\custom_server\Compiles\Units\GMS_fnc_placeCharacterInBuilding.sqf"],

	// HC support functions
	["blck_fnc_HC_XferGroup","\q\addons\custom_server\Compiles\HC\GMS_fnc_HC_XferGroup.sqf"],
	//["blck_fnc_onPlayerDisconnected","\q\addons\custom_server\Compiles\HC\GMS_fnc_onPlayerDisconnected.sqf"],
	//["blck_fnc_HC_monitor","\q\addons\custom_server\Compiles\HC\GMS_fnc_HCmonitor.sqf"],
	["blck_fnc_HC_passToHCs","\q\addons\custom_server\Compiles\HC\GMS_fnc_passToHCs.sqf"],
	//["blck_fnc_HC_getListConnected","\q\addons\custom_server\Compiles\HC\GMS_fnc_HC_getListConnected.sqf"],
	["blck_fnc_HC_leastBurdened","\q\addons\custom_server\Compiles\HC\GMS_fnc_HC_leastBurdened.sqf"],
	["blck_fnc_HC_countGroupsAssigned","\q\addons\custom_server\Compiles\HC\GMS_fnc_HC_countGroupsAssigned.sqf"]
];

{
	_x params ["_name","_path"];
	missionnamespace setvariable [_name,compileFinal  preprocessFileLineNumbers _path];
} foreach  _functions;

onPlayerDisconnected {[_name,_owner] call blck_fnc_onPlayerDisconnected;};



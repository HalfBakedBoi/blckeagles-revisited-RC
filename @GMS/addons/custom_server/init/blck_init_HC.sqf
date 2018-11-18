/*
	AI Mission for Epoch and Exile Mods to Arma 3
	Credist to blckeagls who wrote the initial mission script for A3 Epoch 
	To Narines for debugging that original version
	To cynwncler for many helpful comments along the way
	And mostly importantly, 
	To Vampire, KiloSwiss, blckeagls, theFUCHS, lazylink, Mark311 and Buttface (Face) who wrote the pionering mission and roaming AI systems upon which this one is based and who's code is used with modification in some parts of this addon.

	By Ghostrider-GRG-

	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/
*/
if (hasInterface) exitWith{};

#include "\q\addons\custom_server\Configs\blck_defines.hpp";

if !(isNil "blck_Initialized") exitWith{};
private["_blck_loadingStartTime"];
_blck_loadingStartTime = diag_tickTime;
#include "\q\addons\custom_server\init\build.sqf";
diag_log format["[blckeagls] Loading Headless Client Version %2 Build Date %1",_blck_versionDate,_blck_version];

call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\blck_variables.sqf";
waitUntil {(isNil "blck_variablesLoaded") isEqualTo false;};
waitUntil{blck_variablesLoaded};
blck_variablesLoaded = nil;
//if !(blck_debugON) then {uiSleep 60;};

// compile functions
call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Compiles\blck_functions.sqf";
waitUntil {(isNil "blck_functionsCompiled") isEqualTo false;};
waitUntil{blck_functionsCompiled};
blck_functionsCompiled = nil;
diag_log format["[blckeagls] debug mode settings:blck_debugON = %1 blck_debugLevel = %2",blck_debugON,blck_debugLevel];

execVM "\q\addons\custom_server\Configs\blck_configs.sqf";
waitUntil {(isNil "blck_configsLoaded") isEqualTo false;};
waitUntil{blck_configsLoaded};
blck_configsLoaded = nil;

// Load any user-defined specifications or overrides
call compileFinal preprocessFileLineNumbers "\q\addons\custom_server\Configs\blck_custom_config.sqf";

switch (blck_simulationManager) do
	case 1: {diag_log "[blckeagls] dynamic simulation manager enabled"}; 
	case 2: {diag_log "[blckeagls] blckeagls simulation manager enabled"};
	case 0: {diag_log "[blckeagls] simulation management disabled"};
};

diag_log format["[blckeagls] for HC version %1 Build %2 Loaded in %3 seconds",_blck_versionDate,_blck_version,diag_tickTime - _blck_loadingStartTime]; //,blck_modType];
[] spawn blck_fnc_HC_monitor;

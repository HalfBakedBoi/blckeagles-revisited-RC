/*
	for ghostridergaming
	By Ghostrider [GRG]
	Copyright 2016
	Last Modified 3-14-17
	
	--------------------------
	License
	--------------------------
	All the code and information provided here is provided under an Attribution Non-Commercial ShareAlike 4.0 Commons License.

	http://creativecommons.org/licenses/by-nc-sa/4.0/	
*/

#include "\q\addons\custom_server\Configs\blck_defines.hpp";

////////////
// Epoch-specific settings
////////////	

	// list of locations that are protected against mission spawns
	
	switch (toLower(worldName)) do
	{
		case "altis": {
			blck_locationBlackList append [
			//Add location as [[xpos,ypos,0],minimumDistance],
			// Note that there should not be a comma after the last item in this table
			[[10800,10641,0],1000]  // isthmus - missions that spawn here often are glitched.
			];
		};
		case "tanoa": {
			blck_locationBlackList append [	];
		};
	};
	
/*********************************************************************************

AI WEAPONS, UNIFORMS, VESTS AND GEAR

**********************************************************************************/

	blck_AI_Side = RESISTANCE;
	blck_AIPatrolVehicles = ["B_G_Offroad_01_armed_EPOCH","B_LSV_01_armed_F"]; // Type of vehicle spawned to defend AI bases	
	
	#define useAPEX 1
	
	blck_AIPatrolVehicles = 
	[
	//"Exile_Car_Offroad_Armed_Guerilla01",
	//"Exile_Car_Offroad_Armed_Guerilla02",
	//"Exile_Car_BTR40_MG_Green",
	//"Exile_Car_BTR40_MG_Camo",
	//"Exile_Car_HMMWV_M134_Green",
	//"Exile_Car_HMMWV_M134_Desert",
	//"Exile_Car_HMMWV_M134_Desert",
	//"Exile_Car_HMMWV_M2_Desert",
	//"B_LSV_01_armed_F",
	//"_MRAP_02_gmg_ghex_F",
	//"O_MRAP_02_hmg_ghex_F",
	//"O_MRAP_03_gmg_ghex_F",
	"O_MRAP_03_hmg_ghex_F",	
	"B_MBT_01_cannon_F",
	//"B_MBT_01_mlrs_base_F",
	"B_MBT_01_mlrs_F",
	"B_MBT_01_TUSK_F",
	"B_APC_Tracked_01_AA_F",
	"B_APC_Tracked_01_CRV_F",
	"B_APC_Tracked_01_rcws_F"																						
	]; // Type of vehicle spawned to defend AI bases	
	// Blacklisted itesm
	blck_blacklistedOptics = ["optic_Nightstalker","optic_tws","optic_tws_mg"];
	
	// AI Weapons and Attachments
	blck_bipods = ["bipod_01_F_blk","bipod_01_F_mtp","bipod_01_F_snd","bipod_02_F_blk","bipod_02_F_hex","bipod_02_F_tan","bipod_03_F_blk","bipod_03_F_oli"];

	blck_Optics_Holo = ["optic_Hamr","optic_MRD","optic_Holosight","optic_Holosight_smg","optic_Aco","optic_ACO_grn","optic_ACO_grn_smg","optic_Aco_smg","optic_Yorris"];
	blck_Optics_Reticule = ["optic_Arco","optic_MRCO"];
	blck_Optics_Scopes = [
		"optic_AMS","optic_AMS_khk","optic_AMS_snd",
		"optic_DMS",
		"optic_KHS_blk","optic_KHS_hex","optic_KHS_old","optic_KHS_tan",
		"optic_LRPS",
		"optic_Nightstalker",
		"optic_NVS",
		"optic_SOS",
		"optic_tws",
		"optic_tws_mg"
		];
	blck_Optics_Apex = [
		//Apex
		"optic_Arco_blk_F",	"optic_Arco_ghex_F",
		"optic_DMS_ghex_F",
		"optic_Hamr_khk_F",
		"optic_ERCO_blk_F","optic_ERCO_khk_F","optic_ERCO_snd_F",
		"optic_SOS_khk_F",
		"optic_LRPS_tna_F","optic_LRPS_ghex_F",
		"optic_Holosight_blk_F","optic_Holosight_khk_F","optic_Holosight_smg_blk_F"
		];	
	blck_Optics = blck_Optics_Holo + blck_Optics_Reticule + blck_Optics_Scopes;

	#ifdef useAPEX
	blck_Optics = blck_Optics + blck_Optics_Apex;
	#endif
	blck_bipods = [
		"bipod_01_F_blk","bipod_01_F_mtp","bipod_01_F_snd","bipod_02_F_blk","bipod_02_F_hex","bipod_02_F_tan","bipod_03_F_blk","bipod_03_F_oli",
		//Apex
		"bipod_01_F_khk"
		];
	
	blck_silencers = [
		"muzzle_snds_338_black","muzzle_snds_338_green","muzzle_snds_338_sand","muzzle_snds_93mmg","muzzle_snds_93mmg_tan","muzzle_snds_acp","muzzle_snds_B",
		"muzzle_snds_H","muzzle_snds_H_MG","muzzle_snds_H_SW","muzzle_snds_L","muzzle_snds_M",
		//Apex			
		"muzzle_snds_H_khk_F","muzzle_snds_H_snd_F","muzzle_snds_58_blk_F","muzzle_snds_m_khk_F","muzzle_snds_m_snd_F","muzzle_snds_B_khk_F","muzzle_snds_B_snd_F",
		"muzzle_snds_58_wdm_F","muzzle_snds_65_TI_blk_F","muzzle_snds_65_TI_hex_F","muzzle_snds_65_TI_ghex_F","muzzle_snds_H_MG_blk_F","muzzle_snds_H_MG_khk_F"
		];		

	blck_RifleSniper = [ 
		"srifle_EBR_F","srifle_GM6_F","srifle_LRR_F","srifle_DMR_01_F" 		
	];

	blck_RifleAsault_556 = [
		"arifle_SDAR_F","arifle_TRG21_F","arifle_TRG20_F","arifle_TRG21_GL_F","arifle_Mk20_F","arifle_Mk20C_F","arifle_Mk20_GL_F","arifle_Mk20_plain_F","arifle_Mk20C_plain_F","arifle_Mk20_GL_plain_F","arifle_SDAR_F"
		];
	
	blck_RifleAsault_650 = [
		"arifle_Katiba_F","arifle_Katiba_C_F","arifle_Katiba_GL_F","arifle_MXC_F","arifle_MX_F","arifle_MX_GL_F","arifle_MXM_F"
		];
	
	blck_RifleAsault = blck_RifleAsault_556 + blck_RifleAsault_650;

	blck_RifleLMG = [
		"LMG_Mk200_F","LMG_Zafir_F"
	];

	blck_RifleOther = [
		"SMG_01_F","SMG_02_F"
	];

	blck_Pistols = [
		"hgun_PDW2000_F","hgun_ACPC2_F","hgun_Rook40_F","hgun_P07_F","hgun_Pistol_heavy_01_F","hgun_Pistol_heavy_02_F","hgun_Pistol_Signal_F"
	];	
	
	blck_DLC_MMG = [
				"MMG_01_hex_F","MMG_02_sand_F","MMG_01_tan_F","MMG_02_black_F","MMG_02_camo_F"
	];
	
	blck_DLC_Sniper = [
		"srifle_DMR_02_camo_F","srifle_DMR_02_F","srifle_DMR_02_sniper_F","srifle_DMR_03_F","srifle_DMR_03_tan_F","srifle_DMR_04_F","srifle_DMR_04_Tan_F","srifle_DMR_05_blk_F","srifle_DMR_05_hex_F","srifle_DMR_05_tan_F","srifle_DMR_06_camo_F","srifle_DMR_06_olive_F"
	];
	blck_apexWeapons = ["arifle_AK12_F","arifle_AK12_GL_F","arifle_AKM_F","arifle_AKM_FL_F","arifle_AKS_F","arifle_ARX_blk_F","arifle_ARX_ghex_F","arifle_ARX_hex_F","arifle_CTAR_blk_F","arifle_CTAR_hex_F",
						"arifle_CTAR_ghex_F","arifle_CTAR_GL_blk_F","arifle_CTARS_blk_F","arifle_CTARS_hex_F","arifle_CTARS_ghex_F","arifle_SPAR_01_blk_F","arifle_SPAR_01_khk_F","arifle_SPAR_01_snd_F",
						"arifle_SPAR_01_GL_blk_F","arifle_SPAR_01_GL_khk_F","arifle_SPAR_01_GL_snd_F","arifle_SPAR_02_blk_F","arifle_SPAR_02_khk_F","arifle_SPAR_02_snd_F","arifle_SPAR_03_blk_F",
						"arifle_SPAR_03_khk_F","arifle_SPAR_03_snd_F","arifle_MX_khk_F","arifle_MX_GL_khk_F","arifle_MXC_khk_F","arifle_MXM_khk_F"];
						
	//This defines the random weapon to spawn on the AI
	//https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
	blck_WeaponList_Orange = blck_RifleSniper + blck_RifleAsault_650 + blck_RifleLMG + blck_DLC_Sniper + blck_DLC_MMG;
	blck_WeaponList_Green = blck_RifleSniper + 	blck_RifleAsault_650 +blck_RifleLMG + blck_DLC_MMG + blck_apexWeapons;
	blck_WeaponList_Blue = blck_RifleOther + blck_RifleAsault_556 +blck_RifleAsault_650;
	blck_WeaponList_Red = blck_RifleAsault_556 + blck_RifleSniper + 	blck_RifleAsault_650 + blck_RifleLMG;
	
	#ifdef useAPEX

		blck_WeaponList_Orange = blck_WeaponList_Orange + blck_apexWeapons;
		blck_WeaponList_Green = blck_WeaponList_Green + blck_apexWeapons;
	#endif
	
	blck_baseBackpacks = ["B_Carryall_ocamo","B_Carryall_oucamo","B_Carryall_mcamo","B_Carryall_oli","B_Carryall_khk","B_Carryall_cbr" ];  
	blck_ApexBackpacks = [
		"B_Bergen_mcamo_F","B_Bergen_dgtl_F","B_Bergen_hex_F","B_Bergen_tna_F","B_AssaultPack_tna_F","B_Carryall_ghex_F",
		"B_FieldPack_ghex_F","B_ViperHarness_blk_F","B_ViperHarness_ghex_F","B_ViperHarness_hex_F","B_ViperHarness_khk_F",
		"B_ViperHarness_oli_F","B_ViperLightHarness_blk_F","B_ViperLightHarness_ghex_F","B_ViperLightHarness_hex_F","B_ViperLightHarness_khk_F","B_ViperLightHarness_oli_F"
		];
		
	#ifdef useAPEX
		blck_backpacks = blck_baseBackpacks + blck_ApexBackpacks;
	#endif

	blck_BanditHeadgear = ["H_Shemag_khk","H_Shemag_olive","H_Shemag_tan","H_ShemagOpen_khk"];
	//This defines the skin list, some skins are disabled by default to permit players to have high visibility uniforms distinct from those of the AI.
	blck_headgear = [
			"H_Cap_blk",
			"H_Cap_blk_Raven",
			"H_Cap_blu",
			"H_Cap_brn_SPECOPS",
			"H_Cap_grn",
			"H_Cap_headphones",
			"H_Cap_khaki_specops_UK",
			"H_Cap_oli",
			"H_Cap_press",
			"H_Cap_red",
			"H_Cap_tan",
			"H_Cap_tan_specops_US",
			"H_Watchcap_blk",
			"H_Watchcap_camo",
			"H_Watchcap_khk",
			"H_Watchcap_sgg",
			"H_MilCap_blue",
			"H_MilCap_dgtl",
			"H_MilCap_mcamo",
			"H_MilCap_ocamo",
			"H_MilCap_oucamo",
			"H_MilCap_rucamo",
			"H_Bandanna_camo",
			"H_Bandanna_cbr",
			"H_Bandanna_gry",
			"H_Bandanna_khk",
			"H_Bandanna_khk_hs",
			"H_Bandanna_mcamo",
			"H_Bandanna_sgg",
			"H_Bandanna_surfer",
			"H_Booniehat_dgtl",
			"H_Booniehat_dirty",
			"H_Booniehat_grn",
			"H_Booniehat_indp",
			"H_Booniehat_khk",
			"H_Booniehat_khk_hs",
			"H_Booniehat_mcamo",
			"H_Booniehat_tan",
			"H_Hat_blue",
			"H_Hat_brown",
			"H_Hat_camo",
			"H_Hat_checker",
			"H_Hat_grey",
			"H_Hat_tan",
			"H_StrawHat",
			"H_StrawHat_dark",
			"H_Beret_02",
			"H_Beret_blk",
			"H_Beret_blk_POLICE",
			"H_Beret_brn_SF",
			"H_Beret_Colonel",
			"H_Beret_grn",
			"H_Beret_grn_SF",
			"H_Beret_ocamo",
			"H_Beret_red",
			"H_Shemag_khk",
			"H_Shemag_olive",
			"H_Shemag_olive_hs",
			"H_Shemag_tan",
			"H_ShemagOpen_khk",
			"H_ShemagOpen_tan",
			"H_TurbanO_blk",
			
			//Apex
			"H_MilCap_tna_F",
			"H_MilCap_ghex_F",
			"H_Booniehat_tna_F",
			"H_Beret_gen_F",
			"H_MilCap_gen_F",
			"H_Cap_oli_Syndikat_F",
			"H_Cap_tan_Syndikat_F",
			"H_Cap_blk_Syndikat_F",
			"H_Cap_grn_Syndikat_F"			
	];
	blck_helmets = [
			"H_HelmetB",
			"H_HelmetB_black",
			"H_HelmetB_camo",
			"H_HelmetB_desert",
			"H_HelmetB_grass",
			"H_HelmetB_light",
			"H_HelmetB_light_black",
			"H_HelmetB_light_desert",
			"H_HelmetB_light_grass",
			"H_HelmetB_light_sand",
			"H_HelmetB_light_snakeskin",
			"H_HelmetB_paint",
			"H_HelmetB_plain_blk",
			"H_HelmetB_sand",
			"H_HelmetB_snakeskin",
			"H_HelmetCrew_B",
			"H_HelmetCrew_I",
			"H_HelmetCrew_O",
			"H_HelmetIA",
			"H_HelmetIA_camo",
			"H_HelmetIA_net",
			"H_HelmetLeaderO_ocamo",
			"H_HelmetLeaderO_oucamo",
			"H_HelmetO_ocamo",
			"H_HelmetO_oucamo",
			"H_HelmetSpecB",
			"H_HelmetSpecB_blk",
			"H_HelmetSpecB_paint1",
			"H_HelmetSpecB_paint2",
			"H_HelmetSpecO_blk",
			"H_HelmetSpecO_ocamo",
			"H_CrewHelmetHeli_B",
			"H_CrewHelmetHeli_I",
			"H_CrewHelmetHeli_O",
			"H_HelmetCrew_I",
			"H_HelmetCrew_B",
			"H_HelmetCrew_O",
			"H_PilotHelmetHeli_B",
			"H_PilotHelmetHeli_I",
			"H_PilotHelmetHeli_O",
			"H_Helmet_Skate",
			"H_HelmetB_TI_tna_F",
			// Apex
			//"H_HelmetO_ViperSP_hex_F",
			//"H_HelmetO_ViperSP_ghex_F",
			"H_HelmetB_tna_F",
			"H_HelmetB_Enh_tna_F",
			"H_HelmetB_Light_tna_F",
			"H_HelmetSpecO_ghex_F",
			"H_HelmetLeaderO_ghex_F",
			"H_HelmetO_ghex_F",
			"H_HelmetCrew_O_ghex_F"			
	];
	blck_headgearList = blck_headgear + blck_helmets;
	//This defines the skin list, some skins are disabled by default to permit players to have high visibility uniforms distinct from those of the AI.
	blck_SkinList = [
		//https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Equipment
				"U_AntigonaBody",
				"U_AttisBody",
				"U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam_worn","U_B_CombatUniform_sgg","U_B_CombatUniform_sgg_tshirt","U_B_CombatUniform_sgg_vest","U_B_CombatUniform_wdl","U_B_CombatUniform_wdl_tshirt","U_B_CombatUniform_wdl_vest",
				"U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3",	
				"U_B_GhillieSuit",
				"U_B_HeliPilotCoveralls","U_B_PilotCoveralls",
				"U_B_SpecopsUniform_sgg",
				"U_B_survival_uniform",
				"U_B_Wetsuit",
				//"U_BasicBody",
				"U_BG_Guerilla1_1","U_BG_Guerilla2_1","U_BG_Guerilla2_2","U_BG_Guerilla2_3","U_BG_Guerilla3_1","U_BG_Guerilla3_2",
				"U_BG_leader",
				"U_C_Commoner_shorts","U_C_Commoner1_1","U_C_Commoner1_2","U_C_Commoner1_3","U_C_Commoner2_1","U_C_Commoner2_2","U_C_Commoner2_3",
				"U_C_Farmer","U_C_Fisherman","U_C_FishermanOveralls","U_C_HunterBody_brn","U_C_HunterBody_grn",
				//"U_C_Journalist",
				"U_C_Novak",
				//"U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_redwhite","U_C_Poloshirt_salmon","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour",
				"U_C_Poor_1","U_C_Poor_2","U_C_Poor_shorts_1","U_C_Poor_shorts_2","U_C_PriestBody","U_C_Scavenger_1","U_C_Scavenger_2",
				//"U_C_Scientist","U_C_ShirtSurfer_shorts","U_C_TeeSurfer_shorts_1","U_C_TeeSurfer_shorts_2",
				"U_C_WorkerCoveralls","U_C_WorkerOveralls","U_Competitor",
				"U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt","U_I_G_resistanceLeader_F",
				"U_I_G_Story_Protagonist_F",
				"U_I_GhillieSuit",
				"U_I_HeliPilotCoveralls",
				"U_I_OfficerUniform",
				"U_I_pilotCoveralls",
				"U_I_Wetsuit",
				"U_IG_Guerilla1_1","U_IG_Guerilla2_1","U_IG_Guerilla2_2","U_IG_Guerilla2_3","U_IG_Guerilla3_1","U_IG_Guerilla3_2",
				"U_IG_leader",
				"U_IG_Menelaos",
				//"U_KerryBody",
				//"U_MillerBody",
				//"U_NikosAgedBody",
				//"U_NikosBody",
				"U_O_CombatUniform_ocamo","U_O_CombatUniform_oucamo",
				"U_O_GhillieSuit",
				"U_O_OfficerUniform_ocamo",
				"U_O_PilotCoveralls",
				"U_O_SpecopsUniform_blk",
				"U_O_SpecopsUniform_ocamo",
				"U_O_Wetsuit",
				"U_OG_Guerilla1_1","U_OG_Guerilla2_1","U_OG_Guerilla2_2","U_OG_Guerilla2_3","U_OG_Guerilla3_1","U_OG_Guerilla3_2","U_OG_leader",
				//"U_OI_Scientist",
				//"U_OrestesBody",
				"U_Rangemaster",
				// DLC
				"U_B_FullGhillie_ard","U_I_FullGhillie_ard","U_O_FullGhillie_ard","U_B_FullGhillie_sard","U_O_FullGhillie_sard","U_I_FullGhillie_sard","U_B_FullGhillie_lsh","U_O_FullGhillie_lsh","U_I_FullGhillie_lsh",
				//Apex
				"U_B_T_Soldier_F",
				"U_B_T_Soldier_AR_F",
				"U_B_T_Soldier_SL_F",
				//"U_B_T_Sniper_F",
				//"U_B_T_FullGhillie_tna_F",
				"U_B_CTRG_Soldier_F",
				"U_B_CTRG_Soldier_2_F",
				"U_B_CTRG_Soldier_3_F",
				"U_B_GEN_Soldier_F",
				"U_B_GEN_Commander_F",
				"U_O_T_Soldier_F",
				"U_O_T_Officer_F",
				//"U_O_T_Sniper_F",
				//"U_O_T_FullGhillie_tna_F",
				"U_O_V_Soldier_Viper_F",
				"U_O_V_Soldier_Viper_hex_F",
				"U_I_C_Soldier_Para_1_F",
				"U_I_C_Soldier_Para_2_F",
				"U_I_C_Soldier_Para_3_F",
				"U_I_C_Soldier_Para_4_F",
				"U_I_C_Soldier_Para_5_F",
				"U_I_C_Soldier_Bandit_1_F",
				"U_I_C_Soldier_Bandit_2_F",
				"U_I_C_Soldier_Bandit_3_F",
				"U_I_C_Soldier_Bandit_4_F",
				"U_I_C_Soldier_Bandit_5_F",
				"U_I_C_Soldier_Camo_F",
				"U_C_man_sport_1_F",
				"U_C_man_sport_2_F",
				"U_C_man_sport_3_F",
				"U_C_Man_casual_1_F",
				"U_C_Man_casual_2_F",
				"U_C_Man_casual_3_F",
				"U_C_Man_casual_4_F",
				"U_C_Man_casual_5_F",
				"U_C_Man_casual_6_F",
				"U_B_CTRG_Soldier_urb_1_F",
				"U_B_CTRG_Soldier_urb_2_F",
				"U_B_CTRG_Soldier_urb_3_F"
			];

		blck_vests = [
				"V_1_EPOCH","V_2_EPOCH","V_3_EPOCH","V_4_EPOCH","V_5_EPOCH","V_6_EPOCH","V_7_EPOCH","V_8_EPOCH","V_9_EPOCH","V_10_EPOCH","V_11_EPOCH","V_12_EPOCH","V_13_EPOCH","V_14_EPOCH","V_15_EPOCH","V_16_EPOCH","V_17_EPOCH","V_18_EPOCH","V_19_EPOCH","V_20_EPOCH",
				"V_21_EPOCH","V_22_EPOCH","V_23_EPOCH","V_24_EPOCH","V_25_EPOCH","V_26_EPOCH","V_27_EPOCH","V_28_EPOCH","V_29_EPOCH","V_30_EPOCH","V_31_EPOCH","V_32_EPOCH","V_33_EPOCH","V_34_EPOCH","V_35_EPOCH","V_36_EPOCH","V_37_EPOCH","V_38_EPOCH","V_39_EPOCH","V_40_EPOCH",
				// DLC Vests
				"V_PlateCarrierSpec_blk","V_PlateCarrierSpec_mtp","V_PlateCarrierGL_blk","V_PlateCarrierGL_mtp","V_PlateCarrierIAGL_oli"
			];
			//CraftingFood
		blck_Meats=[
			"SnakeCarcass_EPOCH","RabbitCarcass_EPOCH","ChickenCarcass_EPOCH","GoatCarcass_EPOCH","SheepCarcass_EPOCH"
		];
		blck_Drink = [
			"WhiskeyNoodle","ItemSodaOrangeSherbet","ItemSodaPurple","ItemSodaMocha","ItemSodaBurst","ItemSodaRbull","FoodWalkNSons"
		];
		blck_Food = [
			"FoodBioMeat","FoodMeeps","FoodSnooter","FoodWalkNSons","sardines_epoch","meatballs_epoch","scam_epoch","sweetcorn_epoch","honey_epoch","CookedSheep_EPOCH","CookedGoat_EPOCH","SnakeMeat_EPOCH",
			"CookedRabbit_EPOCH","CookedChicken_EPOCH","ItemTrout","ItemSeaBass","ItemTuna","TacticalBacon"
		];
		blck_ConsumableItems = blck_Meats + blck_Drink + blck_Food;
		blck_throwableExplosives = ["HandGrenade","MiniGrenade"];
		blck_otherExplosives = ["1Rnd_HE_Grenade_shell","3Rnd_HE_Grenade_shell","DemoCharge_Remote_Mag","SatchelCharge_Remote_Mag"];
		blck_explosives = blck_throwableExplosives + blck_otherExplosives;
		blck_medicalItems = ["FAK"];
		blck_specialItems = blck_throwableExplosives + blck_medicalItems;		
		blck_NVG = ["NVG_EPOCH"];
		blck_epochValuables = ["class PartOreGold","cass PartOreSilver","class PartOre","class ItemGoldBar","class ItemSilverBar",
			"class ItemGoldBar10oz","class ItemTopaz","class ItemOnyx","class ItemSapphire","class ItemAmethyst",
			"class ItemEmerald","class ItemCitrine","class ItemRuby","class ItemQuartz","class ItemJade",
			"class ItemGarnet","class ItemKiloHemp"];
		blck_epochBuildingSupplies = ["PartPlankPack","CinderBlocks","MortarBucket","ItemScraps",
			"ItemCorrugated","ItemCorrugatedLg","ItemSolar","ItemCables",
			"ItemBattery","Pelt_EPOCH"];
		blck_buildingMaterials = blck_epochBuildingSupplies;
/***************************************************************************************
DEFAULT CONTENTS OF LOOT CRATES FOR EACH MISSION
Note however that these configurations can be used in any way you like or replaced with mission-specific customized loot arrays
for examples of how you can do this see \Major\Compositions.sqf
***************************************************************************************/			

	// values are: number of things from the weapons, magazines, optics, materials(cinder etc), items (food etc) and backpacks arrays to add, respectively.
	blck_lootCountsOrange = [8,32,8,30,16,1];   // Orange
	blck_lootCountsGreen = [7,24,6,16,18,1]; // Green
	blck_lootCountsRed = [5,16,4,10,6,1];  // Red	
	blck_lootCountsBlue = [4,12,3,6,6,1];   // Blue
	
	blck_BoxLoot_Orange = 
		// Loot is grouped as [weapons],[magazines],[items] in order to be able to use the correct function to load the item into the crate later on.
		// Each item consist of the following information ["ItemName",minNum, maxNum] where min is the smallest number added and min+max is the largest number added.
		
		[  
			[// Weapons	
				#ifdef useAPEX
				"arifle_AK12_F","arifle_AK12_GL_F","arifle_AKM_F","arifle_AKM_FL_F","arifle_AKS_F","arifle_ARX_blk_F","arifle_ARX_ghex_F","arifle_ARX_hex_F","arifle_CTAR_blk_F","arifle_CTAR_hex_F",
				"arifle_CTAR_ghex_F","arifle_CTAR_GL_blk_F","arifle_CTARS_blk_F","arifle_CTARS_hex_F","arifle_CTARS_ghex_F","arifle_SPAR_01_blk_F","arifle_SPAR_01_khk_F","arifle_SPAR_01_snd_F",
				"arifle_SPAR_01_GL_blk_F","arifle_SPAR_01_GL_khk_F","arifle_SPAR_01_GL_snd_F","arifle_SPAR_02_blk_F","arifle_SPAR_02_khk_F","arifle_SPAR_02_snd_F","arifle_SPAR_03_blk_F",
				"arifle_SPAR_03_khk_F","arifle_SPAR_03_snd_F","arifle_MX_khk_F","arifle_MX_GL_khk_F","arifle_MXC_khk_F","arifle_MXM_khk_F",
				#endif
				["MultiGun","EnergyPackLg"],
				["arifle_Katiba_F","30Rnd_65x39_caseless_green"],
				["arifle_Katiba_GL_F","30Rnd_65x39_caseless_green"],
				["arifle_MX_F","30Rnd_65x39_caseless_mag"],
				["arifle_MXC_F","30Rnd_65x39_caseless_mag"],
				["arifle_MXM_F","30Rnd_65x39_caseless_mag"],
				["arifle_SDAR_F","20Rnd_556x45_UW_mag"],
				["arifle_TRG20_F","30Rnd_556x45_Stanag"],
				["M14_EPOCH","20Rnd_762x51_Mag"],
				["M14Grn_EPOCH","20Rnd_762x51_Mag"],
				["M14_EPOCH","20Rnd_762x51_Mag"],
				["M14Grn_EPOCH","20Rnd_762x51_Mag"],				
				["arifle_MXM_F","30Rnd_65x39_caseless_mag_Tracer"],
				["arifle_MXM_Black_F","30Rnd_65x39_caseless_mag_Tracer"],				
				["m107_EPOCH","5Rnd_127x108_Mag"],
				["m107Tan_EPOCH","5Rnd_127x108_Mag"],				
				["srifle_DMR_01_F","10Rnd_762x51_Mag"],
				["srifle_LRR_F","7Rnd_408_Mag"],
				["srifle_EBR_F","20Rnd_762x51_Mag"],
				["srifle_GM6_F","5Rnd_127x108_APDS_Mag"],
				["Arifle_MX_SW_F","100Rnd_65x39_caseless_mag_Tracer"],
				["Arifle_MX_SW_Black_F","100Rnd_65x39_caseless_mag_Tracer"],
				["LMG_Zafir_F","150Rnd_762x51_Box_Tracer"],
				["MMG_01_hex_F","150Rnd_93x64_Mag"],
				["MMG_01_tan_F","150Rnd_93x64_Mag"],
				["MMG_02_black_F","150Rnd_93x64_Mag"],
				["MMG_02_camo_F","150Rnd_93x64_Mag"],
				["MMG_02_sand_F","150Rnd_93x64_Mag"],
				["srifle_DMR_02_camo_F","10Rnd_338_Mag"],
				["srifle_DMR_02_F","10Rnd_338_Mag"],
				["srifle_DMR_02_sniper_F","10Rnd_338_Mag"],
				["srifle_DMR_03_F","10Rnd_338_Mag"],
				["srifle_DMR_03_tan_F","10Rnd_338_Mag"],
				["srifle_DMR_04_Tan_F","10Rnd_338_Mag"],
				["srifle_DMR_05_hex_F","10Rnd_338_Mag"],
				["srifle_DMR_05_tan_F","10Rnd_338_Mag"],
				["srifle_DMR_06_camo_F","10Rnd_338_Mag"],				
				["srifle_DMR_04_F","10Rnd_127x54_Mag"],
				["srifle_DMR_05_blk_F","10Rnd_93x64_DMR_05_Mag"],
				["srifle_DMR_06_olive_F","20Rnd_762x51_Mag"]

			],
			[//Magazines
				["3rnd_HE_Grenade_Shell",3,6],				
				["30Rnd_65x39_caseless_green",3,6],
				["30Rnd_556x45_Stanag",3,6],
				["30Rnd_45ACP_Mag_SMG_01",3,6],
				["20Rnd_556x45_UW_mag",3,6],
				["20Rnd_762x51_Mag",7,14],
				["200Rnd_65x39_cased_Box",3,6],
				["100Rnd_65x39_caseless_mag_Tracer",3,6],
				["3rnd_HE_Grenade_Shell",1,3],
				["HandGrenade",1,4],
				["EnergyPack",2,5],
				// Marksman Pack Ammo
				["10Rnd_338_Mag",1,4],
				["10Rnd_338_Mag",1,4],				
				["10Rnd_127x54_Mag" ,1,4],
				["10Rnd_127x54_Mag",1,4],
				["10Rnd_93x64_DMR_05_Mag" ,1,4],
				["10Rnd_93x64_DMR_05_Mag" ,1,4]	
				// Apex Ammo				
			],			
			[  // Optics
				["optic_SOS",1,2],["optic_LRPS",1,2],["optic_DMS",1,2],["optic_Aco",1,3],["optic_ACO_grn",1,3],["optic_Holosight",1,3],["acc_flashlight",1,3],["acc_pointer_IR",1,3],
				["optic_Arco",1,3],["optic_Hamr",1,3],["optic_Aco",1,3],["optic_ACO_grn",1,3],["optic_Aco_smg",1,3],["optic_ACO_grn_smg",1,3],
				["optic_Holosight",1,3],["optic_Holosight_smg",1,3],["optic_SOS",1,3],["optic_MRCO",1,3],["optic_DMS",1,3],["optic_Yorris",1,3],
				["optic_MRD",1,3],["optic_LRPS",1,3],["optic_NVS",1,3],["optic_Nightstalker",1,2],["optic_Nightstalker",1,2],["optic_Nightstalker",1,2],
				["optic_tws",1,3],["optic_tws_mg",1,3],["muzzle_snds_H",1,3],["muzzle_snds_L",1,3],["muzzle_snds_M",1,3],["muzzle_snds_B",1,3],["muzzle_snds_H_MG",1,3],["muzzle_snds_acp",1,3],
				["optic_AMS_khk",1,3],["optic_AMS_snd",1,3],["optic_KHS_blk",1,3],["optic_KHS_hex",1,3],["optic_KHS_old",1,3],["optic_KHS_tan",1,3]
			],
			[// Materials and supplies				
				["CinderBlocks",5,15],
				["jerrycan_epoch",1,2],
				//["lighter_epoch",0,1],
				["CircuitParts",2,3],
				["WoodLog_EPOCH",5,10],
				["ItemCorrugatedLg",1,6],
				["ItemCorrugated",3,10],
				["ItemMixOil",1,2],
				["MortarBucket",5,10],
				["PartPlankPack",10,19],
				["ItemLockbox",1,2],
				["ItemSolar",1,2],
				["ItemCables",1,2],
				["ItemBattery",1,2],
				["Pelt_EPOCH",1,2],
				["EnergyPackLg",1,3]
			],
			[//Items
				["Heal_EPOCH",1,2],["Defib_EPOCH",1,2],["Repair_EPOCH",1,4],["FAK",1,4],["VehicleRepair",1,3],["Rangefinder",1,3],["ItemJade",1,2],["ItemQuartz",1,2],["ItemRuby",1,2],["ItemSapphire",1,2],
				["ItemKiloHemp",1,2],["ItemRuby",1,2],["ItemSilverBar",1,2],["ItemEmerald",1,2],["ItemTopaz",1,2],["ItemOnyx",1,2],["ItemSapphire",1,2],["ItemAmethyst",1,2],
				["ItemSodaRbull",1,3],["ItemSodaOrangeSherbet",1,3],["ItemSodaPurple",1,3],["ItemSodaMocha",1,3],["ItemSodaBurst",1,3],
				["CookedChicken_EPOCH",1,3],["CookedGoat_EPOCH",1,3],["CookedSheep_EPOCH",1,3],["FoodSnooter",1,3],["FoodMeeps",1,3],["FoodBioMeat",1,3],["ItemTuna",1,3],["ItemSeaBass",1,3],["ItemTrout",1,3]
			],
			[ // Backpacks
				["B_AssaultPack_dgtl",1,2],["B_AssaultPack_khk",1,2],["B_AssaultPack_mcamo",1,2],["B_AssaultPack_ocamo",1,2],["B_AssaultPack_rgr",1,2],["B_AssaultPack_sgg",1,2],
				["B_Carryall_cbr",1,2],["B_Carryall_khk",1,2],["B_Carryall_mcamo",1,2],["B_Carryall_ocamo",1,2],["B_Carryall_oli",1,2],["B_Carryall_oucamo",1,2],["B_FieldPack_blk",1,2],
				["B_FieldPack_cbr",1,2],["B_FieldPack_khk",1,2],["B_FieldPack_ocamo",1,2],["B_FieldPack_oli",1,2],["B_FieldPack_oucamo",1,2],["B_Kitbag_cbr",1,2],["B_Kitbag_mcamo",1,2],
				["B_Kitbag_rgr",1,2],["B_Kitbag_sgg",1,2],["B_Parachute",1,2],["B_TacticalPack_blk",1,2],["B_TacticalPack_mcamo",1,2],["B_TacticalPack_ocamo",1,2],["B_TacticalPack_oli",1,2],
				["B_TacticalPack_rgr",1,2],["smallbackpack_red_epoch",1,2],["smallbackpack_green_epoch",1,2],["smallbackpack_teal_epoch",1,2],["smallbackpack_pink_epoch",1,2]
			]
	];		
		
	blck_BoxLoot_Green = 
		[
			[// Weapons
				// Format is ["Weapon Name","Magazine Name"],
				#ifdef useAPEX
				"arifle_AK12_F","arifle_AK12_GL_F","arifle_AKM_F","arifle_AKM_FL_F","arifle_AKS_F","arifle_ARX_blk_F","arifle_ARX_ghex_F","arifle_ARX_hex_F","arifle_CTAR_blk_F","arifle_CTAR_hex_F",
				"arifle_CTAR_ghex_F","arifle_CTAR_GL_blk_F","arifle_CTARS_blk_F","arifle_CTARS_hex_F","arifle_CTARS_ghex_F","arifle_SPAR_01_blk_F","arifle_SPAR_01_khk_F","arifle_SPAR_01_snd_F",
				"arifle_SPAR_01_GL_blk_F","arifle_SPAR_01_GL_khk_F","arifle_SPAR_01_GL_snd_F","arifle_SPAR_02_blk_F","arifle_SPAR_02_khk_F","arifle_SPAR_02_snd_F","arifle_SPAR_03_blk_F",
				"arifle_SPAR_03_khk_F","arifle_SPAR_03_snd_F","arifle_MX_khk_F","arifle_MX_GL_khk_F","arifle_MXC_khk_F","arifle_MXM_khk_F",
				#endif
				["MultiGun","EnergyPackLg"],
				["arifle_Katiba_F","30Rnd_65x39_caseless_green"],
				["arifle_Katiba_GL_F","30Rnd_65x39_caseless_green"],
				["arifle_MX_F","30Rnd_65x39_caseless_mag"],
				["arifle_MX_GL_F","30Rnd_65x39_caseless_mag"],
				["arifle_MXC_F","30Rnd_65x39_caseless_mag"],
				["arifle_MXM_F","30Rnd_65x39_caseless_mag"],
				["M14_EPOCH","20Rnd_762x51_Mag"],
				["M14Grn_EPOCH","20Rnd_762x51_Mag"],
				["M14_EPOCH","20Rnd_762x51_Mag"],
				["M14Grn_EPOCH","20Rnd_762x51_Mag"],				
				["arifle_MXM_F","30Rnd_65x39_caseless_mag_Tracer"],
				["arifle_MXM_Black_F","30Rnd_65x39_caseless_mag_Tracer"],				
				["m107_EPOCH","5Rnd_127x108_Mag"],
				["m107Tan_EPOCH","5Rnd_127x108_Mag"],				
				["srifle_DMR_01_F","10Rnd_762x51_Mag"],
				["srifle_LRR_F","7Rnd_408_Mag"],
				["srifle_EBR_F","20Rnd_762x51_Mag"],
				["srifle_GM6_F","5Rnd_127x108_APDS_Mag"],
				["LMG_Mk200_F","200Rnd_65x39_cased_Box_Tracer"],
				["Arifle_MX_SW_F","100Rnd_65x39_caseless_mag_Tracer"],
				["Arifle_MX_SW_Black_F","100Rnd_65x39_caseless_mag_Tracer"],
				["LMG_Zafir_F","150Rnd_762x51_Box_Tracer"],
				["MMG_01_hex_F","150Rnd_93x64_Mag"],
				["srifle_DMR_02_camo_F","10Rnd_338_Mag"],
				["srifle_DMR_03_F","10Rnd_338_Mag"],		
				["srifle_DMR_04_Tan_F","10Rnd_338_Mag"],
				["srifle_DMR_05_hex_F","10Rnd_338_Mag"],	
				["srifle_DMR_06_camo_F","10Rnd_338_Mag"]
				
			],
			[//Magazines
				// Format is ["Magazine name, Minimum number to add, Maximum number to add],
				["3rnd_HE_Grenade_Shell",2,4],
				["30Rnd_65x39_caseless_green",3,6],
				["30Rnd_556x45_Stanag",3,6],
				["30Rnd_556x45_Stanag",3,6],
				["30Rnd_45ACP_Mag_SMG_01",3,6],
				["20Rnd_556x45_UW_mag",3,6],
				["20Rnd_762x51_Mag",6,12],
				["200Rnd_65x39_cased_Box",3,6],
				["100Rnd_65x39_caseless_mag_Tracer",3,6],
				["3rnd_HE_Grenade_Shell",1,3],
				["HandGrenade",1,3],
				["EnergyPack",2,5],
				// Marksman Pack Ammo				
				["10Rnd_338_Mag",1,4],
				["10Rnd_338_Mag",1,4],				
				["10Rnd_127x54_Mag" ,1,4],
				["10Rnd_127x54_Mag",1,4],
				["10Rnd_93x64_DMR_05_Mag" ,1,4],
				["10Rnd_93x64_DMR_05_Mag" ,1,4]					
			],			
			[  // Optics
				["optic_SOS",1,2],["optic_LRPS",1,2],["optic_DMS",1,2],["optic_Aco",1,3],["optic_ACO_grn",1,3],["optic_Holosight",1,3],["acc_flashlight",1,3],["acc_pointer_IR",1,3],
				["optic_Arco",1,3],["optic_Hamr",1,3],["optic_Aco",1,3],["optic_ACO_grn",1,3],["optic_Aco_smg",1,3],["optic_ACO_grn_smg",1,3],
				["optic_Holosight",1,3],["optic_Holosight_smg",1,3],["optic_SOS",1,3],["optic_MRCO",1,3],["optic_DMS",1,3],["optic_Yorris",1,3],
				["optic_MRD",1,3],["optic_LRPS",1,3],["optic_NVS",1,3],["optic_Nightstalker",1,2],["optic_Nightstalker",1,2],["optic_Nightstalker",1,2],
				["optic_tws",1,3],["optic_tws_mg",1,3],["muzzle_snds_H",1,3],["muzzle_snds_L",1,3],["muzzle_snds_M",1,3],["muzzle_snds_B",1,3],["muzzle_snds_H_MG",1,3],["muzzle_snds_acp",1,3],
				["optic_AMS_khk",1,3],["optic_AMS_snd",1,3],["optic_KHS_blk",1,3],["optic_KHS_hex",1,3],["optic_KHS_old",1,3],["optic_KHS_tan",1,3]
			],
			[	
				["CinderBlocks",4,12],
				["jerrycan_epoch",1,2],
				["lighter_epoch",1,1],
				["CircuitParts",2,5],
				["WoodLog_EPOCH",10,20],
				["ItemCorrugatedLg",1,3],
				["ItemCorrugated",2,9],
				["ItemMixOil",1,2],
				["MortarBucket",3,6],
				["PartPlankPack",10,12],
				["ItemLockbox",1,3],
				["ItemSolar",1,2],
				["ItemCables",1,2],
				["ItemBattery",1,2],
				["Pelt_EPOCH",1,2],
				["EnergyPackLg",1,3]
			],
			[//Items
				// Format is ["Item name, Minimum number to add, Maximum number to add],
				["Heal_EPOCH",1,2],["Defib_EPOCH",1,2],["Repair_EPOCH",1,2],["FAK",1,2],["FAK",1,2],["FAK",1,2],["FAK",1,2],["FAK",1,2],["FAK",1,2],["VehicleRepair",1,3],["Rangefinder",1,3],
				["ItemKiloHemp",1,2],["ItemRuby",1,2],["ItemSilverBar",1,2],["ItemGoldBar10oz",1,2],
				["ItemSodaRbull",1,3],["ItemSodaOrangeSherbet",1,3],["ItemSodaPurple",1,3],["ItemSodaMocha",1,3],["ItemSodaBurst",1,3],
				["CookedChicken_EPOCH",1,3],["CookedGoat_EPOCH",1,3],["CookedSheep_EPOCH",1,3],["FoodSnooter",1,3],["FoodMeeps",1,3],["FoodBioMeat",1,3],["ItemTuna",1,3],["ItemSeaBass",1,3],["ItemTrout",1,3]
			],
			[ // Backpacks
				["B_AssaultPack_dgtl",1,2],["B_AssaultPack_khk",1,2],["B_AssaultPack_mcamo",1,2],["B_AssaultPack_ocamo",1,2],["B_AssaultPack_rgr",1,2],["B_AssaultPack_sgg",1,2],
				["B_Carryall_cbr",1,2],["B_Carryall_khk",1,2],["B_Carryall_mcamo",1,2],["B_Carryall_ocamo",1,2],["B_Carryall_oli",1,2],["B_Carryall_oucamo",1,2],["B_FieldPack_blk",1,2],
				["B_FieldPack_cbr",1,2],["B_FieldPack_khk",1,2],["B_FieldPack_ocamo",1,2],["B_FieldPack_oli",1,2],["B_FieldPack_oucamo",1,2],["B_Kitbag_cbr",1,2],["B_Kitbag_mcamo",1,2],
				["B_Kitbag_rgr",1,2],["B_Kitbag_sgg",1,2],["B_Parachute",1,2],["B_TacticalPack_blk",1,2],["B_TacticalPack_mcamo",1,2],["B_TacticalPack_ocamo",1,2],["B_TacticalPack_oli",1,2],
				["B_TacticalPack_rgr",1,2],["smallbackpack_red_epoch",1,2],["smallbackpack_green_epoch",1,2],["smallbackpack_teal_epoch",1,2],["smallbackpack_pink_epoch",1,2]
			]
		];
		
	blck_BoxLoot_Blue = 
		[
			[// Weapons
				["MultiGun","EnergyPackLg"],
				["arifle_Katiba_F","30Rnd_65x39_caseless_green"],
				["arifle_Katiba_GL_F","30Rnd_65x39_caseless_green"],
				["arifle_Mk20_F","30Rnd_556x45_Stanag"],
				["arifle_Mk20_plain_F","30Rnd_556x45_Stanag"],
				["arifle_Mk20C_F","30Rnd_556x45_Stanag"],
				["arifle_Mk20_GL_F","30Rnd_556x45_Stanag"],
				["arifle_Mk20_GL_plain_F","30Rnd_556x45_Stanag"],
				["arifle_MX_F","30Rnd_65x39_caseless_mag"],
				["arifle_MX_GL_F","30Rnd_65x39_caseless_mag"],
				["arifle_MXC_F","30Rnd_65x39_caseless_mag"],
				["arifle_MXM_F","30Rnd_65x39_caseless_mag"],
				["arifle_SDAR_F","20Rnd_556x45_UW_mag"],
				["arifle_TRG20_F","30Rnd_556x45_Stanag"],
				["m16_EPOCH","30Rnd_556x45_Stanag"],
				["m16Red_EPOCH","30Rnd_556x45_Stanag"],
				["M14_EPOCH","20Rnd_762x51_Mag"],
				["M14Grn_EPOCH","20Rnd_762x51_Mag"],
				["m4a3_EPOCH","30Rnd_556x45_Stanag"],
				["SMG_02_F","30Rnd_9x21_Mag"],
				["SMG_01_F","30Rnd_45ACP_Mag_SMG_01"],
				["Hgun_PDW2000_F","30Rnd_9x21_Mag"],
				["M14_EPOCH","20Rnd_762x51_Mag"],
				["M14Grn_EPOCH","20Rnd_762x51_Mag"],				
				["arifle_MXM_F","30Rnd_65x39_caseless_mag_Tracer"],
				["arifle_MXM_Black_F","30Rnd_65x39_caseless_mag_Tracer"],				
				["m107_EPOCH","5Rnd_127x108_Mag"],
				["m107Tan_EPOCH","5Rnd_127x108_Mag"],				
				["srifle_DMR_01_F","10Rnd_762x51_Mag"],
				["srifle_LRR_F","7Rnd_408_Mag"],
				["srifle_EBR_F","20Rnd_762x51_Mag"],
				["srifle_GM6_F","5Rnd_127x108_APDS_Mag"],
				["m249_EPOCH","200Rnd_556x45_M249"],
				["m249Tan_EPOCH","200Rnd_556x45_M249"],
				["LMG_Mk200_F","200Rnd_65x39_cased_Box_Tracer"],
				["Arifle_MX_SW_F","100Rnd_65x39_caseless_mag_Tracer"],
				["Arifle_MX_SW_Black_F","100Rnd_65x39_caseless_mag_Tracer"],
				["LMG_Zafir_F","150Rnd_762x51_Box_Tracer"]		
			],
			[//Magazines
				["3rnd_HE_Grenade_Shell",1,2],
				["30Rnd_65x39_caseless_green",3,6],
				["30Rnd_556x45_Stanag",3,6],
				["30Rnd_556x45_Stanag",3,6],
				["30Rnd_45ACP_Mag_SMG_01",3,6],
				["20Rnd_556x45_UW_mag",3,6],
				["20Rnd_762x51_Mag",3,10],
				["200Rnd_65x39_cased_Box",3,6],
				["100Rnd_65x39_caseless_mag_Tracer",3,6],
				["3rnd_HE_Grenade_Shell",1,4],
				["HandGrenade",1,3],
				["EnergyPack",2,5],
				// Marksman Pack Ammo				
				["150Rnd_93x64_Mag",1,4],
				["10Rnd_338_Mag",1,4],
				["10Rnd_127x54_Mag" ,1,4],
				["10Rnd_127x54_Mag",1,4],
				["10Rnd_93x64_DMR_05_Mag" ,1,4]				
			],	
			[  // Optics
				["optic_SOS",1,2],["optic_LRPS",1,2],["optic_DMS",1,2],["optic_Aco",1,3],["optic_ACO_grn",1,3],["optic_Holosight",1,3],["acc_flashlight",1,3],["acc_pointer_IR",1,3],
				["optic_Arco",1,3],["optic_Hamr",1,3],["optic_Aco",1,3],["optic_ACO_grn",1,3],["optic_Aco_smg",1,3],["optic_ACO_grn_smg",1,3],
				["optic_Holosight",1,3],["optic_Holosight_smg",1,3],["optic_SOS",1,3],["optic_MRCO",1,3],["optic_DMS",1,3],["optic_Yorris",1,3],
				["optic_MRD",1,3],["optic_LRPS",1,3],["optic_NVS",1,3],["optic_Nightstalker",1,2],
				["optic_tws",1,3],["optic_tws_mg",1,3],["muzzle_snds_H",1,3],["muzzle_snds_L",1,3],["muzzle_snds_M",1,3],["muzzle_snds_B",1,3],["muzzle_snds_H_MG",1,3],["muzzle_snds_acp",1,3],
				["optic_AMS_khk",1,3],["optic_AMS_snd",1,3],["optic_KHS_blk",1,3],["optic_KHS_hex",1,3],["optic_KHS_old",1,3],["optic_KHS_tan",1,3]
			],
			[
				["CinderBlocks",2,6],
				["jerrycan_epoch",1,3],
				["lighter_epoch",1,1],
				["CircuitParts",2,3],
				["WoodLog_EPOCH",10,20],
				["ItemCorrugatedLg",0,4],
				["ItemCorrugated",3,6],
				["ItemMixOil",1,2],
				["MortarBucket",1,8],
				["PartPlankPack",10,12],
				["ItemLockbox",1,2],
				["EnergyPackLg",0,1]			
			],
			[//Items
				["Heal_EPOCH",1,2],["Defib_EPOCH",1,2],["Repair_EPOCH",1,2],["FAK",1,5],["VehicleRepair",1,5],
				["ItemSodaRbull",1,3],["ItemSodaOrangeSherbet",1,3],["ItemSodaPurple",1,3],["ItemSodaMocha",1,3],["ItemSodaBurst",1,3],
				["CookedChicken_EPOCH",1,3],["CookedGoat_EPOCH",1,3],["CookedSheep_EPOCH",1,3],["FoodSnooter",1,3],["FoodMeeps",1,3],["FoodBioMeat",1,3],["ItemTuna",1,3],["ItemSeaBass",1,3],["ItemTrout",1,3]
			],
			[ // Backpacks
				["B_AssaultPack_dgtl",0,2],["B_AssaultPack_khk",0,2],["B_AssaultPack_mcamo",0,2],["B_AssaultPack_ocamo",0,2],["B_AssaultPack_rgr",0,2],["B_AssaultPack_sgg",0,2],
				["B_Carryall_cbr",0,2],["B_Carryall_khk",0,2],["B_Carryall_mcamo",0,2],["B_Carryall_ocamo",0,2],["B_Carryall_oli",0,2],["B_Carryall_oucamo",0,2],["B_FieldPack_blk",0,2],
				["B_FieldPack_cbr",0,2],["B_FieldPack_khk",0,2],["B_FieldPack_ocamo",0,2],["B_FieldPack_oli",0,2],["B_FieldPack_oucamo",0,2],["B_Kitbag_cbr",0,2],["B_Kitbag_mcamo",0,2],
				["B_Kitbag_rgr",0,2],["B_Kitbag_sgg",0,2],["B_Parachute",0,2],["B_TacticalPack_blk",0,2],["B_TacticalPack_mcamo",0,2],["B_TacticalPack_ocamo",0,2],["B_TacticalPack_oli",0,2],
				["B_TacticalPack_rgr",0,2],["smallbackpack_red_epoch",0,2],["smallbackpack_green_epoch",0,2],["smallbackpack_teal_epoch",0,2],["smallbackpack_pink_epoch",0,2]
			]
		];
	
	blck_BoxLoot_Red = 
		[	
			[// Weapons
				["MultiGun","EnergyPackLg"],
				["arifle_Katiba_F","30Rnd_65x39_caseless_green"],
				["arifle_Katiba_GL_F","30Rnd_65x39_caseless_green"],
				["arifle_Mk20_F","30Rnd_556x45_Stanag"],
				["arifle_Mk20_plain_F","30Rnd_556x45_Stanag"],
				["arifle_Mk20C_F","30Rnd_556x45_Stanag"],
				["arifle_Mk20_GL_F","30Rnd_556x45_Stanag"],
				["arifle_Mk20_GL_plain_F","30Rnd_556x45_Stanag"],
				["arifle_MX_F","30Rnd_65x39_caseless_mag"],
				["arifle_MX_GL_F","30Rnd_65x39_caseless_mag"],
				//["arifle_MX_SW_Black_Hamr_pointer_F","100Rnd_65x39_caseless_mag_Tracer"],
				["arifle_MXC_F","30Rnd_65x39_caseless_mag"],
				["arifle_MXM_F","30Rnd_65x39_caseless_mag"],
				["arifle_SDAR_F","20Rnd_556x45_UW_mag"],
				["arifle_TRG20_F","30Rnd_556x45_Stanag"],
				["m16_EPOCH","30Rnd_556x45_Stanag"],
				["m16Red_EPOCH","30Rnd_556x45_Stanag"],
				["M14_EPOCH","20Rnd_762x51_Mag"],
				["M14Grn_EPOCH","20Rnd_762x51_Mag"],
				["m4a3_EPOCH","30Rnd_556x45_Stanag"],
				["SMG_02_F","30Rnd_9x21_Mag"],
				["SMG_01_F","30Rnd_45ACP_Mag_SMG_01"],
				["Hgun_PDW2000_F","30Rnd_9x21_Mag"],
				["M14_EPOCH","20Rnd_762x51_Mag"],
				["M14Grn_EPOCH","20Rnd_762x51_Mag"],				
				["arifle_MXM_F","30Rnd_65x39_caseless_mag_Tracer"],
				["arifle_MXM_Black_F","30Rnd_65x39_caseless_mag_Tracer"],				
				["m107_EPOCH","5Rnd_127x108_Mag"],
				["m107Tan_EPOCH","5Rnd_127x108_Mag"],				
				["srifle_DMR_01_F","10Rnd_762x51_Mag"],
				["srifle_LRR_F","7Rnd_408_Mag"],
				["srifle_EBR_F","20Rnd_762x51_Mag"],
				["srifle_GM6_F","5Rnd_127x108_APDS_Mag"],
				["m249_EPOCH","200Rnd_556x45_M249"],
				["m249Tan_EPOCH","200Rnd_556x45_M249"],
				["LMG_Mk200_F","200Rnd_65x39_cased_Box_Tracer"],
				["Arifle_MX_SW_F","100Rnd_65x39_caseless_mag_Tracer"],
				["Arifle_MX_SW_Black_F","100Rnd_65x39_caseless_mag_Tracer"],
				["LMG_Zafir_F","150Rnd_762x51_Box_Tracer"],
				["MMG_01_hex_F","150Rnd_93x64_Mag"],
				["srifle_DMR_04_Tan_F","10Rnd_338_Mag"],
				["srifle_DMR_06_camo_F","10Rnd_338_Mag"]
			],
			[//Magazines
		
				["3rnd_HE_Grenade_Shell",1,5],["30Rnd_65x39_caseless_green",3,6],["30Rnd_556x45_Stanag",3,6],["30Rnd_556x45_Stanag",3,6],["30Rnd_45ACP_Mag_SMG_01",3,6],["20Rnd_556x45_UW_mag",3,6],
				["10Rnd_762x51_Mag",3,6],["20Rnd_762x51_Mag",3,7],["200Rnd_65x39_cased_Box",3,6],["100Rnd_65x39_caseless_mag_Tracer",3,6],
				["3rnd_HE_Grenade_Shell",1,2],["HandGrenade",1,3],["EnergyPack",2,5],
				// Marksman Pack Ammo				
				["150Rnd_93x64_Mag",1,4],
				["10Rnd_338_Mag",1,4],
				["10Rnd_127x54_Mag" ,1,4],
				["10Rnd_127x54_Mag",1,4],
				["10Rnd_93x64_DMR_05_Mag" ,1,4]				
			],		
			[  // Optics
				["optic_SOS",1,2],["optic_LRPS",1,2],["optic_DMS",1,2],["optic_Aco",1,3],["optic_ACO_grn",1,3],["optic_Holosight",1,3],["acc_flashlight",1,3],["acc_pointer_IR",1,3],
				["optic_Arco",1,3],["optic_Hamr",1,3],["optic_Aco",1,3],["optic_ACO_grn",1,3],["optic_Aco_smg",1,3],["optic_ACO_grn_smg",1,3],
				["optic_Holosight",1,3],["optic_Holosight_smg",1,3],["optic_SOS",1,3],["optic_MRCO",1,3],["optic_DMS",1,3],["optic_Yorris",1,3],
				["optic_MRD",1,3],["optic_LRPS",1,3],["optic_NVS",1,3],["optic_Nightstalker",1,2],
				["optic_tws",1,3],["optic_tws_mg",1,3],["muzzle_snds_H",1,3],["muzzle_snds_L",1,3],["muzzle_snds_M",1,3],["muzzle_snds_B",1,3],["muzzle_snds_H_MG",1,3],["muzzle_snds_acp",1,3],
				["optic_AMS_khk",1,3],["optic_KHS_blk",1,3],["optic_KHS_hex",1,3],["optic_KHS_old",1,3],["optic_KHS_tan",1,3]
			],			
			[	
				["CinderBlocks",2,7], 
				["jerrycan_epoch",1,3],
				["lighter_epoch",1,1],
				["CircuitParts",2,6],
				["WoodLog_EPOCH",10,20],
				["ItemCorrugatedLg",0,5],
				["ItemCorrugated",3,7],
				["ItemMixOil",1,2],
				["MortarBucket",2,5],
				["PartPlankPack",10,12],
				["ItemLockbox",1,2],
				["EnergyPackLg",0,1]
			],
			[//Items
				["Heal_EPOCH",1,2],["Defib_EPOCH",1,2],["Repair_EPOCH",1,2],["FAK",1,2],["VehicleRepair",1,3],
				["ItemSodaRbull",1,3],["ItemSodaOrangeSherbet",1,3],["ItemSodaPurple",1,3],["ItemSodaMocha",1,3],["ItemSodaBurst",1,3],
				["CookedChicken_EPOCH",1,3],["CookedGoat_EPOCH",1,3],["CookedSheep_EPOCH",1,3],["FoodSnooter",1,3],["FoodMeeps",1,3],["FoodBioMeat",1,3],["ItemTuna",1,3],["ItemSeaBass",1,3],["ItemTrout",1,3]
			],
			[ // Backpacks
				["B_AssaultPack_dgtl",0,2],["B_AssaultPack_khk",0,2],["B_AssaultPack_mcamo",0,2],["B_AssaultPack_ocamo",0,2],["B_AssaultPack_rgr",0,2],["B_AssaultPack_sgg",0,2],
				["B_Carryall_cbr",0,2],["B_Carryall_khk",0,2],["B_Carryall_mcamo",0,2],["B_Carryall_ocamo",0,2],["B_Carryall_oli",0,2],["B_Carryall_oucamo",0,2],["B_FieldPack_blk",0,2],
				["B_FieldPack_cbr",0,2],["B_FieldPack_khk",0,2],["B_FieldPack_ocamo",0,2],["B_FieldPack_oli",0,2],["B_FieldPack_oucamo",0,2],["B_Kitbag_cbr",0,2],["B_Kitbag_mcamo",0,2],
				["B_Kitbag_rgr",0,2],["B_Kitbag_sgg",0,2],["B_Parachute",0,2],["B_TacticalPack_blk",0,2],["B_TacticalPack_mcamo",0,2],["B_TacticalPack_ocamo",0,2],["B_TacticalPack_oli",0,2],
				["B_TacticalPack_rgr",0,2],["smallbackpack_red_epoch",0,2],["smallbackpack_green_epoch",0,2],["smallbackpack_teal_epoch",0,2],["smallbackpack_pink_epoch",0,2]
			]
		];


	// Time the marker remains after completing the mission in seconds - experimental not yet implemented

	blck_crateTypes = ["Box_FIA_Ammo_F","Box_FIA_Support_F","Box_FIA_Wps_F","I_SupplyCrate_F","Box_NATO_AmmoVeh_F","Box_East_AmmoVeh_F","IG_supplyCrate_F","Box_NATO_Wps_F","I_CargoNet_01_ammo_F","O_CargoNet_01_ammo_F","B_CargoNet_01_ammo_F"];  // Default crate type.
	
	diag_log "[blckeagls] Configurations for Epoch Loaded";
	blck_configsEpochLoaded = true;
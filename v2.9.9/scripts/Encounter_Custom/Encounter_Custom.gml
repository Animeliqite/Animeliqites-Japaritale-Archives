function Encounter_Custom() {
	Encounter_Set(0,-1,battle_enemy,-1,"* You encountered nothing!",-1);
	
	//Simple Battle
	Encounter_Set(1,-1,battle_enemy_simple,-1,"* You encountered the test&  monster!",-1);
	
	//Gaster Blaster
	Encounter_Set(2,-1,battle_enemy_gb,-1,"* Gaster Blaster example.",-1);
	
	//Cellien (Small)
	Encounter_Set(3,-1,battle_enemy_cellien_small,-1,"* small blue fuck attacks you",-1, true, false, false, 320, 320);
	
	//Zebra-chan
	Encounter_Set(4,-1,battle_enemy_zebra,-1,"* Here comes Zebra-chan!", bgm_zebra, false, true, false, 48, 454, false);
	
	//Cellien (Big)
	Encounter_Set(5,-1,battle_enemy_cellien_big,-1,Lang_GetString("battle.encounter.cellien_big"),bgm_cellien_big,false,false,false,48,454,true);

	//Arai-san
	Encounter_Set(6,-1,battle_enemy_arai_san_old,-1,Lang_GetString("battle.encounter.arai_san"),bgm_arai_san,false);
	
	//Chameleon and Moose
	Encounter_Set(7,battle_enemy_moose,-1,battle_enemy_chameleon,Lang_GetString("battle.encounter.duel"),bgm_duelbattle_chameleon,false,false,false,48,454,true,battle_enemy_duel_controller);
	
}

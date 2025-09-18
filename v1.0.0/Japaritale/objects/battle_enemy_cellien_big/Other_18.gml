///@desc Turn Preparation Start

//Prepare the attack
if(!_anim_paperplane_executed_once) {
	randomize();
	instance_create_depth(0,0,0,choose(battle_turn_pirannah_variation_0,battle_turn_pirannah_variation_1,battle_turn_cellien_thump,battle_turn_cellien_shoot));
}
else{
	if(!Anim_IsExists(battle_ui)&&!_broken){
		instance_create_depth(0,0,0,battle_turn_noattack);
	}
	else if(Anim_IsExists(battle_ui)||_broken){
		Battle_SetTurnInfo(BATTLE_TURN.TIME,(!_broken ? 60 : -1));
		Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,(!_broken ? 283 : 80));
		Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,(!_broken ? 283 : 80));	
	}
}
randomize();

if(!Anim_IsExists(battle_ui)){
	if (_has_planned) && (!_anim_paperplane_executed_once) battle._menu_dialog=Lang_GetString("monster.cellien_big.flavor_text.act_expand");
	else if (_anim_paperplane_executed_once) battle._menu_dialog=Lang_GetString("monster.cellien_big.flavor_text.core_visible");
	else {
		var RANDOM=[
			Lang_GetString("monster.cellien_big.flavor_text.random.0"),
			Lang_GetString("monster.cellien_big.flavor_text.random.1"),
			Lang_GetString("monster.cellien_big.flavor_text.random.2")
		];
		battle._menu_dialog=RANDOM[random(array_length(RANDOM))];
	}
}

Anim_SetPause(id, "_eye_x", false);
Anim_SetPause(id, "_eye_y", false);
	
Anim_SetPause(id, "_eye_black_x", false);
Anim_SetPause(id, "_eye_black_y", false);

if (!_anim_paperplane_executed_once) {
	Object_Shake(10, "_body_y", id, 0, true);
	Object_Shake(10, "_eye_black_y", id, 0, true);
	Object_Shake(10, "_eye_y", id, 0, true);
}
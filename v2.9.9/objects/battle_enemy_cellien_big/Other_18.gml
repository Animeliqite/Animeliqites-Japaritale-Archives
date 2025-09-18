///@desc Turn Preparation Start

//Prepare the attack
if(!_anim_paperplane_executed_once) {
	var TURN=battle_turn;
	switch(_battle_lastturn){
		case battle_turn_pirannah_variation_0:
			TURN=battle_turn_pirannah_variation_1;
			break;
		case battle_turn_pirannah_variation_1:
			TURN=battle_turn_cellien_shoot;
			break;
		case battle_turn_cellien_shoot:
			TURN=battle_turn_cellien_thump;
			break;
		case battle_turn_cellien_thump:
			TURN=battle_turn_pirannah_variation_0;
			break;
		
	}
	instance_create_depth(0,0,0,TURN);
	_battle_lastturn=TURN;
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
	if (_has_planned) && (!_anim_paperplane_executed_once) {
		if (!_has_searched){
			if (_paperplane_not_used>0){
				battle._menu_dialog=Lang_GetString("monster.cellien_big.flavor_text.act_expand");
			}
			_paperplane_not_used++;
		}
		else {
			if (!_has_used_paperplane){
				if (_paperplane_not_thrown==0){
					battle._menu_dialog="{face 2}{face_emotion 2}{voice 4}"+Lang_GetString("monster.cellien_big.flavor_text.serval_inform.0");
				}
				else if (_paperplane_not_thrown==1){
					battle._menu_dialog="{face 2}{face_emotion 4}{voice 4}"+Lang_GetString("monster.cellien_big.flavor_text.serval_inform.1");
				}
				else {
					battle._menu_dialog=Lang_GetString("monster.cellien_big.flavor_text.serval_inform.2");
				}
				_paperplane_not_thrown++;
			}
			else {
				battle._menu_dialog=Lang_GetString("monster.cellien_big.flavor_text.paper_plane");
			}
		}
	}
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
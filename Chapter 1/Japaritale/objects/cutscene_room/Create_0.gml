Cutscene_Begin();
teleportedChar = false;
_merge_amount_0 = 1;
phase = 0;

switch(room){
	case room_caverns:
		C_FadeFader(0, 1, 0, 30, 0, c_white);
		C_Execute(0, variable_instance_set, [char_serval, "sprite_index", spr_char_serval_right_look]);
		C_Execute(0, variable_instance_set, [char_player, "sprite_index", spr_char_kaban_right_lookup]);
		break;
	case room_beginning_void:
		C_Execute(0, variable_instance_set, [camera, "scale_x", 4]);
		C_Execute(0, variable_instance_set, [camera, "scale_y", 4]);
		C_Execute(0, variable_instance_set, [camera, "offset_amount_y", 1]);
		C_Execute(0, variable_instance_set, [char_player, "sprite_index", spr_char_kaban_lie]);
		C_Execute(0, variable_instance_set, [char_player, "_draw_hat", false]);
		char_player.sprite_index = spr_char_kaban_lie;
		break;
	case room_savannah_0:
		if (Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.SCENE_001, false) == false) {
			C_Execute(0, variable_instance_set, [camera, "target", noone]);
			C_Execute(0, variable_instance_set, [char_player, "sprite_index", spr_char_kaban_sleep]);
			C_Execute(0, variable_instance_set, [char_player, "_draw_hat", false]);
			char_player.sprite_index = spr_char_kaban_sleep;
		}
		else {
			BGM_Stop(0);
			BGM_Play(0, bgm_birdnoise);
			Cutscene_End(-1);
		}
		break;
	case room_savannah_1:
		if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_002,false)==false){
			char_player.x = -40;
			char_player.y = 230;
			char_player.collision = false;
			char_player.block_enabled = false;
			instance_deactivate_object(hint_landmark);
			instance_deactivate_object(trigger_warp);
		}
		else {
			teleportedChar = true;
			char_zebra.x = -9999;
			char_zebra.y = -9999;
			char_serval.x = -9999;
			char_serval.y = -9999;
			Cutscene_End(-1);
		}
		break;
	case room_savannah_2:
		if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_003,false)==false){
			char_serval.dir = DIR.UP;
			char_serval.dir_locked = false;
		}
		else {
			instance_destroy(char_forcefield);
			char_serval.x = -9999;
			char_serval.y = -9999;
			Cutscene_End(-1);
		}
		break;
	case room_savannah_3:
		if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_004,false)==false){
			char_save.visible=false;
			char_hippo.visible = false;
			//char_serval.dir = DIR.UP;
			//char_serval.dir_locked = false;
		}
		else {
			teleportedChar = true;
			char_hippo.x = -9999;
			char_hippo.y = -9999;
			Cutscene_End(-1);
		}
		break;
	case room_savannah_4:
		Cutscene_End(-1);
		cutscene._current_order=0;
		global._gmu_cutscene=true;
		char_serval.x=200;
		char_serval.y=170;
		char_serval.sprite_index = spr_char_serval_right;
		char_serval.dir = DIR.RIGHT;
		char_serval.res_idle_sprite[DIR.RIGHT] = spr_char_serval_right;
		char_serval.res_move_sprite[DIR.RIGHT] = spr_char_serval_right;
		char_serval.res_idle_sprite[DIR.LEFT] = spr_char_serval_left;
		char_serval.res_move_sprite[DIR.LEFT] = spr_char_serval_left;
		char_serval.res_idle_sprite[DIR.UP] = spr_char_serval_up;
		char_serval.res_move_sprite[DIR.UP] = spr_char_serval_up;
		char_serval.res_idle_sprite[DIR.DOWN] = spr_char_serval_down;
		char_serval.res_move_sprite[DIR.DOWN] = spr_char_serval_down;
		Cutscene_Begin();
		break;
	case room_savannah_end:
		if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_006,false)==false){
			BGM_Stop(0);
			char_player.x=-30;
			char_player.y=140;
			instance_deactivate_object(trigger_warp);
		}
		else {
			BGM_Play(0,bgm_concern);
			Cutscene_End(-1);
		}
		break;
	case room_jungle_0:
		Cutscene_End(-1);
		break;
	case room_jungle_1:
		Cutscene_End(-1);
		break;
	case room_jungle_2:
		Cutscene_End(-1);
		if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_009,false)==false){
			char_arai_san.dir=DIR.RIGHT;
			char_fennec.dir=DIR.LEFT;
		}
		else {
			char_arai_san.x=-9999;
			char_arai_san.y=-9999;
			char_fennec.x=-9999;
			char_fennec.y=-9999;
			teleportedChar = true;
		}
		break;
	case room_flowey:
		BGM_Stop(0);
		break;
}
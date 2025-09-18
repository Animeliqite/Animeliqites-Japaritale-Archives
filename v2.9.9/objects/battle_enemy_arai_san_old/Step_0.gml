Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.BATTLE_ROOM_RETURN,room_jungle_end);

if(_fight_tries==2){
	_face_expression=5;
	_rand_shake=2;
}
else if(_fight_tries==4) {
	_face_expression=2;
	_rand_shake=4;
}
switch (global.event) {
	case 0:
		if(_fight_tries<3) _face_expression=0;
		break;
	case 1:
		if(_fight_tries<3) _face_expression=1;
		break;
	case 2:
		if(_fight_tries<3) _face_expression=2;
		break;
	case 3:
		if(_fight_tries<3) _face_expression=3;
		break;
	case 4:
		if(_fight_tries<3) _face_expression=4;
		break;
	case 5:
		if(_fight_tries<3) _face_expression=5;
		break;
	case 6:
		if(_fight_tries<3) _face_expression=6;
		break;
	case 7:
		if(_fight_tries<3) _face_expression=7;
		break;
	case 8:
		if(_fight_tries<3) _face_expression=8;
		break;
	case 9:
		if(_fight_tries<3) _face_expression=9;
		break;
	case 100:
		image_alpha=0.5;
		battle_board.left=283;
		battle_board.right=283;
		Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.BATTLE_ROOM_RETURN,room_jungle_end);
		audio_play_sound_on(global._gmu_emitter_sfx,snd_vaporize,0,false);
		Anim_SetSpeed(id,"_body_tail_scale_x",0);
		Anim_SetSpeed(id,"_body_tail_scale_y",0);
		Anim_SetSpeed(id,"_body_head_offset_y",0);
		Anim_SetSpeed(id,"_body_skirt_rotation",0);
		Anim_SetSpeed(id,"_body_arm_rotation",0);
		Battle_SetDialog(Lang_GetString("monster.arai_san.flavor_text.end")+"{pause}{end}");
		Battle_SetNextState(BATTLE_STATE.RESULT);
		Battle_EndTurn();
		Create_Trophy(spr_trophy_arai_san);
		global.event=101;
		break;
}

if(_cutscene_0){
	global.event=-9999;
	C_Execute(0, Battle_CreateBubble, [Lang_GetString("monster.arai_san.battle_flirt.dialog.0")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_flirt.dialog.1")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_flirt.dialog.2")+"{pause}{end}","{effect -1}{voice 9}",100,-150]);
	C_WaitUntilDestroy(0, battle_dialog_enemy);
	C_Execute(1, BGM_SetVolume, [5, 0, 30]);
	C_Execute(1, Battle_CreateBubble, [Lang_GetString("monster.arai_san.battle_flirt.dialog.3")+"{pause}{end}","{effect -1}{voice 9}",100,-150]);
	C_WaitUntilDestroy(1, battle_dialog_enemy);
	C_CreateAnim(2, id, "_fennec_x", 0, 0, _fennec_x, 630, 60, false);
	C_Wait(2, 60);
	C_Execute(3, variable_instance_set, [id, "_face_expression", 4]);
	C_Execute(3, Battle_CreateBubble, [Lang_GetString("monster.arai_san.battle_dialog.fennec.0")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.fennec.1")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.fennec.2")+"{pause}{end}","{effect -1}{voice 8}",100,-150,DIR.RIGHT]);
	C_WaitUntilDestroy(3, battle_dialog_enemy);
	C_CreateAnim(4, id, "_fennec_x", 0, 0, _fennec_x, 720, 60, false);
	C_Wait(4, 60);
	C_Execute(5, variable_instance_set, [id, "_face_expression", 0]);
	C_Execute(5, Battle_CreateBubble, [Lang_GetString("monster.arai_san.battle_dialog.fennec.3")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.fennec.4")+"{pause}{end}","{effect -1}{voice 9}",100,-150,DIR.LEFT]);
	C_WaitUntilDestroy(5, battle_dialog_enemy);
	C_Execute(6, BGM_SetVolume, [5, 1, 30]);
	C_Execute(6, variable_instance_set, [id, "_cutscene_0", false]);
	C_Execute(6, Battle_SetState, [BATTLE_STATE.TURN_PREPARATION]);
	Cutscene_End(6);
}

if(_cutscene_1){
	C_Execute(0,BGM_SetPitch,[5,0,true,60,ANIM_TWEEN.LINEAR,false]);
	C_Wait(0,90);
	C_Execute(1,BGM_Pause,[5]);
	C_Execute(1, variable_instance_set, [battle, "_menu_choice_button", 1]);
	C_Execute(1, variable_instance_set, [id, "_face_expression", 0]);
	C_Execute(1,Battle_CreateBubble,[Lang_GetString("monster.arai_san.battle_dialog.10")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.11")+"{pause}{script `Battle_SetNextState` 0}{script `Battle_SetState` 0}{script `Battle_SetMenu` 9}{script `Battle_EndTurn`}{end}","{effect -1}{voice 9}",100,-150]);
	C_WaitUntilDestroy(1,battle_dialog_enemy);
	if(cutscene._current_order==2){
		if(battle._state==BATTLE_STATE.TURN_PREPARATION){
			cutscene._current_order=3;
		}
	}
	C_Execute(3,BGM_Resume,[5]);
	C_Execute(3,BGM_SetPitch,[5,1,false,60,ANIM_TWEEN.LINEAR,false]);
	C_Wait(3,1);
	C_Execute(4, variable_instance_set, [id, "_face_expression", 0]);
	C_Execute(4, variable_instance_set, [id, "_cutscene_1", false]);
	Cutscene_End(4);
}

if(_cutscene_2){
	C_Execute(0,BGM_SetVolume,[5,0,60]);
	C_Wait(0,90);
	C_Execute(1,Battle_CreateBubble,[Lang_GetString("monster.arai_san.battle_dialog.give_up.0")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.give_up.1")+"{pause}{clear}"+
									Lang_GetString("monster.arai_san.battle_dialog.give_up.2")+"{pause}{end}","{effect -1}{voice 9}",100,-150]);
	C_WaitUntilDestroy(1,battle_dialog_enemy);
	C_Execute(2, variable_global_set, ["event", 100]);
	C_Execute(2, Flag_Set, [FLAG_TYPE.TEMP,FLAG_TEMP.BATTLE_ROOM_RETURN,room_jungle_end]);
	C_Execute(2, Flag_Set, [FLAG_TYPE.STATIC, FLAG_STATIC.HESITATION, true]);
	C_Execute(2, variable_instance_set, [id, "_cutscene_2", false]);
	Cutscene_End(2);
}

if(global.event!=100&&global.event!=101){
	Anim_SetSpeed(id,"_body_tail_scale_x",min(1+gamesPlayed,4));
	Anim_SetSpeed(id,"_body_tail_scale_y",min(1+gamesPlayed,4));
}
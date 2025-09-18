randomize();

Anim_SetSpeed(id, "x", random(_anim_speed));
Anim_SetSpeed(id, "y", random(_anim_speed));

Anim_SetSpeed(id, "_eye_black_x", random(_anim_speed));
Anim_SetSpeed(id, "_eye_black_y", random(_anim_speed));

Anim_SetSpeed(id, "_eye_x", random(_anim_speed));
Anim_SetSpeed(id, "_eye_y", random(_anim_speed));

Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,room_savannah_6);
Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.BATTLE_ROOM_RETURN,room_savannah_end);

if(_cutscene_serval_inform){
	C_Execute(0,Battle_SetState,[BATTLE_STATE.CUTSCENE]);
	C_Execute(0,Battle_SetNextState,[BATTLE_STATE.CUTSCENE]);
	C_Execute(0,Battle_SetTurnInfo,[BATTLE_TURN.BOARD_UP, BATTLE_BOARD.UP]);
	C_Execute(0,Battle_SetTurnInfo,[BATTLE_TURN.BOARD_DOWN, BATTLE_BOARD.DOWN]);
	C_Execute(0,Battle_SetTurnInfo,[BATTLE_TURN.BOARD_LEFT, BATTLE_BOARD.LEFT]);
	C_Execute(0,Battle_SetTurnInfo,[BATTLE_TURN.BOARD_RIGHT, BATTLE_BOARD.RIGHT]);
	C_Wait(0,1);
	C_Execute(1,Battle_SetDialog,["{face 2}{face_emotion 3}{voice 4}"+Lang_GetString("monster.cellien_big.flavor_text.serval_inform0.0")+"{pause}{clear}"+
								"{face 2}{face_emotion 4}{voice 4}"+Lang_GetString("monster.cellien_big.flavor_text.serval_inform0.1")+"{pause}{clear}"+
								"{face 2}{face_emotion 6}{voice 4}"+Lang_GetString("monster.cellien_big.flavor_text.serval_inform0.2")+"{pause}{end}"]);
	C_Wait(1,1);
	C_WaitUntilDestroy(2,battle._dialog[0]);
	C_Execute(3,Battle_SetState,[BATTLE_STATE.MENU]);
	C_Execute(3,variable_instance_set,[id,"_cutscene_serval_inform",false]);
	Cutscene_End(3);
}

if(_draw_paperplane&&!_anim_paperplane_executed_once){
	Anim_Create(id,"_paperplane_x", 0, 0,-250,720,160,0,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_eye_black_scale_x", 0, 0,1,0,40,100,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_eye_scale_x", 0, 0,1,0,40,100,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_core_scale_x", 0, 0,0,1,40,120,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_eye_black_x_add_speed", 0, 0,4,86,150,0,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_eye_x_add_speed", 0, 0,32,86,150,0,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_paperplane_dir",0,0,1,-1,1,180,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_paperplane_xscale",0,0,1,1,1,180,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_paperplane_yscale",0,0,1,1,1,180,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_core_part_show",0,0,1,1,1,140,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_paperplane_x", 0, 0,720,-250,160,180,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_core_x", 0, 0,0-sprite_width/2,0,40,120,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_paperplane_depth", 0, 0,_paperplane_depth,1,1,180,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(id,"_paperplane_y", ANIM_TWEEN.SINE, ANIM_EASE.IN_OUT,battle_board.y-(battle_board.up*1.5),-40,120,0,-1,-1,ANIM_MODE.ONESHOT,true);
	_paperplane=instance_create_depth(_paperplane_x,_paperplane_y,depth-1,battle_bullet_paperplane);
	_anim_paperplane_executed_once = true;
}

if(_instructed==false){
	battle._menu_fight_enabled=false;
}
else {
	battle._menu_fight_enabled=true;
}

if(_instructed==1){
	Player_SetName("SERVAL");
	battle._party_turn="serval";
	battle_button_fight.sprite_index=Lang_GetSprite("battle.button.fight.serval",spr_default);
	var map=global._encounter;
}
if(_instructed==2&&!_instructed_executed_once){
	battle._party_turn="serval";
	battle_soul_pink.visible=true;
	audio_play_sound_on(global._gmu_emitter_sfx,snd_save,0,false);
	battle._menu_dialog="{face 2}{face_emotion 2}{voice 4}"+Lang_GetString("monster.cellien_big.flavor_text.serval");
	Flag_Set(FLAG_TYPE.STATIC,FLAG_STATIC.BATTLE_MENU_FIGHT_OBJ,object_get_name(battle_menu_fight_paw));
	Battle_SetEnemyActionNumber(_enemy_slot,1);
	_instructed_executed_once=true;
}

if(_draw_lines&&_lines_image_index_old!=_lines_image_index){
	audio_play_sound_on(global._gmu_emitter_sfx,snd_glass_break,0,false);
	Camera_Shake(2,2);
	_lines_image_index_old=_lines_image_index;
}

if(_vaporize&&!_vaporize_executed_once){
	Create_Trophy(spr_trophy_cellien_big);
	audio_play_sound_on(global._gmu_emitter_sfx,snd_vaporize,0,false);
	Anim_Create(id,"image_alpha",0,0,1,0,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	if(alarm[0]<30) alarm[0]=30;
	repeat(5){
		with(instance_create_depth(x,y-(sprite_width/2),-999,gameover_shard)){
			image_blend=c_blue;
			image_xscale=0.5;
			image_yscale=0.5;
			gravity=1;
		}
	}
	
	battle._menu_dialog="";
	battle._menu_can_move=false;
	battle_soul_pink.visible=false;
	Battle_SetState(BATTLE_STATE.BOARD_RESETTING);
	Battle_SetTurnInfo(BATTLE_TURN.BOARD_SIZE_MODE,BATTLE_TURN_BOARD_TRANSFORM_MODE.DURATION);
	Battle_SetTurnInfo(BATTLE_TURN.BOARD_MOVE_MODE,BATTLE_TURN_BOARD_TRANSFORM_MODE.DURATION);
	_vaporize_executed_once=true;
}
event_inherited();

if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_006,false)==false){
	C_FadeFader(0,1,0,30,0,c_black);
	C_Wait(0,60);
	C_MoveChar(1,char_serval,110,140,false,90);
	C_MoveChar(1,char_player,200,140,false,90);
	C_Wait(1,90);
	C_Execute(2,variable_instance_set,[char_player,"dir",DIR.LEFT]);
	C_Execute(2,Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.post_battle.0"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
	C_Execute(2,Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.post_battle.1"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
	C_Execute(2,Dialog_Start, [true]);
	C_WaitUntilDestroy(2,ui_dialog);
	C_Execute(3,variable_instance_set,[char_serval,"dir",DIR.UP]);
	C_Wait(3,60);
	C_Execute(4,BGM_Play,[0,bgm_concern,true]);
	C_Execute(4,BGM_SetPitch,[0,0.9]);
	C_Execute(4,BGM_SetVolume,[0,0]);
	C_Execute(4,BGM_SetVolume,[0,1,30]);
	C_Execute(4,variable_instance_set,[char_serval,"dir",DIR.RIGHT]);
	C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.2"), "{char_link 2}{voice 4}{face 2}{face_emotion 9}"]);
	C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.3"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
	C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.4"), "{char_link 2}{voice 4}{face 2}{face_emotion 3}"]);
	C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.5"), "{char_link 2}{voice 4}{face 2}{face_emotion 9}"]);
	C_Execute(4,Dialog_Start,[true]);
	C_WaitUntilDestroy(4,ui_dialog);
	C_Wait(5,30);
	C_MoveChar(6,char_serval,char_player.x-15,char_serval.y+4,false,60);
	C_Execute(6,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.6"), "{voice 4}{face 2}{face_emotion 0}"]);
	C_Execute(6,Dialog_Start, [true]);
	C_WaitUntilDestroy(6,ui_dialog);
	C_Wait(7,60);
	C_Execute(8,variable_instance_set,[char_serval,"sprite_index",spr_char_serval_right_hug]);
	C_Wait(8,60);
	C_Execute(9,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.7"), "{voice 4}{face 2}{face_emotion 0}"]);
	C_Execute(9,Dialog_Start, [true]);
	C_WaitUntilDestroy(9,ui_dialog);
	C_Wait(10,30);
	C_Execute(11,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.8"), "{voice 7}{face 2}{face_emotion 6}"]);
	C_Execute(11,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.9"), "{voice 7}{face 2}{face_emotion 3}"]);
	C_Execute(11,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.10"), "{voice 7}{face 2}{face_emotion 0}"]);
	C_Execute(11,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.11"), "{voice 7}{face 2}{face_emotion 3}"]);
	C_Execute(11,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.12"), "{voice 7}{face 2}{face_emotion 0}"]);
	C_Execute(11,Dialog_Start, [true]);
	C_WaitUntilDestroy(11,ui_dialog);
	C_Execute(12, variable_instance_set, [char_serval, "sprite_index", spr_char_serval_right]);
	C_Wait(12,30);
	C_MoveChar(13,char_serval,80,140,false,90,false,DIR.RIGHT);
	C_Wait(13,90);
	C_Execute(14,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.13"), "{voice 4}{face 2}{face_emotion 0}"]);
	C_Execute(14,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.14"), "{voice 4}{face 2}{face_emotion 8}"]);
	C_Execute(14,Dialog_Start, [true]);
	C_WaitUntilDestroy(14,ui_dialog);
	C_Wait(15,30);
	C_Execute(16,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.15"), "{voice 4}{face 2}{face_emotion 4}"]);
	C_Execute(16,Dialog_Start, [true]);
	C_WaitUntilDestroy(16,ui_dialog);
	C_Execute(17,variable_instance_set,[char_serval,"dir",DIR.UP]);
	C_Wait(17,30);
	C_Execute(18,variable_instance_set,[char_serval,"dir",DIR.RIGHT]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.16"), "{voice 4}{face 2}{face_emotion 0}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.savannah.post_battle.17"), "{voice 4}{face 2}{face_emotion 2}"]);
	C_Execute(18,Dialog_Start, [true]);
	C_WaitUntilDestroy(18,ui_dialog);
	C_MoveChar(19,char_serval,60,140,false,30,false,DIR.RIGHT);
	C_Wait(19,60);
	C_Execute(20, variable_instance_set, [char_serval, "sprite_index", spr_char_serval_left]);
	C_Execute(20,variable_instance_set,[char_serval,"dir",DIR.LEFT]);
	C_MoveChar(20,char_serval,-80,140,false,90);
	C_Wait(20,60);
	C_Execute(21,instance_activate_object,[trigger_warp]);
	C_Execute(21,Flag_Set,[FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_006,true]);
	Cutscene_End(21);
}
else {
	if(_phase==0){
		if(char_player.x>680){
			Cutscene_Begin();
			_phase=1;
		}
	}
	else if(_phase==1){
		C_MoveChar(0,char_player,room_width-40,char_player.y,false,150);
		C_FadeFader(0,0,1,150,0,c_white);
		C_Execute(0,BGM_SetVolume,[0,0,150]);
		C_Execute(0,BGM_Play,[1,bgm_cymbal,false]);
		C_Execute(0,BGM_SetVolume,[1,0]);
		C_Execute(0,BGM_SetVolume,[1,1,150]);
		C_Wait(0,150);
		C_Execute(1,BGM_Stop,[0]);
		C_Execute(1,BGM_Stop,[1]);
		C_Execute(1,room_goto,[room_credits_chapter1]);
		C_Execute(1, variable_global_set, ["credits_room_target", room_jungle_0]);
		C_FadeFader(1,1,0,1,0,c_black);
		Cutscene_End(1);
	}
}
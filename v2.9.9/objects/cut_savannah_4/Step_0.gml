event_inherited();

if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_003,false)==false){
	if (_phase == 0) {
		if (char_player.x > 500) {
			Cutscene_Begin();
			_phase = 1;
		}
		else Cutscene_End(-1);
	}
	else if (_phase == 1) {
		C_MoveChar(0, char_player, char_serval.x - 25, char_serval.y, false, 30);
		C_Wait(0, 60);
		C_Execute(1, variable_instance_set, [char_serval, "dir", DIR.LEFT]);
		C_Wait(1, 30);
		C_Execute(2, variable_instance_set, [char_serval, "dir", DIR.UP]);
		C_Wait(2, 30);
		C_Execute(3, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.mountain.0"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
		C_Execute(3, Dialog_Start, [false]);
		C_WaitUntilDestroy(3, ui_dialog);
		C_Execute(4, variable_instance_set, [char_player, "dir", DIR.UP]);
		C_Wait(4, 30);
		C_Execute(5, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.mountain.1"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
		C_Execute(5, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.mountain.2"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
		C_Execute(5, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.mountain.3"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
		C_Execute(5, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.mountain.4"), "{char_link 2}{voice 4}{face 2}{face_emotion 4}"]);
		C_Execute(5, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.mountain.5"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
		C_Execute(5, Dialog_Start, [false]);
		C_WaitUntilDestroy(5, ui_dialog);
		C_Execute(6, variable_instance_set, [char_player, "dir", DIR.RIGHT]);
		C_Wait(6, 30);
		C_Execute(7, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.mountain.6"), "{char_link 2}{voice 4}{face 2}{face_emotion 3}"]);
		C_Execute(7, Dialog_Start, [false]);
		C_WaitUntilDestroy(7, ui_dialog);
		C_Execute(8, variable_instance_set, [char_serval, "dir_locked", true]);
		C_Execute(8, Flag_Set, [FLAG_TYPE.STATIC, FLAG_STATIC.SCENE_003, true]);
		Cutscene_End(8);
	}
}
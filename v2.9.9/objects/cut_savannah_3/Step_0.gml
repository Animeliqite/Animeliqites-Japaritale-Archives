event_inherited();

if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_003_2,false)==false){
	if (_phase == 0) {
		char_serval.dir = DIR.RIGHT;
		Cutscene_End(-1);
		if (char_player.x > 60) {
			Cutscene_Begin();
			_phase = 1;
		}
	}
	else if (_phase == 1) {
		C_MoveChar(0, char_player, char_serval.x - 80, char_serval.y, false, 30);
		C_Execute(0, method_call, [camera.moveToObject, [char_serval, 15]]);
		C_Execute(0,variable_instance_set,[camera,"target",noone]);
		C_Wait(0, 15);
		C_Execute(1, instance_create_depth, [char_serval.x, char_serval.y - char_serval.sprite_height - 5, 0, exclamation]);
		C_Execute(1,variable_instance_set,[char_serval,"dir",DIR.LEFT]);
		C_Wait(1, 30);
		C_Execute(2, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.miniboss.0"), "{voice 4}{face 2}{face_emotion 6}"]);
		C_Execute(2, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.miniboss.1"), "{char_dir 2 180}{voice 4}{face 2}{face_emotion 3}"]);
		C_Execute(2, Dialog_Start, []);
		C_WaitUntilDestroy(2,ui_dialog);
		C_Execute(3,variable_instance_set,[char_player,"dir",DIR.LEFT]);
		C_Wait(3, 30);
		C_Execute(4,variable_instance_set,[char_player,"dir",DIR.RIGHT]);
		C_Wait(4, 15);
		C_MoveChar(5, char_player, 40, 0, true, 20);
		C_Wait(5, 30);
		C_Execute(6, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.miniboss.2"), "{voice 4}{face 2}{face_emotion 1}"]);
		C_Execute(6, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.miniboss.3"), "{char_dir 2 0}{voice 4}{face 2}{face_emotion 10}"]);
		C_Execute(6, Dialog_Start, []);
		C_WaitUntilDestroy(6,ui_dialog);
	}
}
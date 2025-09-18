event_inherited();

if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_008,false)==false){
	if(_phase==0){
		if(char_player.x>300){
			Cutscene_Begin();
			_phase=1;
		}
		else Cutscene_End(-1);
	}
	else if (_phase==1) {
		C_Execute(0,Dialog_Add_Ext,[Lang_GetString("cutscene.arai_san.0"), "{font 4}{voice 9}{face 4}{face_emotion 1}"]);
		C_Execute(0,Dialog_Start, [true]);
		C_WaitUntilDestroy(0,ui_dialog);
		C_Execute(1,variable_instance_set,[char_player,"dir",DIR.LEFT]);
		C_Execute(1,instance_create_depth,[120,240,0,char_arai_san]);
		C_Wait(1,1);
		C_MoveChar(2,char_arai_san,190,char_player.y,false,30);
		C_Wait(2,30);
		C_MoveChar(3,char_arai_san,char_player.x-60,char_player.y,false,30);
		C_Wait(3,60);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.arai_san.1"), "{font 4}{voice 9}{face 4}{face_emotion 6}"]);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.arai_san.2"), "{font 4}{voice 9}{face 4}{face_emotion 6}"]);
		C_Execute(4,Dialog_Start, [true]);
		C_WaitUntilDestroy(4,ui_dialog);
		C_MoveChar(5,char_arai_san,190,char_player.y,false,30);
		C_Wait(5,30);
		C_MoveChar(6,char_arai_san,120,240,false,30);
		C_Wait(6,60);
		C_MoveChar(7,char_player,420,char_player.y,false,60);
		C_Wait(7,60);
		C_MoveChar(8,char_player,char_player.x,260,false,30);
		C_Wait(8,30);
		C_Execute(9,variable_instance_set,[char_player,"dir",DIR.UP]);
		C_Wait(9,15);
		C_MoveChar(10,char_arai_san,220,190,false,1);
		C_Wait(10,1);
		C_MoveChar(11,char_arai_san,330,190,false,30);
		C_Wait(11,30);
		C_Execute(12,variable_instance_set,[char_arai_san,"dir",DIR.DOWN]);
		C_Wait(12,5);
		C_Execute(13,variable_instance_set,[char_arai_san,"dir",DIR.UP]);
		C_Wait(13,5);
		C_Execute(14,variable_instance_set,[char_arai_san,"dir",DIR.RIGHT]);
		C_Wait(14,20);
		C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.arai_san.3"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.arai_san.4"), "{font 4}{voice 9}{face 4}{face_emotion 1}"]);
		C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.arai_san.5"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.arai_san.6"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(15,Dialog_Start, [true]);
		C_WaitUntilDestroy(15,ui_dialog);
		C_MoveChar(16,char_arai_san,220,190,false,30);
		C_Wait(16,60);
		C_Execute(17,instance_destroy,[char_arai_san]);
		C_Execute(17,Flag_Set,[FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_008,true]);
		Cutscene_End(17);
	}
}
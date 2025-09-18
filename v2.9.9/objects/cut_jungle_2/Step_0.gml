event_inherited();

if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_007_0,false)==false){
	if(_phase==0){
		if(trigger_puzzle_end._triggered){
			if(char_player.x>400){
				_phase=1;
				Cutscene_Begin();
			}
			else Cutscene_End(-1);
		}
		else Cutscene_End(-1);
	}
	if(_phase==1){
		C_MoveChar(0,char_arai_san,char_player.x+40,char_player.y,false,30);
		C_Wait(0,60);
		C_Execute(1,Dialog_Add_Ext,[Lang_GetString("cutscene.arai_san.puzzle.0"), "{font 4}{voice 9}{face 4}{face_emotion 6}"]);
		C_Execute(1,Dialog_Add_Ext,[Lang_GetString("cutscene.arai_san.puzzle.1"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(1,Dialog_Start, [true]);
		C_WaitUntilDestroy(1,ui_dialog);
		C_MoveChar(2,char_arai_san,char_player.x+80,char_player.y,false,30,false,DIR.LEFT);
		C_Wait(2,60);
		C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.arai_san.puzzle.2"), "{font 4}{voice 9}{face 4}{face_emotion 6}"]);
		C_Execute(3,Dialog_Start, [true]);
		C_WaitUntilDestroy(3,ui_dialog);
		C_MoveChar(4,char_arai_san,char_player.x+240,char_player.y,false,30,false);
		C_Wait(4,60);
		C_Execute(5,instance_destroy,[char_arai_san]);
		C_Execute(5,Flag_Set,[FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_007_0,true]);
		Cutscene_End(5);
	}
}
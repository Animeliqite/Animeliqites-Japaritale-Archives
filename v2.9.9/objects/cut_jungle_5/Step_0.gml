event_inherited();

if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_011,false)==false){
	if(_phase==0){
		if(_obj_to_check_in==room_jungle_4){
			if(_obj_check[0].interacted){
				instance_destroy(ui_dialog);
				Dialog_Clear();
				Cutscene_Begin();
				_phase=1;
			}
			else{
				if(char_player.x>420){
					Cutscene_Begin();
					_phase=2;
				}
			}
		}
	}else if(_phase==1){
		C_Wait(0,1);
		C_Execute(1,variable_instance_set,[char_arai_san,"dir",DIR.DOWN]);
		C_Execute(1,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.0"), ""]);
		C_Execute(1,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.1"), ""]);
		C_Execute(1,Dialog_Start, [true]);
		C_WaitUntilDestroy(1, ui_dialog);
		C_Execute(2, BGM_SetVolume, [0, 0, 15]);
		C_CreateAnim(2,char_arai_san,"y",0,0,char_arai_san.y,180,60,false);
		C_Wait(2,90);
		C_Execute(3,BGM_Play,[0,bgm_arai_san]);
		C_Execute(3, BGM_SetVolume, [0, 1]);
		C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.2"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.3"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(3,Dialog_Start, [true]);
		C_WaitUntilDestroy(3, ui_dialog);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.4"), "{skippable false}{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(4,Dialog_Start, [true,false]);
		C_Execute(4, BGM_SetVolume, [0, 0, 90]);
		C_MoveChar(4,char_player,700,char_player.y,false,90);
		C_Wait(4,90);
		C_MoveChar(5,char_arai_san,camera.x-40,char_arai_san.y-40,false,1);
		C_Execute(5,variable_instance_set,[char_jungle_trap_2_mask,"hide",false]);
		C_Execute(5,instance_destroy,[ui_dialog]);
		C_Execute(5,instance_destroy,[text_typer]);
		C_PlaySfx(5,snd_flee);
		C_Wait(5,1);
		C_Execute(6, BGM_SetVolume, [0, 1]);
		C_MoveChar(6,char_arai_san,720,char_arai_san.y,false,30);
		C_CreateAnim(6,char_arai_san,"x",0,0,720,60,30,true,30);
		C_CreateAnim(6,char_arai_san,"y",0,0,char_arai_san.y,char_player.y,30,false,30);
		C_CreateAnim(6,char_arai_san,"image_index",0,0,0,24,30,true,30);
		C_CreateAnim(6,char_arai_san,"dir",0,0,char_arai_san.dir,DIR.LEFT,1,true,60);
		C_Execute(6,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.5"), "{font 4}{voice 9}{face 4}{face_emotion 1}{effect 0}{scale 3}"]);
		C_Execute(6,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.6"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(6,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.7"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(6,Dialog_Start, [true]);
		C_WaitUntilDestroy(6,ui_dialog);
		C_Execute(7,instance_create_depth,[camera.x-40,char_player.y,0,char_fennec]);
		C_Wait(7,1);
		if(instance_exists(char_fennec)) C_MoveChar(8,char_fennec,char_player.x-120,char_fennec.y,false,30);
		C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.8")+"{end}", "{skippable false}{font 3}{voice 8}{face 3}{face_emotion 0}"]);
		C_Execute(8,Dialog_Start, [true]);
		C_WaitUntilDestroy(8,ui_dialog);
		C_Execute(9,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.9"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_CreateAnim(9,char_arai_san,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_arai_san.y,-5,4,true,0,ANIM_MODE.PINGPONG);
		C_Execute(9,Dialog_Start, [true]);
		C_WaitUntilDestroy(9,ui_dialog);
		C_Execute(10,Anim_Destroy,[char_arai_san]);
		C_Execute(10,BGM_Stop,[0]);
		C_PlaySfx(10,snd_break_1);
		C_MoveChar(10,char_arai_san,40,0,true,30,false,DIR.LEFT);
		C_Wait(10,30);
		C_MoveChar(11,char_arai_san,char_player.x,char_player.y,false,15);
		C_Wait(11,14);
		C_Execute(12,Encounter_Start,[6,true,false]);
		C_Wait(12,1);
		C_Execute(13,Flag_Set,[FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_011,true]);
		Cutscene_End(13);
	}else if(_phase==2){
		C_Execute(0,BGM_Play,[0,bgm_arai_san]);
		C_Execute(0,BGM_SetVolume,[0,0]);
		C_Execute(0,BGM_SetVolume,[0,1,30]);
		C_Execute(0,Cutscene_ChangeOrder,[3]);
		C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.fail.0"), "{font 4}{voice 9}"]);
		C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.fail.1"), "{font 4}{voice 9}"]);
		C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.fail.2"), "{font 4}{voice 9}"]);
		C_Execute(3,Dialog_Start, [true]);
		C_WaitUntilDestroy(3, ui_dialog);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.fail.3"), "{skippable false}{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(4,Dialog_Start, [true,false]);
		C_Execute(4, BGM_SetVolume, [0, 0, 90]);
		C_MoveChar(4,char_player,700,char_player.y,false,90);
		C_Wait(4,90);
		C_MoveChar(5,char_arai_san,camera.x-40,char_arai_san.y-40,false,1);
		C_Execute(5,variable_instance_set,[char_jungle_trap_2_mask,"hide",false]);
		C_Execute(5,instance_destroy,[ui_dialog]);
		C_Execute(5,instance_destroy,[text_typer]);
		C_PlaySfx(5,snd_flee);
		C_Wait(5,1);
		C_Execute(6, BGM_SetVolume, [0, 1]);
		C_MoveChar(6,char_arai_san,720,char_arai_san.y,false,30);
		C_CreateAnim(6,char_arai_san,"x",0,0,720,60,30,true,30);
		C_CreateAnim(6,char_arai_san,"y",0,0,char_arai_san.y,char_player.y,30,false,30);
		C_CreateAnim(6,char_arai_san,"image_index",0,0,0,24,30,true,30);
		C_CreateAnim(6,char_arai_san,"dir",0,0,char_arai_san.dir,DIR.LEFT,1,true,60);
		C_Execute(6,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.5"), "{font 4}{voice 9}{face 4}{face_emotion 1}{effect 0}{scale 3}"]);
		C_Execute(6,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.6"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(6,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.7"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(6,Dialog_Start, [true]);
		C_WaitUntilDestroy(6,ui_dialog);
		C_Execute(7,instance_create_depth,[camera.x-40,char_player.y,0,char_fennec]);
		C_Wait(7,1);
		if(instance_exists(char_fennec)) C_MoveChar(8,char_fennec,char_player.x-120,char_fennec.y,false,30);
		C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.8")+"{end}", "{skippable false}{font 3}{voice 8}{face 3}{face_emotion 0}"]);
		C_Execute(8,Dialog_Start, [true]);
		C_WaitUntilDestroy(8,ui_dialog);
		C_Execute(9,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.pre_battle.9"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_CreateAnim(9,char_arai_san,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_arai_san.y,-5,4,true,0,ANIM_MODE.PINGPONG);
		C_Execute(9,Dialog_Start, [true]);
		C_WaitUntilDestroy(9,ui_dialog);
		C_Execute(10,Anim_Destroy,[char_arai_san]);
		C_Execute(10,BGM_Stop,[0]);
		C_PlaySfx(10,snd_break_1);
		C_MoveChar(10,char_arai_san,40,0,true,30,false,DIR.LEFT);
		C_Wait(10,30);
		C_MoveChar(11,char_arai_san,char_player.x,char_player.y,false,15);
		C_Wait(11,14);
		C_Execute(12,Encounter_Start,[6,true,false]);
		C_Wait(12,1);
		C_Execute(13,Flag_Set,[FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_011,true]);
		Cutscene_End(13);
	}
}
else {
	if(_teleported_char){
		if(instance_exists(char_fennec))
			instance_destroy(char_fennec);
		instance_destroy(char_arai_san);
		_teleported_char=false;
	}
}
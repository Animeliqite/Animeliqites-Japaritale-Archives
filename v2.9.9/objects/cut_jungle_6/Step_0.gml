event_inherited();

if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_012,false)==false){
	C_MoveChar(0,char_arai_san,260,180,false,30);
	C_MoveChar(0,char_player,200,180,false,90);
	C_MoveChar(0,char_fennec,160,180,false,90);
	C_Wait(0,30);
	C_Execute(1,BGM_SetVolume,[0,0,60]);
	C_Execute(1,variable_instance_set,[char_arai_san,"dir",DIR.LEFT]);
	C_Wait(1,90);
	C_Execute(2,BGM_Play,[0,bgm_arai_san]);
	C_Execute(1,BGM_SetVolume,[0,1,30]);
	C_Execute(2,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.0"), "{font 4}{voice 9}{face 4}{face_emotion 6}"]);
	C_Execute(2,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.1"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
	C_Execute(2,Dialog_Start,[true]);
	C_WaitUntilDestroy(2,ui_dialog);
	if(instance_exists(char_arai_san))
		C_CreateAnim(3,char_arai_san,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_arai_san.y,-5,4,true,0,ANIM_MODE.PINGPONG);
	C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.2"), "{font 4}{voice 9}{face 4}{face_emotion 6}"]);
	C_Execute(3,Dialog_Start,[true]);
	C_WaitUntilDestroy(3,ui_dialog);
	C_Execute(4,Anim_Destroy,[char_arai_san]);
	C_Execute(4,variable_instance_set,[char_arai_san,"dir",DIR.UP]);
	C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.3"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
	C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.4"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
	C_Execute(4,Dialog_Start,[true]);
	C_WaitUntilDestroy(4,ui_dialog);
	C_MoveChar(5,char_fennec,char_player.x-20,char_player.y,false,15);
	C_MoveChar(5,char_arai_san,0,40,true,15,false,DIR.UP);
	C_Wait(5,20);
	C_MoveChar(6,char_fennec,-60,0,true,15,false,DIR.RIGHT);
	C_MoveChar(6,char_player,-60,0,true,15,false,DIR.RIGHT);
	C_MoveChar(6,char_arai_san,0,-50,true,5);
	C_Wait(6,5);
	C_PlaySfx(7,snd_explosion);
	C_Execute(7,layer_set_visible,[layer_get_id("Assets_Trap_Open"),true]);
	C_Execute(7,layer_set_visible,[layer_get_id("Assets_Trap"),false]);
	C_Execute(7,layer_set_visible,[layer_get_id("Assets_Trap_Higher"),true]);
	C_Execute(7,variable_instance_set,[camera,"target",noone]);
	C_Execute(7,Camera_Shake,[10,10,0,0,true,true,0.5,0.5]);
	C_MoveChar(7,char_arai_san,0,20,true,30,false,DIR.UP);
	C_Wait(7,60);
	C_Execute(8,variable_instance_set,[char_arai_san,"dir",DIR.LEFT]);
	C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.5"), "{font 4}{voice 9}{face 4}{face_emotion 6}"]);
	C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.6"), "{font 4}{voice 9}{face 4}{face_emotion 6}"]);
	C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.7"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
	C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.8"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
	C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.9"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
	C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.10")]);
	C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.11"), "{font 4}{voice 9}{face 4}{face_emotion 6}"]);
	C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.12"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
	C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.13"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
	C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.14"), "{font 3}{voice 8}{face 3}{face_emotion 0}"]);
	C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.jungle.post_battle.15"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
	C_Execute(8,Dialog_Start,[true]);
	C_WaitUntilDestroy(8,ui_dialog);
	C_MoveChar(9,char_arai_san,250,160,false,15);
	C_Wait(9,15);
	C_MoveChar(10,char_arai_san,250,120,false,30);
	C_Wait(10,30);
	C_MoveChar(11,char_fennec,250,180,false,60);
	C_Wait(11,60);
	C_MoveChar(12,char_fennec,250,120,false,30);
	C_Execute(12,BGM_SetVolume,[0,0,30]);
	C_Wait(12,30);
	C_Execute(13,BGM_Stop,[0]);
	C_Execute(13,Flag_Set,[FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_012,true]);
	Cutscene_End(13);
}
else {
	if(instance_exists(char_save))
		char_save.visible=true;
	if(_teleported_char){
		instance_destroy(char_arai_san);
		instance_destroy(char_fennec);
		_teleported_char=false;
	}
}
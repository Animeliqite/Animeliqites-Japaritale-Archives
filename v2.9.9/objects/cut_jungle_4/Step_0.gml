event_inherited();

if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_010,false)==false){
	if(global.event==1){
		char_fennec.dir=DIR.LEFT;
	}
	if(global.event==2){
		char_fennec.dir=DIR.RIGHT;
	}
	if(global.event==3){
		char_fennec.dir=DIR.UP;
	}
	if(global.event==4){
		char_fennec.dir=DIR.DOWN;
	}
	if(global.event==5){
		char_arai_san.dir=DIR.LEFT;
	}
	if(global.event==6){
		char_arai_san.dir=DIR.RIGHT;
	}
	if(global.event==7){
		char_arai_san.dir=DIR.UP;
	}
	if(global.event==8){
		char_arai_san.dir=DIR.DOWN;
	}
	if(_phase==0){
		if(char_player.x>260){
			Cutscene_Begin();
			_phase=1;
		}
	}
	else if(_phase==1){
		C_Execute(0,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.0"), "{font 3}{voice 8}{face 3}{face_emotion 0}"]);
		C_Execute(0,Dialog_Start, [true]);
		C_WaitUntilDestroy(0, ui_dialog);
		C_Execute(1,variable_instance_set,[camera,"target",noone]);
		C_MoveChar(1,camera,440-(camera.width/camera.scale_x/2),camera.y,false,60);
		C_Wait(1,60);
		C_MoveChar(2,camera,camera.x,150-(camera.height/camera.scale_y/2),false,30);
		C_Wait(2,60);
		C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.1"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.2"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.3"), "{font 3}{voice 8}{face 3}{face_emotion 0}"]);
		C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.4"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.5"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(3,Dialog_Start, [false]);
		C_WaitUntilDestroy(3, ui_dialog);
		C_MoveChar(4,char_arai_san,490,char_arai_san.y,false,15);
		C_Wait(4,7);
		C_Execute(5,variable_instance_set,[char_arai_san,"_create_footprints",true]);
		C_Wait(5,7);
		C_MoveChar(6,char_arai_san,char_arai_san.x,160,false,15);
		C_Wait(6,15);
		C_MoveChar(7,char_arai_san,450,char_arai_san.y,false,15);
		C_Wait(7,15);
		C_MoveChar(8,char_arai_san,char_arai_san.x,130,false,15);
		C_Wait(8,15);
		C_MoveChar(9,char_arai_san,400,char_arai_san.y,false,15);
		C_Wait(9,15);
		C_MoveChar(10,char_arai_san,char_arai_san.x,210,false,15);
		C_Wait(10,15);
		C_MoveChar(11,camera,380-(camera.width/camera.scale_x/2),camera.y,false,15);
		C_MoveChar(11,char_arai_san,340,char_arai_san.y,false,15);
		C_Wait(11,12);
		C_Execute(12,variable_instance_set,[char_arai_san,"_create_footprints",false]);
		C_Wait(12,3);
		C_Execute(13,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.6"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(13,Dialog_Start, [true]);
		C_WaitUntilDestroy(13, ui_dialog);
		C_Execute(14,variable_instance_set,[char_arai_san,"dir",DIR.UP]);
		C_Execute(14,BGM_SetVolume,[0,0,30]);
		C_Wait(14,90);
		C_Execute(15,BGM_Stop,[0]);
		C_Execute(15,BGM_Play,[0,bgm_arai_san]);
		C_Execute(15,BGM_SetVolume,[0,0]);
		C_Execute(15,BGM_SetVolume,[0,1,30]);
		C_CreateAnim(15,char_arai_san,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_arai_san.y,-10,3,true);
		C_CreateAnim(15,char_arai_san,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,char_arai_san.y-10,10,3,true,3);
		C_Execute(15,variable_instance_set,[char_arai_san,"dir",DIR.LEFT]);
		C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.7"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.8")+"{end}", "{event 4}{skippable false}{font 3}{voice 8}{face 3}{face_emotion 0}"]);
		C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.9"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(15,Dialog_Start, [true]);
		C_WaitUntilDestroy(15, ui_dialog);
		C_Wait(16, 10);
		C_MoveChar(17,char_fennec,char_fennec.x,80,false,15,false,DIR.DOWN);
		C_MoveChar(17,char_arai_san,char_arai_san.x,120,false,15);
		C_Wait(17,15);
		C_Execute(18,variable_instance_set,[char_arai_san,"dir",DIR.DOWN]);
		C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.10"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.11"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.12"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(18,Dialog_Start, [true]);
		C_WaitUntilDestroy(18, ui_dialog);
		C_MoveChar(19,camera,char_player.x - (camera.width / camera.scale_x / 2), room_height - (camera.height / camera.scale_y), false, 30);
		C_Wait(19,30);
		C_Execute(20,variable_instance_set,[camera,"target",char_player]);
		C_Execute(20,variable_instance_set,[cut_jungle_4,"_phase",2]);
		Cutscene_End(20);
	}
	else if(_phase==2){
		char_arai_san._look_at_player=true;
		char_fennec._look_at_player=true;
		if(char_player.x<260){
			if(!instance_exists(ui_dialog)){
				Dialog_Add_Ext(Lang_GetString("cutscene.pitfall_trap.escape.0")+"{pause}{clear}"+Lang_GetString("cutscene.pitfall_trap.escape.1"), "{font 4}{voice 9}{face 4}{face_emotion 6}");
				Dialog_Start(true);
			}
			char_player.dir=DIR.RIGHT;
			char_player.x=261;
		}
		else if(char_player.x>530){
			cut_jungle_4._phase=3;
			Cutscene_Begin();
		}
		with(char_player){
			if(place_meeting(x,y,trigger_marker_collision_jungle)){
				cut_jungle_4._phase=2.5;
				Cutscene_Begin();
			}
		}
	}
	else if(_phase==2.5){
		C_Execute(0,variable_instance_set,[char_arai_san,"dir",DIR.RIGHT]);
		C_Execute(0,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.fail.0"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(0,Dialog_Start, [true]);
		C_WaitUntilDestroy(0, ui_dialog);
		C_Execute(1,variable_instance_set,[char_arai_san,"dir",DIR.DOWN]);
		C_Execute(1,BGM_SetVolume,[0,0,30]);
		C_Wait(1,60);
		C_Execute(2,BGM_Stop,[0]);
		C_Execute(2,variable_instance_set,[char_player,"dir",DIR.LEFT]);
		C_Execute(2,variable_instance_set,[char_arai_san,"dir",DIR.RIGHT]);
		C_Execute(2,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.fail.1"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(2,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.fail.2"), "{font 4}{voice 9}{face 4}{face_emotion 1}"]);
		C_Execute(2,Dialog_Start, [true]);
		C_WaitUntilDestroy(2, ui_dialog);
		C_Execute(3,variable_instance_set,[camera,"target",noone]);
		C_MoveChar(3,camera,char_arai_san.x - (camera.width / camera.scale_x / 2), char_arai_san.y - (camera.height / camera.scale_y / 2), false, 15);
		C_Wait(3,15);
		C_Execute(4,variable_instance_set,[camera,"target",char_arai_san]);
		C_Execute(4,variable_instance_set,[cut_jungle_4,"_phase",4]);
		C_Execute(4,variable_instance_set,[cutscene,"_current_order",0]);
	}
	else if(_phase==3){
		C_Execute(0,variable_instance_set,[char_arai_san,"dir",DIR.RIGHT]);
		C_Execute(0,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.13"), "{font 4}{voice 9}{face 4}{face_emotion 6}"]);
		C_Execute(0,Dialog_Start, [true]);
		C_WaitUntilDestroy(0, ui_dialog);
		C_Execute(1,variable_instance_set,[char_arai_san,"dir",DIR.DOWN]);
		C_Wait(1,60);
		C_Execute(2,variable_instance_set,[char_player,"dir",DIR.LEFT]);
		C_Execute(2,variable_instance_set,[char_arai_san,"dir",DIR.RIGHT]);
		C_Execute(2,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.14"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(2,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.15"), "{font 3}{voice 8}{face 3}{face_emotion 0}"]);
		C_Execute(2,Dialog_Start, [true]);
		C_WaitUntilDestroy(2, ui_dialog);
		C_Execute(3,variable_instance_set,[camera,"target",noone]);
		C_MoveChar(3,camera,char_arai_san.x - (camera.width / camera.scale_x / 2), char_arai_san.y - (camera.height / camera.scale_y / 2), false, 15);
		C_Wait(3,15);
		C_Execute(4,variable_instance_set,[camera,"target",char_arai_san]);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.16")+"{end}", "{skippable false}{font 4}{voice 9}{face 4}{face_emotion 1}"]);
		C_Execute(4,Dialog_Start, [true]);
		C_Execute(4,variable_instance_set,[cut_jungle_4,"_phase",4]);
		C_Execute(4,variable_instance_set,[cutscene,"_current_order",0]);
	}
	else if(_phase==4){
		C_Execute(0,variable_instance_set,[camera,"target",noone]);
		C_MoveChar(0,camera,char_arai_san.x - (camera.width / camera.scale_x / 2), char_arai_san.y - (camera.height / camera.scale_y / 2), false, 15);
		C_Wait(0,15);
		C_Execute(1,variable_instance_set,[camera,"target",char_arai_san]);
		C_Execute(1,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.16")+"{end}", "{skippable false}{font 4}{voice 9}{face 4}{face_emotion 1}"]);
		C_Execute(1,Dialog_Start, [true]);
		C_MoveChar(1,char_arai_san,char_player.x-30,char_player.y,false,30);
		C_Wait(1,30);
		C_Execute(2,BGM_Stop,[0]);
		C_Execute(2,instance_destroy,[text_typer]);
		C_Execute(2,instance_destroy,[ui_dialog]);
		C_Execute(2,Camera_Shake,[8,8,0,0,true,true]);
		C_Execute(2,instance_create_depth,[char_arai_san.x,char_arai_san.y,-2000,char_pitfall,{obj : char_arai_san}]);
		C_MoveChar(2,char_arai_san,0,25,true,1,false,DIR.RIGHT);
		C_PlaySfx(2,snd_screenshake);
		C_Wait(2,90);
		C_MoveChar(3,char_fennec,0,280,true,90);
		C_Execute(3,Dialog_Add_Ext,[Lang_GetString("cutscene.pitfall_trap.17"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(3,Dialog_Start, [true]);
		C_WaitUntilDestroy(3, ui_dialog);
		C_Execute(4,variable_instance_set,[camera,"target",noone]);
		C_CreateAnim(4,char_arai_san,"y",0,0,char_arai_san.y,40,60,true,0,ANIM_MODE.ONESHOT);
		C_Execute(4,method_call,[camera.moveToObject, [char_player,30]]);
		C_Wait(4, 60);
		C_Execute(5,Flag_Set,[FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_010,true]);
		C_Execute(5,variable_instance_set,[char_arai_san,"dir_locked",true]);
		C_Execute(5,variable_instance_set,[char_arai_san,"dir_locked",true]);
		C_Execute(5,variable_instance_set,[camera,"target",char_player]);
		C_Execute(5,instance_destroy,[char_fennec]);
		Cutscene_End(5);
	}
}
else{
	if(instance_exists(char_save))
		char_save.visible=true;
	instance_destroy(char_forcefield);
	instance_destroy(trigger_marker_collision_jungle);
	if(_teleported_char){
		instance_destroy(char_arai_san);
		instance_destroy(char_fennec);
	}
}
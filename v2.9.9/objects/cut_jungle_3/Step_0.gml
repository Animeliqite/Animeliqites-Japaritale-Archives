event_inherited();

if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_009,false)==false){
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
		if(char_player.x>320) {
			camera.target=noone;
			Cutscene_Begin();
			_phase=1;
		}
		else Cutscene_End(-1);
	}
	else if(_phase==1){
		C_Execute(0,Dialog_Add_Ext,[Lang_GetString("cutscene.fence_scuffed.0"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(0,Dialog_Start, [true]);
		C_WaitUntilDestroy(0,ui_dialog);
		C_MoveChar(1,camera,(char_player.x + (char_arai_san.x - char_player.x)) - (camera.width / camera.scale_x / 2), camera.y, false, 60);
		C_Wait(1,60);
		C_Execute(2,Dialog_Add_Ext,[Lang_GetString("cutscene.fence_scuffed.1"), "{font 3}{voice 8}{face 3}{face_emotion 0}"]);
		C_Execute(2,Dialog_Add_Ext,[Lang_GetString("cutscene.fence_scuffed.2"), "{font 4}{event 8}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(2,Dialog_Add_Ext,[Lang_GetString("cutscene.fence_scuffed.3"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(2,Dialog_Start, [true]);
		C_WaitUntilDestroy(2,ui_dialog);
		C_Execute(3,BGM_SetVolume,[0,0,30]);
		C_Wait(3,60);
		C_Execute(4,BGM_Stop,[0]);
		C_Execute(4,BGM_Play,[0,bgm_arai_san]);
		C_Execute(4,BGM_SetVolume,[0,0,0]);
		C_Execute(4,BGM_SetVolume,[0,1,30]);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.fence_scuffed.4"), "{font 4}{event 6}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.fence_scuffed.5"), "{font 3}{voice 8}{face 3}{face_emotion 0}"]);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.fence_scuffed.6"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.fence_scuffed.7"), "{font 3}{voice 8}{face 3}{face_emotion 0}"]);
		C_Execute(4,Dialog_Start, [true]);
		C_WaitUntilDestroy(4,ui_dialog);
		C_Execute(5,BGM_Pause,[0]);
		C_Execute(5,variable_global_set,["event",-9999]);
		C_Execute(5,variable_instance_set,[char_arai_san,"dir",DIR.LEFT]);
		C_Wait(5,60);
		C_MoveChar(6,char_arai_san,char_fennec.x - 40, char_arai_san.y, false, 60, false, DIR.LEFT);
		C_Wait(6,120);
		C_Execute(7,BGM_Resume,[0]);
		C_Execute(7,BGM_SetVolume,[0,0,0]);
		C_Execute(7,BGM_SetVolume,[0,1,30]);
		C_Execute(7,Dialog_Add_Ext,[Lang_GetString("cutscene.fence_scuffed.8"), "{font 4}{voice 9}{face 4}{face_emotion 3}"]);
		C_Execute(7,Dialog_Add_Ext,[Lang_GetString("cutscene.fence_scuffed.9"), "{font 4}{voice 9}{face 4}{face_emotion 2}"]);
		C_Execute(7,Dialog_Add_Ext,[Lang_GetString("cutscene.fence_scuffed.10"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(7,Dialog_Add_Ext,[Lang_GetString("cutscene.fence_scuffed.11"), "{font 4}{voice 9}{face 4}{face_emotion 1}"]);
		C_Execute(7,Dialog_Start, [true]);
		C_WaitUntilDestroy(7,ui_dialog);
		C_MoveChar(8,char_arai_san,room_width + 60, char_arai_san.y, false, 30);
		C_MoveChar(8,char_fennec,char_fennec.x, char_fennec.y + 20, false, 15, false, DIR.UP);
		C_Execute(8,BGM_SetVolume,[0,0,60]);
		C_Wait(8,60);
		C_MoveChar(9,camera,char_player.x - (camera.width / camera.scale_x / 2), camera.y, false, 30);
		C_Wait(9,60);
		C_Execute(10,variable_instance_set,[camera,"target",char_player]);
		C_Execute(10,instance_destroy,[char_arai_san]);
		C_Execute(10,Flag_Set,[FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_009,true]);
		C_Execute(10,BGM_Play,[0,bgm_jungle]);
		Cutscene_End(10);
	}
}
else {
	if(_teleported_char==true){
		instance_destroy(char_arai_san);
		instance_destroy(char_fennec);
	}
	if(instance_exists(char_fennec)&&char_fennec.x>-1000&&Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_009_0,false)==false){
		char_fennec._look_at_player=true;
		if(!_can_check){
			if(char_player.x>char_fennec.x){
				_can_check=true;
			}
		}
		else {
			if(point_distance(char_player.x,char_player.y,char_fennec.x,char_fennec.y)>60){
				char_player.dir=(char_player.x<char_fennec.x ? DIR.RIGHT : DIR.LEFT);
				if(char_fennec.cutscene_fence==false)
					Cutscene_Begin();
				char_fennec._look_at_player=false;
				char_fennec.cutscene_fence=true;
				if(!global._gmu_cutscene)
					char_fennec.dir=(char_player.x<char_fennec.x ? DIR.LEFT : DIR.RIGHT);
			}
		}
	}
}
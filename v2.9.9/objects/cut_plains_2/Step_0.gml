event_inherited();

if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_013,false)==false){
	if(_phase==0){
		if(!BGM_IsPlaying(0)&&cutscene._current_order==0)
			C_Execute(0,BGM_Play,[0,bgm_rain]);
		C_MoveChar(0,char_porcupine,140,char_porcupine.y,false,60);
		C_MoveChar(0,char_player,200,char_player.y,false,120);
		C_Execute(0,variable_instance_set,[camera,"target",noone]);
		C_Wait(0,60);
		C_Execute(1,variable_instance_set,[char_porcupine,"dir",DIR.LEFT]);
		C_Wait(1,20);
		C_MoveChar(2,char_porcupine,260,char_porcupine.y,false,30);
		C_Wait(2,10);
		C_Wait(3,30);
		C_MoveChar(4,char_player,char_player.x,180,false,30);
		C_MoveChar(4,char_porcupine,char_porcupine.x,160,false,30);
		C_Wait(4,30);
		C_Execute(5,variable_instance_set,[char_porcupine,"dir",DIR.LEFT]);
		C_Execute(5,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.0"),"{voice 12}{face 5}{face_emotion 4}"]);
		C_Execute(5,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.1"),"{voice 12}{face 5}{face_emotion 4}"]);
		C_Execute(5,Dialog_Start,[true]);
		C_WaitUntilDestroy(5,ui_dialog);
		C_Execute(6,method_call,[camera.moveToObject, [char_player, 30]]);
		C_Wait(6,30);
		C_Execute(7,variable_instance_set,[cut_plains_2,"_phase",1]);
		C_Execute(7,variable_instance_set,[camera,"target",char_player]);
		C_Execute(7,variable_instance_set,[char_player,"dir",DIR.DOWN]);
		Cutscene_End(7);
	}
	else if(_phase==1){
		if(char_player.x<140){
			if(!instance_exists(ui_dialog)){
				char_player.moveable=false;
				char_porcupine.dir=DIR.LEFT;
				char_player.dir=DIR.RIGHT;
				Dialog_Add_Ext("{char_move 9 270 10 true}{char_dir 9 180}"+Lang_GetString("cutscene.plains.porcupine_shrine.try_to_escape.0"),"{voice 12}{face 5}{face_emotion 1}");
				Dialog_Add_Ext(Lang_GetString("cutscene.plains.porcupine_shrine.try_to_escape.1")+"{pause}{event 10}{char_move 9 90 10 true}{char_move 0 0 20 true}{end}","{voice 12}{face 5}{face_emotion 1}");
				Dialog_Start();
			}
			var tries = 0;
			while(char_player.x<140&&tries<1000) {
				char_player.x++;
				tries++;
			}
		}
				
		if(global.event==10){
			if(char_player.move[DIR.RIGHT]==0){
				char_player.moveable=true;
				global.event=-9999;
			}
		}
				
		if(char_player.x>320){
			if(!instance_exists(ui_dialog)){
				char_player.moveable=false;
				char_porcupine.dir=DIR.RIGHT;
				char_player.dir=DIR.LEFT;
				Dialog_Add_Ext("{char_move 9 270 10 true}{char_dir 9 0}"+Lang_GetString("cutscene.plains.porcupine_shrine.try_to_escape.1.0"),"{voice 12}{face 5}{face_emotion 8}");
				Dialog_Add_Ext(Lang_GetString("cutscene.plains.porcupine_shrine.try_to_escape.1.1")+"{pause}{event 20}{char_move 9 90 10 true}{char_move 0 180 20 true}{end}","{voice 12}{face 5}{face_emotion 4}");
				Dialog_Start();
			}
			var tries = 0;
			while(char_player.x>320&&tries<1000) {
				char_player.x--;
				tries++;
			}
		}
				
		if(global.event==20){
			if(char_player.move[DIR.LEFT]==0){
				char_player.moveable=true;
				global.event=-9999;
			}
		}
	}
}
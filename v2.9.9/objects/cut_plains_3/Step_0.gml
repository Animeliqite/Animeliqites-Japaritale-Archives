event_inherited();

if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_013,false)==false){
	if(_phase==0){
		C_Execute(0,variable_instance_set,[char_player,"x",130]);
		C_Execute(0,variable_instance_set,[char_player,"y",350]);
		C_Execute(0,variable_instance_set,[char_porcupine,"x",160]);
		C_Execute(0,variable_instance_set,[char_porcupine,"y",350]);
		C_MoveChar(0,char_porcupine,char_porcupine.x,200,false,120);
		C_MoveChar(0,char_player,char_player.x,200,false,120);
		C_Wait(0,180);
		C_Execute(1,variable_instance_set,[char_porcupine,"dir",DIR.LEFT]);
		C_Execute(1,variable_instance_set,[char_player,"dir",DIR.RIGHT]);
		C_Execute(1,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.2"),"{voice 12}{face 5}{face_emotion 1}"]);
		C_Execute(1,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.3"),"{char_dir 9 0}{voice 12}{face 5}{face_emotion 3}"]);
		C_Execute(1,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.4"),"{voice 12}{face 5}{face_emotion 4}"]);
		C_Execute(1,Dialog_Start,[true]);
		C_WaitUntilDestroy(1,ui_dialog);
		C_Wait(2,30);
		C_MoveChar(3,char_player,140,160,false,30);
		C_Wait(3,30);
		C_PlaySfx(4,snd_item_equip);
		C_Execute(4,instance_destroy,[char_shrine_lighter]);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.take_lighter.0"),""]);
		C_Execute(4,Dialog_Start,[true]);
		C_WaitUntilDestroy(4,ui_dialog);
		C_Execute(5,array_set,[char_player.move,DIR.UP,5]);
		C_Execute(5,array_set,[char_player.move,DIR.RIGHT,32]);
		C_CreateAnim(5,char_player,"dir",0,0,char_player.dir,DIR.RIGHT,1,false,0,ANIM_MODE.ONESHOT);
		C_CreateAnim(5,char_player,"dir",0,0,char_player.dir,DIR.UP,1,false,45,ANIM_MODE.ONESHOT);
		C_Wait(5,90);
		C_Execute(6,variable_instance_set,[char_player,"dir",DIR.UP]);
		C_Execute(6,variable_instance_set,[instance_nearest(char_player.x,char_player.y,char_firepot),"_light",true]);
		C_CreateAnim(6,char_porcupine,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_porcupine.y,-5,2,true,0,ANIM_MODE.ONESHOT);
		C_CreateAnim(6,char_porcupine,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_porcupine.y-5,5,2,true,2,ANIM_MODE.ONESHOT);
		C_Wait(6,15);
		C_Execute(7,variable_instance_set,[char_porcupine,"dir",DIR.LEFT]);
		C_Wait(7,20);
		C_Execute(8,variable_instance_set,[char_porcupine,"dir",DIR.RIGHT]);
		C_Wait(8,30);
		C_Execute(9,variable_instance_set,[char_porcupine,"dir",DIR.UP]);
		C_MoveChar(9,char_porcupine,char_player.x,char_player.y+60,false,30,false,DIR.UP);
		C_Wait(9,30);
		C_CreateAnim(10,part_rainbg,"_alpha",0,0,part_rainbg._alpha,0.9,30,false);
		C_Execute(10,variable_instance_set,[char_player,"dir",DIR.DOWN]);
		C_Execute(10,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.after_lighter.0"),"{voice 12}{face 5}{face_emotion 5}"]);
		C_Execute(10,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.after_lighter.1"),"{voice 12}{face 5}{face_emotion 1}"]);
		C_Execute(10,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.after_lighter.2"),"{voice 12}{face 5}{face_emotion 4}"]);
		C_Execute(10,Dialog_Start,[true]);
		C_WaitUntilDestroy(10,ui_dialog);
		if(cutscene._current_order==11){
			variable_instance_set(char_player,"follower_x",char_porcupine.x);
			variable_instance_set(char_player,"follower_y",char_porcupine.y);
		}
		C_Execute(11,method_call,[char_player.make_caterpillar,[char_follower_porcupine]]);
		C_Execute(11,variable_instance_set,[char_follower_porcupine,"dir",DIR.UP]);
		C_Execute(11,instance_destroy,[char_porcupine]);
		//C_Execute(9,variable_instance_set,[char_porcupine,"x",char_player.x]);
		//C_Execute(9,variable_instance_set,[char_porcupine,"y",char_player.y+60]);
		C_Execute(11,BGM_Play,[0,bgm_shrine_quiet]);
		C_Execute(11,BGM_SetVolume,[0,0]);
		C_Execute(11,BGM_SetVolume,[0,1,30]);
		C_Execute(11,variable_instance_set,[cut_plains_3,"_phase",1]);
		Cutscene_End(11);
	}
	else if(_phase==1){
		if (char_player.x < 200 && !_cut_try_run_away) {
			Cutscene_Begin();
			_cut_try_run_away = true;
		}
		
		// Cutscene for if we try to go back
		if (_cut_try_run_away) {
			C_Execute(0, variable_instance_set, [char_follower_porcupine, "dir", DIR.LEFT]);
			C_Execute(0, variable_instance_set, [char_player, "dir", DIR.RIGHT]);
			
			if (_interaction_tries == 0) {
			    C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.after_lighter.try_to_escape.0.0"), "{voice 12}{face 5}{face_emotion 1}"]);
			    C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.after_lighter.try_to_escape.0.1") + "{pause}{char_move 0 0 10 true}{end}", "{voice 12}{face 5}{face_emotion 2}"]);
			    C_Execute(0, Dialog_Start, [true]);
				C_WaitUntilDestroy(0, ui_dialog);
				
				C_MoveChar(1, char_player, 40, 0, true, 15);
				C_Wait(1, 30);
				
				C_Execute(2, variable_instance_set, [cut_plains_3, "_cut_try_run_away", false]);
				C_Execute(2, variable_instance_set, [cut_plains_3, "_interaction_tries", 1]);
				Cutscene_End(2);
			}
			else if (_interaction_tries == 1) {
			    C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.after_lighter.try_to_escape.1.0"), "{voice 12}{face 5}{face_emotion 1}"]);
			    C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.after_lighter.try_to_escape.1.1") + "{pause}{char_move 0 0 10 true}{end}", "{voice 12}{face 5}{face_emotion 0}"]);
			    C_Execute(0, Dialog_Start, [true]);
				C_WaitUntilDestroy(0, ui_dialog);
				
				C_MoveChar(1, char_player, 40, 0, true, 15);
				C_Wait(1, 30);
				
				C_Execute(2, variable_instance_set, [cut_plains_3, "_cut_try_run_away", false]);
				C_Execute(2, variable_instance_set, [cut_plains_3, "_interaction_tries", 2]);
				Cutscene_End(2);
			}
			else if (_interaction_tries == 2) {
			    C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.after_lighter.try_to_escape.2.0"), "{voice 12}{face 5}{face_emotion 1}"]);
			    C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.after_lighter.try_to_escape.2.1") + "{pause}{char_move 0 0 10 true}{end}", "{voice 12}{face 5}{face_emotion 0}"]);
				C_Execute(0, Dialog_Start, [true]);
				C_WaitUntilDestroy(0, ui_dialog);
				
				C_MoveChar(1, char_player, 40, 0, true, 15);
				C_Wait(1, 30);
				
				C_Execute(2, variable_instance_set, [cut_plains_3, "_cut_try_run_away", false]);
				C_Execute(2, variable_instance_set, [cut_plains_3, "_interaction_tries", 2]);
				Cutscene_End(2);
			}
		}
		
		if(_obj_to_check_in==room_plains_3){
			if (!_cut_lighter) {
				if (_obj_check[0]._lighted_on && _cut_lighter_phase == 0) {
					_cut_lighter = true;
					Cutscene_Begin();
				}
			
				if (_obj_check[1]._lighted_on && _cut_lighter_phase == 1) {
					_cut_lighter = true;
					Cutscene_Begin();
				}
			
				if (_obj_check[2]._lighted_on && _cut_lighter_phase == 2) {
					_cut_lighter = true;
					Cutscene_Begin();
				}
			
				if (_obj_check[3]._lighted_on && _cut_lighter_phase == 3) {
					_cut_lighter = true;
					Cutscene_Begin();
				}
			}
			else {
				switch (_cut_lighter_phase) {
					case 0:
						C_Wait(0, 30)
						
						C_Execute(1, variable_instance_set, [char_player, "dir", DIR.DOWN]);
						C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.talk.0"),"{voice 12}{face 5}{face_emotion 3}"]);
					    C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.talk.1"),"{voice 12}{face 5}{face_emotion 2}"]);
					    C_Execute(1, Dialog_Start, [true]);
						C_WaitUntilDestroy(1, ui_dialog);
						
						C_Execute(2, variable_instance_set, [cut_plains_3, "_cut_lighter", false]);
						C_Execute(2, variable_instance_set, [cut_plains_3, "_cut_lighter_phase", 1]);
						Cutscene_End(2);
						break;
					case 1:
						C_Wait(0, 30)
						
						C_Execute(1, variable_instance_set, [char_player, "dir", DIR.DOWN]);
						C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.talk.2"),"{voice 12}{face 5}{face_emotion 3}"]);
					    C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.talk.3"),"{voice 12}{face 5}{face_emotion 3}"]);
					    C_Execute(1, Dialog_Start, [true]);
						C_WaitUntilDestroy(1, ui_dialog);
						
						C_Execute(2, variable_instance_set, [cut_plains_3, "_cut_lighter", false]);
						C_Execute(2, variable_instance_set, [cut_plains_3, "_cut_lighter_phase", 2]);
						Cutscene_End(2);
						break;
					case 2:
						C_Wait(0, 30)
						
						C_Execute(1, variable_instance_set, [char_player, "dir", DIR.DOWN]);
						C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.talk.4"),"{voice 12}{face 5}{face_emotion 3}"]);
					    C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.talk.5"),"{voice 12}{face 5}{face_emotion 3}"]);
					    C_Execute(1, Dialog_Start, [true]);
						C_WaitUntilDestroy(1, ui_dialog);
						
						C_Execute(2, variable_instance_set, [cut_plains_3, "_cut_lighter", false]);
						C_Execute(2, variable_instance_set, [cut_plains_3, "_cut_lighter_phase", 3]);
						Cutscene_End(2);
						break;
					case 3:
						C_Wait(0, 30)
						
						C_Execute(1, variable_instance_set, [char_player, "dir", DIR.DOWN]);
						C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.talk.6"),"{voice 12}{face 5}{face_emotion 4}"]);
					    C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.talk.7"),"{voice 12}{face 5}{face_emotion 4}"]);
					    C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.talk.8"),"{voice 12}{face 5}{face_emotion 1}"]);
					    C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.talk.9"),"{voice 12}{face 5}{face_emotion 4}"]);
					    C_Execute(1, Dialog_Start, [true]);
						C_WaitUntilDestroy(1, ui_dialog);
						
						C_Execute(2, variable_instance_set, [cut_plains_3, "_cut_lighter", false]);
						C_Execute(2, variable_instance_set, [cut_plains_3, "_cut_lighter_phase", 4]);
						Cutscene_End(2);
						break;
				}
			}
			
			if (!_cut_try_run_away_right) {
				if(!_obj_check[1]._lighted_on && char_player.x>540){
					_cut_try_run_away_right = true;
					Cutscene_Begin();
				}
				if(!_obj_check[2]._lighted_on && char_player.x>740){
					_cut_try_run_away_right = true;
					Cutscene_Begin();
				}
				if(!_obj_check[3]._lighted_on && char_player.x>940){
					_cut_try_run_away_right = true;
					Cutscene_Begin();
				}
			}
			else {
				C_Execute(0, variable_instance_set, [char_follower_porcupine, "dir", DIR.RIGHT]);
				C_Execute(0, variable_instance_set, [char_player, "dir", DIR.LEFT]);
				
				C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.plains.porcupine_shrine.after_lighter.try_to_escape_right.0"), "{voice 12}{face 5}{face_emotion 1}"]);
			    C_Execute(0, Dialog_Start, [true]);
				C_WaitUntilDestroy(0, ui_dialog);
				
				C_MoveChar(1, char_player, -40, 0, true, 15);
				C_Wait(1, 15);
				
				C_Execute(2, variable_instance_set, [cut_plains_3, "_cut_try_run_away_right", false]);
				Cutscene_End(2);
			}
		}
	}
}
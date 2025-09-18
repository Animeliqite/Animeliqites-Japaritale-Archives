event_inherited();

if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_013,false)==false){
	C_MoveChar(0,char_player,char_player.x,740,false,30);
	C_MoveChar(0,char_porcupine,char_porcupine.x,740,false,30);
	C_Wait(0,60);
	C_Execute(1,variable_instance_set,[char_porcupine,"dir",DIR.RIGHT]);
	C_Execute(1,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.0"),"{voice 12}{face 5}{face_emotion 0}"]);
	C_Execute(1,Dialog_Start,[true]);
	C_WaitUntilDestroy(1,ui_dialog);
	C_Execute(2,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.1")+"{sleep 40}{end}","{skippable false}{voice 12}{face 5}{face_emotion 0}"]);
	C_Execute(2,Dialog_Start,[true,true,true,true,false]);
	C_MoveChar(2,char_player,char_player.x,200,false,360);
	C_Wait(2,60);
	C_Execute(3,variable_instance_set,[char_porcupine,"dir",DIR.UP]);
	C_Wait(3,10);
	C_MoveChar(4,char_porcupine,char_porcupine.x,580,false,30);
	C_Wait(4,30);
	C_MoveChar(5,char_porcupine,char_porcupine.x,200,false,255);
	C_Wait(5,60);
	C_Execute(6,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.2"),"{voice 12}{face 5}{face_emotion 0}"]);
	C_Execute(6,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.3"),"{voice 12}{face 5}{face_emotion 0}"]);
	C_Execute(6,Dialog_Start,[true]);
	C_WaitUntilDestroy(6,ui_dialog);
	if(cutscene._current_order==7){
		if(!instance_exists(char_mover)){
			BGM_SetVolume(0,0,60);
			instance_destroy(ui_dialog);
			cutscene._current_order=8;
		}
	}
	C_Execute(8,variable_instance_set,[char_chameleon,"visible",true]);
	C_Execute(8,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.0"),"{voice 10}"]);
	C_Execute(8,Dialog_Start,[false]);
	C_WaitUntilDestroy(8,ui_dialog);
	C_Execute(9,instance_create_depth,[char_player.x,char_player.y-char_player.sprite_width-20,0,exclamation]);
	C_Execute(9,instance_create_depth,[char_porcupine.x,char_porcupine.y-char_porcupine.sprite_width-20,0,exclamation]);
	C_Wait(9,30);
	C_Execute(10,variable_instance_set,[char_player,"dir",DIR.DOWN]);
	C_Execute(10,variable_instance_set,[char_porcupine,"dir",DIR.DOWN]);
	C_Wait(10,60);
	C_Execute(11,BGM_Stop,[0]);
	C_Execute(11,BGM_Play,[0,bgm_chameleon_pre]);
	C_Execute(11,BGM_SetVolume,[0,0]);
	C_Execute(11,BGM_SetVolume,[0,1,30]);
	C_Execute(11,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.1"),"{voice 10}{face 6}{face_emotion 0}"]);
	C_Execute(11,Dialog_Start,[false]);
	C_WaitUntilDestroy(11,ui_dialog);
	C_PlaySfx(12,snd_spearappear);
	C_CreateAnim(12,char_chameleon,"_disappear_alpha",0,0,0,1,10,false);
	C_CreateAnim(12,char_chameleon,"image_alpha",0,0,1,0,10,false,10);
	C_CreateAnim(12,char_chameleon,"dir",0,0,char_chameleon.dir,DIR.DOWN,1,false,20);
	C_CreateAnim(12,char_chameleon,"x",0,0,char_chameleon.x,180,1,false,20);
	C_CreateAnim(12,char_chameleon,"y",0,0,char_chameleon.y,110,1,false,20);
	C_CreateAnim(12,char_chameleon,"image_alpha",0,0,0,1,10,false,20);
	C_CreateAnim(12,char_chameleon,"_disappear_alpha",0,0,1,0,10,false,30);
	C_Wait(12,10);
	C_Execute(13,instance_create_depth,[char_player.x,char_player.y-char_player.sprite_width-20,0,exclamation]);
	C_Execute(13,instance_create_depth,[char_porcupine.x,char_porcupine.y-char_porcupine.sprite_width-20,0,exclamation]);
	C_CreateAnim(13,char_player,"dir",0,0,char_player.dir,DIR.UP,1,false,30);
	C_CreateAnim(13,char_porcupine,"dir",0,0,char_porcupine.dir,DIR.UP,1,false,30);
	C_Execute(13,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.2"),"{voice 10}{face 6}{face_emotion 0}"]);
	C_Execute(13,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.3"),"{voice 12}{face 5}{face_emotion 5}"]);
	C_Execute(13,Dialog_Start,[false]);
	C_WaitUntilDestroy(13,ui_dialog);
	C_CreateAnim(14,char_chameleon,"_disappear_alpha",0,0,0,1,10,false);
	C_CreateAnim(14,char_chameleon,"image_alpha",0,0,1,0,10,false,10);
	C_CreateAnim(14,char_chameleon,"dir",0,0,char_chameleon.dir,DIR.DOWN,1,false,20);
	C_CreateAnim(14,char_chameleon,"x",0,0,char_chameleon.x,char_porcupine.x,1,false,20);
	C_CreateAnim(14,char_chameleon,"y",0,0,char_chameleon.y,char_porcupine.y-20,1,false,20);
	C_CreateAnim(14,char_chameleon,"image_alpha",0,0,0,1,10,false,20);
	C_CreateAnim(14,char_chameleon,"_disappear_alpha",0,0,1,0,10,false,30);
	C_Execute(14,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.4"),"{voice 12}{face 5}{face_emotion 2}"]);
	C_Execute(14,Dialog_Start,[true]);
	C_WaitUntilDestroy(14,ui_dialog);
	C_CreateAnim(15,char_porcupine,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_porcupine.y,-5,2,true);
	C_CreateAnim(15,char_porcupine,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,char_porcupine.y-5,5,2,true,2);
	C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.5"),"{voice 10}{face 6}{face_emotion 0}"]);
	C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.6"),"{char_move_new 10 270 30 0 15 true}{voice 12}{face 5}{face_emotion 6}"]);
	C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.7"),"{voice 10}{face 6}{face_emotion 0}"]);
	C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.8"),"{voice 10}{face 6}{face_emotion 0}"]);
	C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.9"),"{face 6}{face_emotion 0}{char_move_new 10 270 0 -60 15 true}{char_dir 0 180}{voice 10}"]);
	C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.10"),"{top true}{voice 12}{face 5}{face_emotion 7}"]);
	C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.11"),"{top false}{voice 10}{face 6}{face_emotion 1}"]);
	C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.12"),"{top true}{voice 12}{face 5}{face_emotion 7}"]);
	C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.13"),"{voice 12}{face 5}{face_emotion 7}"]);
	C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.14"),"{top false}{voice 10}{face 6}{face_emotion 1}{char_dir 0 90}"]);
	C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.15"),"{top true}{voice 12}{face 5}{face_emotion 1}"]);
	C_Execute(15,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.16"),"{top false}{voice 10}{face 6}{face_emotion 2}"]);
	C_Execute(15,Dialog_Start,[false]);
	C_WaitUntilDestroy(15,ui_dialog);
	C_Execute(16,BGM_Stop,[0]);
	C_Execute(16,variable_instance_set,[char_chameleon,"dir",DIR.RIGHT]);
	C_Execute(16,variable_instance_set,[char_porcupine,"dir",DIR.RIGHT]);
	C_Execute(16,variable_instance_set,[char_player,"dir",DIR.RIGHT]);
	C_Execute(16,variable_instance_set,[camera,"target",noone]);
	C_CreateAnim(16,char_porcupine,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_porcupine.y,-5,2,true);
	C_CreateAnim(16,char_porcupine,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,char_porcupine.y-5,5,2,true,5);
	C_PlaySfx(16,snd_knock);
	C_Wait(16,30);
	C_Execute(17,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.17"),"{voice 11}"]);
	C_Execute(17,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.18"),"{voice 11}{event 1000}"]);
	C_Execute(17,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.19"),"{event 2000}{voice 11}"]);
	C_Execute(17,Dialog_Start,[false]);
	C_WaitUntilDestroy(17,ui_dialog);
	C_MoveChar(18,char_moose,-200,0,true,60);
	C_MoveChar(18,char_chameleon,0,40,true,30,false,DIR.RIGHT);
	C_Execute(18,BGM_Play,[0,bgm_duelbattle_pre]);
	C_Execute(18,BGM_SetVolume,[0,0]);
	C_Execute(18,BGM_SetVolume,[0,1,30]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.20"),"{voice 11}{face 7}{face_emotion 0}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.21"),"{voice 10}{face 6}{face_emotion 3}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.22"),"{skippable false}{top true}{event 3000}{voice 12}{face 5}{face_emotion 7}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.23"),"{top false}{voice 10}{face 6}{face_emotion 1}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.24"),"{voice 10}{face 6}{face_emotion 1}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.25"),"{voice 11}{face 7}{face_emotion 2}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.26"),"{script `BGM_SetVolume` 0 0 30}{voice 10}{face 6}{face_emotion 1}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.27"),"{skippable false}{event 4000}{voice 11}{face 7}{face_emotion 0}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.28"),"{voice 11}{face 7}{face_emotion 0}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.29"),"{voice 10}{face 6}{face_emotion 1}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.30"),"{voice 11}{face 7}{face_emotion 2}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.31"),"{char_dir 0 90}{char_dir 9 90}{event 4500}{voice 11}{face 7}{face_emotion 1}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.32")+"{end}","{char_dir 8 270}{voice 10}{face 6}{face_emotion 2}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.33"),"{voice 11}{face 7}{face_emotion 2}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.34"),"{voice 11}{face 7}{face_emotion 2}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.35"),"{voice 10}{face 6}{face_emotion 4}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.36"),"{char_dir 8 180}{voice 11}{face 7}{face_emotion 2}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.37"),"{top true}{char_dir 8 270}{voice 12}{face 5}{face_emotion 1}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.38"),"{char_dir 8 270}{voice 12}{face 5}{face_emotion 7}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.39"),"{skippable false}{top false}{event 100}{event 5500}{voice 11}{face 7}{face_emotion 2}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.40"),"{voice 11}{face 7}{face_emotion 2}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.41"),"{voice 11}{face 7}{face_emotion 1}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.42"),"{skippable false}{event 6000}{voice 10}{face 6}{face_emotion 0}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.43"),"{voice 10}{face 6}{face_emotion 0}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.44"),"{voice 11}{face 7}{face_emotion 1}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.45"),"{top true}{voice 12}{face 5}{face_emotion 5}"]);
	C_Execute(18,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.46"),"{top false}{voice 10}{face 6}{face_emotion 0}"]);
	C_Execute(18,Dialog_Start,[false]);
	C_WaitUntilDestroy(18,ui_dialog);
	C_Execute(19,variable_instance_set,[char_chameleon,"dir",DIR.RIGHT]);
	C_Wait(19,15);
	C_Execute(20,variable_instance_set,[char_chameleon,"dir",DIR.DOWN]);
	C_Wait(20,15);
	C_Execute(21,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.47"),"{top false}{voice 10}{face 6}{face_emotion 5}"]);
	C_Execute(21,Dialog_Add_Ext,[Lang_GetString("cutscene.plains.porcupine_shrine.battle_room.chameleon.48"),"{script `BGM_Stop` 0}{top false}{voice 11}{face 7}{face_emotion 1}"]);
	C_Execute(21,Dialog_Start,[false]);
	C_WaitUntilDestroy(21,ui_dialog);
	C_Execute(22,BGM_Stop,[0]);
	C_Execute(22,Encounter_Start,[7,true,false]);
	C_Wait(22,1);
			
	if(global.event==100){
		_timer=0;
	}
			
	if(global.event==1000){
		_timer++;
		if(_timer==30){
			Sfx_Play(snd_thump);
			Camera_Shake(4,4,0,0,true,true);
			Anim_Create(char_porcupine,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_porcupine.y,-5,2,0,0,0,ANIM_MODE.ONESHOT,true);
			Anim_Create(char_porcupine,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,char_porcupine.y-5,5,2,5,0,0,ANIM_MODE.ONESHOT,true);
			Anim_Create(char_chameleon,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_chameleon.y,-5,2,0,0,0,ANIM_MODE.ONESHOT,true);
			Anim_Create(char_chameleon,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,char_chameleon.y-5,5,2,5,0,0,ANIM_MODE.ONESHOT,true);
			Anim_Create(char_player,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_player.y,-5,2,0,0,0,ANIM_MODE.ONESHOT,true);
			Anim_Create(char_player,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,char_player.y-5,5,2,5,0,0,ANIM_MODE.ONESHOT,true);
			_timer=0;
		}
	}
	if(global.event==2000){
		Sfx_Play(snd_explosion);
		Camera_Shake(8,8,0,0,true,true,0.5,0.5);
		global.event=-9999;
	}
			
	if(global.event==3000){
		Anim_Create(char_porcupine,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_porcupine.y,-5,5,0,0,0,ANIM_MODE.PINGPONG,true);
		global.event=-9999;
	}
			
	if(global.event==4000){
		Anim_Destroy(char_porcupine);
		BGM_Play(0,bgm_duelbattle_chameleon);
		BGM_SetVolume(0,0);
		BGM_SetVolume(0,1,30);
		_timer=0;
		global.event=-9999;
	}
			
	if(global.event==4500){
		_timer++;
		if(_timer==1){
			MoveChar(char_moose,-60,0,true,15);
			MoveChar(char_chameleon,-80,0,true,30,false,DIR.RIGHT);
			char_player.dir=DIR.UP;
			char_porcupine.dir=DIR.UP;
		}
		if(_timer==16){
			char_moose.dir=DIR.DOWN;
			char_moose.dir_locked=true;
			global.event=-9999;
			_timer=0;
		}
	}
			
	if(global.event==5000){
		_timer++;
		if(_timer==1){
			MoveChar(char_moose,-20,0,true,15);
		}
		if(_timer==16){
			char_moose.dir=DIR.DOWN;
			char_moose.dir_locked=true;
			global.event=-9999;
			_timer=0;
		}
	}
			
	if(global.event==5500){
		_timer++;
		if(_timer==1){
			MoveChar(char_moose,40,0,true,15);
			MoveChar(char_chameleon,40,0,true,15);
		}
		if(_timer==16){
			char_moose.dir=DIR.DOWN;
			char_moose.dir_locked=true;
			char_chameleon.dir=DIR.DOWN;
			char_chameleon.dir_locked=true;
			global.event=-9999;
			_timer=0;
		}
	}
}
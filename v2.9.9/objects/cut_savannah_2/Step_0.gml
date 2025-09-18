event_inherited();

if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_003_1,false)==false){
	if(_phase==0){
		if(char_serval.x<120)
			MoveChar(char_serval,120,char_serval.y,false,30)
		else char_serval.dir=DIR.LEFT;
		if(char_player.x>75){
			_phase=1;
		}
	}
	else if(_phase==1){
		if(char_serval.x<240)
			MoveChar(char_serval,240,char_serval.y,false,30)
		else char_serval.dir=DIR.LEFT;
		if(char_player.x>180){
			_phase=2;
		}
	}
	else if(_phase==2){
		if(char_serval.y<350)
			MoveChar(char_serval,char_serval.x,350,false,30)
		else char_serval.dir=DIR.UP;
		if(char_player.y>250){
			_phase=3;
		}
	}
	else if(_phase==3){
		if(char_serval.x<380)
			MoveChar(char_serval,380,char_serval.y,false,40)
		else char_serval.dir=DIR.LEFT;
		if(char_player.x>320){
			_phase=4;
			Cutscene_Begin();
		}
	}
	else if(_phase==4){
		C_MoveChar(0,char_player,char_serval.x,char_serval.y+20,false,30);
		C_Wait(0,30);
		C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.0"), "{char_link 2}{voice 4}{face 2}{face_emotion 4}"]);
		C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.1")+"{choice `TMP`}", "{char_link 2}{voice 4}{face 2}{face_emotion 4}"]);
		C_Execute(1, Dialog_Start, []);
		C_Execute(1, variable_instance_set, [char_serval,"dir",DIR.DOWN]);
		C_Execute(1, variable_instance_set, [char_player,"dir",DIR.UP]);
		C_Execute(1, variable_instance_set, [camera,"target",noone]);
		C_WaitUntilDestroy(1,ui_dialog);
		if (Player_GetTextTyperChoice()==0){
			C_Execute(2, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.1.0")+"{char_dir 2 0}", "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
			C_Execute(2, Dialog_Start, []);
			C_Execute(2, variable_instance_set, [char_serval,"dir",DIR.DOWN]);
			C_Execute(2, variable_instance_set, [char_player,"dir",DIR.RIGHT]);
			C_WaitUntilDestroy(2,ui_dialog);
			C_Execute(3, Cutscene_ChangeOrder, [4]);
		}
		else if (Player_GetTextTyperChoice()==1){
			C_MoveChar(2,char_player,-20,0,true,15,false,DIR.RIGHT);
			C_Wait(2,15);
			C_Execute(3, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.1.1.0"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
			C_Execute(3, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.1.1.1"), "{char_dir 0 90}{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(3, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.1.1.2"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
			C_Execute(3, Dialog_Start, []);
			C_Execute(3, variable_instance_set, [char_serval,"dir",DIR.DOWN]);
			C_Execute(3, variable_instance_set, [char_player,"dir",DIR.RIGHT]);
			C_WaitUntilDestroy(3,ui_dialog);
		}
		C_Execute(4, variable_instance_set, [char_player,"dir",DIR.RIGHT]);
		C_MoveChar(4,char_serval,400,char_serval.y,false,15);
		C_Wait(4,15);
		C_Execute(5,variable_instance_set,[char_serval,"sprite_index",spr_char_serval_jump]);
		C_CreateAnim(5,char_serval,"x",0,0,char_serval.x,480,20,false);
		C_CreateAnim(5,char_serval,"y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,char_serval.y,-20,10,true);
		C_CreateAnim(5,char_serval,"y",ANIM_TWEEN.CIRC,ANIM_EASE.IN,char_serval.y-20,400,10,false,10);
		C_PlaySfx(5,snd_jump);
		C_Wait(5,20);
		C_Execute(6,variable_instance_set,[char_serval,"sprite_index",spr_char_serval_right]);
		C_Wait(6,20);
		C_Execute(7,variable_instance_set,[char_serval,"dir",DIR.LEFT]);
		C_Execute(7, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.2"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
		C_Execute(7, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.3"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
		C_Execute(7, Dialog_Start, []);
		C_WaitUntilDestroy(7,ui_dialog);
		C_Execute(8,method_call,[camera.moveToObject,[char_player,15]]);
		C_Wait(8,15);
		C_Execute(9,variable_instance_set,[camera,"target",char_player]);
		C_Execute(9,variable_instance_set,[cut_savannah_2,"_phase",5]);
		Cutscene_End(9);
	}
	else if(_phase==5){
		if(char_player.x<300){
			_phase=5.5;
			Cutscene_Begin();
			char_player.dir=DIR.RIGHT;
		}
		if(char_player.x>390){
			_phase=6;
			camera.target=noone;
			char_player.dir_locked=true;
			Cutscene_Begin();
		}
	}
	else if(_phase==5.5){
		C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.3.0"), "{char_link 2}{voice 4}{face 2}{face_emotion 5}"]);
		C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.3.1"), ""]);
		C_Execute(0, Dialog_Start, []);
		C_WaitUntilDestroy(0,ui_dialog);
		C_MoveChar(1,char_player,40,0,true,15);
		C_Wait(1,15);
		C_Execute(2,variable_instance_set,[cut_savannah_2,"_phase",5]);
		Cutscene_End(2);
	}
	else if(_phase==6){
		C_Execute(0,variable_instance_set,[char_player,"dir_locked",true]);
		C_Execute(0,variable_instance_set,[char_player,"image_speed",0.5]);
		C_PlaySfx(0,snd_jump);
		C_CreateAnim(0,char_player,"x",0,0,char_player.x,440,15,false);
		C_CreateAnim(0,char_player,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_player.y,-10,7,true);
		C_CreateAnim(0,char_player,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,char_player.y-10,400,8,false,7);
		C_Wait(0,15);
		C_PlaySfx(1,snd_bump);
		C_Execute(1,variable_instance_set,[char_player,"sprite_index",spr_char_kaban_kneel]);
		C_Execute(1,variable_instance_set,[char_player,"image_speed",0]);
		C_Execute(1,method_call,[camera.moveToObject,[char_player,30]]);
		C_Execute(1,Object_Shake,[8,"x",char_player,0,true]);
		C_Execute(1,Object_Shake,[8,"y",char_player,0,true]);
		C_Wait(1,10);
		C_MoveChar(2,char_serval,char_player.x+20,char_player.y,false,5,false,DIR.LEFT);
		C_Wait(2,30);
		C_Execute(3,variable_instance_set,[char_player,"sprite_index",spr_char_kaban_right]);
		C_Execute(3,variable_instance_set,[char_player,"dir",DIR.RIGHT]);
		C_Execute(3,variable_instance_set,[char_serval,"dir_locked",true]);
		C_Execute(3,variable_instance_set,[char_player,"dir_locked",false]);
		C_Execute(3,variable_instance_set,[char_serval,"sprite_index",spr_char_serval_kneel_lookleft]);
		C_Execute(3, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.4"), "{voice 4}{face 2}{face_emotion 1}"]);
		C_Execute(3, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.5"), "{char_dir 0 0}{voice 4}{face 2}{face_emotion 0}"]);
		C_Execute(3, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.caveline.6")+"{char_dir 0 0}", "{char_dir 0 90}{voice 4}{face 2}{face_emotion 2}"]);
		C_Execute(3, Dialog_Start, []);
		C_WaitUntilDestroy(3,ui_dialog);
		C_Execute(4,variable_instance_set,[char_serval,"sprite_index",spr_char_serval_right]);
		C_Execute(4,variable_instance_set,[char_serval,"dir_locked",false]);
		C_MoveChar(4,char_serval,660,char_serval.y,false,30,false,DIR.RIGHT);
		C_Wait(4,30);
		C_Execute(5,variable_instance_set,[camera,"target",char_player]);
		C_Execute(5, Flag_Set, [FLAG_TYPE.STATIC, FLAG_STATIC.SCENE_003_1, true]);
		Cutscene_End(5);
	}
}
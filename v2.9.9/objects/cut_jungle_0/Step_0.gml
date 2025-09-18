event_inherited();

if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_007)==false){
	if(_phase==0){
		if(char_player.x>1020){
			instance_create_depth(char_player.x-320,char_player.y,0,char_fennec);
			Cutscene_Begin();
			_phase=1;
		}
	}
	else if(_phase==1){
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
		C_Execute(0,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.warn.0"), "{font 3}{voice 8}"]);
		C_Execute(0,Dialog_Start, [true]);
		C_WaitUntilDestroy(0,ui_dialog);
		C_Execute(1,array_set,[char_fennec.res_move_sprite,DIR.RIGHT,spr_char_fennec_right_shadow]);
		C_Execute(1,array_set,[char_fennec.res_idle_sprite,DIR.RIGHT,spr_char_fennec_right_shadow]);
		C_MoveChar(1,char_fennec,char_player.x-80,char_player.y,false,120);
		C_Wait(1,150);
		C_Execute(2,variable_instance_set,[camera,"target",noone]);
		C_CreateAnim(2,parallax,"xx",0,0,0,-120,60);
		C_MoveChar(2,camera,char_fennec.x-(camera.width/camera.scale_x/2),camera.y,false,60);
		C_Wait(2,30);
		C_Execute(3,variable_instance_set,[char_player,"dir",DIR.LEFT]);
		C_Execute(3,BGM_SetVolume,[0,0,60]);
		C_Execute(3,BGM_SetVolume,[1,0,60]);
		C_Execute(3,array_set,[char_fennec.res_move_sprite,DIR.RIGHT,spr_char_fennec_right]);
		C_Execute(3,array_set,[char_fennec.res_idle_sprite,DIR.RIGHT,spr_char_fennec_right]);
		C_Execute(3,variable_instance_set,[char_fennec,"sprite_index",spr_char_fennec_right]);
		C_Wait(3,60);
		if(cutscene._current_order==4){
			var background_id=layer_background_get_id(layer_get_id("Background_Fog"));
			if(layer_background_get_alpha(background_id)>0.33)
				layer_background_alpha(background_id,layer_background_get_alpha(background_id)-0.025);
		}
		C_Execute(4,BGM_Stop,[0]);
		C_Execute(4,BGM_Stop,[1]);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.0"), "{font 3}{voice 8}{face 3}{face_emotion 0}"]);
		C_Execute(4,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.1"), "{font 3}{voice 8}{face 3}{face_emotion 0}"]);
		C_Execute(4,Dialog_Start, [true]);
		C_WaitUntilDestroy(4,ui_dialog);
		C_MoveChar(5,char_fennec,char_fennec.x,170,false,30);
		C_Wait(5,30);
		C_MoveChar(6,char_fennec,1130,char_fennec.y,false,60);
		C_Wait(6,50);
		C_MoveChar(7,camera,char_fennec.x-(camera.width/camera.scale_x/2),camera.y,false,60);
		C_MoveChar(7,char_player,char_player.x,170,false,30);
		C_Wait(7,10);
		C_MoveChar(8,char_fennec,char_fennec.x,190,false,30);
		C_Wait(8,20);
		C_MoveChar(9,char_player,1180,char_player.y,false,60);
		C_Wait(9,10);
		C_Execute(10,variable_instance_set,[char_fennec,"dir",DIR.RIGHT]);
		C_Wait(10,50);
		C_MoveChar(11,char_player,char_player.x,190,false,30);
		C_Wait(11,30);
		C_Execute(12,variable_instance_set,[char_player,"dir",DIR.LEFT]);
		C_Wait(12,30);
		C_Execute(13,BGM_Play,[0,bgm_muscle]);
		C_Execute(13,BGM_SetVolume,[0,0]);
		C_Execute(13,BGM_SetVolume,[0,1,60]);
		C_Execute(13,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.2"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(13,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.3"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(13,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.4"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(13,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.5"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(13,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.6"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(13,Dialog_Start, [true]);
		C_WaitUntilDestroy(13,ui_dialog);
		C_Execute(14,BGM_SetVolume,[0,0,30]);
		C_Execute(14,instance_create_depth,[800,char_fennec.y,0,char_arai_san]);
		C_Wait(14,1);
		C_Execute(15,method_call,[camera.moveToPos, [char_fennec.x-30,char_fennec.y,15]]);
		C_PlaySfx(15,snd_flee);
		C_MoveChar(15,char_arai_san,char_junglebridge.x,190,false,60);
		C_Wait(15,60);
		C_Execute(16,BGM_Stop,[0]);
		C_Execute(16,variable_instance_set,[char_arai_san,"sprite_index",spr_char_arai_san_down_fall]);
		C_CreateAnim(16,part_junglehole_piece,"shake_amount",0,0,0,1,25,false,20);
		C_CreateAnim(16,part_junglehole_piece,"shake_amount_rot",0,0,0,2,25,false,20);
		if(instance_exists(char_arai_san))
			C_CreateAnim(16,char_arai_san,"image_index",0,0,0,sprite_get_number(spr_char_arai_san_down_fall),45,false);
		C_Wait(16,45);
		C_Execute(17,method_call,[camera.moveToObject, [char_player,30]]);
		C_FadeFader(17,1,0,10,0,c_white);
		C_Execute(17,Camera_Shake,[5,5]);
		C_PlaySfx(17,snd_screenshake);
		C_PlaySfx(17,snd_fall2);
		C_Execute(17,variable_instance_set,[char_junglebridge,"image_index",1]);
		if(cutscene._current_order==17){
			with(part_junglehole_piece)
				fall=true;
		}
		C_Execute(17,variable_instance_set,[char_arai_san,"sprite_index",spr_char_arai_san_fall]);
		C_Execute(17,variable_instance_set,[char_arai_san,"image_speed",0]);
		C_Execute(17,variable_instance_set,[char_arai_san,"image_index",0]);
		C_CreateAnim(17,char_arai_san,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,190,320,30,false);
		C_CreateAnim(17,char_arai_san,"image_angle",ANIM_TWEEN.SINE,ANIM_EASE.IN,0,24,10,false);
		C_CreateAnim(17,char_arai_san,"image_alpha",ANIM_TWEEN.SINE,ANIM_EASE.IN,1,0,30,false);
		C_Wait(17,30);
		C_PlaySfx(18,snd_impact);
		C_Execute(18,audio_stop_sound,[snd_fall]);
		C_Wait(18,30);
		C_Execute(19,BGM_Play,[0,bgm_arai_san]);
		C_Execute(19,BGM_SetVolume,[0,0]);
		C_Execute(19,BGM_SetVolume,[0,1,60]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.7"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.8"), "{font 3}{event 1}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.9"), "{font 4}{voice 9}{face 4}{face_emotion 1}"]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.10"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.11"), "{font 4}{voice 9}{face 4}{face_emotion 1}"]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.12"), "{font 3}{event 2}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.13"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.14"), "{font 3}{event 1}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.15"), "{font 4}{voice 9}{face 4}{face_emotion 1}"]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.16"), "{font 4}{voice 9}{face 4}{face_emotion 1}"]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.17"), "{font 3}{event 2}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.18"), "{font 3}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(19,Dialog_Add_Ext,[Lang_GetString("cutscene.fennec.19"), "{font 3}{event 1}{voice 8}{face 3}{face_emotion 2}"]);
		C_Execute(19,Dialog_Start, [true]);
		C_WaitUntilDestroy(19,ui_dialog);
		C_CreateAnim(20,char_fennec,"x",0,0,char_fennec.x,char_junglebridge.x,30,false);
		C_CreateAnim(20,char_fennec,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,char_fennec.y,-20,7,true);
		C_CreateAnim(20,char_fennec,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,char_fennec.y-20,160,23,true,7);
		C_Execute(20,BGM_SetVolume,[0, 0, 30]);
		C_Wait(20,30);
		C_Execute(21,BGM_Stop,[0]);
		C_MoveChar(21,camera,room_width - (camera.width / camera.scale_x),0,false,30);
		C_Wait(21,30);
		C_Execute(22,variable_instance_set,[camera,"target",char_player]);
		C_Execute(22,Flag_Set,[FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_007,true]);
		C_Execute(22,instance_destroy,[char_fennec_shadow]);
		Cutscene_End(22);
	}
}
event_inherited();

if (_phase == 0) {
	C_MoveChar(0, char_player, 270, char_player.y, false, 100);
	C_Wait(0, 45);
	C_Execute(1, instance_create_depth, [char_serval.x, char_serval.y - char_serval.sprite_height - 5, 0, exclamation]);
	C_Wait(1, 45);
	C_CreateAnim(2, char_serval, "y", 0, 0, char_serval.y, char_player.y - 2, 5, false);
	C_CreateAnim(2, char_serval, "x", 0, 0, char_serval.x, char_player.x + 17, 5, false, 5);
	C_CreateAnim(2, char_serval, "x", 0, 0, char_player.x + 17, char_serval.xstart - 10, 15, false, 10);
	C_CreateAnim(2, char_player, "x", 0, 0, char_player.x + 27, char_serval.xstart - 5, 15, false, 10);
	C_CreateAnim(2, char_serval, "y", 0, 0, char_player.y - 2, char_serval.ystart, 15, false, 25);
	C_CreateAnim(2, char_player, "y", 0, 0, char_player.y, char_serval.ystart - 5, 15, false, 25);
	C_CreateAnim(2, char_serval, "x", 0, 0, char_serval.xstart - 10, -20, 15, true, 45);
	C_CreateAnim(2, camera, "target", 0, 0, asset_get_index(camera.target), -4, 1, false, 10);
	C_CreateAnim(2, char_serval, "image_index", 0, 0, 0, 10, 45, false);
	C_CreateAnim(2, char_player, "image_index", 0, 0, 0, 10, 25, false, 10);
	C_CreateAnim(2, char_player, "dir", 0, 0, DIR.DOWN, DIR.RIGHT, 1, false, 10);
	C_CreateAnim(2, char_serval, "sprite_index", 0, 0, real(char_serval.sprite_index), real(spr_char_serval_right), 1, false, 10);
	C_CreateAnim(2, char_serval, "sprite_index", 0, 0, real(char_serval.sprite_index), real(spr_char_serval_right), 1, false, 25);
	C_CreateAnim(2, char_serval, "sprite_index", 0, 0, real(char_serval.sprite_index), real(spr_char_serval_right), 1, false, 45);
	C_CreateAnim(2, char_player, "sprite_index", 0, 0, real(spr_char_kaban_right), real(spr_char_kaban_right), 1, false);
	C_Wait(2, 10);
	C_PlaySfx(3, snd_noise);
	C_Wait(3, 50);
	C_Execute(4, variable_instance_set, [char_player, "dir", DIR.LEFT]);
	C_Execute(4, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.0"), "{char_link 2}{voice 4}{face 2}{face_emotion 6}"]);
	C_Execute(4, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.1"), "{char_link 2}{voice 4}{face 2}{face_emotion 6}"]);
	C_Execute(4, Dialog_Start, [true]);
	C_WaitUntilDestroy(4, ui_dialog);
	C_Wait(5, 30);
	C_Execute(6, BGM_Play, [0, bgm_concern]);
	C_Execute(6, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.2"), "{char_link 2}{voice 4}{face 2}{face_emotion 3}"]);
	C_Execute(6, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.3"), "{char_link 2}{voice 4}{face 2}{face_emotion 9}"]);
	C_Execute(6, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.4"), "{char_link 2}{voice 4}{face 2}{face_emotion 8}"]);
	C_Execute(6, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.5"), "{char_link 2}{voice 4}{face 2}{face_emotion 5}"]);
	C_Execute(6, Dialog_Start, [true]);
	C_WaitUntilDestroy(6, ui_dialog);
	C_Execute(7, variable_instance_set, [camera, "target", noone]);
	C_Execute(7, variable_instance_set, [char_player, "dir", DIR.RIGHT]);
	C_MoveChar(7, camera, 440, camera.y, false, 60);
	C_Wait(7, 90);
	C_Execute(8, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.6"), "{char_link 2}{voice 4}{face 2}{face_emotion 3}"]);
	C_Execute(8, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.7"), "{char_link 2}{voice 4}{face 2}{face_emotion 9}"]);
	C_Execute(8, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.8"), "{char_link 2}{voice 4}{face 2}{face_emotion 3}"]);
	C_Execute(8, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.9"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
	C_Execute(8, Dialog_Start, [true]);
	C_WaitUntilDestroy(8, ui_dialog);
	C_MoveChar(9, camera, char_player.x - (camera.width / camera.scale_x / 2), camera.y, false, 60);
	C_Wait(9, 90);
	C_Execute(10, variable_instance_set, [char_player, "moveable", false]);
	C_Execute(10, variable_instance_set, [char_player, "dir", DIR.LEFT]);
	C_Execute(10, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.10"), "{char_link 2}{voice 4}{face 2}{face_emotion 3}"]);
	C_Execute(10, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.11"), "{char_link 2}{voice 4}{face 2}{face_emotion 3}"]);
	C_Execute(10, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.12")+" {choice `TMP`}", "{char_link 2}{voice 4}{face 2}{face_emotion 3}"]);
	C_Execute(10, Dialog_Start, [true]);
	C_WaitUntilDestroy(10, ui_dialog);
	C_Execute(11, variable_instance_set, [id, "_phase", 1]);
	Cutscene_End(11);
}
else if (_phase == 1) {
	char_player.moveable = false;
	if (Player_GetTextTyperChoice() == 0) {
		Cutscene_Begin();
		_phase = 1.5;
	}
	else {
		Cutscene_Begin();
		_phase = 1.6;
	}
}
else if (_phase == 1.5) {
	C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.confirm.0"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
	C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.confirm.1"), "{char_link 2}{voice 4}{face 2}{face_emotion 6}"]);
	C_Execute(0, Dialog_Start, [true]);
	C_WaitUntilDestroy(0, ui_dialog);
	C_Execute(1, BGM_SetVolume, [0, 0, 60]);
	C_MoveChar(1, char_player, 40, char_player.ystart, false, 90);
	C_MoveChar(1, camera, 0, 0, false, 90);
	C_MoveChar(1, char_serval, 240, char_player.ystart, false, 30);
	C_Wait(1, 30);
	C_MoveChar(2, char_serval, 630, char_player.ystart, false, 60);
	C_Wait(2, 90);
	C_Execute(3, BGM_Stop, [0]);
	C_PlaySfx(3, snd_serval_talk_loop, 1, 0.5);
	C_Execute(3, instance_create_depth, [char_player.x, char_player.y - char_player.sprite_height - 5, 0, exclamation]);
	C_Execute(3, variable_instance_set, [char_player, "dir", DIR.RIGHT]);
	C_Wait(3, 60);
	C_Execute(4, variable_instance_set, [camera, "target", char_player]);
	C_Execute(4, variable_instance_set, [char_player, "image_speed", 1/2]);
	C_Execute(4, instance_create_depth, [0,0,-2000,ui_savannahlines]);
	C_CreateAnim(4,ui_savannahlines,"_phase",0,0,-1,0,1,false,60,ANIM_MODE.ONESHOT);
	C_CreateAnim(4,ui_savannahlines,"_phase",0,0,0,1,1,false,65,ANIM_MODE.ONESHOT);
	C_CreateAnim(4,ui_savannahlines,"_phase",0,0,1,2,1,false,70,ANIM_MODE.ONESHOT);
	C_MoveChar(4, char_player, 550, char_player.y, false, 90, false);
	C_Wait(4, 60);
	C_PlaySfx(5, snd_noise);
	C_Wait(5, 5);
	C_PlaySfx(6, snd_noise);
	C_Wait(6, 5);
	C_PlaySfx(7, snd_noise);
	C_Wait(7, 20);
	C_Execute(8, Encounter_Start, [5, true, false]);
	C_Execute(8, instance_destroy, [ui_savannahlines]);
	C_Execute(8, part_system_destroy, [particle.partsystem]);
	Cutscene_End(8);
}
else if (_phase == 1.6) {
	C_Execute(0, variable_instance_set, [char_player, "moveable", false]);
	C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.decline.0"), "{char_link 2}{voice 4}{face 2}{face_emotion 6}"]);
	C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.decline.1"), "{char_link 2}{voice 4}{face 2}{face_emotion 3}"]);
	C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.decline.2")+" {choice `TMP`}", "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
	C_Execute(0, Dialog_Start, [true]);
	C_WaitUntilDestroy(0, ui_dialog);
	C_Execute(1, variable_instance_set, [id, "_phase", 2]);
	Cutscene_End(1);
}
else if (_phase == 2) {
	char_player.moveable = false;
	if (Player_GetTextTyperChoice() == 0) {
		Cutscene_Begin();
		_phase = 1.5;
	}
	else {
		Cutscene_Begin();
		_phase = 2.5;
	}
}
else if (_phase == 2.5) {
	C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.decline.3"), "{char_link 2}{voice 4}{face 2}{face_emotion 9}"]);
	C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.decline.4"), "{char_link 2}{voice 4}{face 2}{face_emotion 3}"]);
	C_Execute(0, Dialog_Add_Ext, [Lang_GetString("cutscene.savannah.bridge.before_fight.decline.5"), "{script `BGM_SetVolume` 0 0 60}{char_link 2}{voice 4}{face 2}{face_emotion 3}"]);
	C_Execute(0, Dialog_Start, [true]);
	C_WaitUntilDestroy(0, ui_dialog);
	C_MoveChar(1, char_player, char_player.x, char_player.ystart, false, 30, false, DIR.UP);
	C_MoveChar(1, camera, max(0, char_player.x - (camera.width / camera.scale_x / 2)), 0, false, 30);
	C_MoveChar(1, char_serval, char_player.x, char_player.ystart - 30, false, 15, false, DIR.UP);
	C_Wait(1, 15);
	C_MoveChar(2, char_serval, 730, char_player.ystart - 30, false, 90);
	C_Wait(2, 15);
	C_Execute(3, variable_instance_set, [char_player, "dir", DIR.RIGHT]);
	C_Wait(3, 1);
	C_Execute(4, variable_instance_set, [camera, "target", char_player]);
	C_Execute(4, variable_instance_set, [char_player, "image_speed", 1/2]);
	C_MoveChar(4, char_player, 630, char_player.y, false, 140);
	C_Execute(4, instance_create_depth, [0,0,-2000,ui_savannahlines]);
	C_CreateAnim(4,ui_savannahlines,"_phase",0,0,-1,0,1,false,65,ANIM_MODE.ONESHOT);
	C_CreateAnim(4,ui_savannahlines,"_phase",0,0,0,1,1,false,70,ANIM_MODE.ONESHOT);
	C_CreateAnim(4,ui_savannahlines,"_phase",0,0,1,2,1,false,75,ANIM_MODE.ONESHOT);
	C_Wait(4, 65);
	C_PlaySfx(5, snd_noise);
	C_Wait(5, 5);
	C_PlaySfx(6, snd_noise);
	C_Wait(6, 5);
	C_PlaySfx(7, snd_noise);
	C_Wait(7, 20);
	C_Execute(8, instance_destroy, [ui_savannahlines]);
	C_Execute(8, Encounter_Start, [5, true, false]);
	C_Execute(8, part_system_destroy, [particle.partsystem]);
	Cutscene_End(8);
}
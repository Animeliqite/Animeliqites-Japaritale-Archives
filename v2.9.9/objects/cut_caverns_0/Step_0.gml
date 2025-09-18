event_inherited();

if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_WAKEUP)==false){
	if (cutscene._current_order < 3) char_player.sprite_index = spr_char_kaban_lie;
	if (cutscene._current_order < 1) char_player.image_index = 0;
	if (cutscene._current_order == 1) char_player.image_index = 1;
	if (cutscene._current_order == 2) char_player.image_index = 2;
	C_Execute(0, BGM_SetVolume, [0, 0]);
	C_Execute(0, BGM_SetVolume, [0, 1, 30]);
	C_Execute(0, variable_instance_set, [char_player, "sprite_index", spr_char_kaban_lie]);
	C_FadeFader(0, 1, 0, 30, 0, c_white);
	C_Execute(0, variable_instance_set, [camera, "target", noone]);
	C_CreateAnim(0, camera, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, -25, 0, 60, false);
	C_Wait(0, 120);
	C_Execute(1, Object_Shake, [2, "y", char_player, 1, false]);
	C_Wait(1, 15);
	C_Execute(2, Object_Shake, [2, "y", char_player, 1, false]);
	C_Wait(2, 30);
	C_PlaySfx(3, snd_noise);
	C_Execute(3, variable_instance_set, [char_player, "sprite_index", spr_char_kaban_down]);
	C_Execute(3, variable_instance_set, [char_player, "dir", DIR.DOWN]);
	C_Wait(3, 5);
	C_Execute(4, Flag_Set, [FLAG_TYPE.STATIC, FLAG_STATIC.SCENE_WAKEUP, true]);
	C_Execute(4, variable_instance_set, [camera, "target", char_player]);
	Cutscene_End(4);
}
event_inherited();

event_user(0);
global.chapter=1;
if (Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.SCENE_001, false) == false) {
	C_Execute(0, variable_instance_set, [camera, "target", noone]);
	C_Execute(0, variable_instance_set, [char_player, "sprite_index", spr_char_kaban_sleep]);
	C_Execute(0, variable_instance_set, [char_player, "_draw_hat", false]);
	char_player.sprite_index = spr_char_kaban_sleep;
}
else {
	BGM_Stop(0);
	BGM_Play(0, bgm_birdnoise);
	Cutscene_End(-1);
}
event_inherited();

_teleported_char = false;

event_user(0);
global.chapter=1;
if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_002,false)==false){
	if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_002_1,false)==false){
		char_save._active=false;
		char_save.visible=false;
		char_player.x = -40;
		char_player.y = 230;
		char_player.collision = false;
		char_player.block_enabled = false;
		instance_deactivate_object(hint_landmark);
		instance_deactivate_object(trigger_warp);
	}
	else {
		char_save._active=false;
		char_save.visible=false;
		Cutscene_End(-1);
		_phase=1;
	}
}
else {
	_teleported_char = true;
	char_save._active=true;
	char_save.visible=true;
	char_zebra.x = -9999;
	char_zebra.y = -9999;
	char_serval.x = -9999;
	char_serval.y = -9999;
	Cutscene_End(-1);
}
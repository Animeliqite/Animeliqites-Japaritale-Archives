event_inherited();

_teleported_char = false;

global.chapter=2;
event_user(0);

if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_012,false)==false){
	repeat (5) Item_Add(item_japari_bun);
	if(instance_exists(char_save))
		char_save.visible=false;
	char_player.x=-20;
	char_player.y=180;
	char_fennec.x=char_player.x-40;
	char_fennec.y=char_player.y;
	char_arai_san.x=char_player.x+60;
	char_arai_san.y=char_player.y;
}
else {
	Cutscene_End(-1);
	layer_set_visible(layer_get_id("Assets_Trap_Open"),true);
	layer_set_visible(layer_get_id("Assets_Trap"),false);
	layer_set_visible(layer_get_id("Assets_Trap_Higher"),true);
	char_arai_san.x=-9999;
	char_arai_san.y=-9999;
	char_fennec.x=-9999;
	char_fennec.y=-9999;
	_teleported_char = true;
}
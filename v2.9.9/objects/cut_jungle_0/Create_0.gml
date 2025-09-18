event_inherited();

event_user(0);
global.chapter=2;
if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_007,false)==true){
	instance_destroy(part_junglehole_piece);
	instance_destroy(char_fennec_shadow);
	var background_id=layer_background_get_id(layer_get_id("Background_Fog"));
	layer_background_alpha(background_id,0);
}
Cutscene_End(-1);
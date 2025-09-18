event_inherited();

_teleported_char = false;

event_user(0);
if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_004,false)==false){
	char_save.visible=false;
	char_hippo.visible = false;
}
else {
	_teleported_char = true;
	char_hippo.x = -9999;
	char_hippo.y = -9999;
	Cutscene_End(-1);
}
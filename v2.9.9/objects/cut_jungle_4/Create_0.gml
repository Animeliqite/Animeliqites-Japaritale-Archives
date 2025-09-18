event_inherited();

_teleported_char = false;

global.chapter=2;
Cutscene_End(-1);

if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_010,false)==false){
	char_arai_san.dir=DIR.LEFT;
	char_fennec.dir=DIR.RIGHT;
	if(instance_exists(char_save))
		char_save.visible=false;
	global.event=-9999;
}
else {
	char_forcefield.x=-9999;
	char_forcefield.y=-9999;
	char_arai_san.x=-9999;
	char_arai_san.y=-9999;
	char_fennec.x=-9999;
	char_fennec.y=-9999;
	_teleported_char = true;
}
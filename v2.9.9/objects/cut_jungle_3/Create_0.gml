event_inherited();

_teleported_char = false;
_can_check = false;

global.chapter=2;
Cutscene_End(-1);

if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_009,false)==false){
	char_arai_san.dir=DIR.RIGHT;
	char_fennec.dir=DIR.LEFT;
}
else {
	char_arai_san.x=-9999;
	char_arai_san.y=-9999;
	char_fennec.x=-9999;
	char_fennec.y=-9999;
	_teleported_char = true;
}
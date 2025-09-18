event_inherited();

_teleported_char = false;

global.chapter=2;
Cutscene_End(-1);

if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_011,false)==false){
	global.event=-9999;
	if (instance_exists(char_jungle_trap_2_mask))
		char_jungle_trap_2_mask.hide=true;
	if (instance_exists(char_arai_san)) {
		char_arai_san.x=345;
		char_arai_san.y=198;
	}
	if(instance_exists(char_fennec)){
		char_fennec.x=-9999;
		char_fennec.y=-9999;
	}
}
else {
	if (instance_exists(char_arai_san)) {
		char_arai_san.x=-9999;
		char_arai_san.y=-9999;
	}
	if(instance_exists(char_fennec)){
		char_fennec.x=-9999;
		char_fennec.y=-9999;
	}
	_teleported_char = true;
}
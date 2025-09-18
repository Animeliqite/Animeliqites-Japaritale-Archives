event_inherited();

event_user(0);
if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_003,false)==false){
	char_serval.dir = DIR.UP;
	char_serval.dir_locked = false;
}
else {
	instance_destroy(char_forcefield);
	char_serval.x = -9999;
	char_serval.y = -9999;
	Cutscene_End(-1);
}
if(Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.MUSICLOGO_SHOWN_001,false) == false) {
	instance_create_depth(0,0,0,ui_musiclogo);
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.MUSICLOGO_SHOWN_001,true);
}
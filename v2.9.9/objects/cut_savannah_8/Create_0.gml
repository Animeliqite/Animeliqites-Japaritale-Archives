event_inherited();

event_user(0);
global.chapter=1;
if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_006,false)==false){
	BGM_Stop(0);
	char_player.x=-30;
	char_player.y=140;
	instance_deactivate_object(trigger_warp);
}
else {
	BGM_Play(0,bgm_concern);
	BGM_SetPitch(0,0.9);
	Cutscene_End(-1);
}
///@desc Trigger

event_inherited();
if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_007,false)==false){
	audio_play_sound_on(global._gmu_emitter_sfx,snd_stick_break,0,false);
	image_index=1;
}
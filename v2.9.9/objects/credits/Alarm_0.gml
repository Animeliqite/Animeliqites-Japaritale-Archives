BGM_Play(0,bgm_credits,false);
BGM_SetPitch(0,0.95);

if(global.chapter==3){
	BGM_SetVolume(0,0);
}
var Y_CHANGE=((_y_add*string_height("A"))+(_headers_height*2)*(array_length(_contents)+5.5));
Anim_Create(camera,"y",0,0,0,Y_CHANGE,audio_sound_length(BGM_GetAudio(0))*30);
alarm[1]=(audio_sound_length(BGM_GetAudio(0))*30)+120;
_phase=0;
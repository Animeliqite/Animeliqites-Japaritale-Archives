BGM_Play(0,bgm_credits,false);
var Y_CHANGE_ADD=_contents_height*60;
var Y_CHANGE=0;
Y_CHANGE=850+Y_CHANGE_ADD;
Anim_Create(camera,"y",0,0,0,Y_CHANGE,audio_sound_length(BGM_GetAudio(0))*30);
alarm[1]=audio_sound_length(BGM_GetAudio(0))*30;
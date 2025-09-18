///@desc Hurt
_inv=Player_GetInvTotal();
audio_play_sound_on(global._gmu_emitter_sfx,snd_hurt,0,false);
Camera_Shake(8,8,0,0,true,true);
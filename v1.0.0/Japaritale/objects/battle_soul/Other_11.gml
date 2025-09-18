///@desc Hurt
_inv=Player_GetInvTotal();
audio_play_sound_on(global._gmu_emitter_sfx,snd_hurt,0,false);
Camera_Shake(8,8,0,0,true,true);
Object_Shake(5,"_x_add",battle_board,0,true,0.25);
Object_Shake(5,"_y_add",battle_board,0,true,0.25);
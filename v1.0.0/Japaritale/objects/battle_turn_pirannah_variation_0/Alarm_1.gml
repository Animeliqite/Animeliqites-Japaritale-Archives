audio_play_sound_on(global._gmu_emitter_sfx,snd_spearappear,0,false);
if(Anim_IsExists(battle_enemy_cellien_big,"_rot_add_0"))||
	(Anim_IsExists(battle_enemy_cellien_big,"_rot_add_45"))||
	(Anim_IsExists(battle_enemy_cellien_big,"_rot_add_90"))||
	(Anim_IsExists(battle_enemy_cellien_big,"_rot_add_135"))||
	(Anim_IsExists(battle_enemy_cellien_big,"_rot_add_180")){
	alarm[1]=5;
}
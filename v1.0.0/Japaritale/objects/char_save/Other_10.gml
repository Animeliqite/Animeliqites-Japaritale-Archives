if(text!=""){
	event_inherited();
}

Player_Heal(999);
audio_play_sound_on(global._gmu_emitter_sfx,snd_item_heal,0,false);

instance_create_depth(0,0,0,ui_save);
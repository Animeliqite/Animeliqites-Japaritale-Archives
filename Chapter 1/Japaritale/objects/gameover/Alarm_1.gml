drawSelf=false;

repeat(6){
	instance_create_depth(x,y,-99999,gameover_shard);
	gameover_shard.image_blend = c_red;
}

audio_play_sound_on(global._gmu_emitter_sfx,snd_break_1,0,false);

alarm[2]=50;
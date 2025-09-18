if(phase==1){
	timer++;
	if(timer==30){
		BGM_SetVolume(5,0,30);
	}
	if(timer==90){
		BGM_Stop(5);
		audio_play_sound_on(global._gmu_emitter_sfx,snd_ding,false,0);
		Battle_SetSoul(battle_soul_blue);
		with(instance_create_depth(battle_board.x+battle_board.right+20,battle_board.y+battle_board.down+10,0,battle_bullet_logs)){
			image_angle=0;
			image_yscale=0.5;
			image_blend=c_white;
			spd=-8;
		}
	}
	if(timer==150){
		with(battle_enemy_arai_san){
			_scene_state = "cut_01";
			_scene_state_executed_once = false;
		}
	}
}
if(phase==0){
	timer++;
	if(timer==1) Battle_CreateLogBullet(battle_board.x+battle_board.right+20,battle_board.y+battle_board.down,-5,2,0.75,c_white,0);
	if(timer==45) Battle_CreateLogBullet(battle_board.x-battle_board.left-20,battle_board.y+battle_board.down,5,-12,1.5,c_white,0);
	if(timer==90) Battle_CreateTireBullet(battle_board.x+battle_board.right+20,battle_board.y+battle_board.down-(sprite_get_height(spr_bullet_wheel)/2),-5);
	if(timer==120) Battle_CreateTireBullet(battle_board.x-battle_board.left-20,battle_board.y+battle_board.down-(sprite_get_height(spr_bullet_wheel)/2),5);
	if(timer==160) instance_create_depth(battle_board.x+battle_board.right+10,battle_board.y+battle_board.down,0,battle_bullet_logs_final);
	if(timer==240) {
		var sequenceLayer = layer_create(-2000,"Logs");
		var sequence = layer_sequence_create(sequenceLayer,room_width+20,battle_board.y+battle_board.down,seq_logpile);
		layer_sequence_xscale(sequence, 2);
		layer_sequence_yscale(sequence, 2);
	}
	
	if(timer>240){
		battle_board._inst_frame_up.pushSoulEnabled=false;
		battle_board._inst_frame_up.block_enabled=false;
		if(instance_exists(battle_soul_blue)) {
			if(Input_IsHeld(INPUT.UP)){
				battle_soul_blue._speed_jump=5.8;
				battle_soul_blue._gravity_jump=0;
				battle_soul_blue._gravity_fall=0;
				battle_soul_blue._gravity_fall_max=0;
			}
			else{
				battle_soul_blue._speed_jump=5.8;
				battle_soul_blue._gravity_jump=0.148;
				battle_soul_blue._gravity_fall=0.25;
				battle_soul_blue._gravity_fall_max=100;
			}
		}
		if(battle_soul.y<=battle_board.y-battle_board.up+battle_soul.sprite_height+5) {
			if(battle_board.y-battle_board.up>40)
				battle_board.up+=3;
		}
	}
}
else if(phase==1){
	battle_soul_blue._speed_jump=5.8;
	battle_soul_blue._gravity_jump=0.148;
	battle_soul_blue._gravity_fall=0.25;
	battle_soul_blue._gravity_fall_max=100;
	
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.BATTLE_ROOM_RETURN,room_jungle_end);
	
	_dialogue = function () {
		with (battle_enemy_arai_san_old) {
			Battle_CreateBubble(Lang_GetString("monster.arai_san.battle_dialog.19")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_dialog.20")+"{pause}{clear}{event 8}"+
								Lang_GetString("monster.arai_san.battle_dialog.21")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_dialog.22")+"{pause}{clear}{event 9}"+
								Lang_GetString("monster.arai_san.battle_dialog.23")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_dialog.24")+"{pause}{clear}{event 2}"+
								Lang_GetString("monster.arai_san.battle_dialog.25")+"{pause}{clear}{event 5}"+
								Lang_GetString("monster.arai_san.battle_dialog.26")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_dialog.27")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_dialog.28")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_dialog.29")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_dialog.30")+"{pause}{clear}{event 0}"+
								Lang_GetString("monster.arai_san.battle_dialog.31")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_dialog.32")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_dialog.33")+"{pause}{clear}"+
								Lang_GetString("monster.arai_san.battle_dialog.34")+"{pause}{event 100}{end}","{effect -1}{voice 9}",100,-150);
		}
	}
	
	timer++;
	if(timer==1) { Anim_Create(battle_board,"up",0,0,battle_board.up,boardUp,30,0,-1,-1,ANIM_MODE.ONESHOT,false); BGM_SetVolume(5,0,60); }
	if(timer==15) { Camera_Shake(5,5,0,0,true,true); global.event=6; audio_play_sound_on(global._gmu_emitter_sfx,snd_fall,false,0); }
	if(timer==45) { Camera_Shake(5,5,0,0,true,true); global.event=7; audio_play_sound_on(global._gmu_emitter_sfx,snd_explosion,false,0); }
	if(timer==50) { Camera_Shake(5,5,0,0,true,true); audio_play_sound_on(global._gmu_emitter_sfx,snd_explosion,false,0); }
	if(timer==55) { Camera_Shake(5,5,0,0,true,true); audio_play_sound_on(global._gmu_emitter_sfx,snd_explosion,false,0); }
	if(timer==60) { BGM_Stop(5); _dialogue(); }
	if(timer==75) { Camera_Shake(5,5,0,0,true,true); audio_play_sound_on(global._gmu_emitter_sfx,snd_explosion,false,0); }
}
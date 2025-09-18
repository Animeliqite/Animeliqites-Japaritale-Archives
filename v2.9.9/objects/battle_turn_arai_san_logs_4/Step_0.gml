if(phase==0){
	alarm[0]=room_speed*3;
	phase=1;
}

if(phase==2){
	audio_play_sound_on(global._gmu_emitter_sfx,snd_slice,false,0);
	_tire=Battle_CreateTireBullet(battle_board.x+battle_board.right+60,battle_board.y+battle_board.down-(sprite_get_height(spr_bullet_wheel)/2),-5);
	alarm[0]=room_speed/2;
	phase=3;
}

if(phase==4){
	audio_play_sound_on(global._gmu_emitter_sfx,snd_whistleslide,false,0);
	_log=Battle_CreateLogBullet(battle_board.x+60,battle_board.y+battle_board.down+20,0,0,0.5,c_white,1,0,,0,0,10);
	alarm[0]=floor(room_speed/4);
	phase=5;
}


if(phase==6){
	Anim_Create(_tire,"y",0,0,_tire.y,battle_board.y-battle_board.up+_tire.sprite_height/2,15,0,-1,-1,ANIM_MODE.PINGPONG,false);
	if(instance_exists(_log))
		Anim_Create(_log,"y",0,0,_log.y,20,15,60);
	alarm[1]=15;
	alarm[0]=room_speed;
	phase=7;
}
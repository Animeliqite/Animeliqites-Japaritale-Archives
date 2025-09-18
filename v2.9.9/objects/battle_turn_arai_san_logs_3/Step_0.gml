if(phase==0){
	Anim_Create(_branch,"image_alpha",0,0,0,1,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(_branch,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,_branch.y,battle_board.y+battle_board.down+10,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	alarm[0]=45;
	phase=1;
}

if(phase==1){
	timer++;
	if(timer==1){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_exclamation,false,0);
	}
}

if(phase==2){
	battle_soul.moveable=true;
	Battle_CreateLogBullet(battle_board.x+battle_board.right+20,battle_board.y+battle_board.down+10,-5,-12,1.5,c_white);
	alarm[0]=room_speed;
	phase=3;
}

if(phase==4){
	Battle_CreateLogBullet(battle_board.x-battle_board.left-20,battle_board.y-battle_board.up-10,5,-12,-1.5,c_white);alarm[0]=room_speed;
	alarm[0]=room_speed;
	phase=5;
}

if(phase==6){
	Battle_CreateLogBullet(battle_board.x-battle_board.left-20,battle_board.y+battle_board.down+10,5,-12,1.5,c_white);alarm[0]=room_speed;
	alarm[0]=room_speed;
	phase=7;
}
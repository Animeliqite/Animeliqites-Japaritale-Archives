if(phase==0){
	Anim_Create(_trash_can,"image_angle",ANIM_TWEEN.SINE,ANIM_EASE.OUT,-540,180,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(_trash_can,"image_alpha",ANIM_TWEEN.SINE,ANIM_EASE.OUT,0,1,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(_trash_can,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,_trash_can.y,battle_board.y+battle_board.down-(_trash_can.sprite_height/2),15,30,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(_trash_can,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_trash_can.x,_trash_can.x+40,30,45,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(_trash_can,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,_trash_can.x+40,_trash_can.x-80,60,75,-1,-1,ANIM_MODE.PINGPONG,false);
	alarm[0]=45;
	phase=1;
}

if(phase==1){
	timer++;
	if(timer==1){
		audio_play_sound_on(global._gmu_emitter_sfx,snd_spearappear,false,0);
	}
}

if(phase==2){
	audio_play_sound_on(global._gmu_emitter_sfx,snd_undynestep,false,0);
	battle_soul.moveable=true;
	var chances = 0;
	Battle_CreateLogBullet(battle_board.x+battle_board.right+20,battle_board.y+battle_board.down,-5,0,1/2,(chances == 0 ? c_white : c_aqua),3);
	alarm[0]=room_speed/2;
	phase=3;
}

if(phase==4){
	var chances = 0;
	Battle_CreateLogBullet(battle_board.x+battle_board.right+20,battle_board.y+battle_board.down,-5,0,1/2,(chances == 0 ? c_white : c_aqua),3);
	alarm[0]=room_speed/2;
	phase=5;
}

if(phase==6){
	var chances = 0;
	Battle_CreateLogBullet(battle_board.x+battle_board.right+20,battle_board.y+battle_board.down,-5,0,1/2,(chances == 0 ? c_white : c_aqua),3);
	alarm[0]=room_speed/2;
	phase=7;
}

if(phase==8){
	var chances = 0;
	Battle_CreateLogBullet(battle_board.x-battle_board.left-20,battle_board.y+battle_board.down,-5,0,1/2,(chances == 0 ? c_white : c_aqua),3);
	alarm[0]=room_speed/2;
	phase=9;
}

if(phase==10){
	var chances = 0;
	Battle_CreateLogBullet(battle_board.x-battle_board.left-20,battle_board.y+battle_board.down,-5,0,1/2,(chances == 0 ? c_white : c_aqua),3);
	alarm[0]=room_speed/2;
	phase=11;
}

if(phase==12){
	var chances = 0;
	Battle_CreateLogBullet(battle_board.x-battle_board.left-20,battle_board.y+battle_board.down,-5,0,1/2,(chances == 0 ? c_white : c_aqua),3);
	alarm[0]=room_speed;
	phase=13;
}


if(phase==14){
	Anim_Destroy(_trash_can,"x");
	Anim_Create(_trash_can,"image_alpha",ANIM_TWEEN.SINE,ANIM_EASE.IN,1,0,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	Anim_Create(_trash_can,"y",ANIM_TWEEN.SINE,ANIM_EASE.IN,_trash_can.y,battle_board.y-battle_board.up,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
	alarm[0]=room_speed;
	phase=15;
}

if(phase==15){
	Battle_EndTurn();
	phase=16;
}
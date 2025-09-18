var INST=battle_turn_pirannah_variation_0;
if (INST._occupied_place == 0) {
	x=room_width;
	y=0;
}
else if (INST._occupied_place == 1) {
	x=room_width;
	y=640;
}
else if (INST._occupied_place == 2) {
	x=0;
	y=640;
}
else if (INST._occupied_place == 3) {
	x=0;
	y=0;
}
xstart=x;
xstart=y;
depth=-999;

_vine_length=-128;
_vine_direction=point_direction(x,y,battle_board.x,battle_board.y);
_pirannah_opening_amount=0;

audio_play_sound_on(global._gmu_emitter_sfx,snd_stab,0,false);
Anim_Create(id,"_vine_length",ANIM_TWEEN.SINE,ANIM_EASE.OUT,_vine_length,point_distance(x,y,battle_board.x,battle_board.y)/1.75,15,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"_vine_length",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,point_distance(x,y,battle_board.x,battle_board.y)/1.75,-60,15,15,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(id,"_pirannah_opening_amount",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,45,15,12,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"_vine_length",ANIM_TWEEN.CIRC,ANIM_EASE.IN_OUT,point_distance(x,y,battle_board.x,battle_board.y)/1.75-60,300,5,30,-1,-1,ANIM_MODE.ONESHOT,true);
Anim_Create(id,"_pirannah_opening_amount",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,45,0,5,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"_vine_length",ANIM_TWEEN.SINE,ANIM_EASE.IN,point_distance(x,y,battle_board.x,battle_board.y)/1.75+240,-128,15,65,-1,-1,ANIM_MODE.ONESHOT,false);

alarm[0]=15;
alarm[1]=30;
alarm[2]=95;
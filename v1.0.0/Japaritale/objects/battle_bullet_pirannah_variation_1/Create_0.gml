var INST=battle_turn_pirannah_variation_1;
if (INST._occupied_place == 0) {
	x=0;
	y=battle_board.y;
}
else if (INST._occupied_place == 1) {
	x=room_width;
	y=battle_board.y;
}
xstart=x;
xstart=y;
depth=-999;

_can_hit=false;
_vine_curve=0;
_vine_length=-256;
_vine_direction=point_direction(x,y,battle_board.x,battle_board.y);
_pirannah_opening_amount=0;

audio_play_sound_on(global._gmu_emitter_sfx,snd_gb_charge,0,false);
Anim_Create(id,"_vine_length",ANIM_TWEEN.SINE,ANIM_EASE.OUT,_vine_length,point_distance(x,y,battle_board.x,battle_board.y)/2,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"_pirannah_opening_amount",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,45,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"_pirannah_opening_amount",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,45,0,5,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"_vine_length",ANIM_TWEEN.SINE,ANIM_EASE.IN,point_distance(x,y,battle_board.x,battle_board.y)/2,-256,30,30,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"_vine_curve",ANIM_TWEEN.SINE,ANIM_EASE.IN,0,25,30,30,-1,-1,ANIM_MODE.ONESHOT,false);

alarm[0]=30;
alarm[1]=60;
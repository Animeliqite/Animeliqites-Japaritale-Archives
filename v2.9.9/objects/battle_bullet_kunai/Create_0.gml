state=0;

_angle_spd=0;
_angle_spd_max=20;

_move_spd=0;
_move_spd_max=40;

_dir=DIR.DOWN;

_hit_player_executed_once=false;

Sfx_Play(snd_spearappear);
Anim_Create(id,"image_alpha",ANIM_TWEEN.SINE,ANIM_EASE.OUT,0,1,15,0,-1,-1,ANIM_MODE.ONESHOT,false);
image_speed=0;
image_index=0;
depth=-9999;
alarm[0]=1;

_hit_player=function(){
	state="hit_player";
}

_rotate=function(){
	state="rotate";
}
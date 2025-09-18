state="";

_angle_spd=0;
_angle_spd_max=20;

_move_spd=0;
_move_spd_max=40;

_hit_player_executed_once=false;
_hit_dir=0;

Sfx_Play(snd_spearappear);
Anim_Create(id,"image_angle",ANIM_TWEEN.SINE,ANIM_EASE.OUT,-720,0,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
Anim_Create(id,"image_alpha",ANIM_TWEEN.SINE,ANIM_EASE.OUT,0,1,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
depth=-9999;

_hit_player=function(){
	state="hit_player";
}

_rotate=function(){
	state="rotate";
}
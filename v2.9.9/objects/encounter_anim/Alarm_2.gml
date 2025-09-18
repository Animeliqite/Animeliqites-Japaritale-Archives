if(_flash<3){
	_draw_soul=!_draw_soul;
	if(_draw_soul){
		_flash+=1;
		Sfx_Play(snd_noise);
	}
	alarm[2]=1*(!_quick ? 2 : 1);
}else{
	_draw_player=false;
	_draw_soul=true;
	var duration=8*(!_quick ? 2 : 1);
	Anim_Create(id,"_draw_soul_x",ANIM_TWEEN.LINEAR,ANIM_EASE.OUT,_draw_soul_x,_soul_x-_draw_soul_x,duration);
	Anim_Create(id,"_draw_soul_y",ANIM_TWEEN.LINEAR,ANIM_EASE.OUT,_draw_soul_y,_soul_y-_draw_soul_y,duration);
	Sfx_Play(snd_encounter_soul_move);
	alarm[3]=10*(!_quick ? 2 : 1);
}
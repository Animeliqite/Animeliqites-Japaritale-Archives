if(_flash<3){
	_draw_soul=!_draw_soul;
	if(_draw_soul){
		_flash+=1;
		audio_play_sound_on(global._gmu_emitter_sfx,snd_noise,0,false);
	}
	alarm[2]=1*(!_quick ? 2 : 1);
}else{
	_draw_player=false;
	_draw_soul=true;
	var duration=8*(!_quick ? 2 : 1);
	Anim_Create(id,"_draw_soul_x",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,_draw_soul_x,_soul_x-_draw_soul_x,duration);
	Anim_Create(id,"_draw_soul_y",ANIM_TWEEN.CIRC,ANIM_EASE.OUT,_draw_soul_y,_soul_y-_draw_soul_y,duration);
	audio_play_sound_on(global._gmu_emitter_sfx,snd_encounter_soul_move,0,false);
	alarm[3]=10*(!_quick ? 2 : 1);
}
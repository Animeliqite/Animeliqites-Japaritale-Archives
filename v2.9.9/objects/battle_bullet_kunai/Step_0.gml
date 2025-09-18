switch(state){
	case 1:
		if(!place_meeting(x,y+sprite_yoffset,block_kunai)){
			if(!_hit_player_executed_once){
				Sfx_Play(snd_throw);
				_hit_player_executed_once=true;
			}
			if(_move_spd<_move_spd_max) _move_spd++;
			x+=lengthdir_x(_move_spd,_dir);
			y+=lengthdir_y(_move_spd,_dir);
			image_angle=_dir;
		}
		else{
			image_index=1;
			Sfx_Play(snd_grab);
			state=2;
			Anim_Create(id,"image_alpha",ANIM_TWEEN.SINE,ANIM_EASE.OUT,1,0,30,0,-1,-1,ANIM_MODE.ONESHOT,false);
			if(alarm[1]<0) alarm[1]=30;
		}
		break;
}
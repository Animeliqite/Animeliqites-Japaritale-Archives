switch(state){
	case "rotate":
		image_angle+=_angle_spd;
		if(_angle_spd<_angle_spd_max)
			_angle_spd++;
		break;
	case "hit_player":
		Anim_Destroy(id,"image_angle");
		if(!_hit_player_executed_once){
			Sfx_Play(snd_throw);
			_hit_dir=point_direction(x,y,char_player.x,char_player.y);
			_hit_player_executed_once=true;
		}
		if(_angle_spd<_angle_spd_max) _angle_spd++;
		if(_move_spd<_move_spd_max) _move_spd++;
		x+=lengthdir_x(_move_spd,_hit_dir);
		y+=lengthdir_y(_move_spd,_hit_dir);
		image_angle+=_angle_spd;
		break;
}
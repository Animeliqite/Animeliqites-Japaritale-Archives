event_inherited();

sprite_index=_spr;

if(!_puzzle_done){
	if place_meeting(x-_push_speed,y,block)||place_meeting(x-_push_speed,y,block_puzzle)
	    _avoid_angle=0;
	else if place_meeting(x+_push_speed,y,block)||place_meeting(x+_push_speed,y,block_puzzle)
	    _avoid_angle=180;
	else if place_meeting(x,y-_push_speed,block)||place_meeting(x,y-_push_speed,block_puzzle)
	    _avoid_angle=270;
	else if place_meeting(x,y+_push_speed,block)||place_meeting(x,y+_push_speed,block)
	    _avoid_angle=90;
	else _avoid_angle=-1;

	if (_avoid_angle!=-1) {
		var _avoid_x=lengthdir_x(_avoidance_distance,_avoid_angle);
		var _avoid_y=lengthdir_y(_avoidance_distance,_avoid_angle);
		
		image_index+=_push_speed/15;
		
		if(_can_go_hor){
			x+=_avoid_x;
			if(alarm[0]<0) alarm[0]=2;
			_part_dir=_avoid_angle;
		}
		if(_can_go_ver){
			y+=_avoid_y;
			if(alarm[0]<0) alarm[0]=2;
			_part_dir=_avoid_angle;
		}
	}
}
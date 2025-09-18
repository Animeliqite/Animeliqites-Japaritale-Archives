if(shake_x>0){
	if(_shake_time_x>0){
		_shake_time_x-=2;
	}else{
		if(!shake_random_x){
			if(_shake_positive_x){
				_shake_pos_x=shake_x;
			}else{
				shake_x-=shake_decrease_x;
				_shake_pos_x=-shake_x;
			}
			_shake_positive_x=!_shake_positive_x;
		}else{
			_shake_pos_x=random_range(-shake_x,shake_x);
			shake_x-=shake_decrease_x;
		}
		_shake_time_x=shake_speed_x;
	}
}else{
	shake_speed_x=0;
	shake_decrease_x=1;
	shake_random_x=false;
	_shake_time_x=0;
	_shake_pos_x=0;
	_shake_positive_x=true;
}
if(shake_y>0){
	if(_shake_time_y>0){
		_shake_time_y-=2;
	}else{
		if(!shake_random_y){
			if(_shake_positive_y){
				_shake_pos_y=shake_y;
			}else{
				shake_y-=shake_decrease_y;
				_shake_pos_y=-shake_y;
			}
			_shake_positive_y=!_shake_positive_y;
		}else{
			_shake_pos_y=random_range(-shake_y,shake_y);
			shake_y-=shake_decrease_y;
		}
		_shake_time_y=shake_speed_y;
	}
}else{
	shake_speed_y=0;
	shake_decrease_y=1;
	shake_random_y=false;
	_shake_time_y=0;
	_shake_pos_y=0;
	_shake_positive_y=true;
}


if(!instance_exists(target)){
	camera_set_view_pos(_camera,x+_shake_pos_x,y+_shake_pos_y);
}else{
	camera_set_view_border(_camera,(width/scale_x/2)*offset_amount_x+offset_pos_x,(height/scale_y/2)*offset_amount_y+offset_pos_y);
	
    if (_clamp_to_borders) {
        if(_follow_x) x=median(0, (target.x*offset_amount_x-(width/scale_x/2)), room_width-(width/scale_x)-_shake_pos_x);
    	if(_follow_y) y=median(0, (target.y*offset_amount_y-(width/scale_x/2)), room_height-(height/scale_y-_shake_pos_y));
    }
    else {
        if(_follow_x) x=target.x*offset_amount_x-(width/scale_x/2);
        if(_follow_y) y=target.y*offset_amount_y-(width/scale_x/2);
    }
    
    camera_set_view_pos(_camera,x+shake_x+offset_pos_x,y+shake_y+offset_pos_y);
}
camera_set_view_size(_camera,width/scale_x,height/scale_y);
camera_set_view_angle(_camera,angle);

moveToObject = function (_target,duration=60) {
	Anim_Create(id,"x",0,0,x,median(0,_target.x-(width/scale_x/2),room_width-(width/scale_x)),duration,0,-1,-1,0,false);
	Anim_Create(id,"y",0,0,y,median(0,_target.y-(width/scale_x/2),room_height-(height/scale_y)),duration,0,-1,-1,0,false);
}

moveToPos = function (_x,_y,duration=60) {
	Anim_Create(id,"x",0,0,x,median(0,_x-(width/scale_x/2),room_width-(width/scale_x)),duration,0,-1,-1,0,false);
	Anim_Create(id,"y",0,0,y,median(0,_y-(width/scale_x/2),room_height-(height/scale_y)),duration,0,-1,-1,0,false);
}
image_xscale=(_dir==DIR.RIGHT ? 2 : -2);
direction=_dir;
speed=_spd;

switch(_phase){
	case "idle":
		sprite_index=_run_sprite;
		image_angle=0;
		if(alarm[0]<0){
			alarm[0]=15;
		}
		break;
	case "run":
		sprite_index=_run_sprite;
		image_angle=0;
		
		if(!_has_jumped_once){
			if(distance_to_point(_jump_point,y)<_jump_point_offset){
				_vspd=16;
				_phase="jump";
				_has_jumped_once=true;
				if(!_instantiated_bullet){
					if(random(100)>50){
						_instantiate_bullet(_dir);
					}
				}
			}
		}
		break;
	case "jump":
		sprite_index=_jump_sprite;
		image_angle+=(_dir==DIR.RIGHT ? 20 : -20);
		y-=_vspd;
		
		if(y<ystart) {
			_vspd-=_grav;
			
			if(_vspd<=0&&!_instantiated_bullet) {
				_instantiate_bullet(DIR.DOWN);
			}
		}
		else {
			_phase="run";
			_vspd=0;
			y=ystart;
		}
		break;
}
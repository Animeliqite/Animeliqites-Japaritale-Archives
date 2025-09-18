part_system_position(_part,x,y);
part_system_global_space(_part,true);
image_angle=_rot;

switch(_phase){
	case 1:
		if(_x_rand<2&&_y_rand<2){
		    _x_rand=approach(_x_rand,2,0.25);
		    _y_rand=approach(_y_rand,2,0.25);
		    _rot_rand=approach(_rot_rand,2,0.25);
		}
		break;
	case 2:
	    with (instance_create_depth(x,y,0,battle_bullet_duelbattle_explosion)) {
	        image_xscale=1.5;
	        image_yscale=1.5;
	        image_angle=image_angle;
	    }
	    instance_destroy();
		break;
}
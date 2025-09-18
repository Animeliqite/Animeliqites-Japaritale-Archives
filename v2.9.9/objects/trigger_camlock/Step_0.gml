var user=user_char;
var result=false;
var cam=camera;
var inst=id;
if(instance_exists(char)){
	with(char){
		if(char_id==user||user==-1){
			result=place_meeting(x,y,other);
			if(result){
				break;
			}
		}
	}
}

_target = function (coord) {
	var cam=camera;
	var _out=0;
	
	if(instance_exists(targetObject)){
		if(coord=="x")
			_out = (followObjectX ? targetObject.x : targetX);
		if(coord=="y")
			_out = (followObjectY ? targetObject.y : targetY);
	}
	else {
		if(coord=="x")
			_out = targetX;
		if(coord=="y")
			_out = targetY;
	}
	
	if(coord=="x")
		_out=clamp(_out-(cam.width/cam.scale_x/2),0,room_width-(cam.width/cam.scale_x));
	else
		_out=clamp(_out-(cam.width/cam.scale_y/2),0,room_height-(cam.height/cam.scale_y));
	
	return _out;
}

if(result){
	if(point_distance(cam.x,cam.y,_target("x"),_target("y"))>spd*2){
		cam.target=noone;
		with (cam) {
			cam.x = approach(cam.x, inst._target("x"), inst.spd);
			cam.y = approach(cam.y, inst._target("y"), inst.spd);
		}
	}
	else {
		show_debug_message("works!");
		cam.target=collider;
		if (!followObjectY) cam._follow_y=false;
		else if (!followObjectX) cam._follow_x=false;
	}
}else if(!result){
	var _x=clamp(collider.x-(cam.width/cam.scale_x/2),0,room_width-(cam.width/cam.scale_x));
	var _y=clamp(collider.y-(cam.width/cam.scale_y/2),0,room_height-(cam.height/cam.scale_y));
	if(point_distance(cam.x,cam.y,_x,_y)>collider.move_speed[collider.dir]*2){
		with (cam) mp_linear_step(_x,_y,inst.collider.move_speed[inst.collider.dir]*2,false)
	}
	else{
		cam.target=collider;
	}
}
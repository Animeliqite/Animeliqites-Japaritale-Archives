function Battle_CreateLogBullet(_x,_y,_speed=3,_angle=0,_height=1,_blend=c_white,func=0,_x_to=0,_y_to=0,tween=0,ease=0,duration=30,delay=0){
	var inst=instance_create_depth(_x,_y,0,battle_bullet_logs);
	with(inst){
		image_angle=_angle;
		image_yscale=_height;
		image_blend=_blend;
		spd=_speed;
		inst.func=func;
		inst._x=_x;
		inst._y=_y;
		inst.tween=tween;
		inst.ease=ease;
		inst.duration=duration;
		inst.delay=delay;
	}
	return inst;
}
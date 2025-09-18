function Battle_CreateTireBullet(_x,_y,_speed=3){
	var inst=instance_create_depth(_x,_y,0,battle_bullet_tire);
	with(inst){
		spd=_speed;
	}
	return inst;
}
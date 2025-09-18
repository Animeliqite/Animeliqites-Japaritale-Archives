if (_occupied_place < 3) {
	_occupied_place++;
	instance_create_depth(0,0,0,battle_bullet_pirannah_variation_0);
	alarm[0]=30;
}
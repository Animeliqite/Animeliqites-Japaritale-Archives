var _inst = id, xx = _x_dest, yy = _y_dest;
with (_moving_object) {
	// Check if distance is more than the speed
	if (point_distance(x, y, xx, yy) >= _inst.spd) {
		var direc = point_direction(x, y, xx, yy),
			ldirx = lengthdir_x(_inst.spd, direc),
			ldiry = lengthdir_y(_inst.spd, direc);
		
		x += ldirx;
		y += ldiry;
		moveable = false;
		direction = direc;
		image_index += _inst.spd / 15;
		if(_inst._fixed_dir==undefined)
			dir = Char_ConvertDirection(id);
		else dir = _inst._fixed_dir;
		
		if (_inst._moving_object == char_player) && (_inst._running)
			running = true;
	}
	else {
		if (_inst._moving_object == char_player) && (_inst._running)
			running = false;
		_inst._on_end();
		image_speed = 0;
		image_index = 0;
		moveable = true;
		x = xx;
		y = yy;
		
		instance_destroy(_inst);
	}
}
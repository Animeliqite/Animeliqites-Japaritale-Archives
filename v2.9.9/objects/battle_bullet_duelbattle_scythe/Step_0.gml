if (_phase == 0) {
    _timer++;
    
    if (_timer == 15) {
        Anim_Create(id, "x", ANIM_TWEEN.SINE, ANIM_EASE.IN, x, 40, 15, 0, -1, -1, ANIM_MODE.ONESHOT, true);
        Anim_Create(id, "y", ANIM_TWEEN.SINE, ANIM_EASE.IN, y, -(sprite_width * 2) - 20, 15, 0, -1, -1, ANIM_MODE.ONESHOT, false);
        Anim_Create(id, "image_angle", ANIM_TWEEN.SINE, ANIM_EASE.OUT, image_angle, 10, 5, 0, -1, -1, ANIM_MODE.ONESHOT, true);
		
		_prev_x = _soul_x - (sprite_height * 2) + _point_y * 2;
		_prev_y = _soul_y - (sprite_width * 2) + (sprite_width - _point_x) * 2
		
		Sfx_Play(snd_grab);
		
		_phase = 1;
		_timer = 0;
    }
}

if (_phase == 1) {
	battle_soul.x = x + lengthdir_x(_point_y, image_angle + 90) * 2;
    battle_soul.y = y + lengthdir_y(_point_x, image_angle) * 2;
	
    _timer++;
	
	if (_timer >= 15){
		instance_destroy();
	}
}

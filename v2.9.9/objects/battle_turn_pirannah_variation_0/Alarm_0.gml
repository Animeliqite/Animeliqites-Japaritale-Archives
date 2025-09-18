if (_occupied_place < 3) {
	_occupied_place++;
	
	var INST=battle_enemy_cellien_big;
	switch (_occupied_place) {
		case 2:
			Anim_Create(battle_enemy_cellien_big,"_rot_add_45",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,INST._rot_add_45,0,5,15,-1,-1,ANIM_MODE.ONESHOT,false);
			break;
		case 3:
			Anim_Create(battle_enemy_cellien_big,"_rot_add_0",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,INST._rot_add_0,0,5,10,-1,-1,ANIM_MODE.ONESHOT,false);
			break;
	}
	
	instance_create_depth(0,0,0,battle_bullet_pirannah_variation_0);
	alarm[0]=30;
}
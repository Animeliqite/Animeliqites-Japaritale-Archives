if(!_stop_attacking){
	audio_play_sound_on(global._gmu_emitter_sfx,snd_cellien_shoot,0,false);
	var ENEMY=battle_enemy_cellien_big;
	var INST=instance_create_depth(ENEMY.x+ENEMY._eye_x+ENEMY._eye_x_add,ENEMY.y-(ENEMY.sprite_height/2)+ENEMY._eye_y+ENEMY._eye_y_add,-999,battle_bullet_sparkle);
	INST._hurt_amount=3;
	INST.direction=point_direction(ENEMY.x+ENEMY._eye_black_x+ENEMY._eye_black_x_add,ENEMY.y-(ENEMY.sprite_height/2)+ENEMY._eye_black_y+ENEMY._eye_black_y_add,ENEMY.x+ENEMY._eye_x+ENEMY._eye_x_add,ENEMY.y-(ENEMY.sprite_height/2)+ENEMY._eye_y+ENEMY._eye_y_add);
	INST.speed=10;
	alarm[0] = 5;
}
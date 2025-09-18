var INST = battle_enemy_cellien_big;
if (collision_circle(INST.x+INST._body_x+INST._body_x_add,INST.y-(INST.sprite_height/2)+INST._body_y+INST._body_y_add,75,battle_soul,true,false)){
	if(battle_soul._inv<=0){
		with (battle_soul) event_user(1);
		Player_Hurt(3);
	}
}
///@desc Soul Collision

hurt = function(){
	if((func==-1)&&(!alreadyHurt))||(func!=-1){
		//Hurt the player
		Player_Hurt(Player_CalculateDamage(4));
	
		//Let the soul show the hurt animation
		Battle_CallSoulEventHurt();
	
		if(func!=-1) instance_destroy();
	}
}

if(image_blend==c_orange){
	if(!battle_soul._moving)
		hurt();
}
else if(image_blend==c_aqua){
	if(battle_soul._moving)
		hurt();
}
else{
	hurt();
}

if(func==-1)&&(!alreadyHurt){
	with (battle_bullet_logs) {
		battle_board._inst_frame_up.block_enabled=true;
		if(Encounter_GetEnemy(6,1)==battle_enemy_arai_san_old){
			if(instance_exists(battle_turn_arai_san_logs_last)) battle_turn_arai_san_logs_last.phase=1; battle_turn_arai_san_logs_last.timer=0;
			if(instance_exists(battle_soul_blue)) battle_soul_blue._gravity_jump=0.148;
		}
		Anim_Create(id,"image_angle",0,0,image_angle,random_range(64,128),90,0,-1,-1,ANIM_MODE.ONESHOT,true);
		//sprite_set_offset(sprite_index,sprite_width/2,sprite_height/2);
		gravity=0.2;
		direction=270;
		alreadyHurt=true;
	}
}
if(_can_hit){
	if(collision_line(x,y,x+lengthdir_x(_vine_length,_vine_direction),y+lengthdir_y(_vine_length,_vine_direction),battle_soul,true,false))||
		(collision_circle(x+lengthdir_x(_vine_length+sprite_get_width(spr_cellien_big_monster_pirannah_big),_vine_direction),y+lengthdir_y(_vine_length+sprite_get_width(spr_cellien_big_monster_pirannah_big),_vine_direction),50,battle_soul,true,false)){
		Battle_CallSoulEventBulletCollision();
	}
}
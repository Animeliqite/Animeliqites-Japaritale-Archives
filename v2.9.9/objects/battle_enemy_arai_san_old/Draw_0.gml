draw_sprite_ext(spr_arai_san_monster_tail,0,x+_shake_x,y+_shake_y-77,_body_tail_scale_x,_body_tail_scale_y,0,c_white,image_alpha); // Tail
draw_sprite_ext(spr_arai_san_monster_legs,0,x+_shake_x,y+_shake_y,2,2,0,c_white,image_alpha); // Legs
draw_sprite_ext(spr_arai_san_monster_skirt,0,x+_shake_x+16,y+_shake_y-114+_body_head_offset_y,2,2,_body_skirt_rotation,c_white,image_alpha); // Skirt
draw_sprite_ext(spr_arai_san_monster_arms,0,x+_shake_x-28,y+_shake_y-144+_body_head_offset_y*1.5,2,2,-_body_arm_rotation,c_white,image_alpha); // Arms (Left)
draw_sprite_ext(spr_arai_san_monster_arms,0,x+_shake_x+28,y+_shake_y-144+_body_head_offset_y*1.5,-2,2,_body_arm_rotation,c_white,image_alpha); // Arms (Right)
draw_sprite_ext(spr_arai_san_monster_torso,0,x+_shake_x,y+_shake_y-98+_body_head_offset_y,2,2,0,c_white,image_alpha); // Torso
draw_sprite_ext(spr_arai_san_monster_head,_face_expression,x+_shake_x,y+_shake_y-154+_body_head_offset_y,2,2,0,c_white,image_alpha); // Head

if(_cutscene_0){
	draw_sprite_ext(spr_battle_fennec_normal,0,_fennec_x,_fennec_y,-2,2,12,c_white,1);
}

if(_face_expression==7){
	draw_sprite_ext(spr_arai_san_monster_head_eyes,0,x+random_range(-1,1),y-154+_body_head_offset_y+random_range(-1,1),2,2,0,c_white,image_alpha); // Eyes
}

randomize();
var rand=random(100);
if(_rand_shake>0){
	if(rand>95-(2*_rand_shake)){
		instance_create_depth(x, y-144, DEPTH_BATTLE.ENEMY+1, battle_enemy_zebra_sweat);
		_shake_x=random_range(-1,1);
	}
	else{
		_shake_x=0;
	}
}
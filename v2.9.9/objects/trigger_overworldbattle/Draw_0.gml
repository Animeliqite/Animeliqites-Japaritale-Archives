var player = char_player;
if(global.in_overworld_battle||player._heart_alpha>0){
	draw_sprite_ext(spr_pixel,0,camera.x,camera.y,camera.width/camera.scale_x,camera.height/camera.scale_y,0,c_black,player._heart_alpha/2);
	draw_sprite_ext(spr_battle_soul_red_outline,player._hurt_inv_heart_img_index,player.x,player.y-(player.sprite_height/2),0.5,0.5,0,c_white,player._heart_alpha);
	draw_sprite_ext(spr_battle_soul_red_outline,player._hurt_inv_heart_img_index,player.x,player.y-(player.sprite_height/2),player._heart_scale,player._heart_scale,0,c_white,player._heart_alpha2);
}

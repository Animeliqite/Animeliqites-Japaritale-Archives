if(_draw_black){
	draw_sprite_ext(spr_pixel,0,0,0,640,480,0,c_black,1);
}
if(_draw_player){
	draw_sprite_ext(char_player.sprite_index,char_player.image_index,(char_player.x-camera.x)*2,(char_player.y-camera.y)*2,char_player.image_xscale*2,char_player.image_yscale*2,char_player.image_angle,char_player.image_blend,char_player.image_alpha);
}
if(_draw_soul){
	draw_sprite_ext(spr_battle_soul_red_outline,0,_draw_soul_x,_draw_soul_y,1,1,0,c_white, 1);
}
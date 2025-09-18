if(!visible) exit;
if(!instance_exists(obj)) exit;

if(!surface_exists(_surf)){
	_surf=surface_create(1024,512);
}
else{
	surface_set_target(_surf);
	draw_clear_alpha(c_black,0);
	draw_sprite_ext(sprite_index,image_index,64,64,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	gpu_set_colorwriteenable(1,1,1,0);
	draw_sprite_ext(obj.sprite_index,obj.image_index,(obj.x-x)+64,(obj.y-y)+64,obj.image_xscale,-obj.image_yscale,obj.image_angle,obj_blend,obj.image_alpha);
	if(obj==char_player)
		draw_sprite_ext(spr_char_kaban_hat,(obj.dir==DIR.DOWN ? 0 : (obj.dir==DIR.RIGHT ? 1 : (obj.dir==DIR.UP ? 2 : 3))),((obj.x+obj.hatOffsetX)-x)+64,((obj.y-obj.PIXEL_CHECK-obj.hatOffsetY)-y)+64,obj.image_xscale,-obj.image_yscale,obj.image_angle,obj_blend,obj.image_alpha);
	gpu_set_colorwriteenable(1,1,1,1);
	surface_reset_target();
	draw_surface(_surf,x-64,y-64);
}
if (!surface_exists(surf))
	surf = surface_create(2048, 2048);
else {
	surface_set_target(surf);
	draw_clear_alpha(c_black,0);
	draw_sprite_ext(spr_dramaticcut,0,xx*2.5,0*2.5,((640/sprite_get_width(spr_dramaticcut))*2)*2.5,(_bar_distance/sprite_get_height(spr_dramaticcut))*2.5,0,c_black,1);
	draw_sprite_ext(spr_dramaticcut,0,xx*2.5,480*2.5,((640/sprite_get_width(spr_dramaticcut))*2)*2.5,(-_bar_distance/sprite_get_height(spr_dramaticcut))*2.5,0,c_black,1);
	surface_reset_target();
	draw_surface_part_ext(surf,0,0,1600,1200,0,0,0.4,0.4,c_white,1);
}
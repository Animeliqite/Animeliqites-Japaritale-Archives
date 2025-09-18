if(!surface_exists(surf)){
	surf = surface_create(2048,2048);
}
else {
	surface_set_target(surf);
	draw_clear_alpha(c_black,0);
	draw_sprite_ext(spr_pixel,0,0,0,room_width,room_height,0,c_black,_alpha);

	gpu_set_blendequation(bm_eq_subtract);
	event_user(0);
	gpu_set_blendequation(bm_eq_add);
	
	surface_reset_target();
	draw_surface_part(surf,0,0,room_width,room_height,0,0);
}
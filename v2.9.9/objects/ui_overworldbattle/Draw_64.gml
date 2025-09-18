draw_set_font(font_crypt_of_tomorrow);
draw_set_color(c_white);
if(!surface_exists(_surf))
	_surf=surface_create(1024,512);
else{
	surface_set_target(_surf);
	draw_clear_alpha(c_black,0);
	draw_sprite_ext(spr_pixel,0,510,426+_ui_y,130,54,0,c_black,0.75);
	draw_text_transformed(520,430+_ui_y,"HP "+string(Player_GetHp())+"/"+string(Player_GetHpMax()),2,2,0);
	draw_healthbar(520,458+_ui_y,630,472+_ui_y,(Player_GetHp()/Player_GetHpMax())*100,c_maroon,c_yellow,c_yellow,0,true,false);
	surface_reset_target();
	draw_surface_part_ext(_surf,0,0,640,480,0,0,1,1,c_white,_ui_alpha);
}
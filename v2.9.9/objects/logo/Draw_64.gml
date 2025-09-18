var w=sprite_get_width(_spr)/2;
var h=sprite_get_height(_spr)/2;

if(_show){
	draw_sprite_ext(_spr,0,320-w*2.5,240-h*2.5,2.5,2.5,0,c_white,1);
	if(_hint){
		draw_set_font(font_crypt_of_tomorrow);
		draw_set_halign(fa_middle);
		draw_set_color(c_gray);
		draw_text_ext_transformed(320,360,Lang_GetString("ui.menu.press_z"),9,-1,2,2,0);
		draw_set_halign(fa_left);
	}
}
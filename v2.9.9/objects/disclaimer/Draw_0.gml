draw_set_font(Lang_GetFont("determination_mono"));
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_alpha(_alpha_disclaimer);
draw_set_color(c_yellow);
draw_text_ext_transformed(room_width/2,20,Lang_GetString("disclaimer.logo"),-1,-1,1,1,0);

for (var i=0; i<_msg; i++){
	draw_set_alpha(variable_instance_get(id,$"_alpha{i}"));
	draw_set_color(c_white);
	draw_text_ext_transformed(room_width/2,_y[i],Lang_GetString($"disclaimer.text.{i}"),-1,-1,1,1,0);
}
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
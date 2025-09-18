if(GAME_DEBUG&&global.debug_menu){
	var str="DEVELOPMENT BUILD, NOT FINAL";
	draw_set_font(Lang_GetFont("dotumche"));
	var strlen=string_width(str);
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(10,10,40+strlen,40,false);
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(20,20,str);
}
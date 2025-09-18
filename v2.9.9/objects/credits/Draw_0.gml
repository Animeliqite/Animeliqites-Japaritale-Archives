draw_set_font(Lang_GetFont("determination_sans"));

if(global.chapter!=3){
	for(var a=array_length(_sprites)-1; a>=0; a--){
		if(xx[a]>=-sprite_get_width(_sprites[a]))
			xx[a] -= _x_multipliers[a];
		else xx[a] = 0;
	
		draw_sprite_ext(_sprites[a],_subimgs[a],xx[a],camera.y,_x_scales[a],_y_scales[a],0,c_white,1);
	}
}

var spr=Lang_GetSprite("ui.logo", spr_default);
var w=sprite_get_width(spr)/2;
var h=sprite_get_height(spr)/2;

draw_sprite_ext(spr_pixel, 0, 0, 0, 640, 999999, 0, c_black, 0.75);
draw_sprite_ext(spr_pixel, 0, 60, 0, 640 - 120, 999999, 0, c_black, 0.6);
draw_sprite_ext(spr, 0, 320-w*2, 240-h*2, 2, 2, 0, c_white, 1);
/*
for (var i = 0; i < array_length(_contents); i++) {
	draw_set_color(c_silver);
	draw_text_transformed(_headers_x,700+(_headers_height*(array_length(_contents[i])-1+(_tab_spacing))*i),_headers[i][0],2,2,0);
	for (var j = 0; j < array_length(_contents[i]); j++) {
		draw_set_color(c_white)
		draw_text_transformed(_contents_x,700+_headers_height+(((array_length(_contents[i])-1+_tab_spacing)*_contents_height)*i)+(_contents_height*j),_contents[i][j],2,2,0);
	}
}
*/
var _y=0;
for (var i = 0; i < array_length(_headers); i++) {
	var str_last = string_count("#", _contents[i])+1;
	var str_offset = (string_height(_contents[i]));
	draw_set_alpha(1);
	draw_set_color(c_yellow);
	draw_set_halign(fa_center);
	draw_text_transformed(_headers_x,700+(_y*str_offset)+(_headers_height*2)*i-_contents_height,_headers[i],2,2,0);
	draw_set_color(c_white);
	draw_text_transformed(_contents_x,700+(_y*str_offset)+(_headers_height*2)*i,string_hash_to_newline(_contents[i]),2,2,0);
	_y += str_last;
}
_y_add=_y;

draw_set_halign(fa_left);
draw_sprite_ext(spr_grape_kun,0,320,((_y_add*string_height("A"))+(_headers_height*2)*(array_length(_contents)+4))+120,1,1,0,c_white,1);

draw_set_alpha(1);
var god_help_me = "don't mind the spaghetti all around the floor my brain has just commited suicide writing this piece of code"

/*
var HEADER_Y=0, CONTENT_Y=0;
for (var i = 0; i < array_length(_contents); i++) {
	HEADER_Y+=array_length(_contents[i])*(_headers_height/max(1,i))*i;
	draw_set_color(c_silver);
	draw_text_transformed(_headers_x,700+HEADER_Y,_headers[i],2,2,0);

	for (var j = 0; j < array_length(_contents[i]); j++){
		CONTENT_Y+=_contents_height*j;
		draw_set_color(c_white);
		draw_text_transformed(_contents_x,700+HEADER_Y+CONTENT_Y-(_contents_height*(array_length(_contents[i])-1))*logn(j,log2(2)),_contents[i][j],2,2,0);
		show_debug_message("\nHEADER Y: " + string(HEADER_Y) + "\nCONTENT Y: " + string(HEADER_Y+CONTENT_Y) + "\nI: " + string(i) + "\n----------------------");
	}
}
*/
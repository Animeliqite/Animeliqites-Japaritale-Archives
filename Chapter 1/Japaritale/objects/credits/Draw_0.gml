draw_set_font(font_determination_sans_jp);

for(var a=array_length(_sprites)-1; a>=0; a--){
	if(xx[a]>=-sprite_get_width(_sprites[a]))
		xx[a] -= _x_multipliers[a];
	else xx[a] = 0;
	
	draw_sprite_ext(_sprites[a],_subimgs[a],xx[a],camera.y,_x_scales[a],_y_scales[a],0,c_white,1);
}

draw_sprite_ext(spr_pixel, 0, 0, 0, 640, 999999, 0, c_black, 0.75);
draw_sprite_ext(spr_pixel, 0, 60, 0, 640 - 120, 999999, 0, c_black, 0.6);
draw_sprite_ext(spr_logo, 0, 320, 240, 2, 2, 0, c_white, 1);

for (var i = 0; i < array_length(_headers); i++) {
	draw_set_color(c_silver);
	draw_set_alpha(_headers_lerp_x[i]+1);
	draw_text_transformed(_headers_x+(_headers_lerp_x[i]*40),700+(_headers[i][1].y),_headers[i][0],2,2,0);
	
	if (700+_headers[i][1].y < (camera.y + (camera.height / 1.25)))
		_headers_lerp_x[i]=lerp(_headers_lerp_x[i],0,0.25);
}

for (var j = 0; j < array_length(_contents); j++) {
	draw_set_color(c_white);
	for (var h = 0; h < array_length(_contents[j][0]); h++) {
		draw_set_alpha(_contents_lerp_x[j][h]+1);
		draw_text_transformed(_contents_x+(_contents_lerp_x[j][h]*40),700+(_contents[j][1].y)+(_contents_height*h),_contents[j][0][h],2,2,0);
		if (700+_contents[j][1].y+(_contents_height*h) < (camera.y + (camera.height / 1.25)))
			_contents_lerp_x[j][h]=lerp(_contents_lerp_x[j][h],0,0.25);
	}
}

draw_sprite_ext(spr_grape_kun,0,320,700+(_contents_height*70),1,1,0,c_white,1);

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
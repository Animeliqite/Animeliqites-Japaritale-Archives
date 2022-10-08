draw_set_font(Lang_GetFont("determination_sans"));
draw_set_color(c_white);

if(_phase == 0){
	draw_text_transformed(360, 30, Lang_GetString("menu.settings"), 4, 4, 0);
	
	for (var i = 0; i < array_length(_contents); i++) {
		draw_set_color(c_silver);
		draw_text_transformed(_headers_x,60+(_headers_height*(array_length(_contents)+(_tab_spacing/2))*i*2),_headers[i],2,2,0);
		for (var j = 0; j < array_length(_contents[i]); j++) {
			_heart_x[i,j]=_contents_x;
			_heart_y[i,j]=60+_headers_height+(((array_length(_contents[i])+_tab_spacing)*_contents_height)*i)+(_contents_height*j);
		
			draw_set_color((_contents_unusable[i][j] == true ? c_dkgray : c_white));
			draw_text_transformed(_contents_x,60+_headers_height+(((array_length(_contents[i])+_tab_spacing)*_contents_height)*i)+(_contents_height*j),_contents[i][j],2,2,0);
		}
	}

	_heart_x_lerp = lerp(_heart_x_lerp, _heart_x[_selection_phase,_selection], 0.5);
	_heart_y_lerp = lerp(_heart_y_lerp, _heart_y[_selection_phase,_selection], 0.5);

	if(_state==0)
		draw_sprite_ext(spr_battle_soul_red,0,_heart_x_lerp-20,_heart_y_lerp+18,1,1,0,c_white,1);
}
else if (_phase == 1) {
	if (!instance_exists(gamejolt_login)) {
		instance_create_depth(0,0,0,gamejolt_login);
		_phase = 2;
	}
}
else if (_phase == 2) {
	if (!instance_exists(gamejolt_login)) {
		_phase = 0;
	}
}


if(_show_bars){
	draw_set_color(c_black);
	draw_rectangle(0,0,320-_bar_distance,480,false);
	draw_rectangle(320+_bar_distance,0,640,480,false);
}
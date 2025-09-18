draw_set_font(Lang_GetFont("determination_sans"));
draw_set_color(c_white);

draw_set_halign(fa_center);
draw_text_transformed(320, 30, string_upper(Lang_GetString("menu.extras")), 2, 2, 0);
draw_set_halign(fa_left);

for (var i = 0; i < array_length(_contents[_subphase]); i++) {
	draw_set_color(c_silver);
	draw_text_transformed(_headers_x,90+(_headers_height*(array_length(_contents[_subphase][i])-1+(_tab_spacing))*i)-(_headers_height*(i*2)),_headers[_subphase][i],2,2,0);
	for (var j = 0; j < array_length(_contents[_subphase][i]); j++) {
		//_heart_x[i,j]=_contents_x;
		//_heart_y[i,j]=90+_headers_height+(((array_length(_contents[_subphase][i])-1+_tab_spacing)*_contents_height)*i)+(_contents_height*j);
		
		var YY=90+_headers_height+(((array_length(_contents[_subphase][i])-1+_tab_spacing)*_contents_height)*i)+(_contents_height*j)-(_headers_height*(i*2));
		var X2=_contents_x+string_width(_contents[_subphase][i][j])*2+20;
		
		draw_set_color((_contents_unusable[_subphase][i][j] == true ? c_dkgray : (_selection_phase==i&&_selection==j&&!(_subphase==2&&_state==-1) ? c_yellow : c_white)));
		draw_text_transformed(_contents_x,YY,_contents[_subphase][i][j],2,2,0);
		draw_sprite_ext(_contents_logo[_subphase][i][j]!=undefined ? _contents_logo[_subphase][i][j] : spr_default,_contents_subimage[_subphase][i][j]!=undefined ? _contents_subimage[_subphase][i][j] : 0,X2,90+_headers_height+(((array_length(_contents[_subphase][i])-1+_tab_spacing)*_contents_height)*i)+(_contents_height*j)-(_headers_height*(i*2)),2,2,0,c_white,_selection_phase==i&&_selection==j&&_contents_logo[_subphase][i][j]!=undefined ? 1 : 0);
	}
}

//_heart_x_lerp = lerp(_heart_x_lerp, _heart_x[_selection_phase,_selection], 0.5);
//_heart_y_lerp = lerp(_heart_y_lerp, _heart_y[_selection_phase,_selection], 0.5);
	
/*if(_state==0)
	draw_sprite_ext(spr_battle_soul_red,0,_heart_x_lerp-20,_heart_y_lerp+18,1,1,0,c_white,1);
*/

if(_subphase==3&&_selection==0&&_language_is_outdated()){
	draw_set_font(Lang_GetFont("dotumche"));
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_sprite_ext(spr_pixel,0,20,400,600,60,0,c_red,0.5);
	draw_text_transformed(320,430,Lang_GetString("ui.language.outdated","This language is outdated\nand does not promise\naccurate dialogues."),1,1,0);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);

if(_show_bars){
	draw_set_color(c_black);
	draw_rectangle(0,0,320-_bar_distance,480,false);
	draw_rectangle(320+_bar_distance,0,640,480,false);
}
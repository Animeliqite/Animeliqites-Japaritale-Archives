draw_sprite_ext(spr_pixel,0,0,0,640,480,0,c_black,0.75);
draw_sprite_ext(spr_ui_grad,0,0,480,640,2,0,c_black,1);

if(_menu==0||_menu=-9999){
	draw_set_font(Lang_GetFont("determination_sans"));
	draw_set_color(c_white);
	
	for (var i=0; i<3; i++) {
		_heart_pos_x[i] = 130;
		_heart_pos_y[i] = 125+(93*i);
			
		var time=_file_time[i];
		if(is_real(time)) {
			var minute=time div 60;
			var second=time mod 60;
		}
		draw_sprite_ext(spr_dialogbox_slice_menu,global.dialogue_box_style,110,80+(93*i),430/112,90/112,0,(_mode_copy&&_file_to_copy==i ? c_yellow : c_white),(_chosen_file == i && _choice_file_phase != 1 ? 1 : 0.5));
		draw_set_alpha((_chosen_file == i && _choice_file_phase == 0 ? 1 : 0.5));
		if (_choice_file_phase==2&&_chosen_file==i){
			draw_set_alpha(1);
			draw_text_transformed(160,120+(93*i),((_mode_copy||_mode_erase) ? Lang_GetString("ui.confirmation.yes") : _file_text_start[i]),2,2,0);
			draw_text_transformed(410,120+(93*i),((_mode_copy||_mode_erase) ? Lang_GetString("ui.confirmation.no") : Lang_GetString("menu.naming.backspace")),2,2,0);
		}
		else {
			draw_set_alpha((_chosen_file == i && _choice_file_phase == 0 ? 1 : 0.5));
			draw_text_transformed(160,120+(93*i),_file_room[i],2,2,0);
		}
		if(_mode_copy||_mode_erase)&&(_choice_file_phase==2&&_chosen_file==i){
			var confirmString = (_mode_erase ? (_mode_erase_confirmation == 0 ? "menu.confirm" : "menu.erase.confirm") : "menu.confirm");
			draw_set_color((_mode_erase && _mode_erase_confirmation == 1 ? c_red : c_white));
			draw_text_transformed(160,90+(93*i),Lang_GetString(confirmString),2,2,0);
			draw_set_color(c_white);
		}
		else{
			draw_text_transformed(160,90+(93*i),_file_name[i],2,2,0);
			draw_text_transformed(410,90+(93*i),(is_real(time) ? string(minute)+":"+(second<10 ? "0" : "")+string(second) : "--:--"),2,2,0);
		}
		draw_set_alpha(1);
	}
		
	_heart_pos_x[3] = 140;
	_heart_pos_y[3] = 380;
	_heart_pos_x[4] = 360;
	_heart_pos_y[4] = 380;
	_heart_pos_x[5] = 140;
	_heart_pos_y[5] = 420;
	_heart_pos_x[6] = 360;
	_heart_pos_y[6] = 420;
	_heart_pos_x[7] = 140;
	_heart_pos_y[7] = 135+(93*_chosen_file);
	_heart_pos_x[8] = 390;
	_heart_pos_y[8] = 135+(93*_chosen_file);
		
	draw_set_color((_mode_copy ? c_yellow : c_white));
	draw_text_transformed(160,360,Lang_GetString("menu.copy"),2,2,0);
	draw_set_color(c_white);
	
	draw_set_color((_mode_erase ? c_yellow : c_white));
	draw_text_transformed(380,360,Lang_GetString("menu.erase"),2,2,0);
	draw_set_color(c_white);
	
	draw_text_transformed(160,400,Lang_GetString("menu.settings"),2,2,0);
	
	draw_text_transformed(380,400,Lang_GetString("menu.extras"),2,2,0);
	
	draw_sprite(spr_battle_soul_red, 0, _heart_pos_curr_x, _heart_pos_curr_y);
}

if(_menu==4){
	draw_set_font(Lang_GetFont("determination_sans"));
	draw_set_color(c_white);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,60,1,1,0,c_white,_choice==0);
	draw_text_transformed(200,40,Lang_GetString("settings.option.bgm_volume")+" :: "+_get_sfx_string(0)+"%",2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,100,1,1,0,c_white,_choice==1);
	draw_text_transformed(200,80,Lang_GetString("settings.option.sfx_volume")+" :: "+_get_sfx_string(1)+"%",2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,160,1,1,0,c_white,_choice==2);
	draw_text_transformed(200,140,Lang_GetString("settings.option.reduced_vfx")+" :: "+Lang_GetString(global.low_vfx ? "setup.text.on" : "setup.text.off"),2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,200,1,1,0,c_white,_choice==3);
	draw_text_transformed(200,180,Lang_GetString("settings.option.auto_sprint")+" :: "+Lang_GetString(global.auto_run ? "setup.text.on" : "setup.text.off"),2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,260,1,1,0,c_white,_choice==4);
	draw_text_transformed(200,240,Lang_GetString("settings.option.language"),2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,300,1,1,0,c_white,_choice==5);
	draw_text_transformed(200,280,Lang_GetString("settings.option.border")+" :: "+_get_border_string(global.chosen_border),2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,360,1,1,0,c_white,_choice==6);
	draw_text_transformed(200,340,Lang_GetString("settings.option.keybind_config"),2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,400,1,1,0,c_white,_choice==7);
	draw_text_transformed(200,380,Lang_GetString("settings.option.exit_to_file_selection"),2,2,0);
}

if(_menu==5){
	draw_set_font(Lang_GetFont("determination_sans"));
	draw_set_color(c_white);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,60,1,1,0,c_white,_choice==0);
	draw_sprite_ext(spr_pixel,0,180,40,450,30,0,c_blue,_choice==0&&_mode_set_keybind);
	draw_text_transformed(200,40,Lang_GetString("settings.option.confirm_interact")+" :: "+_get_chr_string(Input_GetKey(INPUT.CONFIRM),0),2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,100,1,1,0,c_white,_choice==1);
	draw_sprite_ext(spr_pixel,0,180,80,450,30,0,c_blue,_choice==1&&_mode_set_keybind);
	draw_text_transformed(200,80,Lang_GetString("settings.option.cancel_run")+" :: "+_get_chr_string(Input_GetKey(INPUT.CANCEL),1),2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,140,1,1,0,c_white,_choice==2);
	draw_sprite_ext(spr_pixel,0,180,120,450,30,0,c_blue,_choice==2&&_mode_set_keybind);
	draw_text_transformed(200,120,Lang_GetString("settings.option.menu")+" :: "+_get_chr_string(Input_GetKey(INPUT.MENU),2),2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,180,1,1,0,c_white,_choice==3);
	draw_sprite_ext(spr_pixel,0,180,160,450,30,0,c_blue,_choice==3&&_mode_set_keybind);
	draw_text_transformed(200,160,Lang_GetString("settings.option.left")+" :: "+_get_chr_string(Input_GetKey(INPUT.LEFT),3),2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,220,1,1,0,c_white,_choice==4);
	draw_sprite_ext(spr_pixel,0,180,200,450,30,0,c_blue,_choice==4&&_mode_set_keybind);
	draw_text_transformed(200,200,Lang_GetString("settings.option.right")+" :: "+_get_chr_string(Input_GetKey(INPUT.RIGHT),4),2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,260,1,1,0,c_white,_choice==5);
	draw_sprite_ext(spr_pixel,0,180,240,450,30,0,c_blue,_choice==5&&_mode_set_keybind);
	draw_text_transformed(200,240,Lang_GetString("settings.option.up")+" :: "+_get_chr_string(Input_GetKey(INPUT.UP),5),2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,300,1,1,0,c_white,_choice==6);
	draw_sprite_ext(spr_pixel,0,180,280,450,30,0,c_blue,_choice==6&&_mode_set_keybind);
	draw_text_transformed(200,280,Lang_GetString("settings.option.down")+" :: "+_get_chr_string(Input_GetKey(INPUT.DOWN),6),2,2,0);
	
	draw_sprite_ext(spr_battle_soul_red,0,160,360,1,1,0,c_white,_choice==7);
	draw_text_transformed(200,340,Lang_GetString("settings.option.exit_to_settings"),2,2,0);
	
}

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_font(font_crypt_of_tomorrow);
draw_set_color(c_gray);
draw_text_transformed(320,476,"JAPARITALE V2.9.9 BY TEAM FURENZU 2020-2025\nUNDERTALE BY TOBY FOX AND CO. 2015-2025",2,2,0);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_sprite_ext(spr_pixel,0,0,0,640,480,0,c_black,_confirm_fade_alpha);
if(_menu==1||_menu==3){
	randomize();
	draw_set_color(_menu==1 ? (string_length(_naming_name)<12 ? c_white : c_yellow) : c_white);
	draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));
	draw_set_halign(fa_center);
	draw_text_transformed(_confirm_name_x+320,_confirm_name_y+110,_naming_name,2+_confirm_name_scale,2+_confirm_name_scale,(_menu==3 ? random(8) : 0));
	draw_set_halign(fa_left);
}

if(_menu==2||_menu==3){
	//draw_set_color(c_white);
	//draw_set_font(Lang_GetFont(Lang_GetString("font.menu.0")));
	//draw_text_transformed(_confirm_name_x+_confirm_name_offset_x,_confirm_name_y+_confirm_name_offset_y,_naming_name,_confirm_name_scale,_confirm_name_scale,_confirm_name_angle);
}
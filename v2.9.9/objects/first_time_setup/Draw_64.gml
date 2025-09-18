switch(phase){
	case 0:
		draw_set_font(Lang_GetFont("determination_sans"));
		draw_set_color(c_silver);
		draw_set_halign(fa_center);
		draw_text_transformed(320, 30, string_upper(Lang_GetString("setup.text.header")), 2, 2, 0);
		draw_set_halign(fa_left);
		
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_color((selection==0 ? c_yellow : c_white));
		draw_text_transformed(320, 90, string_upper(Lang_GetString("settings.option.fullscreen")), 2, 2, 0);
		draw_set_color(c_white);
		draw_sprite_ext(spr_battle_soul_red_small,0,258,138,2,2,0,c_white,sub_selection==0&&selection==0);
		draw_sprite_ext(spr_battle_soul_red_small,0,315,138,2,2,0,c_white,sub_selection==1&&selection==0);
		draw_text_transformed(320-32, 122, string_upper(Lang_GetString("setup.text.on")), 2, 2, 0);
		draw_text_transformed(320+32, 122, string_upper(Lang_GetString("setup.text.off")), 2, 2, 0);
		
		draw_set_color((selection==1 ? c_yellow : c_white));
		draw_text_transformed(320, 186, string_upper(Lang_GetString("settings.option.border")), 2, 2, 0);
		draw_set_color(c_white);
		draw_sprite_ext(spr_battle_soul_red_small,0,261-184,234,2,2,0,c_white,sub_selection==0&&selection==1);
		draw_sprite_ext(spr_battle_soul_red_small,0,261-64,234,2,2,0,c_white,sub_selection==1&&selection==1);
		draw_sprite_ext(spr_battle_soul_red_small,0,261+54,234,2,2,0,c_white,sub_selection==2&&selection==1);
		draw_sprite_ext(spr_battle_soul_red_small,0,261+182,234,2,2,0,c_white,sub_selection==3&&selection==1);
		draw_text_transformed(320-192, 218, string_upper(Lang_GetString("settings.option.border.none")), 2, 2, 0);
		draw_text_transformed(320-64, 218, string_upper(Lang_GetString("settings.option.border.simple")), 2, 2, 0);
		draw_text_transformed(320+64, 218, string_upper(Lang_GetString("settings.option.border.rounded")), 2, 2, 0);
		draw_text_transformed(320+192, 218, string_upper(Lang_GetString("settings.option.border.dynamic")), 2, 2, 0);
		
		draw_set_color((selection==2 ? c_yellow : c_white));
		draw_text_transformed(320, 282, string_upper(Lang_GetString("settings.option.reduced_vfx")), 2, 2, 0);
		draw_set_color(c_white);
		draw_sprite_ext(spr_battle_soul_red_small,0,258,330,2,2,0,c_white,sub_selection==0&&selection==2);
		draw_sprite_ext(spr_battle_soul_red_small,0,315,330,2,2,0,c_white,sub_selection==1&&selection==2);
		draw_text_transformed(320-32, 314, string_upper(Lang_GetString("setup.text.on")), 2, 2, 0);
		draw_text_transformed(320+32, 314, string_upper(Lang_GetString("setup.text.off")), 2, 2, 0);
		
		draw_set_color((selection==3 ? c_yellow : c_white));
		draw_sprite_ext(spr_battle_soul_red_small,0,248,396,2,2,0,c_white,sub_selection==0&&selection==3);
		draw_text_transformed(320, 380, string_upper(Lang_GetString("setup.text.continue")), 2, 2, 0);
		draw_set_halign(fa_left);
		break;
}
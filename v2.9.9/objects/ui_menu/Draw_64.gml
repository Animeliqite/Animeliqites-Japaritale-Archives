draw_sprite_stretched_ext(spr_dialogbox_slice,global.dialogue_box_style,32,52+(_top ? 270 : 0),142,115,c_white,1);

draw_sprite_stretched_ext(spr_dialogbox_slice,global.dialogue_box_style,32,168,142,148,c_white,1);

draw_set_font(font_crypt_of_tomorrow);
draw_set_color(c_white);
draw_text_ext_transformed(22+30,52+(_top ? 270 : 0)+6+39,"LV  "+string(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.LV))+"\nHP  "+string(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP))+"/"+string(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP_MAX))+"\nG   "+string(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.GOLD)),9,-1,2,2,0);

if(_menu==0){
	draw_sprite_ext(spr_battle_soul_red_small,0,28+6+27,168+6+31+36*_choice,2,2,0,c_white,1);
}

//ITEM
if(_menu==0.5||_menu==1||_menu==2){
	draw_sprite_stretched_ext(spr_dialogbox_slice,global.dialogue_box_style,188,52,346,362,c_white,1);
	draw_sprite_stretched_ext(spr_dialogbox_line,0,188+20,52+6+39+25,346-40,2,c_gray,1);
	
	draw_set_font(Lang_GetFont("determination_sans"));
	draw_set_color(_menu==1&&_choice_item_type==0 ? c_yellow : c_white);
	draw_text_transformed(188+6+38,52+6+22,Lang_GetString("ui.item.item"),2,2,0);
	draw_set_color(_menu==1&&_choice_item_type==1 ? c_yellow : c_white);
	draw_text_transformed(188+6+38+100,52+6+22,Lang_GetString("ui.item.tool"),2,2,0);
	draw_set_color(_menu==1&&_choice_item_type==2 ? c_yellow : c_white);
	draw_text_transformed(188+6+38+200,52+6+22,Lang_GetString("ui.item.key"),2,2,0);
}

if(_menu==0.5){
	draw_sprite_ext(spr_battle_soul_red_small,0,188+6+23+100*_choice_item_type,52+6+39,2,2,0,c_white,1);
}

if(_menu==1){
	draw_sprite_ext(spr_battle_soul_red_small,0,188+6+23,52+6+39+60+32*_choice_item,2,2,0,c_white,1);
}

if(_menu==2){
	var X=0;
	switch(_choice_item_operate){
		case 0:
			X=23;
			break;
		case 1:
			X=119;
			break;
		case 2:
			X=233;
			break;
	}
	draw_sprite_ext(spr_battle_soul_red_small,0,188+6+X,52+6+319,2,2,0,c_white,1);
}

//STAT
if(_menu==3){
	draw_sprite_stretched_ext(spr_dialogbox_slice,global.dialogue_box_style,188,52,346,418,c_white,1);
}

//PHONE
if(_menu==4){
	draw_sprite_stretched_ext(spr_dialogbox_slice,global.dialogue_box_style,188,52,346,270,c_white,1);
	draw_sprite_ext(spr_battle_soul_red_small,0,188+6+23,52+6+39+32*_choice_phone,2,2,0,c_white,1);
}
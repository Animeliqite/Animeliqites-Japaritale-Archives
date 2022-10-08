draw_sprite_stretched_ext(spr_dialogbox_slice_noicon,0,32,52+(_top ? 270 : 0),142,115,c_white,1);

draw_sprite_stretched_ext(spr_dialogbox_slice,0,32,168,142,148,c_white,1);

draw_set_font(font_crypt_of_tomorrow);
draw_set_color(c_white);
draw_text_ext_transformed(29+30+10,52+(_top ? 270 : 0)+6+39,"LV  "+string(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.LV))+"\nHP  "+string(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP))+"/"+string(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP_MAX))+"\nG   "+string(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.GOLD)),9,-1,2,2,0);

draw_sprite_ext(spr_owmenu_icon,0,52+6+27,168+6+31+36*0,2,2,0,c_white,(Item_GetNumber()>0 ? 1 : 0.5));
draw_sprite_ext(spr_owmenu_icon,1,52+6+27,168+6+31+36*1,2,2,0,c_white,1);
draw_sprite_ext(spr_owmenu_icon,2,52+6+27,168+6+31+36*2,2,2,0,c_white,(Phone_GetNumber()>0 ? 1 : 0));
	
draw_sprite_ext(spr_owmenu_icon,3,32+24,52+(_top ? 270 : 0)+15+40+18*0,2,2,0,c_white,1);
draw_sprite_ext(spr_owmenu_icon,4,32+24,52+(_top ? 270 : 0)+15+40+18*1,2,2,0,c_white,1);
draw_sprite_ext(spr_owmenu_icon,5,32+24,52+(_top ? 270 : 0)+15+40+18*2,2,2,0,c_white,1);
if(_menu==0){
	draw_sprite_ext(spr_battle_soul_red_small,0,28+6+27,168+6+31+36*_choice,2,2,0,c_white,1);
}

//ITEM
if(_menu==1||_menu==2){
	draw_sprite_stretched_ext(spr_dialogbox_slice,0,188,52,346,362,c_white,1);
}

if(_menu==1){
	draw_sprite_ext(spr_battle_soul_red_small,0,188+6+23,52+6+39+32*_choice_item,2,2,0,c_white,1);
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
	draw_sprite_stretched_ext(spr_dialogbox_slice,0,188,52,346,418,c_white,1);
}

//PHONE
if(_menu==4){
	draw_sprite_stretched_ext(spr_dialogbox_slice,0,188,52,346,270,c_white,1);
	draw_sprite_ext(spr_battle_soul_red_small,0,188+6+23,52+6+39+32*_choice_phone,2,2,0,c_white,1);
}
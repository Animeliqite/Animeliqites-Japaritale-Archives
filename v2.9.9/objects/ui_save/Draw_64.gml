if(_state==0||_state==1){
	draw_sprite_stretched_ext(spr_dialogbox_slice,global.dialogue_box_style,127,143,390,200,c_white,1);
	draw_sprite_ext(spr_ui_savemenu,0,147+15,163+60,1,1,0,(_state==0 ? c_white : c_yellow),1);
	draw_sprite_ext(spr_ui_savemenu,1,147+15,163+90,1,1,0,(_state==0 ? c_white : c_yellow),1);
	draw_sprite_ext(spr_ui_savemenu,2,147+15,163+118,1,1,0,(_state==0 ? c_white : c_yellow),1);
}

if(_state==0||_state==1){
	if(_choice==0){
		draw_sprite_ext(spr_battle_soul_red_small,0,147+190,163+70,2,2,0,c_white,1);
	}else if(_choice==1){
		draw_sprite_ext(spr_battle_soul_red_small,0,147+190,163+100,2,2,0,c_white,1);
	}else if(_choice==2){
		draw_sprite_ext(spr_battle_soul_red_small,0,147+190,163+130,2,2,0,c_white,1);
	}
}
if(_icon_distance>-50)
	draw_sprite_ext(spr_battle_ui_partyicon, Battle_GetPartyIcon(battle._party_turn), _bg_x - thickness_frame_collision + (sprite_get_width(spr_battle_ui_partyicon) * 2), _bg_y - _icon_distance - thickness_frame_collision, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_dialogbox_slice_noicon, 0, _bg_x + _x_add - thickness_frame_collision, _bg_y + _y_add - thickness_frame_collision, (_bg_width + thickness_frame_collision * 2) / 112, (_bg_height + thickness_frame_collision * 2) / 112,_angle,color,alpha_bg);

if(_angle%360==0){
	draw_surface_part_ext(_surface,_surface_x + _x_add,_surface_y + _y_add,_surface_width,_surface_height,_surface_x,_surface_y,1,1,color,alpha);
}else{
	draw_surface(_surface,0,0);
}
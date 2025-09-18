var sW = sprite_get_width(spr_dialogbox_slice_battle), sH = sprite_get_height(spr_dialogbox_slice_battle);
draw_sprite_ext(spr_dialogbox_slice_battle, global.dialogue_box_style, _bg_x + _x_add, _bg_y + _y_add, (_bg_width + thickness_frame * 2) / sW, (_bg_height + thickness_frame * 2) / sH, _angle, color, alpha);

if(_angle%360==0){
	draw_surface_part_ext(_surface,_surface_x + _x_add,_surface_y + _y_add,_surface_width,_surface_height,_surface_x,_surface_y,1,1,color,alpha);
}else{
	draw_surface(_surface,0,0);
}
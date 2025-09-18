///@desc Change sprites

var dark_check=(dark ? "_dark" : "");
res_idle_sprite[DIR.UP]=asset_get_index("spr_char_chameleon_up"+dark_check);
res_idle_sprite[DIR.DOWN]=asset_get_index("spr_char_chameleon_down"+dark_check);
res_idle_sprite[DIR.LEFT]=asset_get_index("spr_char_chameleon_left"+dark_check);
res_idle_sprite[DIR.RIGHT]=asset_get_index("spr_char_chameleon_right"+dark_check);
res_move_sprite[DIR.UP]=asset_get_index("spr_char_chameleon_up"+dark_check);
res_move_sprite[DIR.DOWN]=asset_get_index("spr_char_chameleon_down"+dark_check);
res_move_sprite[DIR.LEFT]=asset_get_index("spr_char_chameleon_left"+dark_check);
res_move_sprite[DIR.RIGHT]=asset_get_index("spr_char_chameleon_right"+dark_check);
res_talk_sprite[DIR.UP]=asset_get_index("spr_char_chameleon_up_talk"+dark_check);
res_talk_sprite[DIR.DOWN]=asset_get_index("spr_char_chameleon_down_talk"+dark_check);
res_talk_sprite[DIR.LEFT]=asset_get_index("spr_char_chameleon_left_talk"+dark_check);
res_talk_sprite[DIR.RIGHT]=asset_get_index("spr_char_chameleon_right_talk"+dark_check);

sprite_index=res_idle_sprite[dir];
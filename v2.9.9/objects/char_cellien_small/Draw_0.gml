if (room == room_beginning_1) {
	if (instance_exists(cut_caverns_1)) {
		for (var i = 0; i < 3; i++)
			draw_sprite_ext(spr_char_cellien_white, 0, x, y - (sprite_height / 2), 0.75 + (abs(sin(current_time / 500 + i)) / 2), 0.75 + (abs(sin(current_time / 500 + i)) / 2), 0, c_black, cut_caverns_1._blend_amount * 0.25);
	}
}
draw_self();
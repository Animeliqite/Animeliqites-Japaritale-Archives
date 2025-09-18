randomize();
if (!_aggressive)
	draw_self();
else draw_sprite_ext(sprite_index, image_index, x + random_range(-_shake_amount, _shake_amount), y + random_range(-_shake_amount, _shake_amount), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_set_font(Lang_GetFont("determination_sans"));
draw_set_color(c_white);
draw_set_halign(fa_center);

draw_sprite_ext(spr_pixel, 0, 0, 0, 640, 480, 0, c_black, bgAlpha);
draw_sprite_ext(spr_pixel, 0, 320 - rectWidth, 240 - rectHeight, rectWidth * 2, rectHeight * 2 + (sprite_height / 1.5) + 16, 0, c_black, bgAlpha);
draw_sprite_ext(sprite_index, image_index, 320, 240, image_xscale, image_yscale, 0, c_white, image_alpha);

draw_set_alpha(image_alpha);
draw_text_transformed(320, 240 + (sprite_height / 2) + 16, "Achievement Granted!", 2, 2, 0);

draw_set_alpha(1);
draw_set_halign(fa_left);
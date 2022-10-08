draw_set_font(Lang_GetFont("determination_sans"));
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

draw_set_alpha(_text_alpha0);
draw_text_transformed(room_width / 2, room_height / 2, "This is a fan-made project made to\nendorse all experience of JAPARITALE\nin a playable version.\n\nGive respects to the original creator.", 1, 1, 0);

draw_set_alpha(_text_alpha1);
draw_text_transformed(room_width / 2, room_height / 2, "This game, also, is unaffliated\nboth with Toby Fox and the\nKemono Friends team.", 1, 1, 0);

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
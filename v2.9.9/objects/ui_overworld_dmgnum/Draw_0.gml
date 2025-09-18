draw_set_font(_dmg_font);
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_text_transformed(x,y,string(_dmg),0.5,0.5,0);
draw_set_alpha(1);
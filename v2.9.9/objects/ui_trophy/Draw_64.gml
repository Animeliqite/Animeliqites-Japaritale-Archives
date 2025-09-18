var _h=sprite_get_height(sprite_index), _w=sprite_get_width(sprite_index);

draw_set_font(Lang_GetFont("dotumche"));
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);

draw_sprite_ext(spr_pixel,0,xx-_w/2,yy-_h/2-5,(_w+string_width(str))*1.2,_h+10,0,c_black,0.5*image_alpha);
draw_sprite_ext(sprite_index,0,xx,yy,1,1,0,c_white,image_alpha);

draw_set_alpha(image_alpha);
draw_text_transformed(xx+_w*1.2,yy,str,1,1,0);

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
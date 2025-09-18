var _curr_x = x+lengthdir_x(_vine_length,_vine_direction);
var _curr_y = y+lengthdir_y(_vine_length,_vine_direction);

draw_line_width(x,y,_curr_x,_curr_y,5);
draw_circle(_curr_x,_curr_y,5,false);
draw_sprite_ext(spr_cellien_big_monster_pirannah_small,0,_curr_x,_curr_y,2,2,_vine_direction+180-_pirannah_opening_amount,c_white,1);
draw_sprite_ext(spr_cellien_big_monster_pirannah_small,1,_curr_x,_curr_y,2,2,_vine_direction+180+_pirannah_opening_amount,c_white,1);
var _curr_x = x+lengthdir_x(_vine_length,_vine_direction);
var _curr_y = y+lengthdir_y(_vine_length,_vine_direction);

draw_line_width(x+(_vine_direction>=180 ? 64 : -64),y,_curr_x,_curr_y-(_vine_curve*2),50);
draw_circle(_curr_x,_curr_y,50,false);
draw_sprite_ext(spr_cellien_big_monster_pirannah_big,0,_curr_x,_curr_y,-2*(_vine_direction>=180 ? 1 : -1),-2,180-(_pirannah_opening_amount*(_vine_direction>=180 ? 1 : -1))+(_vine_curve*(_vine_direction>=180 ? 1 : -1)),c_white,1);
draw_sprite_ext(spr_cellien_big_monster_pirannah_big,1,_curr_x,_curr_y,-2*(_vine_direction>=180 ? 1 : -1),-2,180+(_pirannah_opening_amount*(_vine_direction>=180 ? 1 : -1))+(_vine_curve*(_vine_direction>=180 ? 1 : -1)),c_white,1);
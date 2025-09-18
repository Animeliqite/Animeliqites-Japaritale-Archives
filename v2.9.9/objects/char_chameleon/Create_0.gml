event_inherited();

char_id=10;
res_idle_sprite[DIR.UP]=spr_char_chameleon_up;
res_idle_sprite[DIR.DOWN]=spr_char_chameleon_down;
res_idle_sprite[DIR.LEFT]=spr_char_chameleon_left;
res_idle_sprite[DIR.RIGHT]=spr_char_chameleon_right;
res_move_sprite[DIR.UP]=spr_char_chameleon_up;
res_move_sprite[DIR.DOWN]=spr_char_chameleon_down;
res_move_sprite[DIR.LEFT]=spr_char_chameleon_left;
res_move_sprite[DIR.RIGHT]=spr_char_chameleon_right;
res_talk_sprite[DIR.UP]=spr_char_chameleon_up_talk;
res_talk_sprite[DIR.DOWN]=spr_char_chameleon_down_talk;
res_talk_sprite[DIR.LEFT]=spr_char_chameleon_left_talk;
res_talk_sprite[DIR.RIGHT]=spr_char_chameleon_right_talk;

dark=false;
block_enabled=false;
collision=false;
dark_previous=false;
_disappear_alpha=0;
_disappear=function(){
	
}
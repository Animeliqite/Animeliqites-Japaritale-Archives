event_inherited();

interacted=false;
interact_amount=0;
doneSweatingBefore=false;
offsetX=0;
offsetY=0;
char_id=3;

_interaction_function = function () {
	
}

res_idle_sprite[DIR.UP]=spr_char_zebra_up;
res_idle_sprite[DIR.DOWN]=spr_char_zebra_down;
res_idle_sprite[DIR.LEFT]=spr_char_zebra_left;
res_idle_sprite[DIR.RIGHT]=spr_char_zebra_right;
res_move_sprite[DIR.UP]=spr_char_zebra_up;
res_move_sprite[DIR.DOWN]=spr_char_zebra_down;
res_move_sprite[DIR.LEFT]=spr_char_zebra_left;
res_move_sprite[DIR.RIGHT]=spr_char_zebra_right;
res_talk_sprite[DIR.UP]=spr_char_zebra_up_talk;
res_talk_sprite[DIR.DOWN]=spr_char_zebra_down_talk;
res_talk_sprite[DIR.LEFT]=spr_char_zebra_left_talk;
res_talk_sprite[DIR.RIGHT]=spr_char_zebra_right_talk;

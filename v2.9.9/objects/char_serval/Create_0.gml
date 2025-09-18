event_inherited();

char_id=2;
res_idle_sprite[DIR.UP]=spr_char_serval_up;
res_idle_sprite[DIR.DOWN]=spr_char_serval_down;
res_idle_sprite[DIR.LEFT]=spr_char_serval_left;
res_idle_sprite[DIR.RIGHT]=spr_char_serval_right;
res_move_sprite[DIR.UP]=spr_char_serval_up;
res_move_sprite[DIR.DOWN]=spr_char_serval_down;
res_move_sprite[DIR.LEFT]=spr_char_serval_left;
res_move_sprite[DIR.RIGHT]=spr_char_serval_right;
res_talk_sprite[DIR.UP]=spr_char_serval_up_talk;
res_talk_sprite[DIR.DOWN]=spr_char_serval_down_talk;
res_talk_sprite[DIR.LEFT]=spr_char_serval_left_talk;
res_talk_sprite[DIR.RIGHT]=spr_char_serval_right_talk;

res_talk_speed[DIR.UP]=1/4;
res_talk_speed[DIR.DOWN]=1/4;
res_talk_speed[DIR.LEFT]=1/4;
res_talk_speed[DIR.RIGHT]=1/4;

jumpTimer=0;
jumpTriggerOnce=false;
runningTimer=0;
_look_at_player=true;
interacted=0;
talking_as_executed_once=false;
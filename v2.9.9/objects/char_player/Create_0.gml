event_inherited();

running=false;
actuallyRunning=false;
canRunAltExecutedOnce = false;
canRun=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.CAN_RUN);
canRunAlt=true;
cooldownTimer=0;
_run_timer=0;
runningSpeed=3;

PIXEL_CHECK=0;
footstepPlayed=false;
pixelCheckReverse=false;
doPixelCheck=true;
char_id=0;

hatOffsetX=0;
hatOffsetY=0;

res_idle_sprite[DIR.UP]=spr_char_kaban_up;
res_idle_sprite[DIR.DOWN]=spr_char_kaban_down;
res_idle_sprite[DIR.LEFT]=spr_char_kaban_left;
res_idle_sprite[DIR.RIGHT]=spr_char_kaban_right;
res_move_sprite[DIR.UP]=spr_char_kaban_up;
res_move_sprite[DIR.DOWN]=spr_char_kaban_down;
res_move_sprite[DIR.LEFT]=spr_char_kaban_left;
res_move_sprite[DIR.RIGHT]=spr_char_kaban_right;

res_move_speed[DIR.UP]=1/4.25;
res_move_speed[DIR.DOWN]=1/4.25;
res_move_speed[DIR.LEFT]=1/4.25;
res_move_speed[DIR.RIGHT]=1/4.25;

move_speed[DIR.UP]=2;
move_speed[DIR.DOWN]=2;
move_speed[DIR.LEFT]=2;
move_speed[DIR.RIGHT]=2;

moveable=true;
_moveable_cutscene=true;
_moveable_dialog=true;
_moveable_menu=true;
_moveable_save=true;
_moveable_warp=true;
_moveable_encounter=true;
_moveable_box=true;

_draw_hat = true;
_overworld_battle_executed_once=false;
_heart_alpha=0;
_heart_alpha2=0;
_heart_scale=1;

_hurt_amount=0;
_hurt_inv_heart_img_index=0;
_hurt_inv=0;



follow_delay = 15
follower = []//warning:reverse
follower_prev = follower;
//follower = []
inst_follower = [noone,noone]

moves = undefined;
pos = undefined;

follower_x=x;
follower_y=y;

moves = ds_list_create()
repeat(follow_delay*array_length(follower)){
	ds_list_add(moves,[0,0,0,0,0]);
}
pos = ds_list_create()
repeat(follow_delay*array_length(follower)){
	ds_list_add(pos,[x,y]);
}
_dir = ds_list_create()
repeat(follow_delay*array_length(follower)){
	ds_list_add(_dir,dir);
}

make_caterpillar = function (follower_object) {
	array_push(follower,follower_object);
	event_user(2);
}
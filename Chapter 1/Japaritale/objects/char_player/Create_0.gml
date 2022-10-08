event_inherited();

running=false;
actuallyRunning=false;
canRunAltExecutedOnce = false;
canRun=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.CAN_RUN);
canRunAlt=true;
cooldownTimer=0;
runningTimer=0;
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
_moveable_dialog=true;
_moveable_menu=true;
_moveable_save=true;
_moveable_warp=true;
_moveable_encounter=true;
_moveable_box=true;

_draw_hat = true;
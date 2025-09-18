event_inherited();

char_id=-1;
dir=DIR.DOWN;
dir_locked=false;

talking=false;
talking_as=false;
_turnDir=DIR.DOWN;
_look_at_player=false;

_move_speed_anim=0;
move_speed[DIR.UP]=2;
move_speed[DIR.DOWN]=2;
move_speed[DIR.LEFT]=2;
move_speed[DIR.RIGHT]=2;
move[DIR.UP]=0;
move[DIR.DOWN]=0;
move[DIR.LEFT]=0;
move[DIR.RIGHT]=0;
move_moveable=true;
in_move_cutscene=true;
moving=false;

following_record=10;
following_array_size=60;
for (var i=following_array_size-1; i>=0; i--){
	following_get_image_index[i]=image_index;
	following_get_x[i]=x;
	following_get_y[i]=y;
	following_get_dir[i]=dir;
}
following_follow_x=true;
following_follow_y=true;
following_follow_dir_up=true;
following_follow_dir_down=true;
following_follow_dir_left=true;
following_follow_dir_right=true;
following_target=char_player;
following_queue=ds_queue_create();
following_check_for_moving=true;
following_connected_to=noone;
custom_caterpillar=false;
custom_caterpillar_func=function(){
	
}
caterpillar=false;

collision=true;

_collision_list=ds_list_create();

var proc=0;
repeat(4){
	res_idle_sprite[proc]=(sprite_exists(sprite_index) ? sprite_index : spr_default);
	res_idle_image[proc]=0;
	res_idle_speed[proc]=0;
	
	res_move_sprite[proc]=(sprite_exists(sprite_index) ? sprite_index : spr_default);
	res_move_image[proc]=1;
	res_move_speed[proc]=1/3;
	
	res_talk_sprite[proc]=(sprite_exists(sprite_index) ? sprite_index : spr_default);
	res_talk_image[proc]=1;
	res_talk_speed[proc]=1/2;
	proc+=90;
}

res_pose_sprite=sprite_index;
res_override=false;

_talking_previous=!talking;
_dir_previous=-1;
_move_previous=-1;
event_inherited();

char_id=-1;
dir=DIR.DOWN;
dir_locked=false;

talking=false;
_turnDir=DIR.DOWN;

move_speed[DIR.UP]=2;
move_speed[DIR.DOWN]=2;
move_speed[DIR.LEFT]=2;
move_speed[DIR.RIGHT]=2;
move[DIR.UP]=0;
move[DIR.DOWN]=0;
move[DIR.LEFT]=0;
move[DIR.RIGHT]=0;

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

res_override=false;

_talking_previous=!talking;
_dir_previous=-1;
_move_previous=-1;
var proc=0;
repeat(4){
	if(move[proc]>0){
		moving=true;
		if (object_index != char_player) {
			if(!dir_locked){
				dir=proc;
			}
		}
		var move_x=0;
		var move_y=0;
		if(proc==DIR.UP || proc==DIR.DOWN){
			move_y=0.05*(proc==DIR.UP ? -1 : 1);
		}else if(proc==DIR.LEFT || proc==DIR.RIGHT){
			move_x=0.05*(proc==DIR.LEFT ? -1 : 1);
		}
		repeat(move_speed[proc]*30){
			var cmove=true;
			if(collision){
				var list=_collision_list;
				ds_list_clear(list);
				var num=instance_place_list(x+move_x,y+move_y,block,list,false);
				var procl=0;
				repeat(num){
					var inst=list[|procl];
					if(instance_exists(inst)){
						if(inst.block_enabled){
							cmove=false;
							break;
						}
					}
					procl+=1;
				}
			}
			if(cmove){
				if (object_index == char_player) {
					if (collision) {
						if (place_meeting(x,y,block_corner_topleft)) {
							if (Input_IsHeld(INPUT.LEFT)) {
								y+=((move_speed[DIR.DOWN]*0.05)*30)*instance_nearest(x,y,block_corner_topleft).image_yscale;
							}
							if (Input_IsHeld(INPUT.UP)) {
								x+=((move_speed[DIR.RIGHT]*0.05)*30)*instance_nearest(x,y,block_corner_topleft).image_xscale;
							}
						}
						if (place_meeting(x,y,block_corner_topright)) {
							if (Input_IsHeld(INPUT.RIGHT)) {
								y+=((move_speed[DIR.DOWN]*0.05)*30)*instance_nearest(x,y,block_corner_topright).image_yscale;
							}
							if (Input_IsHeld(INPUT.UP)) {
								x-=((move_speed[DIR.LEFT]*0.05)*30)*instance_nearest(x,y,block_corner_topright).image_xscale;
							}
						}
						if (place_meeting(x,y,block_corner_bottomleft)) {
							if (Input_IsHeld(INPUT.LEFT)) {
								y-=((move_speed[DIR.UP]*0.05)*30)*instance_nearest(x,y,block_corner_bottomleft).image_yscale;
							}
							if (Input_IsHeld(INPUT.DOWN)) {
								x+=((move_speed[DIR.RIGHT]*0.05)*30)*instance_nearest(x,y,block_corner_bottomleft).image_xscale;
							}
						}
						if (place_meeting(x,y,block_corner_bottomright)) {
							if (Input_IsHeld(INPUT.RIGHT)) {
								y-=((move_speed[DIR.UP]*0.05)*30)*instance_nearest(x,y,block_corner_bottomright).image_yscale;
							}
							if (Input_IsHeld(INPUT.DOWN)) {
								x-=((move_speed[DIR.LEFT]*0.05)*30)*instance_nearest(x,y,block_corner_bottomright).image_xscale;
							}
						}
						if (!place_meeting(x,y,block_corner_bottomright)) ||
						   (!place_meeting(x,y,block_corner_topright)) ||
						   (!place_meeting(x,y,block_corner_bottomleft)) ||
						   (!place_meeting(x,y,block_corner_topleft)) {
							move_and_collide(move_x,move_y,id);
						}
					}
				}
				else {
					move_and_collide(move_x,move_y,id);
					//x+=move_x;
					//y+=move_y;
				}
			}else{
				break;
			}
		}
		move[proc]-=1;
	}
	proc+=90;
}

if(move[DIR.UP]<=0&&move[DIR.DOWN]<=0&&move[DIR.LEFT]<=0&&move[DIR.RIGHT]<=0){
	move_moveable=true;
	moving=false;
}

var refresh=((dir!=_dir_previous || talking!=_talking_previous || (move[dir]>0)!=(_move_previous>0)) && !res_override);
var pose_spr_in_array=(array_contains(res_idle_sprite,res_pose_sprite) ||
						array_contains(res_move_sprite,res_pose_sprite) ||
						array_contains(res_talk_sprite,res_pose_sprite))
if(refresh){
	if((!global._gmu_cutscene)||(global._gmu_cutscene&&pose_spr_in_array)){
		if(move[DIR.UP]>0 || move[DIR.DOWN]>0 || move[DIR.LEFT]>0 || move[DIR.RIGHT]>0){
			if(collision){
				sprite_index=res_move_sprite[dir];
				image_index=res_move_image[dir];
				image_speed=res_move_speed[dir];
			}
			else{
				sprite_index=res_move_sprite[dir];
				image_index=res_move_image[dir];
				image_speed=res_move_speed[dir];
			}
		}else if(talking){
			sprite_index=res_talk_sprite[dir];
			image_index=res_talk_image[dir];
			image_speed=res_talk_speed[dir];
		}else{
			sprite_index=res_idle_sprite[dir];
			image_index=res_idle_image[dir];
			image_speed=res_idle_speed[dir];
		}
	}
	else {
		sprite_index=res_pose_sprite;
	}
}

_talking_previous=talking;
_dir_previous=dir;
_move_previous=move[dir];

if(_look_at_player){
	if(!global._gmu_cutscene){
		if(instance_exists(char_player)){
			direction=point_direction(x,y,char_player.x,char_player.y);
			if(!caterpillar){
				dir=Char_ConvertDirection(id);
			}
		}
	}
}

var _char=id;
var proc=0;
repeat(4){
	if(move[proc]>0){
		moving=true;
		var move_x=0;
		var move_y=0;
		if(proc==DIR.UP || proc==DIR.DOWN){
			move_y=0.05*(proc==DIR.UP ? -1 : 1);
		}else if(proc==DIR.LEFT || proc==DIR.RIGHT){
			move_x=0.05*(proc==DIR.LEFT ? -1 : 1);
		}
		repeat(move_speed[proc]*30){
			var cmove=true;
			if(cmove){
				move_and_collide(move_x,move_y,id);
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
if(refresh){
	if(move[DIR.UP]>0 || move[DIR.DOWN]>0 || move[DIR.LEFT]>0 || move[DIR.RIGHT]>0){
		sprite_index=res_move_sprite[dir];
		image_index=res_move_image[dir];
		image_speed=res_move_speed[dir];
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

_talking_previous=talking;
_dir_previous=dir;
_move_previous=move[dir];
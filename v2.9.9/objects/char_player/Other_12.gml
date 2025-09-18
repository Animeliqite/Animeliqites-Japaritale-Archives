if(array_length(follower) > 0){
	if (moves!=undefined&&pos!=undefined){
		if (ds_exists(moves,ds_type_list)&&ds_exists(pos,ds_type_list)) {
			for(i=0;i<array_length(follower);i+=1){
				if(!instance_exists(follower[i])){
					inst_follower[i] = instance_create_depth(follower_x,follower_y-1,0,follower[i]);
					inst_follower[i].dir = char_player.dir;
					inst_follower[i].dir_locked = true;
				}
			}

			ds_list_clear(moves)
			repeat(follow_delay*array_length(follower)){
				ds_list_add(moves,[0,0,0,0,0]);
			}
			ds_list_clear(pos)
			repeat(follow_delay*array_length(follower)){
				ds_list_add(pos,[x,y]);
			}
			ds_list_clear(_dir)
			repeat(follow_delay*array_length(follower)){
				ds_list_add(_dir,dir);
			}
		}
	}
}
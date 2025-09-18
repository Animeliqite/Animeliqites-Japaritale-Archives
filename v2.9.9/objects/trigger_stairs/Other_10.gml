/// @desc Trigger

if(instance_exists(char_player)){
	if(char_player.move[DIR.RIGHT]>0){
		char_player.y-=char_player.move_speed[DIR.UP]/image_yscale;
	}
	else if(char_player.move[DIR.LEFT]>0){
		char_player.y+=char_player.move_speed[DIR.DOWN]/image_yscale;
	}
}
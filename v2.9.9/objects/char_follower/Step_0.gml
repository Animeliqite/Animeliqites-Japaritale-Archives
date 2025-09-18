event_inherited();

if(run = 1&&(move[0] > 0||move[90] > 0||move[180] > 0||move[270] > 0)){
	move_speed[DIR.UP]=1 / (4.25 - (3 / 2));
	move_speed[DIR.DOWN]=1 / (4.25 - (3 / 2));
	move_speed[DIR.LEFT]=1 / (4.25 - (3 / 2));
	move_speed[DIR.RIGHT]=1 / (4.25 - (3 / 2));
	res_move_sprite[DIR.UP]=run_sprite[0];
	res_move_sprite[DIR.DOWN]=run_sprite[1];
	res_move_sprite[DIR.LEFT]=run_sprite[2];
	res_move_sprite[DIR.RIGHT]=run_sprite[3];
	sprite_index = res_move_sprite[dir];
}else{
	move_speed[DIR.UP]=1/4.25;
	move_speed[DIR.DOWN]=1/4.25;
	move_speed[DIR.LEFT]=1/4.25;
	move_speed[DIR.RIGHT]=1/4.25;
	res_move_sprite[DIR.UP]=move_sprite[0];
	res_move_sprite[DIR.DOWN]=move_sprite[1];
	res_move_sprite[DIR.LEFT]=move_sprite[2];
	res_move_sprite[DIR.RIGHT]=move_sprite[3];
	sprite_index = res_move_sprite[dir];
}
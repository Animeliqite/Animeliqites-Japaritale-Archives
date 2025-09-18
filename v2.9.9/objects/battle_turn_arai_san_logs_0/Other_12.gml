///@desc Turn Start

//Start the attack!

if(phase==0){
	_time_source=time_source_create(time_source_game,30,time_source_units_frames,function(){
		randomize();
		with(instance_create_depth(battle_board.x+battle_board.right+20,battle_board.y+battle_board.down+10,0,battle_bullet_logs)){
			image_angle=0;
			image_yscale=1;
			image_blend=c_white;
			spd=-4;
		}
	},[],-1,false);

	time_source_start(_time_source);
	alarm[0]=room_speed*3;
}
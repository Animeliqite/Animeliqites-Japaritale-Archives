///@desc Turn Start

//Start the attack!
if(phase==0){
	_time_source=time_source_create(time_source_game,15,time_source_units_frames,function(){
		randomize();
		var chance=choose(0,1);
		with(instance_create_depth(battle_board.x+battle_board.right+20,battle_board.y+(chance==1 ? battle_board.down+10 : -battle_board.up-10),0,battle_bullet_logs)){
			spd=-random_range(2,8);
			image_angle=random_range(-12,12)+(chance==1 ? 0 : 180);
			image_yscale=0.5+random(1);
			image_blend=c_aqua;
		}
	},[],-1,false);

	time_source_start(_time_source);
	alarm[0]=room_speed*5;
}
///@desc Turn Start

//Start the attack!
_time_source=time_source_create(time_source_game,15,time_source_units_frames,function(){
	randomize();
	var chance=choose(0,1);
	var chance1=choose(0,1);
	var chance2=_color_chance;
	with(instance_create_depth(battle_board.x+(chance1 == 0 ? battle_board.right+20 : -battle_board.left-20),battle_board.y+(chance==1 ? battle_board.down+10 : -battle_board.up-10),0,battle_bullet_logs)){
		spd=3 * (chance1 == 0 ? -1 : 1);
		image_angle=random_range(-12,12)+(chance==1 ? 0 : 180);
		image_yscale=0.5+random(1);
		image_blend=(chance2==0 ? c_white : c_aqua);
	}
},[],-1,false);

time_source_start(_time_source);
///@desc Turn Start

//Start the attack!

if(phase==0){
	var _x=0, _h=0.25, _d=0;
	repeat(10){
		Battle_CreateLogBullet(battle_board.x+battle_board.right+20+_x,battle_board.y+battle_board.down+10,-5,random_range(-24,24),_h/3,c_white);
		_d+=180/5;
		_h+=sin(degtorad(_d));
		_x+=40;
	}
	alarm[0]=room_speed*4;
}
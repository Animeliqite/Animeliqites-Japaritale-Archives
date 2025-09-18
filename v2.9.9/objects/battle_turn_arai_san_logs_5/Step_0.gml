if(phase==0){
	timer++;
	var w = 20, delay = 4, _x = 0, proc = 0;
	repeat ((w*delay)*2) {
		if(timer=proc*delay) Battle_CreateLogBullet(battle_board.x+battle_board.right-(proc*w),battle_board.y+battle_board.down+40,5,12,1,c_white,2);
		if(timer=(proc*delay)+(w*delay)) Battle_CreateLogBullet(battle_board.x-battle_board.left+(proc*w),battle_board.y+battle_board.down+40,5,12,1,c_white,2);
		if(timer=proc*delay+(w*delay*1.5)) Battle_CreateLogBullet(battle_board.x+battle_board.right-(proc*w),battle_board.y+battle_board.down+40,5,12,1,c_white,2);
		if(timer=(proc*delay)+(w*delay*2)) Battle_CreateLogBullet(battle_board.x-battle_board.left+(proc*w),battle_board.y+battle_board.down+40,5,12,1,c_white,2);
		if(proc>w*delay) proc=0;
		else proc++;
	}
}
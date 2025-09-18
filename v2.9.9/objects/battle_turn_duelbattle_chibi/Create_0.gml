event_inherited();

_phase=-1;
_timer=0;
_chibi=[];

_create_chibi = function () {
	randomize();
	
	var dir = choose(DIR.LEFT, DIR.RIGHT);
	var inst = instance_create_depth(dir == DIR.LEFT ? 640 : 0,battle_board.y-10,0,battle_bullet_duelbattle_chibi_chame);
	inst._dir=dir;
	
	array_push(_chibi,inst);
}
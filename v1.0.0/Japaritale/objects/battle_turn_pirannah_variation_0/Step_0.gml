_angle+=4;
_timer+=1;

/*
if(!instance_exists(_inst[0])&&_inst_created[0]){
	_inst[1]=instance_create_depth(0,0,0,battle_bullet_pirannah_variation_0);
	_inst_created[1]=true;
}

//When there's no bullet, end the turn.
if(!instance_exists(_inst[0]) && !instance_exists(_inst[1])){
	Battle_EndTurn();
}
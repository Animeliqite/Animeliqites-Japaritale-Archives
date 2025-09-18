///@desc Turn Start

//Start the attack!
_branch = instance_create_depth(battle_board.x+40,battle_board.y+battle_board.down+30,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH,battle_bullet_branch);
_branch.image_alpha = 0;
phase=0;

battle_soul.moveable=false;
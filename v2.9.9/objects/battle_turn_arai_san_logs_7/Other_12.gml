///@desc Turn Start

//Start the attack!
_trash_can = instance_create_depth(battle_board.x,battle_board.y-battle_board.up,DEPTH_BATTLE.BULLET_OUTSIDE_HIGH,battle_bullet_trash_can);
_trash_can.image_alpha = 0;
phase=0;

battle_soul.moveable=false;
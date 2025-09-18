///@desc Turn Preparation Start

//Turn time, 480f = 8s , -1 for infinitive.
Battle_SetTurnInfo(BATTLE_TURN.TIME,room_speed*12);

Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,120);
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,120);

battle_soul.moveable=false;
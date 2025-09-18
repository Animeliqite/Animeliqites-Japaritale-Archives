///@desc Turn Start

//Start the attack!
audio_play_sound_on(global._gmu_emitter_sfx,snd_slice,false,0);
Battle_CreateTireBullet(battle_board.x+battle_board.right+60,battle_board.y+battle_board.down-(sprite_get_height(spr_bullet_wheel)/2),-5);
phase=0;
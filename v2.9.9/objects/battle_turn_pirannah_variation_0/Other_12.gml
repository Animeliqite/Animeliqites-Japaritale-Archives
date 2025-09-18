///@desc Turn Start

//Start the attack!
Anim_Create(battle_enemy_cellien_big,"_rot_add_180",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,-12,5,0);
Anim_Create(battle_enemy_cellien_big,"_rot_add_0",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,12,5,5);
Anim_Create(battle_enemy_cellien_big,"_rot_add_135",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,-12,5,10);
Anim_Create(battle_enemy_cellien_big,"_rot_add_45",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,0,12,5,15);
alarm[0]=45;
alarm[1]=5;
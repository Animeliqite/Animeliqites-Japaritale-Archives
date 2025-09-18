canRun = Flag_Get(FLAG_TYPE.STATIC, FLAG_STATIC.CAN_RUN);

var specialKey = (Input_IsHeld(INPUT.UP) && Input_IsHeld(INPUT.DOWN));
var readyToDance = specialKey && place_meeting(x, y - move_speed[DIR.UP], block) && instance_nearest(x, y - move_speed[DIR.UP], block).block_enabled == true;

var can_move = (moveable && move_moveable && _moveable_dialog && _moveable_menu && _moveable_save && _moveable_warp && _moveable_encounter && _moveable_cutscene);
var is_moving = (move[DIR.LEFT] > 0) || (move[DIR.RIGHT] > 0) || (move[DIR.UP] > 0) || (move[DIR.DOWN] > 0);
var is_not_moving = !is_moving;

if (canRun && Input_IsHeld(INPUT.CANCEL) && canRunAlt && can_move && is_moving) {
    running = true;
}
else {
    running = false;

    _run_timer = 0;
    move_speed[DIR.LEFT] = 2;
    move_speed[DIR.UP] = 2;
    move_speed[DIR.RIGHT] = 2;
    move_speed[DIR.DOWN] = 2;
	
	res_move_speed[DIR.UP] = 1/4;
    res_move_speed[DIR.DOWN] = 1/4;
    res_move_speed[DIR.LEFT] = 1/4;
    res_move_speed[DIR.RIGHT] = 1/4;
	
    res_move_sprite[DIR.DOWN] = spr_char_kaban_down;
    res_move_sprite[DIR.UP] = spr_char_kaban_up;
    res_move_sprite[DIR.LEFT] = spr_char_kaban_left;
    res_move_sprite[DIR.RIGHT] = spr_char_kaban_right;

    res_idle_sprite[DIR.DOWN] = spr_char_kaban_down;
    res_idle_sprite[DIR.UP] = spr_char_kaban_up;
    res_idle_sprite[DIR.LEFT] = spr_char_kaban_left;
    res_idle_sprite[DIR.RIGHT] = spr_char_kaban_right;
	
	if (!global._gmu_cutscene && moveable) {
		if(is_moving) image_speed=1/4;
		else image_speed=0;
		sprite_index=asset_get_index("spr_char_kaban_" + (dir==DIR.LEFT ? "left" :
																(dir==DIR.RIGHT ? "right" :
																(dir==DIR.UP ? "up" : "down"))))
	}
}

if (running) {
    _run_timer++;
    
    if (_run_timer == 1) {
        res_move_sprite[DIR.UP] = spr_char_kaban_up_run;
        res_move_sprite[DIR.DOWN] = spr_char_kaban_down_run;
        res_move_sprite[DIR.LEFT] = spr_char_kaban_left_run;
        res_move_sprite[DIR.RIGHT] = spr_char_kaban_right_run;
        res_idle_sprite[DIR.UP] = spr_char_kaban_up_run;
        res_idle_sprite[DIR.DOWN] = spr_char_kaban_down_run;
        res_idle_sprite[DIR.LEFT] = spr_char_kaban_left_run;
        res_idle_sprite[DIR.RIGHT] = spr_char_kaban_right_run;
		
		res_move_speed[DIR.UP] = 1/2;
        res_move_speed[DIR.DOWN] = 1/2;
        res_move_speed[DIR.LEFT] = 1/2;
        res_move_speed[DIR.RIGHT] = 1/2;
		
		if (!global._gmu_cutscene && moveable) {
			image_speed=1/2;
			sprite_index=asset_get_index("spr_char_kaban_" + (dir==DIR.LEFT ? "left" : 
															(dir==DIR.RIGHT ? "right" : 
															(dir==DIR.UP ? "up" : "down"))) + "_run")
		}
    }

    if (_run_timer < 15) {
        move_speed[DIR.LEFT] += 0.1;
        move_speed[DIR.UP] += 0.1;
        move_speed[DIR.RIGHT] += 0.1;
        move_speed[DIR.DOWN] += 0.1;
     }
}

if (_hurt_inv > 0) {
    _hurt_inv--;
    _hurt_inv_heart_img_index += 0.25;
} else {
    _hurt_inv_heart_img_index = 0;
}

if (can_move) {
    if (place_meeting(x, y, trigger_overworldbattle)) {
        if (!_overworld_battle_executed_once) {
            _heart_alpha2 = 1;
            Anim_Create(id, "_heart_alpha", 0, 0, _heart_alpha, 1, 15, 0, -1, -1, ANIM_MODE.ONESHOT, false);
            Anim_Create(id, "_heart_scale", 0, 0, _heart_scale, 2, 15, 0, -1, -1, ANIM_MODE.ONESHOT, false);
            Anim_Create(id, "_heart_alpha2", 0, 0, _heart_alpha2, 0, 15, 0, -1, -1, ANIM_MODE.ONESHOT, false);
            Sfx_Play(snd_ding);
            _overworld_battle_executed_once = true;
        }
        global.in_overworld_battle = true;
    } else {
        if (_overworld_battle_executed_once) {
            Anim_Create(id, "_heart_alpha", 0, 0, _heart_alpha, 0, 15, 0, -1, -1, ANIM_MODE.ONESHOT, false);
            Anim_Create(id, "_heart_scale", 0, 0, _heart_scale, 0.5, 15, 0, -1, -1, ANIM_MODE.ONESHOT, false);
            _overworld_battle_executed_once = false;
        }
        global.in_overworld_battle = false;
    }

    if (Input_IsHeld(INPUT.UP) && !readyToDance) {
        move[DIR.UP] = 2;
    } else if (Input_IsHeld(INPUT.DOWN)) {
        move[DIR.DOWN] = 2;
    }

    if (Input_IsHeld(INPUT.LEFT)) {
        move[DIR.LEFT] = 2;
    } else if (Input_IsHeld(INPUT.RIGHT)) {
        move[DIR.RIGHT] = 2;
    }

    if (Input_IsPressed(INPUT.CONFIRM)) {
        var inst = noone;
        var inst_dir = DIR.DOWN;

        if (dir == DIR.UP) {
            inst = collision_rectangle(x - sprite_width / 2 + 4, y - 5, x + sprite_width / 2 - 4, y - sprite_height + 5, char, false, true);
            inst_dir = DIR.DOWN;
        }

        if (dir == DIR.DOWN) {
            inst = collision_rectangle(x - sprite_width / 2 + 4, y - sprite_height + 20, x + sprite_width / 2 - 4, y + 15, char, false, true);
            inst_dir = DIR.UP;
        }

        if (dir == DIR.LEFT) {
            inst = collision_rectangle(x, y - sprite_height + 19, x + sprite_width / 2 - 20, y, char, false, true);
            inst_dir = DIR.RIGHT;
        }

        if (dir == DIR.RIGHT) {
            inst = collision_rectangle(x, y - sprite_height + 19, x + sprite_width / 2 + 15, y, char, false, true);
            inst_dir = DIR.LEFT;
        }

        if (instance_exists(inst)) {
            with (inst) {
                event_user(0);
                _turnDir = inst_dir;
            }
        }
    }

    if (!instance_exists(ui_dialog) && !instance_exists(ui_menu) && !global.in_overworld_battle) {
        if (Input_IsPressed(INPUT.MENU)) {
            instance_create_depth(0, 0, 0, ui_menu);
        }
    }

    if (Input_IsHeld(INPUT.LEFT) && Input_IsHeld(INPUT.RIGHT)) {
        move[DIR.RIGHT] = 0;
    }

    if (specialKey && !readyToDance)
        move[DIR.DOWN] = 0;

    if (move[DIR.UP] > 0) {
        if (readyToDance || (move[DIR.LEFT] <= 0 || dir != DIR.LEFT) && (move[DIR.RIGHT] <= 0 || dir != DIR.RIGHT)) {
            dir = DIR.UP;
        }
    }

    if (move[DIR.DOWN] > 0) {
        if ((move[DIR.LEFT] <= 0 || dir != DIR.LEFT) && (move[DIR.RIGHT] <= 0 || dir != DIR.RIGHT)) {
            dir = DIR.DOWN;
        }
    }

    if (move[DIR.LEFT] > 0) {
        if (!specialKey && (move[DIR.UP] <= 0 || dir != DIR.UP) && (move[DIR.DOWN] <= 0 || dir != DIR.DOWN)) {
            dir = DIR.LEFT;
        }
    }

    if (move[DIR.RIGHT] > 0) {
        if (!specialKey && (move[DIR.UP] <= 0 || dir != DIR.UP) && (move[DIR.DOWN] <= 0 || dir != DIR.DOWN)) {
            dir = DIR.RIGHT;
        }
    }
}

if (Player_GetHp() <= 0) {
    global.in_overworld_battle = false;
    Flag_Set(FLAG_TYPE.TEMP, FLAG_TEMP.GAMEOVER_SOUL_X, 320);
    Flag_Set(FLAG_TYPE.TEMP, FLAG_TEMP.GAMEOVER_SOUL_Y, 240);
    room_goto(room_gameover);
}

event_inherited();

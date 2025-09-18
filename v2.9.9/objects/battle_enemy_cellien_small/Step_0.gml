var DIALOG = array_create(8, "");

for (var i = 0; i < 12; i++)
	DIALOG[0] += Lang_GetString("monster.cellien_small.battle_dialog." + string(i)) + "{pause}" + (i == 11 ? "{end}" : "{clear}");

for (var i = 0; i < 2; i++)
	DIALOG[1] += Lang_GetString("monster.cellien_small.battle_dialog_dodge.0." + string(i)) + "{pause}" + (i == 1 ? "{end}" : "{clear}");

for (var i = 0; i < 2; i++)
	DIALOG[2] += Lang_GetString("monster.cellien_small.battle_dialog_dodge.1." + string(i)) + "{pause}" + (i == 1 ? "{end}" : "{clear}");

for (var i = 0; i < 1; i++)
	DIALOG[3] += Lang_GetString("monster.cellien_small.battle_dialog_dodge.2." + string(i)) + "{pause}" + (i == 0 ? "{end}" : "{clear}");

for (var i = 0; i < 5; i++)
	DIALOG[4] += Lang_GetString("monster.cellien_small.battle_dialog_collide.0." + string(i)) + "{pause}" + (i == 4 ? "{end}" : "{clear}");

for (var i = 0; i < 5; i++)
	DIALOG[5] += Lang_GetString("monster.cellien_small.battle_dialog_collide.1." + string(i)) + "{pause}" + (i == 4 ? "{end}" : "{clear}");

for (var i = 0; i < 1; i++)
	DIALOG[6] += Lang_GetString("monster.cellien_small.battle_dialog_threaten." + string(i)) + "{pause}" + (i == 0 ? "{end}" : "{clear}");

for (var i = 0; i < 2; i++)
	DIALOG[7] += Lang_GetString("monster.cellien_small.battle_dialog_aftermath." + string(i)) + "{pause}" + (i == 1 ? "{end}" : "{clear}");

_create_white_noise = function () constructor {
	fx_layer = layer_create(DEPTH_BATTLE.UI_HIGHEST,"White Noise");
	fx_white_noise = fx_create("_filter_whitenoise");
	fx_set_parameter(fx_white_noise,"g_WhiteNoiseIntensity",1);
	fx_set_parameter(fx_white_noise,"g_WhiteNoiseAnimation",1);
	layer_enable_fx(fx_layer,true);
	layer_set_fx(fx_layer,fx_white_noise);
	
	_set_visibility = function (val) {
		if(!global.low_vfx){
			if(val) audio_play_sound_on(global._gmu_emitter_sfx,snd_white_noise,0,true,1,0,1);
			else audio_stop_sound(snd_white_noise);
			layer_set_visible(fx_layer,val);
		}
	}
}

if (global.event == 1) {
	image_index = 0;
	image_speed = 0;
	sprite_index = spr_cellien_monster_normal;
}
if (global.event == 2) {
	image_index = 0;
	image_speed = 0;
	sprite_index = spr_cellien_monster_happy;
}
if (global.event == 3) {
	image_index = 0;
	image_speed = 0;
	sprite_index = spr_cellien_monster_sad;
}
if (global.event == 4) {
	image_index = 0;
	image_speed = 0;
	sprite_index = spr_cellien_monster_question;
}
if (global.event == 5) {
	image_index = 0;
	image_speed = 0;
	sprite_index = spr_cellien_monster_blink;
}
if (global.event == 6) {
	image_index = 0;
	image_speed = 0.16;
	sprite_index = spr_cellien_monster_blink_anim;
}
if (global.event == 7) {
	image_index = 0;
	image_speed = 0;
	sprite_index = spr_cellien_monster_shocked;
}
if (global.event == 8) {
	image_index = 0;
	image_speed = 0;
	sprite_index = spr_cellien_monster_squished_happy;
	global.event = -9999;
}
if (global.event == 10) {
	battle_soul_red.moveable = true;
	_show_controls = true;
	global.event = -9999;
}

switch (_phase) {
	case 0:
		if (global._gmu_cutscene) {
			C_Wait(0, 15);
			C_Execute(1, Battle_CreateBubble, [DIALOG[0], "{voice 2}{effect -1}", 100, -(self.sprite_height / 2)]);
			C_WaitUntilDestroy(1, battle_dialog_enemy);
			C_Execute(2, instance_create_depth, [0, 0, 0, battle_turn_sparkle_follow]);
			C_Execute(2, variable_instance_set, [object_index, "_show_controls", false]);
			C_Wait(2, 1);
			Cutscene_End(3);
		}
		break;
	case 1:
		if (global._gmu_cutscene) {
			_dodged = true;
			C_Execute(0, variable_instance_set, [battle_soul_red, "moveable", false]);
			C_Execute(0, Battle_CreateBubble, [DIALOG[1], "{voice 2}{effect -1}", 100, -(self.sprite_height / 2)]);
			C_WaitUntilDestroy(0, battle_dialog_enemy);
			C_Execute(1, BGM_SetPitch, [0, 1.1]);
			C_Execute(1, variable_global_set, ["event", -9999]);
			C_Execute(1, variable_instance_set, [battle_soul_red, "moveable", true]);
			C_Execute(1, variable_instance_set, [battle_turn_sparkle_follow, "_inst_speed", 1.5]);
			C_Execute(1, variable_instance_set, [battle_turn_sparkle_follow, "_user_event_2", true]);
			C_Execute(1, variable_instance_set, [object_index, "sprite_index", spr_cellien_monster_normal]);
			Cutscene_End(1);
		}
		break;
	case 2:
		if (global._gmu_cutscene) {
			_dodged = true;
			C_Execute(0, variable_instance_set, [battle_soul_red, "moveable", false]);
			C_Execute(0, Battle_CreateBubble, [DIALOG[2], "{voice 2}{effect -1}", 100, -(self.sprite_height / 2)]);
			C_WaitUntilDestroy(0, battle_dialog_enemy);
			C_Execute(1, BGM_SetPitch, [0, 1.2]);
			C_Execute(1, variable_global_set, ["event", -9999]);
			C_Execute(1, variable_instance_set, [battle_soul_red, "moveable", true]);
			C_Execute(1, variable_instance_set, [battle_turn_sparkle_follow, "_inst_speed", 2]);
			C_Execute(1, variable_instance_set, [battle_turn_sparkle_follow, "_user_event_2", true]);
			C_Execute(1, variable_instance_set, [object_index, "sprite_index", spr_cellien_monster_normal]);
			Cutscene_End(1);
		}
		break;
	case 3:
		if (global._gmu_cutscene) {
			_dodged = true;
			C_Execute(0, BGM_SetVolume, [0, 0, 15]);
			C_Execute(0, variable_instance_set, [battle_soul_red, "moveable", false]);
			C_Execute(0, Battle_CreateBubble, [DIALOG[3], "{voice 2}{effect -1}", 100, -(self.sprite_height / 2)]);
			C_WaitUntilDestroy(0, battle_dialog_enemy);
			C_Execute(1, variable_global_set, ["event", -9999]);
			C_Execute(1, variable_instance_set, [battle_soul_red, "moveable", true]);
			C_Execute(1, variable_instance_set, [battle_turn_sparkle_follow, "_fade_all", true]);
			C_Execute(1, variable_instance_set, [object_index, "sprite_index", spr_cellien_monster_blink]);
			C_Wait(1, 30);
			C_Execute(2, BGM_Stop, [0]);
			C_Execute(2, variable_instance_set, [object_index, "_phase", 4]);
			Cutscene_End(2);
		}
		break;
	case 4:
		if (global._gmu_cutscene) {
			global.event = -9999;
			C_Execute(0, variable_instance_set, [object_index, "sprite_index", spr_cellien_monster_blink_anim]);
			C_Execute(0, variable_instance_set, [object_index, "image_index", 0]);
			C_Execute(0, variable_instance_set, [object_index, "image_speed", 0.16]);
			C_Execute(0, BGM_Stop, [0]);
			C_Execute(0, Camera_Shake, [8, 0, 1, 1]);
			C_Wait(0, 45);
			C_Execute(1, BGM_Stop, [0]);
			C_Execute(1, variable_instance_set, [object_index, "sprite_index", spr_cellien_monster_blink]);
			C_Execute(1, variable_instance_set, [object_index, "image_index", 0]);
			C_Execute(1, variable_instance_set, [object_index, "image_speed", 0]);
			C_Execute(1, Battle_CreateBubble, [DIALOG[(!_dodged ? 4 : 5)], "{voice 2}{effect -1}", 100, -(self.sprite_height / 2)]);
			C_WaitUntilDestroy(1, battle_dialog_enemy);
			C_Execute(2, instance_create_depth, [0, 0, 0, battle_turn_sparkle_circle]);
			Cutscene_End(2);
		}
		break;
	case 5:
		if (global._gmu_cutscene) {
			global.event = -9999;
			C_Execute(0, BGM_Play, [0, bgm_scary_pre]);
			C_Execute(0, BGM_SetPitch, [0, 0.75]);
			C_Execute(0, variable_instance_set, [object_index, "sprite_index", spr_cellien_monster_laugh_pre]);
			C_Execute(0, Battle_CreateBubble, [Lang_GetString("monster.cellien_small.battle_dialog_threaten." + (!_dodged ? "0" : "1")), "{voice 2}{effect -1}", 100, -(self.sprite_height / 2)]);
			C_WaitUntilDestroy(0, battle_dialog_enemy);
			C_Execute(1, variable_instance_set, [object_index, "_laugh", true]);
			C_Execute(1, variable_instance_set, [object_index, "image_speed", 0.5]);
			C_CreateAnim(1, object_index, "_bg_fade_amount", 0, 0, 0, 0.25, 30, false, 0, ANIM_MODE.PINGPONG);
			C_Execute(1, BGM_Play, [0, bgm_scary, false]);
			C_Execute(1, BGM_SetPitch, [0, 1 * (audio_sound_length(bgm_scary) / 4)]);
			C_PlaySfx(1, snd_cellien_laugh);
			Cutscene_End(1);
		}
		break;
	case 6:
		if (global._gmu_cutscene) {
			/*if (cutscene._current_order == 3) {
				if (instance_exists(shaker)) {
					with (shaker) {
						shake_decrease = 0.25;
					}
				}
			}*/
			_laugh = false;
			C_Execute(0, variable_instance_set, [object_index, "sprite_index", spr_cellien_monster_squished]);
			C_Execute(0, Object_Shake, [8, "x", object_index, 0, true]);
			C_Execute(0, Object_Shake, [8, "y", object_index, 0, true]);
			C_Execute(0, Camera_Shake, [4, 4, 1, 1, true, true]);
			C_PlaySfx(0, snd_damage, 1, 0.5);
			C_Wait(0, 60);
			C_Execute(1, variable_instance_set, [object_index, "_shake", true]);
			C_Execute(1, variable_instance_set, [object_index, "_shake_x", 1]);
			C_Execute(1, variable_instance_set, [object_index, "_shake_y", 1]);
			C_Execute(1, Battle_CreateBubble, [DIALOG[7], "{voice 3}{effect 0}", 100, -(self.sprite_height / 2)]);
			C_WaitUntilDestroy(1, battle_dialog_enemy);
			if(cutscene._current_order==2&&!global.low_vfx){
				if(cutscene._sleep_timer==0) white_noise._set_visibility(true);
				if(cutscene._sleep_timer==5) white_noise._set_visibility(false);
				if(cutscene._sleep_timer==15) white_noise._set_visibility(true);
				if(cutscene._sleep_timer==20) white_noise._set_visibility(false);
				if(cutscene._sleep_timer==25) white_noise._set_visibility(true);
				if(cutscene._sleep_timer==30) white_noise._set_visibility(false);
				if(cutscene._sleep_timer==40) white_noise._set_visibility(true);
				if(cutscene._sleep_timer==160) {
					white_noise._set_visibility(false);
					delete white_noise;
				}
			}
			//C_Execute(2, BGM_Play, [0, bgm_cymbal, false]);
			C_Execute(2, variable_global_set, ["event", -9999]);
			C_Execute(2, variable_instance_set, [object_index, "_shake_x", 2]);
			C_Execute(2, variable_instance_set, [object_index, "_shake_y", 2]);
			C_CreateAnim(2, object_index, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, y, -25, room_speed / 6, true, 0, ANIM_MODE.PINGPONG);
			C_Execute(2, Battle_CreateBubble, [Lang_GetString("monster.cellien_small.battle_dialog_aftermath.2") + "{sleep 9999}", "{voice 3}{effect 0}{skippable false}", 100, -(self.sprite_height / 2)]);
			C_FadeFader(2, -1, 1, 160, 0, c_white);
			C_Wait(2, 160);
			C_FadeFader(3, 0, 1, 1, 0, c_black);
			C_Execute(3, BGM_Play, [0, bgm_wind, true]);
			C_Execute(3, BGM_SetVolume, [0, 0]);
			C_Execute(3, BGM_SetVolume, [0, 1, 30]);
			C_Wait(3, 180);
			C_Execute(4, BGM_Stop, [0]);
			C_Execute(4, room_goto, [room_savannah_0]);
			C_FadeFader(4, 1, 0, 1, 0, c_black);
			Cutscene_End(4);
			
			
		}
		break;
}
///@desc Init

Battle_SetEnemyName(_enemy_slot,"* Cellien");

Battle_SetEnemyActionNumber(_enemy_slot,1);
Battle_SetEnemyActionName(_enemy_slot,0,"* Check");

Battle_SetEnemyDEF(_enemy_slot,-15);

_create_white_noise = function () constructor {
	fx_layer = layer_create(-4000,"White Noise");
	fx_white_noise = fx_create("_filter_whitenoise");
	fx_set_parameter(fx_white_noise,"g_WhiteNoiseIntensity",0.5);
	fx_set_parameter(fx_white_noise,"g_WhiteNoiseAnimation",1);
	layer_enable_fx(fx_layer,true);
	layer_set_fx(fx_layer,fx_white_noise);
	
	_set_visibility = function (val) {
		if(val) audio_play_sound(snd_white_noise,0,true,1,0,1);
		else audio_stop_sound(snd_white_noise);
		layer_set_visible(fx_layer,val);
	}
}

white_noise = new _create_white_noise();
white_noise._set_visibility(false);
battle_soul_red.moveable = false;
global.event = -9999;
_show_controls=false;
_dodged=false;
_laugh=false;
_phase=0;
_hp_max=100;
_hp=100;

_shake = false;
_shake_x = 1;
_shake_y = 1;

_bg_fade_amount=0;
instance_create_depth(0,0,0,battle_enemy_cellien_small_bg);
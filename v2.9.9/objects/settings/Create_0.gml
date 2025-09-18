_harp_length=/*(audio_sound_length(BGM_GetAudio(0))/2)*/1.5*room_speed;
_show_bars=true;
_bar_distance=0;

_text_bgm_volume=noone;
_text_sfx_volume=noone;

_heart_x_lerp=0;
_heart_y_lerp=0;
_heart_x=array_create(32,[]);
_heart_y=array_create(32,[]);

_chosen_language=global.chosen_language;
_chosen_border=global.chosen_border;

_sfx_sfx=audio_emitter_get_gain(global._gmu_emitter_sfx);
_sfx_bgm=audio_emitter_get_gain(global._gmu_emitter_bgm);

_contents_x=90;
_contents_height=32;

_phase=0;
_subphase=0;
_state=0;
_selection=0;
_selection_phase=0;
_tab_spacing=3;
_noise_timer=0;

_on = function (value) {
	if (value) return Lang_GetString("setup.text.on");
	else return Lang_GetString("setup.text.off");
}

_headers_x=60;
_headers_height=32;

_prepare_strings = function () {
	_contents_logo=[
		[
			[
				undefined,
				spr_dialogbox_slice_small,
				undefined,
				undefined,
				undefined,
				undefined
			]
		]
	]

	_contents_subimage=[
		[
			[
				undefined,
				global.dialogue_box_style,
				undefined,
				undefined,
				undefined,
				undefined
			]
		]
	]
	
	_contents=[
		[
			[
				Lang_GetString("settings.extras.source_code"),
				Lang_GetString("settings.extras.dialogue_box_style"),
				Lang_GetString("settings.extras.gamejolt_api"),
				Lang_GetString("settings.extras.credits"),
				Lang_GetString("settings.extras.delete_all_data"),
				Lang_GetString("settings.extras.exit")
			]
		]
	];

	_headers=[
		[
			Lang_GetString("settings.extras.headers.0")
		]
	];
	
	_contents_unusable=[
		[
			[
				false,
				false,
				false,
				false,
				false,
				false
			]
		]
	];
}

_prepare_strings();

_selection_max=array_length(_contents[_selection_phase])-1;

if(!global.settings_returning){
	alarm[0]=_harp_length;
	BGM_Play(1,snd_harpnoise,false);
	Anim_Create(id,"_bar_distance",0,0,_bar_distance,320,_harp_length,0,-1,-1,ANIM_MODE.ONESHOT,false);
}
else alarm[0]=1;
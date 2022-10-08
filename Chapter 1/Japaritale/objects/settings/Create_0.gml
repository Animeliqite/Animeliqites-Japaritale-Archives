BGM_Play(0,bgm_harpnoise,false);

_harp_length=(audio_sound_length(BGM_GetAudio(0))/2)*room_speed;
_show_bars=true;
_bar_distance=0;

_text_bgm_volume=noone;
_text_sfx_volume=noone;

_heart_x_lerp=0;
_heart_y_lerp=0;
_heart_x=array_create(16,[]);
_heart_y=array_create(16,[]);

_chosen_language=0;

_headers_x=60;
_headers_height=32;
_headers=[
	Lang_GetString("settings.headers.0"),
	Lang_GetString("settings.headers.1")
];

_contents_x=90;
_contents_height=32;
_contents_unusable=[
	[
		false,
		false,
		false,
		false,
		true
	],
	[
		false,
		true,
		true,
		false
	]
];
_contents=[
	[
		Lang_GetString("settings.option.0"),
		Lang_GetString("settings.option.1"),
		Lang_GetString("settings.option.2"),
		Lang_GetString("settings.option.3"),
		Lang_GetString("settings.option.4"),
	],
	[
		Lang_GetString("settings.option.5"),
		Lang_GetString("settings.option.6"),
		Lang_GetString("settings.option.7"),
		Lang_GetString("settings.option.8"),
	]
];

_phase = 0;
_state=-9999;
_selection=0;
_selection_phase=0;
_selection_max=array_length(_contents[_selection_phase])-1;
_tab_spacing=3;
_noise_timer=0;

alarm[0]=_harp_length;
Anim_Create(id,"_bar_distance",0,0,_bar_distance,320,_harp_length,0,-1,-1,ANIM_MODE.ONESHOT,false);
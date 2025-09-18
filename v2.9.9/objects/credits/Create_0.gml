bpm=time_seconds_to_bpm(BGM_GetAudio(0));
prefix="{scale 2}{instant true}{skippable false}{voice -1}";

/*if(global.chapter==3){
	BGM_Play(1,bgm_wind2);
	BGM_SetPitch(1,0.95);
	BGM_SetVolume(1,0);
	BGM_SetVolume(1,0.75,30);
}*/

_headers_x=320;
_headers_height=64;
_headers=[
	" ",
	Lang_GetString("credits.header.director"),
	Lang_GetString("credits.header.lead_programmer"),
	Lang_GetString("credits.header.lead_spriter"),
	Lang_GetString("credits.header.lead_musician"),
	Lang_GetString("credits.header.lead_writer"),
	Lang_GetString("credits.header.programmers"),
	Lang_GetString("credits.header.spriters"),
	Lang_GetString("credits.header.musicians"),
	Lang_GetString("credits.header.writers"),
	Lang_GetString("credits.header.contributors"),
	Lang_GetString("credits.header.retired_team"),
	Lang_GetString("credits.header.special_thanks"),
	" ",
	Lang_GetString("credits.header.in_memory_of")
];

_contents_x=320;
_contents_height=32;
_contents=[
	Lang_GetString("credits.japaritale_by"),
	"Animeliqite",
	"Animeliqite",
	"Akogiri",
	"Kaeden",
	"TheCreatorFox",
	"Animeliqite",
	"Animeliqite#Akogiri#Xeron",
	"Animeliqite#Kaeden#Sarwex",
	"Animeliqite#TheCreatorFox",
	"Echel#nex#Synth Mints",
	"FellTheGoner#Loneelcor",
	"Toby Fox#Temmie Chang#shobotan04#Colinator27#TheEternalShine#UnderEvent Team#BryanJo97527502 (Savannah Border)",
	Lang_GetString("credits.thank_you"),
	"Grape-kun"
];

_headers_lerp_x=array_create(64,-1);
_contents_lerp_x=array_create(64,array_create(64,-1));

_y_add=0;
_tab_spacing=3;
_sprites=[spr_bg_savannah_scenery_x2,spr_bg_savannah_scenery_x2,spr_bg_savannah_scenery_x2];
_subimgs=[0,1,2];
_x_scales=[2,2,2];
_y_scales=[1,1,1];
_x_multipliers=[0.7,0.8,0.9];
_y_multipliers=[1,1,1];
_x_offsets=[0,0,0];
_y_offsets=[0,0,0];
_phase=-1;
xx=[0,0,0];
yy=[0,0,0];

alarm[0]=30;
Fader_Fade(1,0,30);
BGM_Stop(0);
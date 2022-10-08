bpm=150;
prefix="{scale 2}{instant true}{skippable false}{voice -1}";

_headers_x=80;
_headers_height=32;
_headers=[
	[" ",{x:0,y:0}],
	["-Project Director-",{x:0,y:_headers_height*4}],
	["-Lead Programmer-",{x:0,y:_headers_height*7}],
	["-Lead Spriter-",{x:0,y:_headers_height*10}],
	["-Lead Musician",{x:0,y:_headers_height*13}],
	["-Lead Writer-",{x:0,y:_headers_height*16}],
	["-Programmers-",{x:0,y:_headers_height*19}],
	["-Spriters-",{x:0,y:_headers_height*22}],
	["-Musicians-",{x:0,y:_headers_height*26}],
	["-Writers-",{x:0,y:_headers_height*30}],
	["-Contributors-",{x:0,y:_headers_height*34}],
	["-Retired Team-",{x:0,y:_headers_height*38}],
	["-Special Thanks-",{x:0,y:_headers_height*42}],
	[" ",{x:0,y:_headers_height*59}],
	["          -In Memory Of-         ",{x:0,y:_headers_height*65}]
];

_contents_x=100;
_contents_height=32;
_contents=[
	[["JAPARITALE by にら (@shobotan04)","Playable Version by Animeliqite"],{x:0,y:_contents_height}],
	[["Animeliqite"],{x:0,y:_contents_height*5}],
	[["Animeliqite"],{x:0,y:_contents_height*8}],
	[["Akogiri"],{x:0,y:_contents_height*11}],
	[["Kaeden"],{x:0,y:_contents_height*14}],
	[["TheCreatorFox"],{x:0,y:_contents_height*17}],
	[["Animeliqite"],{x:0,y:_contents_height*20}],
	[["Animeliqite","Akogiri"],{x:0,y:_contents_height*23}],
	[["Animeliqite","Kaeden"],{x:0,y:_contents_height*27}],
	[["Animeliqite","TheCreatorFox"],{x:0,y:_contents_height*31}],
	[["KlozureMan","nex"],{x:0,y:_contents_height*35}],
	[["FellTheGoner","Loneelcor"],{x:0,y:_contents_height*39}],
	[["Toby Fox","Temmie Chang","にら (@shobotan04)","Colinator27","TheEternalShine","Myriad","John Explosive Knight","Jevilhumor","Starlight Sam","HaterJuice","tarkan809","UnderEvent Team","loypoll","Denchick","Jerrycookies","EjmShadow"],{x:0,y:_contents_height*43}],
	[["Thank you for playing the DEMO."," ","Stay tuned for new content that'll","appear throughout the development."," "," "],{x:0,y:_contents_height*60}],
	[["           Grape-kun           "],{x:0,y:_contents_height*66}]
];

_headers_lerp_x=array_create(64,-1);
_contents_lerp_x=array_create(64,array_create(64,-1));

_tab_spacing=3;
_sprites=[spr_bg_savannah_scenery_x2,spr_bg_savannah_scenery_x2,spr_bg_savannah_scenery_x2];
_subimgs=[0,1,2];
_x_scales=[2,2,2];
_y_scales=[1,1,1];
_x_multipliers=[0.7,0.8,0.9];
_y_multipliers=[1,1,1];
_x_offsets=[0,0,0];
_y_offsets=[0,0,0];
xx=[0,0,0];
yy=[0,0,0];

alarm[0]=30;
Fader_Fade(1,0,30);
BGM_Stop(0);
///@desc Group & Macro
ds_map_add(_map_macro,"true",true);
ds_map_add(_map_macro,"false",false);

ds_map_add(_map_macro,"DIR.UP",DIR.UP);
ds_map_add(_map_macro,"DIR.DOWN",DIR.DOWN);
ds_map_add(_map_macro,"DIR.LEFT",DIR.LEFT);
ds_map_add(_map_macro,"DIR.RIGHT",DIR.RIGHT);

ds_map_add(_map_macro,"FONT.DIALOG",0);
ds_map_add(_map_macro,"FONT.MENU",1);
ds_map_add(_map_macro,"FONT.BATTLE",2);
ds_map_add(_map_macro,"FONT.FENNEC",3);
ds_map_add(_map_macro,"FONT.ARAI_SAN",4);

ds_map_add(_map_macro,"VOICE.NULL",-1);
ds_map_add(_map_macro,"VOICE.DEFAULT",0);
ds_map_add(_map_macro,"VOICE.TYPER",1);

_group_font[0,0]=Lang_GetFont(Lang_GetString("font.dialog.0"));
_group_font_scale_x[0,0]=real(Lang_GetString("font.dialog.0.scale.x"));
_group_font_scale_y[0,0]=real(Lang_GetString("font.dialog.0.scale.y"));
_group_font_space_x[0,0]=real(Lang_GetString("font.dialog.0.space.x"));
_group_font_offset_x[0,0]=real(Lang_GetString("font.dialog.0.offset.x"));
_group_font_offset_y[0,0]=real(Lang_GetString("font.dialog.0.offset.y"));
_group_font[0,1]=Lang_GetFont(Lang_GetString("font.dialog.1"));
_group_font_scale_x[0,1]=real(Lang_GetString("font.dialog.1.scale.x"));
_group_font_scale_y[0,1]=real(Lang_GetString("font.dialog.1.scale.y"));
_group_font_space_x[0,1]=real(Lang_GetString("font.dialog.1.space.x"));
_group_font_offset_x[0,1]=real(Lang_GetString("font.dialog.1.offset.x"));
_group_font_offset_y[0,1]=real(Lang_GetString("font.dialog.1.offset.y"));
_group_font_space_y[0]=real(Lang_GetString("font.dialog.space.y"));

_group_font[1,0]=Lang_GetFont(Lang_GetString("font.menu.0"));
_group_font_scale_x[1,0]=real(Lang_GetString("font.menu.0.scale.x"));
_group_font_scale_y[1,0]=real(Lang_GetString("font.menu.0.scale.y"));
_group_font_space_x[1,0]=real(Lang_GetString("font.menu.0.space.x"));
_group_font_offset_x[1,0]=real(Lang_GetString("font.menu.0.offset.x"));
_group_font_offset_y[1,0]=real(Lang_GetString("font.menu.0.offset.y"));
_group_font[1,1]=Lang_GetFont(Lang_GetString("font.menu.1"));
_group_font_scale_x[1,1]=real(Lang_GetString("font.menu.1.scale.x"));
_group_font_scale_y[1,1]=real(Lang_GetString("font.menu.1.scale.y"));
_group_font_space_x[1,1]=real(Lang_GetString("font.menu.1.space.x"));
_group_font_offset_x[1,1]=real(Lang_GetString("font.menu.1.offset.x"));
_group_font_offset_y[1,1]=real(Lang_GetString("font.menu.1.offset.y"));
_group_font_space_y[1]=real(Lang_GetString("font.menu.space.y"));

_group_font[2,0]=Lang_GetFont(Lang_GetString("font.battle.0"));
_group_font_scale_x[2,0]=real(Lang_GetString("font.battle.0.scale.x"));
_group_font_scale_y[2,0]=real(Lang_GetString("font.battle.0.scale.y"));
_group_font_space_x[2,0]=real(Lang_GetString("font.battle.0.space.x"));
_group_font_offset_x[2,0]=real(Lang_GetString("font.battle.0.offset.x"));
_group_font_offset_y[2,0]=real(Lang_GetString("font.battle.0.offset.y"));
_group_font[2,1]=Lang_GetFont(Lang_GetString("font.battle.1"));
_group_font_scale_x[2,1]=real(Lang_GetString("font.battle.1.scale.x"));
_group_font_scale_y[2,1]=real(Lang_GetString("font.battle.1.scale.y"));
_group_font_space_x[2,1]=real(Lang_GetString("font.battle.1.space.x"));
_group_font_offset_x[2,1]=real(Lang_GetString("font.battle.1.offset.x"));
_group_font_offset_y[2,1]=real(Lang_GetString("font.battle.1.offset.y"));
_group_font_space_y[2]=real(Lang_GetString("font.battle.space.y"));

_group_font[3,0]=Lang_GetFont(Lang_GetString("font.fennec.0"));
_group_font_scale_x[3,0]=real(Lang_GetString("font.fennec.0.scale.x"));
_group_font_scale_y[3,0]=real(Lang_GetString("font.fennec.0.scale.y"));
_group_font_space_x[3,0]=real(Lang_GetString("font.fennec.0.space.x"));
_group_font_offset_x[3,0]=real(Lang_GetString("font.fennec.0.offset.x"));
_group_font_offset_y[3,0]=real(Lang_GetString("font.fennec.0.offset.y"));
_group_font[3,1]=Lang_GetFont(Lang_GetString("font.fennec.1"));
_group_font_scale_x[3,1]=real(Lang_GetString("font.fennec.1.scale.x"));
_group_font_scale_y[3,1]=real(Lang_GetString("font.fennec.1.scale.y"));
_group_font_space_x[3,1]=real(Lang_GetString("font.fennec.1.space.x"));
_group_font_offset_x[3,1]=real(Lang_GetString("font.fennec.1.offset.x"));
_group_font_offset_y[3,1]=real(Lang_GetString("font.fennec.1.offset.y"));
_group_font_space_y[3]=real(Lang_GetString("font.fennec.space.y"));

_group_font[4,0]=Lang_GetFont(Lang_GetString("font.arai_san.0"));
_group_font_scale_x[4,0]=real(Lang_GetString("font.arai_san.0.scale.x"));
_group_font_scale_y[4,0]=real(Lang_GetString("font.arai_san.0.scale.y"));
_group_font_space_x[4,0]=real(Lang_GetString("font.arai_san.0.space.x"));
_group_font_offset_x[4,0]=real(Lang_GetString("font.arai_san.0.offset.x"));
_group_font_offset_y[4,0]=real(Lang_GetString("font.arai_san.0.offset.y"));
_group_font[4,1]=Lang_GetFont(Lang_GetString("font.arai_san.1"));
_group_font_scale_x[4,1]=real(Lang_GetString("font.arai_san.1.scale.x"));
_group_font_scale_y[4,1]=real(Lang_GetString("font.arai_san.1.scale.y"));
_group_font_space_x[4,1]=real(Lang_GetString("font.arai_san.1.space.x"));
_group_font_offset_x[4,1]=real(Lang_GetString("font.arai_san.1.offset.x"));
_group_font_offset_y[4,1]=real(Lang_GetString("font.arai_san.1.offset.y"));
_group_font_space_y[4]=real(Lang_GetString("font.arai_san.space.y"));

_group_voice[0,0]=snd_text_voice_default;
_group_voice[1,0]=snd_text_voice_typer;
_group_voice[2,0]=snd_text_voice_cellien_small;
_group_voice[3,0]=snd_text_voice_cellien_small_angry;
_group_voice[4,0]=snd_text_voice_serval;
_group_voice[5,0]=snd_text_voice_hippo;
_group_voice[6,0]=snd_text_voice_zebra;
_group_voice[7,0]=snd_text_voice_serval_sad;
_group_voice[8,0]=snd_text_voice_fennec;
_group_voice[9,0]=snd_text_voice_flowey;
_group_voice[10,0]=snd_text_voice_chameleon;
_group_voice[11,0]=snd_text_voice_moose;
_group_voice[12,0]=snd_text_voice_porcupine;
_group_voice[13,0]=snd_text_voice_porcupine_quiet;

_group_face[0]=face;
_group_face[1]=face_cellien;
_group_face[2]=face_serval;
_group_face[3]=face_fennec;
_group_face[4]=face_arai_san;
_group_face[5]=face_porcupine;
_group_face[6]=face_chameleon;
_group_face[7]=face_moose;
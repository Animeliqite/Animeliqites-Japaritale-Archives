_inst_typer = -1;
_last_frame = false;
_last_frame_y = 138;

_text_no = 0;
text = [
	Lang_GetString("intro.0"),
	Lang_GetString("intro.1"),
	Lang_GetString("intro.2"),
	Lang_GetString("intro.3"),
	Lang_GetString("intro.4"),
	Lang_GetString("intro.5"),
	Lang_GetString("intro.6"),
	Lang_GetString("intro.7")
];

BGM_Play(0, bgm_intro, false);
BGM_SetPitch(0, 1);
image_speed = 0;
image_index = 0;

writeText = function () {
	_inst_typer = Typer_Type(60, 160, text[_text_no], "{skip_space false}{skippable false}{voice 1}{speed 1}{space_x 1}", true);
}
writeText();
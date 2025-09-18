_inst_typer = -1;
_last_frame = false;
_last_frame_y = 138;

_text_no = 0;
text = [
	"Long ago, two kinds&of people lived&in a popular landmark:&HUMANS and FRIENDS. {sleep 120}{event 0}",
	"One day, however, a&fateful war approached&between allies and threats.{sleep 120}{event 0}",
	"With great teamwork,&it was sorted right&after.{sleep 120}{event 0}",
	"Though, not all&reminants would disappear&despite all effort.{sleep 120}{event 0}",
	"Years of abandonance&later...{sleep 120}{event 0}",
	"MT. SANDSTAR, 201X{sleep 120}{event 0}",
	"It is a zoo of wonders&welcoming thousands&annually.{sleep 120}{event 0}",
	"{sleep 240}{event 0}",
	"{sleep 240}{event 0}",
	"{sleep 240}{event 0}",
	"{sleep 240}{event 0}",
	"{sleep 120}{event 1}{sleep 1200}{event 2}",
];

BGM_Play(0, bgm_intro, false);
BGM_SetPitch(0, 0.95);
image_speed = 0;
image_index = 0;

writeText = function () {
	_inst_typer = Typer_Type(60, 160, text[_text_no], "{skip_space false}{skippable false}{voice 1}{speed 0}{space_x 1}", true);
}
writeText();
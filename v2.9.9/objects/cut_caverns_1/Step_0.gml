event_inherited();

_cellien = char_cellien_small;
_cellien.image_blend = merge_color(c_white, c_black, _blend_amount);

if(_phase==0){
	if(char_player.y<_cellien.y + 60){
		Cutscene_Begin();
		_phase=1;
	}
}
else if(_phase==1){
	if (global.event == 1) {
		_cellien.sprite_index = spr_char_cellien;
	}
	if (global.event == 2) {
		_cellien.sprite_index = spr_char_cellien_shocked;
	}
	if (global.event == 3) {
		_cellien.sprite_index = spr_char_cellien_happy;
	}
	if (global.event == 4) {
		_cellien.sprite_index = spr_char_cellien_sad;
	}
	if (global.event == 5) {
		_cellien.sprite_index = spr_char_cellien_question;
	}
	if (global.event == 6) {
		_cellien.sprite_index = spr_char_cellien_blink;
	}
	C_Execute(0,variable_instance_set,[camera,"target",noone]);
	C_MoveCamToObject(0, _cellien, 60);
	C_Wait(0,60);
	C_Execute(1, BGM_SetVolume, [0, 0, room_speed]);
	C_Wait(1, 30);
	C_PlaySfx(2, snd_appear);
	C_CreateAnim(2, id, "_blend_amount", 0, 0, _blend_amount, 0, room_speed / 2, false);
	C_Execute(2, BGM_Stop, [0]);
	C_Wait(2, 60);
	C_Execute(3, BGM_Play, [0, bgm_cellien_small]);
	C_Execute(3, BGM_SetVolume, [0, 1, 0]);
	C_Execute(3, Dialog_Add_Ext, [Lang_GetString("monster.cellien_small.overworld_dialog.0"), "{event 3}{voice 2}{face 1}{face_emotion 2}"]);
	C_Execute(3, Dialog_Add_Ext, [Lang_GetString("monster.cellien_small.overworld_dialog.1"), "{event 1}{voice 2}{face 1}{face_emotion 0}"]);
	C_Execute(3, Dialog_Add_Ext, [Lang_GetString("monster.cellien_small.overworld_dialog.2"), "{event 5}{voice 2}{face 1}{face_emotion 4}"]);
	C_Execute(3, Dialog_Add_Ext, [Lang_GetString("monster.cellien_small.overworld_dialog.3"), "{event 2}{voice 2}{face 1}{face_emotion 1}"]);
	C_Execute(3, Dialog_Add_Ext, [Lang_GetString("monster.cellien_small.overworld_dialog.4"), "{event 5}{voice 2}{face 1}{face_emotion 4}"]);
	C_Execute(3, Dialog_Add_Ext, [Lang_GetString("monster.cellien_small.overworld_dialog.5"), "{event 1}{voice 2}{face 1}{face_emotion 0}"]);
	C_Execute(3, Dialog_Add_Ext, [Lang_GetString("monster.cellien_small.overworld_dialog.6"), "{event 1}{voice 2}{face 1}{face_emotion 0}"]);
	C_Execute(3, Dialog_Add_Ext, [Lang_GetString("monster.cellien_small.overworld_dialog.7"), "{event 5}{voice 2}{face 1}{face_emotion 4}"]);
	C_Execute(3, Dialog_Add_Ext, [Lang_GetString("monster.cellien_small.overworld_dialog.8"), "{event 3}{voice 2}{face 1}{face_emotion 2}"]);
	C_Execute(3, Dialog_Add_Ext, [Lang_GetString("monster.cellien_small.overworld_dialog.9"), "{event 1}{voice 2}{face 1}{face_emotion 0}"]);
	C_Execute(3, Dialog_Add_Ext, [Lang_GetString("monster.cellien_small.overworld_dialog.10"), "{event 1}{voice 2}{face 1}{face_emotion 0}"]);
	C_Execute(3, Dialog_Add_Ext, [Lang_GetString("monster.cellien_small.overworld_dialog.11"), "{event 5}{voice 2}{face 1}{face_emotion 4}"]);
	C_Execute(3, Dialog_Start);
	C_WaitUntilDestroy(3, ui_dialog);
	C_Execute(4, Encounter_Start, [3, true, false]);
	C_Wait(4, 15);
	C_Execute(5,variable_instance_set,[camera,"target",char_player]);
	Cutscene_End(5);
}
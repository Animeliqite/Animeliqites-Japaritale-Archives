event_inherited();

if (Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_002,false)==false){
	if (Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.HAD_CONVERSATION)==false){
		if (_phase == 0) {
			char_zebra.dir_locked=true;
			char_zebra.sprite_index=spr_char_zebra_look;
			C_Wait(0, 1);
			C_MoveChar(1, char_player, 40, 230, false, 30);
			C_Wait(1, 29);
			C_Execute(2, variable_instance_set, [char_player, "dir", DIR.UP]);
			C_Execute(2, variable_instance_set, [char_save, "active", false]);
			C_Wait(2, 30);
			C_Execute(3, instance_create_depth, [char_serval.x, char_serval.y - char_serval.sprite_height - 5, 0, exclamation]);
			C_Execute(3, variable_instance_set, [char_serval, "dir", DIR.DOWN]);
			C_Execute(3, variable_instance_set, [char_player, "dir", DIR.UP]);
			C_Execute(3, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.0"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(3, Dialog_Start, [true]);
			C_WaitUntilDestroy(3, ui_dialog);
			C_Execute(4, variable_instance_set, [char_player, "dir", DIR.RIGHT]);
			C_Execute(4, variable_instance_set, [char_serval, "dir", DIR.RIGHT]);
			C_Execute(4, variable_instance_set, [camera, "target", noone]);
			C_MoveChar(4, camera, 330 - (camera.width / camera.scale_x / 2), char_player.y - (camera.width / camera.scale_x / 2), false, 60);
			C_Wait(4, 60);
			C_Wait(5, 30);
			C_MoveChar(6, camera, max(0, char_player.x - (camera.width / camera.scale_x / 2)), char_player.y - (camera.width / camera.scale_x / 2), false, 60);
			C_Wait(6, 90);
			C_Execute(7, variable_instance_set, [camera, "target", char_player]);
			C_Execute(7, variable_instance_set, [char_player, "dir", DIR.UP]);
			C_Execute(7, variable_instance_set, [char_serval, "dir", DIR.DOWN]);
			C_Execute(7, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.1"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(7, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.2"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(7, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.3"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(7, Dialog_Start, [true]);
			C_WaitUntilDestroy(7, ui_dialog);
			C_Execute(8, variable_instance_set, [char_serval, "dir", DIR.RIGHT]);
			C_Wait(8, 30);
			C_Execute(9, variable_instance_set, [char_serval, "dir", DIR.DOWN]);
			C_Execute(9, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.4"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(9, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.5"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(9, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.6"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(9, Dialog_Start, [true]);
			C_WaitUntilDestroy(9, ui_dialog);
			C_Execute(10, variable_instance_set, [cut_savannah_1, "_phase", 1]);
			C_Execute(10, instance_activate_object, [char_forcefield]);
			C_Execute(10, Flag_Set, [FLAG_TYPE.STATIC, FLAG_STATIC.SCENE_002_1, true]);
			Cutscene_End(10);
		}
		else if (_phase == 1) {
			char_player.collision = true;
			char_player.block_enabled = true;
			if (char_player.x > 300) {
				Cutscene_Begin();
				_phase = 2;
			}
			if (char_player.y > 320) {
				Cutscene_Begin();
				char_zebra.dir_locked=false;
				_phase = 3;
			}
		}
		else if (_phase == 2) {
			C_Execute(0, instance_create_depth, [char_zebra.x, char_zebra.y - char_zebra.sprite_height - 5, 0, exclamation]);
			C_Wait(0, 30);
			C_Execute(1, variable_instance_set, [char_zebra, "sprite_index", spr_char_zebra_shy]);
			C_Execute(1, variable_instance_set, [char_zebra, "interacted", true]);
			C_Execute(1, array_set, [char_zebra.res_idle_sprite, DIR.DOWN, spr_char_zebra_shy]);
			C_Execute(1, array_set, [char_zebra.res_talk_sprite, DIR.DOWN, spr_char_zebra_shy]);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.zebra.greet.0"), "{voice 6}{char_link 3}"]);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.zebra.greet.1"), "{voice 6}{char_link 3}"]);
			C_Execute(1, Dialog_Start, [true]);
			C_WaitUntilDestroy(1, ui_dialog);
			C_Execute(2, variable_instance_set, [char_zebra, "sprite_index", spr_char_zebra_happy]);
			C_Execute(2, array_set, [char_zebra.res_idle_sprite, DIR.DOWN, spr_char_zebra_happy]);
			C_Execute(2, array_set, [char_zebra.res_talk_sprite, DIR.DOWN, spr_char_zebra_happy]);
			C_Wait(2, 30);
			C_Execute(3, Dialog_Add_Ext, [Lang_GetString("cutscene.zebra.greet.2"), "{voice 6}{char_link 3}"]);
			C_Execute(3, Dialog_Start, [true]);
			C_WaitUntilDestroy(3, ui_dialog);
			C_Execute(4, variable_instance_set, [cut_savannah_1, "_phase", 0]);
			C_Execute(4, variable_instance_set, [char_save, "active", true]);
			C_Execute(4, Encounter_Start, [4, true, false]);
			C_Execute(4, part_system_destroy, [particle.partsystem]);
			Cutscene_End(4);
		}
		else if (_phase == 3) {
			C_MoveChar(0,char_serval,char_player.x,char_serval.y,false,30);
			C_Wait(0,30);
			C_Execute(1,instance_create_depth,[char_zebra.x,char_zebra.y-40,0,exclamation]);
			C_Execute(1, variable_instance_set, [char_player, "dir", DIR.UP]);
			C_Execute(1, variable_instance_set, [char_zebra, "sprite_index", spr_char_zebra_down]);
			C_Execute(1, variable_instance_set, [char_zebra, "image_speed", 0]);
			C_Execute(1, variable_instance_set, [char_zebra, "image_index", 0]);
			C_Execute(1, variable_instance_set, [char_zebra, "dir_locked", false]);
			C_MoveChar(1,char_serval,char_player.x,char_player.y-40,false,30);
			C_Wait(1,30);
			C_Execute(2, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.walk_away.0"), "{char_link 2}{voice 4}{face 2}{face_emotion 4}"]);
			C_Execute(2, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.walk_away.1"), "{char_dir 0 0}{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
			C_Execute(2, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.walk_away.2"), "{char_dir 0 90}{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(2, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.walk_away.3"), "{char_link 2}{voice 4}{face 2}{face_emotion 8}"]);
			C_Execute(2, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.walk_away.4"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
			C_Execute(2, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.walk_away.5"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(2, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.walk_away.6"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
			C_Execute(2, Dialog_Start, [true]);
			C_WaitUntilDestroy(2, ui_dialog);
			C_MoveChar(3,char_zebra,char_player.x,char_zebra.y,false,30);
			C_Wait(3,15);
			C_Execute(4, variable_instance_set, [char_serval, "dir", DIR.UP]);
			C_Execute(4,instance_create_depth,[char_serval.x,char_serval.y-40,0,exclamation]);
			C_Wait(4,15);
			C_MoveChar(5,char_serval,char_serval.x-10,char_serval.y,false,30,false,DIR.RIGHT);
			C_MoveChar(5,char_zebra,char_player.x+10,char_serval.y,false,30);
			C_Wait(5,30);
			C_Execute(6, variable_instance_set, [char_serval, "dir", DIR.DOWN]);
			C_Execute(6, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.walk_away.7"), "{char_link 3}{voice 6}"]);
			C_Execute(6, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.walk_away.8"), "{char_link 2}{char_dir 3 180}{voice 4}{face 2}{face_emotion 2}"]);
			C_Execute(6, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.new_friend.walk_away.9"), "{char_link 2}{char_dir 3 270}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(6, Dialog_Start, [true]);
			C_WaitUntilDestroy(6, ui_dialog);
			C_Execute(7, variable_instance_set, [cut_savannah_1, "_phase", 0]);
			C_Execute(7, variable_instance_set, [char_save, "active", true]);
			C_Execute(7, Encounter_Start, [4, true, false]);
			C_Execute(7, part_system_destroy, [particle.partsystem]);
			Cutscene_End(7);
		}
	}
	else {
		if (_phase == 0) {
			if(char_player.x<=210&&char_player.y<320) {
				Cutscene_Begin();
				_phase = 1;
			}
			else if(char_player.y>=320) {
				char_zebra.dir_locked=false;
				char_zebra.sprite_index=spr_char_zebra_down;
				Cutscene_Begin();
				_phase = 2;
			}
		}
		if (_phase == 1) {
			C_MoveChar(0, char_serval, char_player.x - 50, char_player.y, false, 30);
			C_Wait(0, 60);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.post_convo.0"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.post_convo.1"), "{char_link 2}{voice 4}{face 2}{face_emotion 8}"]);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.post_convo.2"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.post_convo.3"), "{char_link 2}{voice 4}{face 2}{face_emotion 9}"]);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.post_convo.4"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.post_convo.5"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
			C_Execute(1, Dialog_Start, [true]);
			C_WaitUntilDestroy(1, ui_dialog);
			C_MoveChar(2, char_serval, 170, 230, false, 15);
			C_Wait(2, 30);
			C_MoveChar(3, char_serval, 170, 360, false, 30);
			C_Wait(3, 60);
			C_Execute(4, Flag_Set, [FLAG_TYPE.STATIC, FLAG_STATIC.SCENE_002, true]);
			C_Execute(4, instance_destroy, [char_serval]);
			C_Execute(4, instance_activate_object, [trigger_warp]);
			C_Execute(4, variable_instance_set, [char_save,"_active",true]);
			C_Execute(4, variable_instance_set, [char_save,"visible",true]);
			Cutscene_End(4);
		}
		if (_phase == 2) {
			C_Execute(0, variable_instance_set, [char_player, "dir", DIR.UP]);
			C_Execute(0, variable_instance_set, [char_zebra, "sprite_index", spr_char_zebra_down]);
			C_Execute(0, variable_instance_set, [char_zebra, "image_speed", 0]);
			C_Execute(0, variable_instance_set, [char_zebra, "image_index", 0]);
			C_Execute(0, variable_instance_set, [char_zebra, "dir_locked", false]);
			C_Wait(0, 60);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.post_convo.0"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.post_convo.1"), "{char_link 2}{voice 4}{face 2}{face_emotion 8}"]);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.post_convo.2"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.post_convo.3"), "{char_link 2}{voice 4}{face 2}{face_emotion 9}"]);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.post_convo.4"), "{char_link 2}{voice 4}{face 2}{face_emotion 0}"]);
			C_Execute(1, Dialog_Add_Ext, [Lang_GetString("cutscene.serval.post_convo.5"), "{char_link 2}{voice 4}{face 2}{face_emotion 2}"]);
			C_Execute(1, Dialog_Start, [true]);
			C_WaitUntilDestroy(1, ui_dialog);
			C_MoveChar(2, char_serval, char_serval.x, 520, false, 60);
			C_MoveChar(2, char_zebra, char_zebra.x, 220, false, 30);
			C_Wait(2, 30);
			C_MoveChar(3, char_zebra, 330, char_zebra.y, false, 60);
			C_Wait(3, 60);
			C_Execute(4, variable_instance_set, [char_zebra, "sprite_index", spr_char_zebra_look]);
			C_Execute(4, variable_instance_set, [char_zebra, "dir_locked", false]);
			C_Execute(4, Flag_Set, [FLAG_TYPE.STATIC, FLAG_STATIC.SCENE_002, true]);
			C_Execute(4, instance_destroy, [char_serval]);
			C_Execute(4, instance_activate_object, [trigger_warp]);
			C_Execute(4, variable_instance_set, [char_save,"_active",true]);
			C_Execute(4, variable_instance_set, [char_save,"visible",true]);
			Cutscene_End(4);
		}
	}
}
else {
	if (_teleported_char == true) { 
		instance_destroy(char_zebra);
	}
	instance_destroy(char_serval);
}
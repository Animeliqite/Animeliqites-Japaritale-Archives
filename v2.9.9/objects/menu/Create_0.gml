global.chapter=0;

_menu=-1;
_mode=0;

_prefix="{gui true}{instant true}{shadow false}{font 1}{scale 2}";
_inst_instruction=noone;
_inst_begin=noone;
_inst_header=noone;
_inst_header_copy=noone;
_inst_header_erase=noone;
_inst_settings=noone;
_inst_name=noone;
_inst_lv=noone;
_inst_time=noone;
_inst_room=noone;
_inst_continue=noone;
_inst_reset=noone;
_inst_settings=noone;
_inst_naming_title=noone;
_inst_naming_letters=noone;
_inst_naming_quit=noone;
_inst_naming_backspace=noone;
_inst_naming_done=noone;

_inst_confirm_title=noone;
_inst_confirm_yes=noone;
_inst_confirm_no=noone;

_choice=0;
_chosen_file=0;
_choice_file_phase=0;
_choice_tools_phase=0;
_choice_naming=0;
_choice_naming_letter=0;
_choice_naming_command=0;
_choice_confirm=0;

_confirm_title="";
_confirm_valid=true;
_confirm_name_x=0;
_confirm_name_y=0;
_confirm_name_scale=0;
_confirm_name_offset_x=0;
_confirm_name_offset_y=0;
_confirm_name_angle=0;
_confirm_fade_alpha=0;
_confirm_name_update=true;

_naming_name="";

_heart_pos_curr_x=130;
_heart_pos_curr_y=145;
_heart_pos_x=[];
_heart_pos_y=[];

_change_inst=noone;
_change_color=c_white;
_change_id=-1;

_mode_copy=false;
_mode_erase=false;
_file_to_copy=-1;
_file_to_copy_to=-1;
_file_to_erase=-1;
_mode_copy_to=false;
_mode_erase_confirmation=0;
_mode_set_keybind=false;

_file_name=[];
_file_time=[];
_file_room=[];
_file_text_start=array_create(2,"bepis");

_noise_timer=0;

var hour=date_get_hour(date_current_datetime());
var hour_night = (hour > 17 || hour < 6);
event_user(0);
BGM_Play(0, (hour_night ? bgm_menu0_night : bgm_menu0));
BGM_SetPitch(0, 0.95);
Anim_Create(camera,"y",ANIM_TWEEN.SINE,ANIM_EASE.OUT,-10,0,15,0,-1,-1,ANIM_MODE.ONESHOT,false);
Fader_Fade(1,0,15);

_sprites=[spr_bg_savannah_scenery,spr_bg_savannah_scenery,spr_bg_savannah_scenery];
_subimgs=[0,1,(hour_night ? 5 : 2)];
_x_scales=[2,2,2];
_y_scales=[1,1,1];
_x_multipliers=[0.1,0.2,0.3];
_y_multipliers=[1,1,1];
_x_offsets=[0,0,0];
_y_offsets=[0,0,0];
xx=[0,0,0];
yy=[0,0,0];

_get_chr_string = function (value, sel) {
	if (sel==_choice&&_mode_set_keybind){
		return Lang_GetString("settings.option.press_a_key")
	}
	else {
		if (value == 37) return "LEFT ARROW";
		else if (value == 39) return "RIGHT ARROW";
		else if (value == 38) return "UP ARROW";
		else if (value == 40) return "DOWN ARROW";
		else return chr(value);
	}
}

_get_border_string = function (value) {
	if (value == 0) return Lang_GetString("settings.option.border.none");
	else if (value == 1) return Lang_GetString("settings.option.border.simple");
	else if (value == 2) return Lang_GetString("settings.option.border.rounded");
	else if (value == 3) return Lang_GetString("settings.option.border.dynamic");
	else return "UNKNOWN";
}

_get_sfx_string = function (mode) {
	if(mode==0){
		return string(round(min(global.bgm_volume*100,100)));
	}
	else if(mode==1){
		return string(round(min(global.sfx_volume*100,100)));
	}
}

event_user(6);
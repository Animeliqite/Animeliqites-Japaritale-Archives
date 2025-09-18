_show_bars=false;
_state=0;

_get_month = function () {
	if (current_month == 12 || current_month < 3)
		return bgm_settings_winter;
	else if (current_month < 6)
		return bgm_settings_summer;
	else if (current_month < 9)
		return bgm_settings_summer;
	else return bgm_settings_winter;
}

if(!global.settings_returning){
	BGM_Stop(0);
	BGM_Play(0,_get_month());
}
global.settings_returning=false;
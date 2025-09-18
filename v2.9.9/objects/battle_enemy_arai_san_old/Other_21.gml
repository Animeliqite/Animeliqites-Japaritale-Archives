///@desc Turn End

global.event=-9999;
_currently_acting=-1;
_game_mode=false;
gamePhase=-1;

if(_game_mode_unrandomize_on_end){
	_game_mode_randomize=false;
}

if(allGamesPlayed){
	Battle_SetMenuDialog(Lang_GetString("monster.arai_san.flavor_text.4"));
}
else{
	if(_phase==1){
		Battle_SetMenuDialog(Lang_GetString("monster.arai_san.flavor_text.0"));
	}
	if(_phase==2){
		if(gamesPlayed==0){
			Battle_SetMenuDialog(Lang_GetString("monster.arai_san.flavor_text.3"));
		}
		else if(gamesPlayed==1){
			Battle_SetMenuDialog(Lang_GetString("monster.arai_san.flavor_text.4"));
		}
		else if(gamesPlayed==2){
			Battle_SetMenuDialog(Lang_GetString("monster.arai_san.flavor_text.5"));
		}
	}
	if(_phase==3){
		Battle_SetMenuDialog(Lang_GetString("monster.arai_san.flavor_text.2"));
	}
}
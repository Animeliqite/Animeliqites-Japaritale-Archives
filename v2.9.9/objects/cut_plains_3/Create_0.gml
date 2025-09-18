event_inherited();

_interaction_tries = 0;
_interaction_tries_1 = 0;
_cut_lighter_phase = 0;

_cut_try_run_away = false;
_cut_try_run_away_right = false;
_cut_lighter = false;

event_user(0);
global.chapter=3;

global.gotFlint=true;
instance_create_depth(140,140,-4000,char_shrine_lighter);
char_player.x=130;
char_player.y=350;
char_porcupine.x=160;
char_porcupine.y=350;
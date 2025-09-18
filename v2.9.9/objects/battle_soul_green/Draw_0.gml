var STATE=Battle_GetState();
var MENU=Battle_GetMenu();
if(STATE==BATTLE_STATE.CUTSCENE&&_draw_in_cutscene)||(STATE==BATTLE_STATE.IN_TURN || STATE==BATTLE_STATE.TURN_PREPARATION || (STATE==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE)){
    if (STATE==BATTLE_STATE.IN_TURN){
        draw_sprite(spr_battle_soul_green_circle, 0, x, y);
        draw_set_color(c_white);
    }
    
    draw_self();
}
if(GAME_DEBUG){
	if(_debug_show){
		draw_sprite_ext(spr_pixel,0,10,10,320,160,0,c_black,0.75);
		draw_set_font(Lang_GetFont(Lang_GetString("font.battle.0")));
		draw_set_color(c_white);
		draw_text(15,15,"Battle Menu: "+string(Battle_GetMenu()));
		draw_text(15,35,"Battle State: "+string(Battle_GetState()));
		draw_text(15,55,"Battle Turn Time: "+string(Battle_GetTurnInfo(BATTLE_TURN.TIME)));
		draw_text(15,75,"Battle Turn Number: "+string(Battle_GetTurnNumber()));
		draw_text(15,95,"Battle Turn Exists: "+(instance_exists(battle_turn) ? "true" : "false"));
		if(instance_exists(battle_turn)) draw_text(15,115,"Battle Turn Object: "+string(battle_turn._turn_id));
	}
}
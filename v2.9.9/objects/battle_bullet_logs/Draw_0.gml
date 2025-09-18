if(func==-1) draw_self();
else {
	surface_set_target(Battle_GetBoardSurface());{
		draw_self();
	}surface_reset_target();
}
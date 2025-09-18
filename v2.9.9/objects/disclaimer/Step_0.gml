if (!_pressed_confirm) {
	_wait=(Input_IsHeld(INPUT.CANCEL) ? 30 : 60);
	if(global.debug_menu) return;
    
    if (Input_IsPressed(INPUT.CONFIRM)) {
        Fader_Fade(-1,1,30);
        alarm[1]=30;
    
        _pressed_confirm=true;
    }
}
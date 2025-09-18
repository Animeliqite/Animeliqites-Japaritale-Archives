C_CreateAnim(0, id, "_text_alpha0", 0, 0, 0, 1, 15, false);
C_CreateAnim(0, id, "_text_alpha0", 0, 0, 1, 0, 15, false, 85);
Cutscene_EndOrderUpon(0);
C_Wait(1, 100);

C_CreateAnim(2, id, "_text_alpha1", 0, 0, 0, 1, 15, false);
C_CreateAnim(2, id, "_text_alpha1", 0, 0, 1, 0, 15, false, 60);
Cutscene_EndOrderUpon(2);
C_Wait(3, 75);

C_FadeFader(4, 0, 1, 15);
Cutscene_EndOrderUpon(4);
C_Wait(5, 15);

C_Execute(6, room_goto_next);
C_FadeFader(6, 1, 0, 1);
Cutscene_EndOrderUpon(6);
Cutscene_End(7);

if(alarm[0]<0){
	if(Input_IsPressed(INPUT.CANCEL)||Input_IsPressed(INPUT.CONFIRM)) {
		Anim_Destroy(id,"_text_alpha0",false);
		Anim_Destroy(id,"_text_alpha1",false);
		Fader_Fade(-1,1,15);
		Cutscene_End(-1);
		alarm[0]=15;
	}
}
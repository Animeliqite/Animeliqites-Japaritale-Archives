event_inherited();

if(cutscene_fence)&&(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_009_0,false)==false){
	C_Execute(0,Dialog_Add_Ext,[Lang_GetString("interaction.fennec.fence_scuffed.0"), "{voice 8}{face 3}{face_emotion 0}"]);
	C_Execute(0,Dialog_Add_Ext,[Lang_GetString("interaction.fennec.fence_scuffed.1"), "{voice 8}{face 3}{face_emotion 2}"]);
	C_Execute(0,Dialog_Add_Ext,[Lang_GetString("interaction.fennec.fence_scuffed.2"), "{voice 8}{face 3}{face_emotion 0}"]);
	C_Execute(0,Dialog_Add_Ext,[Lang_GetString("interaction.fennec.fence_scuffed.3"), "{voice 8}{face 3}{face_emotion 0}"]);
	C_Execute(0,Dialog_Add_Ext,[Lang_GetString("interaction.fennec.fence_scuffed.4"), "{voice 8}{face 3}{face_emotion 0}"]);
	C_Execute(0,Dialog_Add_Ext,[Lang_GetString("interaction.fennec.fence_scuffed.5"), "{voice 8}{face 3}{face_emotion 0}"]);
	C_Execute(0,Dialog_Start, [true]);
	C_WaitUntilDestroy(0,ui_dialog);
	C_Execute(1,variable_instance_set,[char_fennec,"dir",DIR.RIGHT]);
	C_Wait(1,30);
	C_Execute(2,variable_instance_set,[char_fennec,"dir",char_fennec._turnDir]);
	C_Execute(2,Dialog_Add_Ext,[Lang_GetString("interaction.fennec.fence_scuffed.6"), "{voice 8}{face 3}{face_emotion 0}"]);
	C_Execute(2,Dialog_Add_Ext,[Lang_GetString("interaction.fennec.fence_scuffed.7"), "{voice 8}{face 3}{face_emotion 0}"]);
	C_Execute(2,Dialog_Add_Ext,[Lang_GetString("interaction.fennec.fence_scuffed.8"), "{voice 8}{face 3}{face_emotion 0}"]);
	C_Execute(2,Dialog_Start, [true]);
	C_WaitUntilDestroy(2,ui_dialog);
	C_MoveChar(3,char_fennec,char_fennec.x,room_height+60,false,60);
	C_Wait(3,60);
	C_Execute(4,Flag_Set,[FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_009_0,true]);
	C_Execute(4,variable_instance_set,[char_fennec,"cutscene_fence",false]);
	Cutscene_End(4);
}
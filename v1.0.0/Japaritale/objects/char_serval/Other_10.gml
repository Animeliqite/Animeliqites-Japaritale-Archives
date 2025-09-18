///@desc Interact

event_inherited();
if(room=room_savannah_1){
	switch(interacted){
		case 0:
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.0.0"),"{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.0.1"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			interacted++;
			break;
		case 1:
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.1.0"),"{char_link 2}{voice 4}{face 2}{face_emotion 4}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.1.1"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.1.2"),"{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			interacted++;
			break;
		case 2:
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.2.0"),"{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			break;
	}
	Dialog_Start();
}
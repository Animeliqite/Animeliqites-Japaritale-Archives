///@desc Interact

event_inherited();
if(room=room_savannah_1){
	switch(interacted){
		case 0:
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.0.0"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.0.1"),"{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.0.2"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.0.3"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.0.4"),"{char_link 2}{voice 4}{face 2}{face_emotion 8}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.0.5"),"{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.0.6"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			interacted++;
			break;
		case 1:
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.1.0"),"{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.1.1"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.1.2"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.1.3"),"{char_link 2}{voice 4}{face 2}{face_emotion 9}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.1.4"),"{char_link 2}{voice 4}{face 2}{face_emotion 4}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.1.5"),"{char_link 2}{voice 4}{face 2}{face_emotion 9}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.1.6"),"{char_link 2}{voice 4}{face 2}{face_emotion 5}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.1.7"),"{char_link 2}{voice 4}{face 2}{face_emotion 4}");
			interacted++;
			break;
		case 2:
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.2.0"),"{char_link 2}{voice 4}{face 2}{face_emotion 4}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.2.1"),"{char_link 2}{voice 4}{face 2}{face_emotion 4}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.2.2"),"{char_link 2}{voice 4}{face 2}{face_emotion 4}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.2.3"),"{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.2.4"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.2.5"),"{char_link 2}{voice 4}{face 2}{face_emotion 9}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.2.6"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.2.7"),"{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.2.8"),"{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.2.9"),"{char_link 2}{voice 4}{face 2}{face_emotion 4}");
			interacted++;
			break;
		case 3:
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.3.0"),"{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.3.1"),"{char_link 2}{voice 4}{face 2}{face_emotion 8}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.3.2"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.3.3"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.3.4"),"{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.3.5"),"{char_link 2}{voice 4}{face 2}{face_emotion 8}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.3.6"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.3.7"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.3.8"),"{char_link 2}{voice 4}{face 2}{face_emotion 0}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.3.9"),"{char_link 2}{voice 4}{face 2}{face_emotion 8}");
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.3.10"),"{char_link 2}{voice 4}{face 2}{face_emotion 2}");
			interacted++;
			break;
		case 4:
			Dialog_Add_Ext(Lang_GetString("dialogue.savannah.interaction.zebra.4.0"),"{char_link 2}{voice 4}{face 2}{face_emotion 8}");
			break;
	}
	Dialog_Start();
}
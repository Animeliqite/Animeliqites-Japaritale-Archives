event_inherited();

switch (room) {
	case room_jungle_2:
		if(!global._gmu_cutscene) {
			Cutscene_Begin();
			cutscene_fence = true;
		}
		break;
	case room_tunnel_0:
		Dialog_Add_Ext(Lang_GetString("dialogue.jungle.interaction.tunnel.fennec.0"),"{font 3}{voice 8}{face 3}{face_emotion 0}");
		Dialog_Add_Ext(Lang_GetString("dialogue.jungle.interaction.tunnel.fennec.1"),"{font 3}{voice 8}{face 3}{face_emotion 2}");
		Dialog_Add_Ext(Lang_GetString("dialogue.jungle.interaction.tunnel.fennec.2"),"{font 3}{voice 8}{face 3}{face_emotion 3}");
		Dialog_Start();
		break;
}
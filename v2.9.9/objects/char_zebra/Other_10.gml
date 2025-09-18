///@desc Interact
if(!global._gmu_cutscene){
	interacted=true;
	Cutscene_Begin();
}

if (room == room_savannah_1) {
	switch (interact_amount){
		case 0:
			_interaction_function = function () {
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.0.0"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Start,[]);
				C_WaitUntilDestroy(0,ui_dialog);
				C_Wait(1,30);
				C_Execute(2,variable_instance_set,[char_zebra,"sprite_index",spr_char_zebra_shy_saddened]);
				C_Execute(2,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.0.1"),"{voice 6}"]);
				C_Execute(2,Dialog_Start,[]);
				C_WaitUntilDestroy(2,ui_dialog);
				C_Execute(3,variable_instance_set,[char_zebra,"sprite_index",spr_char_zebra_look]);
				C_Execute(3,variable_instance_set,[char_zebra,"interact_amount",1]);
				C_Execute(3,variable_instance_set,[char_zebra,"interacted",false]);
				Cutscene_End(3);
			}
			break;
		case 1:
			_interaction_function = function () {
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.1.0"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.1.1"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.1.2"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Start,[]);
				C_WaitUntilDestroy(0,ui_dialog);
				C_Execute(1,variable_instance_set,[char_zebra,"sprite_index",spr_char_zebra_look]);
				C_Execute(1,variable_instance_set,[char_zebra,"interact_amount",2]);
				C_Execute(1,variable_instance_set,[char_zebra,"interacted",false]);
				Cutscene_End(1);
			}
			break;
		case 2:
			_interaction_function = function () {
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.2.0"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.2.1"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.2.2"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.2.3"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.2.4"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Start,[]);
				C_WaitUntilDestroy(0,ui_dialog);
				C_Execute(1,variable_instance_set,[char_zebra,"sprite_index",spr_char_zebra_look]);
				C_Execute(1,variable_instance_set,[char_zebra,"interact_amount",3]);
				C_Execute(1,variable_instance_set,[char_zebra,"interacted",false]);
				Cutscene_End(1);
			}
			break;
		case 3:
			_interaction_function = function () {
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.3.0"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.3.1"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Start,[]);
				C_WaitUntilDestroy(0,ui_dialog);
				C_Execute(1,variable_instance_set,[char_zebra,"sprite_index",spr_char_zebra_look]);
				C_Execute(1,variable_instance_set,[char_zebra,"interact_amount",4]);
				C_Execute(1,variable_instance_set,[char_zebra,"interacted",false]);
				Cutscene_End(1);
			}
			break;
		case 4:
			_interaction_function = function () {
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.4.0"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.4.1"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Start,[]);
				C_WaitUntilDestroy(0,ui_dialog);
				C_Execute(1,variable_instance_set,[char_zebra,"sprite_index",spr_char_zebra_look]);
				C_Execute(1,variable_instance_set,[char_zebra,"interact_amount",5]);
				C_Execute(1,variable_instance_set,[char_zebra,"interacted",false]);
				Cutscene_End(1);
			}
			break;
		case 5:
			_interaction_function = function () {
				C_Execute(0,Dialog_Add_Ext,[Lang_GetString("dialogue.savannah.interaction.zebra.zebra_chan.4.0"),"{voice 6}{char_link 3}"]);
				C_Execute(0,Dialog_Start,[]);
				C_WaitUntilDestroy(0,ui_dialog);
				C_Execute(1,variable_instance_set,[char_zebra,"sprite_index",spr_char_zebra_look]);
				C_Execute(1,variable_instance_set,[char_zebra,"interact_amount",5]);
				C_Execute(1,variable_instance_set,[char_zebra,"interacted",false]);
				Cutscene_End(1);
			}
			break;
	}
}
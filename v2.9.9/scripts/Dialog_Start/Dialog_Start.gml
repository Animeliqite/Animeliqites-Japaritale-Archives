function Dialog_Start(top = -1, gui = true, stop_player = true, destroy_other = true, skippable = true) {
	if(!Player_IsInBattle()){
		if(destroy_other){
			if(instance_exists(ui_dialog)){
				instance_destroy(ui_dialog);
			}
		}
		var INST=instance_create_depth(camera.x,camera.y,0,ui_dialog);
		if(top!=-1) INST._top=top;
		INST._gui=gui;
		INST._stop_player=stop_player;
		INST._skippable=skippable;
		return true;
	}else{
		return false;
	}


}

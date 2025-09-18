if(phase==1){
	if(instance_exists(text_typer)){
		if(!text_typer._paused){
			image_index+=0.25;
		}
		else image_index=0;
	}
	else image_index=0;

	if (global.event==-9000){
		sprite_index=spr_flowey_monster_normal;
	}
	if (global.event==-9001){
		sprite_index=spr_flowey_monster_nice;
	}
	if (global.event==-9002){
		sprite_index=spr_flowey_monster_angry;
	}
	if (global.event==-9003){
		sprite_index=spr_flowey_monster_sassy;
	}
}
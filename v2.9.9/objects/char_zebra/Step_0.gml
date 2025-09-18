event_inherited();
if (cutscene._current_order==-9999){
	if(!interacted&&room==room_savannah_1&&sprite_index==spr_char_zebra_look) image_speed=0.2;
	else image_speed=0;
}
if(interacted) _interaction_function();
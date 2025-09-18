if(keyboard_check(vk_escape)){
	switch(_state){
		case 0:
			if(image_alpha<1){
				image_alpha+=0.05;
			}else{
				_state=1;
			}
			break;
		case 1:
			if(image_alpha<1) image_alpha+=0.05;
			else image_alpha=1;
			
			image_index+=4/60;
			if(floor(image_index)==4){
				game_end();
			}
			break;
	}
}else{
	if(image_alpha>0){
		if(!keyboard_check(vk_escape)){
			image_alpha-=0.05;
		}
	}else{
		instance_destroy();
	}
}

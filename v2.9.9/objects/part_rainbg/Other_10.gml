switch(event){
	case 0:
		var _xx=[], _yy=[];
		if(instance_exists(char_firepotlight)){
			for(var n=0; n<instance_number(char_firepotlight); n++){
				var inst=instance_find(char_firepotlight,n);
				array_push(_xx,inst.x);
				array_push(_yy,inst.y);
				for(var i=0; i<7; i++){
					draw_set_color(c_white);
					draw_set_alpha(0.15*inst.image_alpha);
					draw_circle(_xx[n],_yy[n],60+(inst.radius*i)+(inst.radius_off/2),false);
				}
				draw_set_alpha(1);
			}
		}
	break;
}
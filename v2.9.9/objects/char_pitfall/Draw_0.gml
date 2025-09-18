if(!visible) exit;

if(instance_exists(obj)){
	if(!surface_exists(_surf)){
		_surf=surface_create(128,128);
	}
	else{
		surface_set_target(_surf);
		draw_clear_alpha(c_black,0);
		draw_sprite_ext(sprite_index,image_index,64,64,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		if(hide){
			gpu_set_colorwriteenable(1,1,1,0);
			draw_sprite_ext(obj.sprite_index,obj.image_index,(obj.x-x)+64,(obj.y-y)+64,obj.image_xscale,obj.image_yscale,obj.image_angle,obj.image_blend,obj.image_alpha);
			gpu_set_colorwriteenable(1,1,1,1);
			draw_sprite_part_ext(obj.sprite_index,obj.image_index,0,0,obj.sprite_width,(obj.sprite_height)-(obj.y-y),((obj.x-x)+64)-obj.sprite_xoffset,((obj.y-y)+64)-obj.sprite_height,obj.image_xscale,obj.image_yscale,obj.image_blend,obj.image_alpha);
		}
		surface_reset_target();
		draw_surface(_surf,x-64,y-64);
	}
	if(hide){
		obj.visible=false;
	}
	else{
		obj.visible=true;
	}
}
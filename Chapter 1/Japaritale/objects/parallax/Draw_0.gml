for(var i=array_length(_sprites)-1; i>=0; i--){
	draw_sprite_ext(_sprites[i],_subimgs[i],camera.x*_x_multipliers[i]+_x_offsets[i]+xx,camera.y*_y_multipliers[i]+_y_offsets[i]+yy,_x_scales[i],_y_scales[i],0,c_white,1);
}
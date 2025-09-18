for(var i=array_length(_sprites)-1; i>=0; i--){
	if(xx[i]>=-sprite_get_width(_sprites[i]))
		xx[i] -= _x_multipliers[i];
	else xx[i] = 0;
	
	draw_sprite_ext(_sprites[i],_subimgs[i],xx[i],(_subimgs[i]==2 ? camera.y : yy[i]),_x_scales[i],_y_scales[i],0,c_white,1);
}
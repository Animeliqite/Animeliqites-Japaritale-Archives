draw_self();

if (_draw_hat) {
	switch(sprite_index){
		case spr_char_kaban_right_run:
		case spr_char_kaban_left_run:
			hatOffsetX=0;
			hatOffsetY=-5;
			doPixelCheck=true;
			pixelCheckReverse=true;
			break;
		case spr_char_kaban_right_carried:
			hatOffsetX=-1;
			hatOffsetY=-6;
			doPixelCheck=false;
			pixelCheckReverse=false;
			break;
		case spr_char_kaban_down_sit:
			hatOffsetX=0;
			hatOffsetY=2;
			doPixelCheck=false;
			pixelCheckReverse=false;
			break;
		default:
			hatOffsetX=0;
			hatOffsetY=-5;
			doPixelCheck=true;
			pixelCheckReverse=false;
			break;
	}
	if (doPixelCheck){
		if(pixelCheckReverse) PIXEL_CHECK=((dir==DIR.LEFT||dir==DIR.RIGHT ? floor(image_index)%2!=0 : floor(image_index)%2==0) ? -1 : 0);
		else PIXEL_CHECK=((dir==DIR.LEFT||dir==DIR.RIGHT ? floor(image_index)%2!=0 : floor(image_index)%2==0) ? 1 : 0);
	}
	switch(dir){
		case DIR.UP:
			draw_sprite_ext(spr_char_kaban_hat,2,x+hatOffsetX,y+PIXEL_CHECK+hatOffsetY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case DIR.DOWN:
			draw_sprite_ext(spr_char_kaban_hat,0,x+hatOffsetX,y+PIXEL_CHECK+hatOffsetY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case DIR.LEFT:
			draw_sprite_ext(spr_char_kaban_hat,3,x+hatOffsetX,y+PIXEL_CHECK+hatOffsetY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
			break;
		case DIR.RIGHT:
			draw_sprite_ext(spr_char_kaban_hat,1,x+hatOffsetX,y+PIXEL_CHECK+hatOffsetY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
			break;
	}
}

/*
{
	if(keyboard_check(vk_enter)){
		draw_set_color(c_red);
		if(dir==DIR.UP){
			draw_rectangle(x-sprite_width/2+4,y-5,x+sprite_width/2-4,y-sprite_height+5,true);
		}
		if(dir==DIR.DOWN){
			draw_rectangle(x-sprite_width/2+4,y-sprite_height+20,x+sprite_width/2-4,y+15,true);
		}
		if(dir==DIR.LEFT){
			draw_rectangle(x,y-sprite_height+19,x+sprite_width/2-15,y,true);
		}
		if(dir==DIR.RIGHT){
			draw_rectangle(x,y-sprite_height+19,x+sprite_width/2+15,y,true);
		}
	}
}
*/
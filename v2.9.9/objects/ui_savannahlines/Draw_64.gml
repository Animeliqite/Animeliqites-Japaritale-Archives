draw_set_color(c_black);
draw_set_alpha(0.5);

if(_phase>=0){
	draw_rectangle(0,0,640,32,false);
	draw_rectangle(0,480,640,458,false);
}

if(_phase>=1){
	draw_rectangle(0,0,640,160,false);
	draw_rectangle(0,480,640,330,false);
}

if(_phase>=2){
	draw_rectangle(0,0,640,192,false);
	draw_rectangle(0,480,640,298,false);
}

draw_set_alpha(1);
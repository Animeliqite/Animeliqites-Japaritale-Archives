target_room=room_jungle_1;
target_landmark=0;
_warp_function=function(){
	if(global.time_since_warp<5){
		randomize();
		var rand=random(100);
		if(rand>95) {
			room_goto(room_jungle_secret);
			Fader_Fade(1,0,fade_out_time);
		}
	}
}
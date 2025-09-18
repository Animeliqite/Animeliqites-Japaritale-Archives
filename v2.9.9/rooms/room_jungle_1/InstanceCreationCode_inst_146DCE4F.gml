target_room=room_jungle_0;
target_landmark=1;
_warp_function=function(){
	if(global.time_since_warp<2){
		room_goto(room_jungle_secret);
	}
}
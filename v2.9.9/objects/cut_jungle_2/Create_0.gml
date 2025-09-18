event_inherited();

global.chapter=2;
Cutscene_End(-1);
		
if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.SCENE_007_0,false)){
	with(char_spike){
		spike_enabled=false;
		char_box._puzzle_done=true;
		char_box.x=200;
	}
}
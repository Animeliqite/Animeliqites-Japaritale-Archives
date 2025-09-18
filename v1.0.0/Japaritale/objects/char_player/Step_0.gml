canRun = Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.CAN_RUN);
var specialKey = (Input_IsHeld(INPUT.UP)&&Input_IsHeld(INPUT.DOWN));
var readyToDance = specialKey&&place_meeting(x,y-move_speed[DIR.UP],block)&&instance_nearest(x,y-move_speed[DIR.UP],block).block_enabled==true;
var can_move=(moveable&&_moveable_dialog&&_moveable_menu&&_moveable_save&&_moveable_warp&&_moveable_encounter&&!global._gmu_cutscene);
if ((canRun && Input_IsHeld(INPUT.CANCEL) && canRunAlt && can_move && (move[DIR.UP] > 0 || move[DIR.DOWN] > 0 || move[DIR.LEFT] > 0 || move[DIR.RIGHT] > 0)) || running) {
	var player = id;
	var the_original = "This code    Pisses me Off";
	var starwalker = "I am Going to       Die"
	actuallyRunning = true;
	canRunAltExecutedOnce = false;
	cooldownTimer = 1;
	runningTimer++;
		
	for (var i = 0; i <= DIR.DOWN; i += 90) {
		var CHECK=(i == DIR.DOWN ? "down" : (i == DIR.UP ? "up" : (i == DIR.LEFT ? "left" : "right")));
		move_speed[i] = round(runningSpeed);
		res_idle_sprite[i] = asset_get_index("spr_char_kaban_" + CHECK + "_run");
		res_move_sprite[i] = asset_get_index("spr_char_kaban_" + CHECK + "_run");
		res_move_speed[i] = 1/1.5;
	}
	
	if (((move[DIR.LEFT] <= 0) && (move[DIR.RIGHT] <= 0) && (move[DIR.UP] <= 0) && (move[DIR.DOWN] <= 0))&&!running) {
		image_index = 0;
		image_speed = 0;
	}
	
	if (runningTimer == 1) {
		var CHECK_DIR=(dir == DIR.DOWN ? "down" : (dir == DIR.UP ? "up" : (dir == DIR.LEFT ? "left" : "right")));
		image_speed = 1/1.5;
		sprite_index = asset_get_index("spr_char_kaban_" + CHECK_DIR + "_run");
		runningSpeed = 4;
		//Camera_Shake(5, 5, 0, 0, true, true);
		//audio_play_sound_on(global._gmu_emitter_sfx, snd_impact, 0, false);
		//audio_play_sound_on(global._gmu_emitter_sfx, snd_flee, 0, false);
	}
	/*if (runningTimer < 5) {
		with (instance_create_depth(x, y, depth + 1, trail)) {
			image_alpha = 1;
			image_blend = c_white;
			sprite_index = player.sprite_index;
			image_index = player.image_index;
			duration = 0.1;
			color = [0.5, 0.5, 0.5, 1.0];
		}
	}
	with (instance_create_depth(x, y, depth + 1, trail)) {
		image_alpha = 0.8;
		image_blend = c_white;
		sprite_index = player.sprite_index;
		image_index = player.image_index;
		duration = 0.5;
		color = [1.0, 1.0, 1.0, 1.0];
	}
		
	if (runningTimer == 6) {
		fader.color = c_black;
	}
	*/
	
	if (runningTimer % 5 == 0) && ((move[DIR.UP]>0 || move[DIR.DOWN]>0 || move[DIR.LEFT]>0 || move[DIR.RIGHT]>0)||running) {
		repeat (3) instance_create_depth(x+irandom(5)-5,y+irandom(5)-10,0,part_whitepxldust);
		//audio_play_sound_on(global._gmu_emitter_sfx, snd_pellet, 0, false);
	}
	
}
else {
	runningTimer = 0;
	runningSpeed = 1.5;
	actuallyRunning = false;
	if (canRunAltExecutedOnce == false) {
		var CHECK_DIR=(dir == DIR.DOWN ? "down" : (dir == DIR.UP ? "up" : (dir == DIR.LEFT ? "left" : "right")));
		canRunAlt = false;
		Anim_Destroy(id, "runningSpeed");
		audio_stop_sound(snd_bump);
		sprite_index = asset_get_index("spr_char_kaban_" + CHECK_DIR);
		if (move[DIR.LEFT] > 0) || (move[DIR.RIGHT] > 0) || (move[DIR.UP] > 0) || (move[DIR.DOWN] > 0)
			image_speed = 1/4.25;
		for (var i = 0; i <= DIR.DOWN; i += 90) {
			var CHECK=(i == DIR.DOWN ? "down" : (i == DIR.UP ? "up" : (i == DIR.LEFT ? "left" : "right")));
			move_speed[i] = 1.5;
			res_idle_sprite[i] = asset_get_index("spr_char_kaban_" + CHECK);
			res_move_sprite[i] = asset_get_index("spr_char_kaban_" + CHECK);
			res_move_speed[i] = 1/4.25;
		}
		canRunAlt = true;
		canRunAltExecutedOnce = true;
	}
}

if(((move[DIR.UP]>0 || move[DIR.DOWN]>0 || move[DIR.LEFT]>0 || move[DIR.RIGHT]>0)||running)){
	if(floor(image_index)%2==0) {
		if(footstepPlayed==false){
			randomize();
			audio_play_sound_on(global._gmu_emitter_sfx, choose(snd_step1, snd_step2), 0, false);
			footstepPlayed=true;
		}
	}
	else footstepPlayed=false;
}

if(can_move){
	if(Input_IsHeld(INPUT.UP)&&!readyToDance){
		move[DIR.UP]=2;
	}else if(Input_IsHeld(INPUT.DOWN)){
		move[DIR.DOWN]=2;
	}
	if(Input_IsHeld(INPUT.LEFT)){
		move[DIR.LEFT]=2;
	}else if(Input_IsHeld(INPUT.RIGHT)){
		move[DIR.RIGHT]=2;
	}
	if(Input_IsPressed(INPUT.CONFIRM)){
		var inst=noone;
		var inst_dir=DIR.DOWN;
		if(dir==DIR.UP){
			inst=collision_rectangle(x-sprite_width/2+4,y-5,x+sprite_width/2-4,y-sprite_height+5,char,false,true);
			inst_dir=DIR.DOWN;
		}
		if(dir==DIR.DOWN){
			inst=collision_rectangle(x-sprite_width/2+4,y-sprite_height+20,x+sprite_width/2-4,y+15,char,false,true);
			inst_dir=DIR.UP;
		}
		if(dir==DIR.LEFT){
			inst=collision_rectangle(x,y-sprite_height+19,x+sprite_width/2-20,y,char,false,true);
			inst_dir=DIR.RIGHT;
		}
		if(dir==DIR.RIGHT){
			inst=collision_rectangle(x,y-sprite_height+19,x+sprite_width/2+15,y,char,false,true);
			inst_dir=DIR.LEFT;
		}
		if(instance_exists(inst)){
			with(inst){
				event_user(0);
				_turnDir=inst_dir;
			}
		}
	}
	if(!instance_exists(ui_dialog)&&!instance_exists(ui_menu)){
		if(Input_IsPressed(INPUT.MENU)){
			instance_create_depth(0,0,0,ui_menu);
		}
	}
	
	if(Input_IsHeld(INPUT.LEFT))&&(Input_IsHeld(INPUT.RIGHT)) {
		move[DIR.RIGHT]=0;
	}
	
	if(specialKey&&!readyToDance)
		move[DIR.DOWN]=0;
	
	if(move[DIR.UP]>0){
		if (readyToDance||(move[DIR.LEFT]<=0||dir!=DIR.LEFT)&&(move[DIR.RIGHT]<=0||dir!=DIR.RIGHT)) {
			dir = DIR.UP;
		}
	}
	
	if(move[DIR.DOWN]>0){
		if ((move[DIR.LEFT]<=0||dir!=DIR.LEFT)&&(move[DIR.RIGHT]<=0||dir!=DIR.RIGHT)) {
			dir = DIR.DOWN;
		}
	}
	
	if(move[DIR.LEFT]>0){
		if (!specialKey&&(move[DIR.UP]<=0||dir!=DIR.UP)&&(move[DIR.DOWN]<=0||dir!=DIR.DOWN)) {
			dir = DIR.LEFT;
		}
	}
	
	if(move[DIR.RIGHT]>0){
		if (!specialKey&&(move[DIR.UP]<=0||dir!=DIR.UP)&&(move[DIR.DOWN]<=0||dir!=DIR.DOWN)) {
			dir = DIR.RIGHT;
		}
	}
}

event_inherited();
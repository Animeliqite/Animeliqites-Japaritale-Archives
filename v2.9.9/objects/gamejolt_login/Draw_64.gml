draw_set_font(Lang_GetFont("determination_sans"));
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text_transformed(320, 30, string_upper(Lang_GetString("settings.extras.headers.1")), 2, 2, 0);
draw_set_halign(fa_left);

draw_set_color((!alreadyLoggedIn&&!failedToLogIn ? c_white : c_gray));
draw_text_transformed(60, 80, Lang_GetString("api.gamejolt.disclaimer"), 2, 2, 0);
draw_text_transformed(60, 160, Lang_GetString("api.gamejolt.username") + ": " + userName, 2, 2, 0);
draw_text_transformed(60, 200, Lang_GetString("api.gamejolt.gametoken") + ": " + string_repeat("*", string_length(userToken)), 2, 2, 0);
if (!alreadyLoggedIn&&!failedToLogIn) {
	if (phase == 0)
		draw_sprite_ext(spr_pixel,0,60+(string_width(Lang_GetString("api.gamejolt.username") + ": " + userName)*2)+2,165,4,30,0,c_white,alphaAnim);
	if (phase == 1)
		draw_sprite_ext(spr_pixel,0,60+(string_width(Lang_GetString("api.gamejolt.gametoken") + ": " +  string_repeat("*", string_length(userToken)))*2)+2,205,4,30,0,c_white,alphaAnim);
	userName = string_replace(userName, "ı", "i");
	userToken = string_replace(userToken, "ı", "i");
}

if (alreadyLoggedIn) {
	draw_set_color(c_lime);
	draw_text_transformed(60, 240, Lang_GetString("api.gamejolt.success"), 2, 2, 0);
	
	draw_set_color(c_white);
	//draw_sprite_ext(spr_battle_soul_red, 0, 60, 320 + (40 * loggedInSelectionLerp), 1, 1, 0, c_white, 1);
	draw_set_color((loggedInSelection==0 ? c_yellow : c_white));
	draw_text_transformed(80, 300, Lang_GetString("api.log_out"), 2, 2, 0);
	draw_set_color((loggedInSelection==1 ? c_yellow : c_white));
	draw_text_transformed(80, 340, Lang_GetString("api.exit"), 2, 2, 0);
	
	if(phase!=-1){
		if (Input_IsPressed(INPUT.UP)) {
			if (loggedInSelection > 0)
				loggedInSelection--;
			else loggedInSelection = 1;
		}
	
		if (Input_IsPressed(INPUT.DOWN)) {
			if (loggedInSelection < 1)
				loggedInSelection++;
			else loggedInSelection = 0;
		}
	}
	
	if (cooldown <= 0) {
		if (Input_IsPressed(INPUT.CONFIRM)) {
			if (loggedInSelection == 0) {
				GameJolt_User_LogOut();
				alreadyLoggedIn = false;
				failedToLogIn = false;
				userName = "";
				userToken = "";
				phase = 0;
			}
			else if (loggedInSelection == 1) {
				global.settings_returning=true;
				if (room != room_settings) {
					Fader_Fade(-1,1,15);
					alarm[0]=15;
					phase=-1;
				}
				else instance_destroy();
			}
		}
	}
}
else {
	if (failedToLogIn) {
		draw_set_color(c_red);
		draw_text_transformed(60, 240, Lang_GetString("api.gamejolt.fail"), 2, 2, 0);
		
		draw_set_color(c_white);
		//draw_sprite_ext(spr_battle_soul_red, 0, 60, 320 + (40 * loggedInSelectionLerp), 1, 1, 0, c_white, 1);
		draw_set_color((loggedInSelection==0 ? c_yellow : c_white));
		draw_text_transformed(80, 300, Lang_GetString("api.try_again"), 2, 2, 0);
		draw_set_color((loggedInSelection==1 ? c_yellow : c_white));
		draw_text_transformed(80, 340, Lang_GetString("api.exit"), 2, 2, 0);
		
		if(phase!=-1){
			if (Input_IsPressed(INPUT.UP)) {
				if (loggedInSelection > 0)
					loggedInSelection--;
				else loggedInSelection = 1;
			}
	
			if (Input_IsPressed(INPUT.DOWN)) {
				if (loggedInSelection < 1)
					loggedInSelection++;
				else loggedInSelection = 0;
			}
		}
		
		if (cooldown <= 0) {
			if (Input_IsPressed(INPUT.CONFIRM)) {
				if (loggedInSelection == 0) {
					failedToLogIn = false;
					alreadyLoggedIn = false;
					userName = "";
					userToken = "";
					phase = 0;
				}
				else if (loggedInSelection == 1) {
					global.settings_returning=true;
					if (room != room_settings) {
						Fader_Fade(-1,1,15);
						alarm[0]=15;
						phase=-1;
					}
					else instance_destroy();
				}
			}
		}
	}
}

loggedInSelectionLerp = lerp(loggedInSelectionLerp, loggedInSelection, 0.5);
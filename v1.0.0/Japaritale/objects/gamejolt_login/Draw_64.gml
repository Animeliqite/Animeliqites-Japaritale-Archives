draw_set_font(Lang_GetFont("determination_sans"));
draw_set_color((!alreadyLoggedIn&&!failedToLogIn ? c_white : c_gray));

draw_text_transformed(60, 40, Lang_GetString("api.gamejolt.disclaimer"), 2, 2, 0);
draw_text_transformed(60, 120, Lang_GetString("api.gamejolt.username") + ": " + userName, 2, 2, 0);
draw_text_transformed(60, 160, Lang_GetString("api.gamejolt.gametoken") + ": " + string_repeat("*", string_length(userToken)), 2, 2, 0);
if (!alreadyLoggedIn&&!failedToLogIn) {
	if (phase == 0)
		draw_sprite_ext(spr_pixel,0,60+(string_width(Lang_GetString("api.gamejolt.username") + ": " + userName)*2)+2,125,4,30,0,c_white,alphaAnim);
	if (phase == 1)
		draw_sprite_ext(spr_pixel,0,60+(string_width(Lang_GetString("api.gamejolt.gametoken") + ": " +  string_repeat("*", string_length(userToken)))*2)+2,165,4,30,0,c_white,alphaAnim);
	userName = string_replace(userName, "ı", "i");
	userToken = string_replace(userToken, "ı", "i");
}

if (alreadyLoggedIn) {
	draw_set_color(c_lime);
	draw_text_transformed(60, 200, Lang_GetString("api.gamejolt.success"), 2, 2, 0);
	
	draw_set_color(c_white);
	draw_sprite_ext(spr_battle_soul_red, 0, 60, 280 + (40 * loggedInSelection), 1, 1, 0, c_white, 1);
	draw_text_transformed(80, 260, Lang_GetString("api.log_out"), 2, 2, 0);
	draw_text_transformed(80, 300, Lang_GetString("api.exit"), 2, 2, 0);
	
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
				if (room != room_settings)
					room_goto(room_settings);
				else instance_destroy();
			}
		}
	}
}
else {
	if (failedToLogIn) {
		draw_set_color(c_red);
		draw_text_transformed(60, 200, Lang_GetString("api.gamejolt.fail"), 2, 2, 0);
		
		draw_set_color(c_white);
		draw_sprite_ext(spr_battle_soul_red, 0, 60, 280 + (40 * loggedInSelection), 1, 1, 0, c_white, 1);
		draw_text_transformed(80, 260, Lang_GetString("api.try_again"), 2, 2, 0);
		draw_text_transformed(80, 300, Lang_GetString("api.exit"), 2, 2, 0);
		
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
					if (room != room_settings)
						room_goto(room_settings);
					else instance_destroy();
				}
			}
		}
	}
}
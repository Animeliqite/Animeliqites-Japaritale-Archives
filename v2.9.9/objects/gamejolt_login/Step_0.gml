if (cooldown > 0) cooldown--;

if (!failedToLogIn) {
	if (!alreadyLoggedIn) {
		if (keyboard_check_pressed(vk_enter)) {
			if (phase < 1)
				phase = 1;
			else {
				GameJolt_User_LogIn(userName,userToken,
						function() {
							audio_play_sound(snd_menu_confirm,0,false);
							gamejolt_login.alreadyLoggedIn = true;
							gamejolt_login.loggedInSelection = 0;
							gamejolt_login.cooldown = 3;
						},
						function() {
							audio_play_sound(snd_error,0,false);
							gamejolt_login.failedToLogIn = true;
							gamejolt_login.loggedInSelection = 0;
							gamejolt_login.cooldown = 3;
						}
						);
			}
		}

		if (keyboard_check_pressed(vk_escape)) {
			if (phase > 0)
				phase--;
			else {
				if (room != room_settings)
					room_goto(room_settings);
				else instance_destroy();
			}
		}

		if (phase == 0) {
			if	(keyboard_lastkey != vk_control && keyboard_lastkey != vk_shift) {
				if ((chr(keyboard_lastkey) >= "a" && chr(keyboard_lastkey) <= "z") || (chr(keyboard_lastkey) >= "A" && chr(keyboard_lastkey) <= "Z") || (chr(keyboard_lastkey) >= "0" && chr(keyboard_lastkey) <= "9") || (keyboard_lastchar == "-") || (keyboard_lastchar == "_")) {
					if (keyboard_check_pressed(keyboard_lastkey))
						if(keyboard_lastchar != "/") {
							if (string_length(userName) < 30)
								userName += keyboard_lastchar;
						}
				}
				else {
					if (keyboard_check_pressed(vk_backspace))
						userName = string_delete(userName, string_length(userName), 1);
				}
			}
		}
		else if (phase == 1) {
			if	(keyboard_lastkey != vk_control && keyboard_lastkey != vk_shift) {
				if ((chr(keyboard_lastkey) >= "a" && chr(keyboard_lastkey) <= "z") || (chr(keyboard_lastkey) >= "A" && chr(keyboard_lastkey) <= "Z") || (chr(keyboard_lastkey) >= "0" && chr(keyboard_lastkey) <= "9") || (keyboard_lastchar == "-") || (keyboard_lastchar == "_")) {
					if (keyboard_check_pressed(keyboard_lastkey))
						if(keyboard_lastchar != "/") {
							if (string_length(userToken) < 30)
								userToken += keyboard_lastchar;
						}
				}
				else {
					if (keyboard_check_pressed(vk_backspace))
						userToken = string_delete(userToken, string_length(userToken), 1);
				}
			}
		}
	}
}
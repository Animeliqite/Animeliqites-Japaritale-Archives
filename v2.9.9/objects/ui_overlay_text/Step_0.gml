var condition;
switch (condition_no) {
	default:
		condition = (false);
		break;
	case 0:
		condition = (char_player.running == true);
		break;
	case 1:
		condition = (Input_IsPressed(INPUT.CONFIRM)||Input_IsPressed(INPUT.CANCEL));
		break;
	case 2:
		condition = (keyboard_check_pressed(vk_anykey));
		break;
	case 3:
		condition = (keyboard_check_pressed(ord("Y"))||keyboard_check_pressed(ord("N")));
		break;
}

if (condition) instance_destroy();

if (instance_exists(ui_menu)||instance_exists(ui_dialog)||instance_exists(ui_save)||instance_exists(ui_box))
	visible = false;
else visible = true;
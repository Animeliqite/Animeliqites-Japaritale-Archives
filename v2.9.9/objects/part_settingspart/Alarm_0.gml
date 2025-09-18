switch(date_get_month(date_current_datetime())){
	case 12:
	case 1:
	case 2:
		image_index=0;
		image_blend=c_white;
		break;
	case 3:
	case 4:
	case 5:
		image_index=1;
		image_blend=merge_color(c_yellow,c_lime,random_range(0.25,0.75));
		break;
	case 6:
	case 7:
	case 8:
		image_index=1;
		image_blend=merge_color(c_yellow,c_lime,random_range(0.25,0.75));
		break;
	case 9:
	case 10:
	case 11:
		image_index=1;
		image_blend=merge_color(c_yellow,c_red,random_range(0.25,0.75));
		break;
}
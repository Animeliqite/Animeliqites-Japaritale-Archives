/*switch(template){
	case 0:
		dir=DIR.LEFT;
		show_spike=true;
		wide_spike=false;
		up=20;
		down=65;
		left=0;
		right=200;
		break;
		
	case 1:
		dir=DIR.RIGHT;
		show_spike=true;
		wide_spike=false;
		up=20;
		down=65;
		left=190;
		right=0;
		break;
		
	case 2:
		dir=DIR.LEFT;
		show_spike=true;
		wide_spike=false;
		up=20;
		down=42;
		left=0;
		right=180;
		break;
		
	case 3:
		dir=DIR.RIGHT;
		show_spike=true;
		wide_spike=false;
		up=42;
		down=42;
		left=65;
		right=0;
		break;
		
	case 4:
		dir=DIR.LEFT;
		show_spike=false;
		wide_spike=false;
		up=2;
		down=2;
		left=24;
		right=24;
		text_offset_y=-6;
		break;
}
*/

visible=true;
_inst=instance_create_depth(x-left+text_offset_x,y-up+text_offset_y,0,text_typer);
_inst.text="{shadow false}{effect 1}{skip_space false}{color_text `black`}{speed 0}{font 2}{gui true}{depth "+string(DEPTH_BATTLE.UI_HIGH-10)+"}"+text+"{pause}{end}";

left=0;
top=20;
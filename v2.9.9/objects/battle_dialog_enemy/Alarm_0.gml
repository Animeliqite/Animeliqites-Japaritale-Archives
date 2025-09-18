visible=true;
_inst=instance_create_depth(x-left+text_offset_x,y-up+text_offset_y,0,text_typer);
_inst.text="{shadow false}{effect -1}{skip_space false}{color_text `black`}{speed 0}{font 2}{gui true}{depth "+string(DEPTH_BATTLE.UI_HIGH-10)+"}"+text+"{pause}{end}";

left=0;
char_amt_array=_inst._char_amt_finish;

switch (template) {
    default:
        show_spike=true;
        wide_spike=false;
        spike_offset_x=0;
        spike_offset_y=0;
        spike_anchor="left";
        up=20;
        down=0;
        left=0;
        right=0;
        break;
    case 1:
        show_spike=true;
        wide_spike=true;
        spike_offset_x=(dir!=DIR.LEFT&&dir!=DIR.RIGHT ? spike_anchor_right_offset : 0);
        spike_offset_y=0;
        spike_anchor="left";
        up=20;
        down=0;
        left=0;
        right=0;
        break;
    case 2:
        show_spike=true;
        wide_spike=false;
        spike_offset_x=0;
        spike_offset_y=0;
        spike_anchor="right";
        up=20;
        down=0;
        left=0;
        right=0;
        break;
    case 3:
        show_spike=true;
        wide_spike=true;
        spike_offset_x=0;
        spike_offset_y=0;
        spike_anchor="right";
        up=20;
        down=0;
        left=0;
        right=0;
        break;
}
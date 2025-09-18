event_inherited();
image_angle+=_rot_spd;

switch (_phase) {
    case "move":
        if (_radius>_orbit_start) {
            _radius-=_spd*_dir;
        } else {
            _phase="orbit";
        }
        break;
    case "orbit":
        if (_angle_accum<180) {
            _angle+=_orbit_spd;
            _angle_accum+=_orbit_spd;
        } else {
            _phase="move_continue";
            _dir=-1;
        }
        break;
    case "move_continue":
        _radius-=_spd;
        break;
}

x=_center_x+lengthdir_x(_radius,_angle);
y=_center_y+lengthdir_y(_radius,_angle);
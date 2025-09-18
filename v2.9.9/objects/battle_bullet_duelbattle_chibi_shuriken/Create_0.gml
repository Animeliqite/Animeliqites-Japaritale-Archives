event_inherited();

image_xscale=2;
image_yscale=2;
depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;

_center_x=battle_board.x;
_center_y=battle_board.y;

_orbit_start=120;
_initial_radius=point_distance(x,y,_center_x,_center_y);
_radius=_initial_radius;

// 1=moving inward, –1=moving outward
_dir=1;

_rot_spd=20; // spin speed
_orbit_spd=10; // degrees per step while orbiting
_spd=5; // radial speed

_phase="move";
_angle=point_direction(_center_x,_center_y,x,y);
_angle_accum=0;
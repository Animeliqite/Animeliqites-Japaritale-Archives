event_inherited();

_phase=0;
_rot=0;

_x_rand=0;
_y_rand=0;
_rot_rand=0;

depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;
image_xscale=2;
image_yscale=2;
image_blend=c_orange;

_part=part_system_create(battle_part_duelbattle_shuriken);
part_system_color(_part,c_orange,1);
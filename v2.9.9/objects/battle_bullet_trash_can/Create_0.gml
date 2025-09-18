event_inherited();
depth=DEPTH_BATTLE.BULLET_OUTSIDE_HIGH;
image_xscale=2;
image_yscale=2;

pushSoulEnabled=true;
pushSoulDirection=(battle_soul.dir==DIR.LEFT ? DIR.RIGHT : (battle_soul.dir==DIR.RIGHT ? DIR.LEFT : (battle_soul.dir==DIR.UP ? DIR.DOWN : DIR.UP)))
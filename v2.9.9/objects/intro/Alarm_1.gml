image_alpha -= 0.1;
if (image_alpha > 0) alarm[1] = 2;
else {
	if (global.event != 2)
		global.event = 0.05;
}
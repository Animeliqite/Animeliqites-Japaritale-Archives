if (speed > 0) {
	speed -= 0.5;
}
else {
	if (image_alpha > 0)
		image_alpha -= 0.1;
	else instance_destroy();
}
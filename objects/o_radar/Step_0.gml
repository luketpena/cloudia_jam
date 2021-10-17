if (fade) {
	if (image_alpha > 0) image_alpha -- else instance_destroy();	
} else {
	if (image_alpha < 1) image_alpha += .1;	
}
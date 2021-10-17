if (global.powerup = -1) {
var pdis = point_distance(x, y, o_cloudia.x, o_cloudia.y);
if  pdis < 32 {
	var pdir = point_direction(x, y, o_cloudia.x, o_cloudia.y);
	var pwr = 1 - (pdis / 32);
	x += lengthdir_x(2 * pwr, pdir);
	y += lengthdir_y(2 * pwr, pdir);
}

if (pdis < 4) {
	global.powerup = index;
	instance_destroy();
}
}

rot = rot + 1 mod 360;
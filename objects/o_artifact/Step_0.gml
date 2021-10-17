if (o_cloudia.targetArtifact = id) {
	var pdis = point_distance(x, y, o_cloudia.x, o_cloudia.y);
	if  pdis < 32 {
		var pdir = point_direction(x, y, o_cloudia.x, o_cloudia.y);
		var pwr = 1 - (pdis / 32);
		x += lengthdir_x(2 * pwr, pdir);
		y += lengthdir_y(2 * pwr, pdir);
	}
	charge = o_cloudia.aCharge;	
} else charge = 0;

rot = rot + 1 mod 360;
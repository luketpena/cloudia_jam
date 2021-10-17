rot = rot + 1 mod 360;

if (point_distance(x, y, o_cloudia.x, o_cloudia.y) < 32) {
	if (charge < 2 * room_speed) charge++ else {
		instance_create_layer(x, y, "effects_top", o_explosion);
		instance_destroy();	
	}
} else charge = 0;
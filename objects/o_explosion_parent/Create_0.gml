/// Explosion removes boulders
for (var i=0; i < instance_number(o_obstacle); i++) {
	var o = instance_find(o_obstacle, i);
	if (point_distance(x, y, o.x, o.y) < 150) {
		instance_destroy(o);
	}
}


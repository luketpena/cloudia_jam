if (fade > 0) fade -= .1;

if (point_distance(x, y, o_cloudia.x, o_cloudia.y) < 50 && !impact) {
	impact = true;
	global.time = max(global.time - 5 * room_speed, 0);
	audio_play_sound(snd_explode,11,false);
}
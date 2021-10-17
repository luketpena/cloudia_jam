if (global.time > 0) {
	global.time--;	
} else {
	global.gameover = true;	
}

if (global.powerup = 0) {
	global.powerup = -1;
	global.time += 15 * room_speed;
}
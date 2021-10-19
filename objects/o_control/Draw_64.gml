draw_set_color(c_yellow);
draw_set_font(menlo);
draw_set_alpha(1);
draw_set_valign(fa_top);


if (!global.gameover) {
	draw_set_halign(fa_left);
	if ( global.time > -1 && room_speed ) {
		draw_text(16, 16, "Time remaining: " + string(ceil(global.time / room_speed)))
	}
	draw_set_halign(fa_right);
	if (global.score) { 
		draw_text(view_get_wport(view_camera[0]) - 16, 16, string( global.score));
	}
} else {
	//draw_set_halign(fa_center);
	var centerx = view_get_wport(view_camera[0]) / 2;
	var centery = view_get_hport(view_camera[0]) / 2;
	//draw_text(centerx, centery, "Your score: " + string(global.score));
	//draw_set_font(menlo);
	//draw_text(centerx, centery+32, "Press space to restart");
	//if (keyboard_check_pressed(vk_space)) {
		global.gameover = false; 
		game_restart();	
		
	//}
}

if (!global.gameover) {
	var bottom = view_get_hport(view_camera[0])
	draw_set_halign(fa_left);
	
	//if (global.powerup > -1 && bottom && s_powerup) {
	//	draw_sprite_ext(s_powerup, global.powerup, 24, bottom - 24, 1, 1, 0, c_white, 1);
	//}
	//if (global.powerup > -1 && array_length(powerupNames) > 0) {
	//	draw_text(48, bottom - 24, powerupNames[global.powerup] + " (press space)");
	//}
}


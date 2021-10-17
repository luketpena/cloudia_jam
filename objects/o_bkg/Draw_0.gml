draw_set_color(c_black)
draw_rectangle(0, o_environment.surface_height, room_width, room_height, false)

if (surface_exists(o_environment.surf_tunnel)) {
	shader_set(sh_cutoutWhite);
		draw_surface_ext(o_environment.surf_tunnel, 0, o_environment.surface_height, 1, 1, 0, c_white, 1);
	shader_reset();
	
	gpu_set_blendmode(bm_add);
		draw_sprite_ext(s_glow, 0, o_cloudia.x, o_cloudia.y, 1.5, 1.5, 0, c_lime, lerp(.3, 1, o_cloudia.y / room_height));
	
	
	// Artifact glows
	for (var i=0; i<instance_number(o_artifact); i++) {
		var o = instance_find(o_artifact, i);
		draw_sprite_ext(s_glow, 0, o.x, o.y, 1, 1, 0, c_yellow, .25 * ((lengthdir_x(1, o.rot) * .5) + .5)); 
	}
	
	// Bomb glows
	for (var i=0; i<instance_number(o_bomb); i++) {
		var o = instance_find(o_bomb, i);
		var s = lengthdir_x(1, o.rot);
		draw_sprite_ext(s_glow, 0, x, y, 1, 1, 0, c_red, .75 + .25 * s);
	}
	
	gpu_set_blendmode(bm_normal);
		
	shader_set(sh_tunnelToBkg);
	draw_surface_ext(o_environment.surf_tunnel, 0, o_environment.surface_height, 1, 1, 0, c_white, 1);
	shader_reset();
}